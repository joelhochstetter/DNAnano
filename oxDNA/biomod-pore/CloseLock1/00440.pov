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
	<24.009476, 34.774231, 34.985992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378469, 34.808914, 34.835522>,  <24.599865, 34.829723, 34.745239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378469, 34.808914, 34.835522>,  <24.009476, 34.774231, 34.985992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378469, 34.808914, 34.835522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381840, 0.061646, -0.922170,
		-0.056773, 0.994325, 0.089977,
		0.922483, 0.086711, -0.376173,
		24.655214, 34.834927, 34.722672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219078, 35.484768, 34.598629>,  <24.009476, 34.774231, 34.985992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219078, 35.484768, 34.598629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402822, 35.160538, 34.453331>,  <24.513069, 34.966000, 34.366150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402822, 35.160538, 34.453331>,  <24.219078, 35.484768, 34.598629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402822, 35.160538, 34.453331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250840, 0.273924, -0.928464,
		0.852094, 0.517620, -0.077495,
		0.459363, -0.810577, -0.363249,
		24.540632, 34.917366, 34.344357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603983, 35.698036, 34.114990>,  <24.219078, 35.484768, 34.598629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603983, 35.698036, 34.114990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531225, 35.311237, 34.043636>,  <24.487570, 35.079159, 34.000824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531225, 35.311237, 34.043636>,  <24.603983, 35.698036, 34.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531225, 35.311237, 34.043636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390701, 0.237552, -0.889338,
		0.902368, -0.092069, -0.421018,
		-0.181894, -0.967002, -0.178388,
		24.476658, 35.021137, 33.990120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506392, 36.051449, 33.477493>,  <24.603983, 35.698036, 34.114990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506392, 36.051449, 33.477493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212025, 36.279800, 33.331879>,  <24.035404, 36.416813, 33.244511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212025, 36.279800, 33.331879>,  <24.506392, 36.051449, 33.477493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212025, 36.279800, 33.331879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527528, 0.146410, -0.836826,
		-0.424431, -0.807872, -0.408902,
		-0.735916, 0.570882, -0.364034,
		23.991249, 36.451065, 33.222668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.111504, 35.830158, 32.852139>,  <24.506392, 36.051449, 33.477493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.111504, 35.830158, 32.852139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130913, 36.229134, 32.873192>,  <24.142559, 36.468517, 32.885822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130913, 36.229134, 32.873192>,  <24.111504, 35.830158, 32.852139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130913, 36.229134, 32.873192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574741, 0.015215, -0.818194,
		-0.816896, 0.069953, -0.572528,
		0.048524, 0.997434, 0.052634,
		24.145470, 36.528362, 32.888981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024326, 36.041096, 32.184551>,  <24.111504, 35.830158, 32.852139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024326, 36.041096, 32.184551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274889, 36.288395, 32.374447>,  <24.425226, 36.436775, 32.488384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274889, 36.288395, 32.374447>,  <24.024326, 36.041096, 32.184551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274889, 36.288395, 32.374447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569211, 0.053294, -0.820463,
		-0.532554, 0.784171, -0.318532,
		0.626407, 0.618252, 0.474740,
		24.462811, 36.473869, 32.516869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009197, 36.721252, 31.697079>,  <24.024326, 36.041096, 32.184551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009197, 36.721252, 31.697079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345613, 36.646572, 31.900171>,  <24.547464, 36.601765, 32.022026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345613, 36.646572, 31.900171>,  <24.009197, 36.721252, 31.697079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345613, 36.646572, 31.900171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478482, -0.181158, -0.859207,
		0.252395, 0.965569, -0.063028,
		0.841042, -0.186701, 0.507731,
		24.597927, 36.590561, 32.052490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555828, 37.279202, 31.599058>,  <24.009197, 36.721252, 31.697079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555828, 37.279202, 31.599058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709179, 36.916138, 31.667377>,  <24.801189, 36.698299, 31.708368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709179, 36.916138, 31.667377>,  <24.555828, 37.279202, 31.599058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709179, 36.916138, 31.667377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300574, -0.052245, -0.952327,
		0.873314, 0.416438, 0.252789,
		0.383378, -0.907662, 0.170797,
		24.824192, 36.643841, 31.718616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017492, 37.322945, 31.166555>,  <24.555828, 37.279202, 31.599058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017492, 37.322945, 31.166555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005802, 36.934059, 31.259462>,  <24.998787, 36.700729, 31.315207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005802, 36.934059, 31.259462>,  <25.017492, 37.322945, 31.166555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005802, 36.934059, 31.259462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364931, -0.226705, -0.903012,
		0.930576, 0.058368, 0.361417,
		-0.029227, -0.972213, 0.232266,
		24.997034, 36.642395, 31.329142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674957, 36.998600, 30.902157>,  <25.017492, 37.322945, 31.166555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674957, 36.998600, 30.902157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415998, 36.695419, 30.934111>,  <25.260624, 36.513512, 30.953283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415998, 36.695419, 30.934111>,  <25.674957, 36.998600, 30.902157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415998, 36.695419, 30.934111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305992, -0.354484, -0.883578,
		0.698030, -0.547582, 0.461420,
		-0.647397, -0.757955, 0.079884,
		25.221779, 36.468033, 30.958076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127779, 36.443497, 30.966827>,  <25.674957, 36.998600, 30.902157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127779, 36.443497, 30.966827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778717, 36.295063, 30.839849>,  <25.569281, 36.206001, 30.763662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778717, 36.295063, 30.839849>,  <26.127779, 36.443497, 30.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778717, 36.295063, 30.839849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459728, -0.405030, -0.790317,
		0.164699, -0.835612, 0.524049,
		-0.872653, -0.371085, -0.317446,
		25.516920, 36.183739, 30.744616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276274, 35.662899, 30.777840>,  <26.127779, 36.443497, 30.966827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276274, 35.662899, 30.777840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931669, 35.761143, 30.600090>,  <25.724907, 35.820091, 30.493441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931669, 35.761143, 30.600090>,  <26.276274, 35.662899, 30.777840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931669, 35.761143, 30.600090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356232, -0.331247, -0.873713,
		-0.361801, -0.911014, 0.197875,
		-0.861510, 0.245621, -0.444378,
		25.673216, 35.834827, 30.466778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164782, 35.178314, 30.327080>,  <26.276274, 35.662899, 30.777840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164782, 35.178314, 30.327080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879080, 35.425461, 30.195574>,  <25.707659, 35.573750, 30.116671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879080, 35.425461, 30.195574>,  <26.164782, 35.178314, 30.327080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879080, 35.425461, 30.195574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034127, -0.499929, -0.865394,
		-0.699055, -0.606890, 0.378162,
		-0.714253, 0.617863, -0.328766,
		25.664804, 35.610821, 30.096945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697369, 34.656784, 30.018166>,  <26.164782, 35.178314, 30.327080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697369, 34.656784, 30.018166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668575, 35.036049, 29.894352>,  <25.651300, 35.263607, 29.820065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668575, 35.036049, 29.894352>,  <25.697369, 34.656784, 30.018166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668575, 35.036049, 29.894352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080537, -0.303801, -0.949325,
		-0.994149, -0.093263, -0.054494,
		-0.071981, 0.948160, -0.309535,
		25.646980, 35.320496, 29.801491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055662, 34.623760, 29.602879>,  <25.697369, 34.656784, 30.018166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055662, 34.623760, 29.602879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328434, 34.897903, 29.500696>,  <25.492098, 35.062389, 29.439386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328434, 34.897903, 29.500696>,  <25.055662, 34.623760, 29.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328434, 34.897903, 29.500696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012986, -0.360551, -0.932649,
		-0.731300, 0.632686, -0.254771,
		0.681932, 0.685355, -0.255455,
		25.533014, 35.103512, 29.424059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934706, 34.530376, 28.915586>,  <25.055662, 34.623760, 29.602879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934706, 34.530376, 28.915586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245779, 34.780418, 28.942280>,  <25.432423, 34.930443, 28.958296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245779, 34.780418, 28.942280>,  <24.934706, 34.530376, 28.915586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245779, 34.780418, 28.942280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214493, -0.164061, -0.962848,
		-0.590930, 0.763107, -0.261668,
		0.777685, 0.625102, 0.066732,
		25.479084, 34.967949, 28.962299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816610, 35.073219, 28.329292>,  <24.934706, 34.530376, 28.915586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816610, 35.073219, 28.329292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199516, 35.039860, 28.440062>,  <25.429260, 35.019844, 28.506523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199516, 35.039860, 28.440062>,  <24.816610, 35.073219, 28.329292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199516, 35.039860, 28.440062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235003, -0.333780, -0.912888,
		0.168567, 0.938954, -0.299917,
		0.957266, -0.083402, 0.276922,
		25.486696, 35.014839, 28.523138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140480, 35.240395, 27.714678>,  <24.816610, 35.073219, 28.329292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140480, 35.240395, 27.714678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404516, 35.048943, 27.946262>,  <25.562939, 34.934071, 28.085213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404516, 35.048943, 27.946262>,  <25.140480, 35.240395, 27.714678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404516, 35.048943, 27.946262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428122, -0.393602, -0.813504,
		0.617247, 0.784852, -0.054902,
		0.660090, -0.478628, 0.578962,
		25.602543, 34.905354, 28.119951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952627, 35.356422, 27.510860>,  <25.140480, 35.240395, 27.714678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952627, 35.356422, 27.510860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902561, 35.009872, 27.704239>,  <25.872522, 34.801941, 27.820267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902561, 35.009872, 27.704239>,  <25.952627, 35.356422, 27.510860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902561, 35.009872, 27.704239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568009, -0.462094, -0.681054,
		0.813449, 0.189359, 0.549949,
		-0.125164, -0.866379, 0.483447,
		25.865011, 34.749958, 27.849274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.558563, 34.978512, 27.226101>,  <25.952627, 35.356422, 27.510860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.558563, 34.978512, 27.226101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362421, 34.692204, 27.424988>,  <26.244736, 34.520420, 27.544321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362421, 34.692204, 27.424988>,  <26.558563, 34.978512, 27.226101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362421, 34.692204, 27.424988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430787, -0.695011, -0.575657,
		0.757610, -0.068081, 0.649147,
		-0.490356, -0.715768, 0.497219,
		26.215315, 34.477474, 27.574154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069157, 34.557564, 27.488686>,  <26.558563, 34.978512, 27.226101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069157, 34.557564, 27.488686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747177, 34.321495, 27.464161>,  <26.553989, 34.179855, 27.449446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747177, 34.321495, 27.464161>,  <27.069157, 34.557564, 27.488686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747177, 34.321495, 27.464161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513278, -0.640763, -0.570937,
		0.297663, -0.491044, 0.818702,
		-0.804949, -0.590168, -0.061310,
		26.505693, 34.144444, 27.445768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305120, 33.817142, 27.509087>,  <27.069157, 34.557564, 27.488686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305120, 33.817142, 27.509087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937365, 33.784920, 27.355083>,  <26.716711, 33.765587, 27.262682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937365, 33.784920, 27.355083>,  <27.305120, 33.817142, 27.509087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937365, 33.784920, 27.355083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363683, -0.546965, -0.754031,
		-0.149843, -0.833270, 0.532172,
		-0.919392, -0.080556, -0.385005,
		26.661547, 33.760754, 27.239582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253252, 33.119198, 27.400318>,  <27.305120, 33.817142, 27.509087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253252, 33.119198, 27.400318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971458, 33.300533, 27.181892>,  <26.802382, 33.409336, 27.050837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971458, 33.300533, 27.181892>,  <27.253252, 33.119198, 27.400318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971458, 33.300533, 27.181892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249267, -0.562344, -0.788438,
		-0.664505, -0.691558, 0.283161,
		-0.704485, 0.453338, -0.546063,
		26.760113, 33.436535, 27.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798273, 32.628811, 27.070263>,  <27.253252, 33.119198, 27.400318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798273, 32.628811, 27.070263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800303, 32.957790, 26.842737>,  <26.801519, 33.155178, 26.706223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800303, 32.957790, 26.842737>,  <26.798273, 32.628811, 27.070263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800303, 32.957790, 26.842737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412884, -0.519792, -0.747891,
		-0.910769, -0.231059, -0.342215,
		0.005074, 0.822452, -0.568812,
		26.801825, 33.204525, 26.672094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481758, 32.512566, 26.459328>,  <26.798273, 32.628811, 27.070263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481758, 32.512566, 26.459328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735788, 32.814281, 26.392715>,  <26.888206, 32.995312, 26.352747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735788, 32.814281, 26.392715>,  <26.481758, 32.512566, 26.459328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735788, 32.814281, 26.392715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491112, -0.560683, -0.666666,
		-0.596228, 0.341597, -0.726515,
		0.635076, 0.754285, -0.166533,
		26.926311, 33.040565, 26.342756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947170, 32.188866, 26.048481>,  <26.481758, 32.512566, 26.459328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947170, 32.188866, 26.048481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122330, 32.548477, 26.048471>,  <27.227425, 32.764244, 26.048466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122330, 32.548477, 26.048471>,  <26.947170, 32.188866, 26.048481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122330, 32.548477, 26.048471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743933, -0.362371, -0.561472,
		-0.504786, 0.245849, -0.827496,
		0.437898, 0.899025, -0.000025,
		27.253698, 32.818184, 26.048464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307550, 32.362377, 25.368284>,  <26.947170, 32.188866, 26.048481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307550, 32.362377, 25.368284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457983, 32.600937, 25.651937>,  <27.548243, 32.744072, 25.822130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457983, 32.600937, 25.651937>,  <27.307550, 32.362377, 25.368284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457983, 32.600937, 25.651937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912649, -0.370667, -0.172271,
		0.160109, 0.711978, -0.683705,
		0.376080, 0.596401, 0.709133,
		27.570807, 32.779858, 25.864677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714075, 32.909153, 25.032789>,  <27.307550, 32.362377, 25.368284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714075, 32.909153, 25.032789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811426, 32.772182, 25.395781>,  <27.869837, 32.690002, 25.613575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811426, 32.772182, 25.395781>,  <27.714075, 32.909153, 25.032789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811426, 32.772182, 25.395781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604694, -0.677958, -0.417993,
		0.758362, 0.650476, 0.042062,
		0.243378, -0.342424, 0.907476,
		27.884439, 32.669456, 25.668024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433300, 32.991287, 25.347410>,  <27.714075, 32.909153, 25.032789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433300, 32.991287, 25.347410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263821, 32.650780, 25.471231>,  <28.162134, 32.446476, 25.545525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263821, 32.650780, 25.471231>,  <28.433300, 32.991287, 25.347410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263821, 32.650780, 25.471231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842875, -0.495679, -0.209438,
		0.331727, 0.172176, 0.927530,
		-0.423697, -0.851268, 0.309553,
		28.136711, 32.395401, 25.564096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748980, 32.498928, 25.774239>,  <28.433300, 32.991287, 25.347410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748980, 32.498928, 25.774239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516911, 32.244980, 25.570143>,  <28.377668, 32.092613, 25.447685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516911, 32.244980, 25.570143>,  <28.748980, 32.498928, 25.774239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516911, 32.244980, 25.570143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762135, -0.644134, -0.065125,
		-0.287316, -0.426655, 0.857563,
		-0.580172, -0.634868, -0.510239,
		28.342859, 32.054520, 25.417070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889618, 31.770788, 26.079315>,  <28.748980, 32.498928, 25.774239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889618, 31.770788, 26.079315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737541, 31.751535, 25.709854>,  <28.646296, 31.739985, 25.488176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737541, 31.751535, 25.709854>,  <28.889618, 31.770788, 26.079315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737541, 31.751535, 25.709854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647164, -0.727307, -0.228482,
		-0.660783, -0.684623, 0.307665,
		-0.380191, -0.048133, -0.923655,
		28.623484, 31.737095, 25.432758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038996, 31.024666, 26.137598>,  <28.889618, 31.770788, 26.079315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038996, 31.024666, 26.137598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413137, 30.965813, 26.008932>,  <29.637623, 30.930502, 25.931732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413137, 30.965813, 26.008932>,  <29.038996, 31.024666, 26.137598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413137, 30.965813, 26.008932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353656, 0.405741, 0.842794,
		0.006510, -0.902068, 0.431545,
		0.935353, -0.147132, -0.321663,
		29.693743, 30.921673, 25.912434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436419, 30.616823, 26.684933>,  <29.038996, 31.024666, 26.137598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436419, 30.616823, 26.684933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659443, 30.871443, 26.471790>,  <29.793257, 31.024214, 26.343904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659443, 30.871443, 26.471790>,  <29.436419, 30.616823, 26.684933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659443, 30.871443, 26.471790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302599, 0.441878, 0.844498,
		0.773020, -0.632101, 0.053756,
		0.557561, 0.636547, -0.532854,
		29.826712, 31.062407, 26.311934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000343, 30.616699, 27.067095>,  <29.436419, 30.616823, 26.684933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000343, 30.616699, 27.067095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954479, 30.961145, 26.868969>,  <29.926960, 31.167812, 26.750093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954479, 30.961145, 26.868969>,  <30.000343, 30.616699, 27.067095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954479, 30.961145, 26.868969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295099, 0.505619, 0.810719,
		0.948562, -0.053209, -0.312089,
		-0.114661, 0.861115, -0.495313,
		29.920080, 31.219481, 26.720375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637970, 31.086990, 27.136030>,  <30.000343, 30.616699, 27.067095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637970, 31.086990, 27.136030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281935, 31.265537, 27.099152>,  <30.068314, 31.372665, 27.077024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281935, 31.265537, 27.099152>,  <30.637970, 31.086990, 27.136030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281935, 31.265537, 27.099152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145645, 0.470217, 0.870450,
		0.431894, 0.761349, -0.483545,
		-0.890087, 0.446368, -0.092197,
		30.014908, 31.399448, 27.071493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720850, 31.718554, 27.434202>,  <30.637970, 31.086990, 27.136030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720850, 31.718554, 27.434202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331093, 31.628618, 27.433043>,  <30.097239, 31.574657, 27.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331093, 31.628618, 27.433043>,  <30.720850, 31.718554, 27.434202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331093, 31.628618, 27.433043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103136, 0.435427, 0.894296,
		-0.199812, 0.871694, -0.447466,
		-0.974391, -0.224841, -0.002899,
		30.038776, 31.561167, 27.432173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305931, 32.343914, 27.527508>,  <30.720850, 31.718554, 27.434202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305931, 32.343914, 27.527508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093449, 32.034313, 27.665342>,  <29.965960, 31.848553, 27.748043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093449, 32.034313, 27.665342>,  <30.305931, 32.343914, 27.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093449, 32.034313, 27.665342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174959, 0.498164, 0.849248,
		-0.828980, 0.390838, -0.400047,
		-0.531208, -0.774001, 0.344587,
		29.934086, 31.802113, 27.768719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718740, 32.663223, 27.788919>,  <30.305931, 32.343914, 27.527508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718740, 32.663223, 27.788919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731686, 32.300266, 27.956537>,  <29.739452, 32.082493, 28.057108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731686, 32.300266, 27.956537>,  <29.718740, 32.663223, 27.788919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731686, 32.300266, 27.956537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355099, 0.381472, 0.853454,
		-0.934268, -0.176424, -0.309866,
		0.032365, -0.907388, 0.419045,
		29.741396, 32.028049, 28.082251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069473, 32.484066, 28.024958>,  <29.718740, 32.663223, 27.788919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069473, 32.484066, 28.024958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307133, 32.252659, 28.248493>,  <29.449728, 32.113815, 28.382614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307133, 32.252659, 28.248493>,  <29.069473, 32.484066, 28.024958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307133, 32.252659, 28.248493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290287, 0.493720, 0.819740,
		-0.750146, -0.649271, 0.125406,
		0.594149, -0.578522, 0.558837,
		29.485378, 32.079102, 28.416145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623993, 32.069782, 28.490589>,  <29.069473, 32.484066, 28.024958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623993, 32.069782, 28.490589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981655, 32.046848, 28.668217>,  <29.196253, 32.033089, 28.774794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981655, 32.046848, 28.668217>,  <28.623993, 32.069782, 28.490589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981655, 32.046848, 28.668217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430492, 0.162650, 0.887819,
		-0.123129, -0.985017, 0.120753,
		0.894157, -0.057332, 0.444068,
		29.249903, 32.029648, 28.801437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574537, 31.584160, 29.092026>,  <28.623993, 32.069782, 28.490589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574537, 31.584160, 29.092026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890699, 31.811699, 29.182951>,  <29.080397, 31.948221, 29.237505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890699, 31.811699, 29.182951>,  <28.574537, 31.584160, 29.092026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890699, 31.811699, 29.182951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329413, 0.081840, 0.940632,
		0.516472, -0.818362, 0.252072,
		0.790407, 0.568846, 0.227311,
		29.127821, 31.982353, 29.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774271, 31.539019, 29.819330>,  <28.574537, 31.584160, 29.092026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774271, 31.539019, 29.819330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997108, 31.865219, 29.756580>,  <29.130810, 32.060940, 29.718929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997108, 31.865219, 29.756580>,  <28.774271, 31.539019, 29.819330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997108, 31.865219, 29.756580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220747, 0.327526, 0.918693,
		0.800575, -0.477166, 0.362481,
		0.557091, 0.815499, -0.156877,
		29.164236, 32.109867, 29.709517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173033, 31.731232, 30.475611>,  <28.774271, 31.539019, 29.819330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173033, 31.731232, 30.475611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155657, 32.066814, 30.258625>,  <29.145231, 32.268166, 30.128433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155657, 32.066814, 30.258625>,  <29.173033, 31.731232, 30.475611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155657, 32.066814, 30.258625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261291, 0.514534, 0.816689,
		0.964282, 0.177219, 0.196859,
		-0.043442, 0.838956, -0.542462,
		29.142624, 32.318501, 30.095886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504236, 32.224236, 30.908859>,  <29.173033, 31.731232, 30.475611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504236, 32.224236, 30.908859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308327, 32.446903, 30.640459>,  <29.190781, 32.580502, 30.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308327, 32.446903, 30.640459>,  <29.504236, 32.224236, 30.908859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308327, 32.446903, 30.640459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164103, 0.697012, 0.698029,
		0.856265, 0.451991, -0.250029,
		-0.489776, 0.556667, -0.671000,
		29.161394, 32.613903, 30.439159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748722, 32.906864, 30.942177>,  <29.504236, 32.224236, 30.908859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748722, 32.906864, 30.942177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387539, 32.951611, 30.776211>,  <29.170830, 32.978458, 30.676632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387539, 32.951611, 30.776211>,  <29.748722, 32.906864, 30.942177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387539, 32.951611, 30.776211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156493, 0.813622, 0.559937,
		0.400222, 0.570530, -0.717160,
		-0.902958, 0.111868, -0.414913,
		29.116652, 32.985172, 30.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767408, 33.567928, 30.779680>,  <29.748722, 32.906864, 30.942177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767408, 33.567928, 30.779680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381008, 33.464638, 30.774601>,  <29.149168, 33.402664, 30.771553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381008, 33.464638, 30.774601>,  <29.767408, 33.567928, 30.779680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381008, 33.464638, 30.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215157, 0.775718, 0.593270,
		-0.143345, 0.575832, -0.804903,
		-0.966002, -0.258223, -0.012699,
		29.091208, 33.387173, 30.770792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421907, 34.159782, 30.910065>,  <29.767408, 33.567928, 30.779680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421907, 34.159782, 30.910065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134943, 33.892574, 30.989124>,  <28.962765, 33.732250, 31.036560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134943, 33.892574, 30.989124>,  <29.421907, 34.159782, 30.910065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134943, 33.892574, 30.989124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373835, 0.608562, 0.699928,
		-0.587848, 0.428250, -0.686321,
		-0.717413, -0.668022, 0.197647,
		28.919720, 33.692169, 31.048418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945147, 34.640472, 31.126192>,  <29.421907, 34.159782, 30.910065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945147, 34.640472, 31.126192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799129, 34.289051, 31.249403>,  <28.711519, 34.078197, 31.323330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799129, 34.289051, 31.249403>,  <28.945147, 34.640472, 31.126192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799129, 34.289051, 31.249403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636886, 0.476986, 0.605690,
		-0.679057, 0.024927, -0.733662,
		-0.365045, -0.878557, 0.308025,
		28.689615, 34.025482, 31.341810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275135, 34.747517, 31.211447>,  <28.945147, 34.640472, 31.126192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275135, 34.747517, 31.211447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336691, 34.403740, 31.406454>,  <28.373625, 34.197475, 31.523458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336691, 34.403740, 31.406454>,  <28.275135, 34.747517, 31.211447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336691, 34.403740, 31.406454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642443, 0.287841, 0.710221,
		-0.750723, -0.422499, -0.507848,
		0.153888, -0.859443, 0.487520,
		28.382858, 34.145908, 31.552710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681776, 34.453773, 31.283474>,  <28.275135, 34.747517, 31.211447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681776, 34.453773, 31.283474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891735, 34.295807, 31.585075>,  <28.017712, 34.201027, 31.766035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891735, 34.295807, 31.585075>,  <27.681776, 34.453773, 31.283474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891735, 34.295807, 31.585075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664119, 0.364050, 0.653003,
		-0.532378, -0.843508, -0.071184,
		0.524899, -0.394919, 0.754002,
		28.049206, 34.177330, 31.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152407, 34.139351, 31.735996>,  <27.681776, 34.453773, 31.283474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152407, 34.139351, 31.735996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481821, 34.202644, 31.953896>,  <27.679470, 34.240620, 32.084637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481821, 34.202644, 31.953896>,  <27.152407, 34.139351, 31.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481821, 34.202644, 31.953896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520310, 0.593262, 0.614262,
		-0.225978, -0.789304, 0.570905,
		0.823536, 0.158238, 0.544747,
		27.728882, 34.250114, 32.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872898, 34.202110, 32.423351>,  <27.152407, 34.139351, 31.735996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872898, 34.202110, 32.423351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237528, 34.363144, 32.456711>,  <27.456306, 34.459763, 32.476727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237528, 34.363144, 32.456711>,  <26.872898, 34.202110, 32.423351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237528, 34.363144, 32.456711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393112, 0.794108, 0.463525,
		0.120380, -0.455323, 0.882151,
		0.911577, 0.402583, 0.083398,
		27.511002, 34.483917, 32.481731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965664, 34.489105, 33.134541>,  <26.872898, 34.202110, 32.423351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965664, 34.489105, 33.134541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230062, 34.688309, 32.910015>,  <27.388702, 34.807831, 32.775299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230062, 34.688309, 32.910015>,  <26.965664, 34.489105, 33.134541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230062, 34.688309, 32.910015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335821, 0.865264, 0.372213,
		0.671048, -0.057531, 0.739178,
		0.660998, 0.498004, -0.561314,
		27.428362, 34.837711, 32.741619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237965, 35.010975, 33.562038>,  <26.965664, 34.489105, 33.134541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237965, 35.010975, 33.562038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347719, 35.142708, 33.200653>,  <27.413572, 35.221748, 32.983822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347719, 35.142708, 33.200653>,  <27.237965, 35.010975, 33.562038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347719, 35.142708, 33.200653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212339, 0.937085, 0.277099,
		0.937879, 0.115805, 0.327067,
		0.274400, 0.329334, -0.903462,
		27.430035, 35.241508, 32.929611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769529, 35.461449, 33.663536>,  <27.237965, 35.010975, 33.562038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769529, 35.461449, 33.663536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609968, 35.561161, 33.310551>,  <27.514233, 35.620987, 33.098759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609968, 35.561161, 33.310551>,  <27.769529, 35.461449, 33.663536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609968, 35.561161, 33.310551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000959, 0.962455, 0.271441,
		0.916993, 0.107432, -0.384163,
		-0.398901, 0.249278, -0.882461,
		27.490297, 35.635944, 33.045811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038204, 36.057739, 33.527931>,  <27.769529, 35.461449, 33.663536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038204, 36.057739, 33.527931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729233, 36.090679, 33.276035>,  <27.543850, 36.110443, 33.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729233, 36.090679, 33.276035>,  <28.038204, 36.057739, 33.527931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729233, 36.090679, 33.276035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021809, 0.987534, 0.155884,
		0.634725, 0.134143, -0.761005,
		-0.772430, 0.082347, -0.629738,
		27.497503, 36.115383, 33.087112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349926, 36.538143, 32.993832>,  <28.038204, 36.057739, 33.527931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349926, 36.538143, 32.993832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950447, 36.527252, 33.011108>,  <27.710760, 36.520718, 33.021477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950447, 36.527252, 33.011108>,  <28.349926, 36.538143, 32.993832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950447, 36.527252, 33.011108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025360, 0.998742, 0.043257,
		-0.044319, 0.042105, -0.998130,
		-0.998696, -0.027229, 0.043195,
		27.650839, 36.519085, 33.024067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140421, 36.982323, 32.442402>,  <28.349926, 36.538143, 32.993832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140421, 36.982323, 32.442402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838224, 36.947487, 32.702141>,  <27.656906, 36.926586, 32.857983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838224, 36.947487, 32.702141>,  <28.140421, 36.982323, 32.442402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838224, 36.947487, 32.702141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075770, 0.996090, 0.045437,
		-0.650762, -0.014873, -0.759136,
		-0.755492, -0.087088, 0.649344,
		27.611576, 36.921360, 32.896942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194778, 37.261757, 31.904049>,  <28.140421, 36.982323, 32.442402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194778, 37.261757, 31.904049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445843, 37.146519, 31.614761>,  <28.596481, 37.077374, 31.441189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445843, 37.146519, 31.614761>,  <28.194778, 37.261757, 31.904049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445843, 37.146519, 31.614761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100699, 0.951243, -0.291541,
		0.771948, 0.110161, 0.626067,
		0.627659, -0.288099, -0.723217,
		28.634140, 37.060089, 31.397797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812582, 37.569775, 31.450130>,  <28.194778, 37.261757, 31.904049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812582, 37.569775, 31.450130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978411, 37.691322, 31.793243>,  <29.077908, 37.764252, 31.999111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978411, 37.691322, 31.793243>,  <28.812582, 37.569775, 31.450130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978411, 37.691322, 31.793243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547217, -0.836386, 0.031816,
		0.727105, 0.456203, -0.513027,
		0.414574, 0.303871, 0.857782,
		29.102783, 37.782482, 32.050579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426434, 37.072006, 31.587233>,  <28.812582, 37.569775, 31.450130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426434, 37.072006, 31.587233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462030, 37.347218, 31.875317>,  <29.483389, 37.512344, 32.048168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462030, 37.347218, 31.875317>,  <29.426434, 37.072006, 31.587233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462030, 37.347218, 31.875317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693113, -0.562064, 0.451308,
		0.715315, 0.459024, -0.526899,
		0.088990, 0.688027, 0.720208,
		29.488728, 37.553627, 32.091377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085318, 37.340855, 31.531404>,  <29.426434, 37.072006, 31.587233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085318, 37.340855, 31.531404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956404, 37.357719, 31.909685>,  <29.879055, 37.367840, 32.136654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956404, 37.357719, 31.909685>,  <30.085318, 37.340855, 31.531404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956404, 37.357719, 31.909685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941394, -0.090778, 0.324865,
		0.099546, 0.994978, -0.010436,
		-0.322286, 0.042163, 0.945703,
		29.859718, 37.370369, 32.193398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617926, 37.713505, 31.959831>,  <30.085318, 37.340855, 31.531404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617926, 37.713505, 31.959831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409550, 37.482590, 32.211342>,  <30.284523, 37.344040, 32.362247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409550, 37.482590, 32.211342>,  <30.617926, 37.713505, 31.959831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409550, 37.482590, 32.211342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852986, -0.379842, 0.357960,
		0.032190, 0.722814, 0.690292,
		-0.520941, -0.577287, 0.628777,
		30.253267, 37.309402, 32.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881546, 37.789532, 32.666908>,  <30.617926, 37.713505, 31.959831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881546, 37.789532, 32.666908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709984, 37.430889, 32.622849>,  <30.607046, 37.215702, 32.596413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709984, 37.430889, 32.622849>,  <30.881546, 37.789532, 32.666908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709984, 37.430889, 32.622849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803705, -0.434417, 0.406622,
		-0.412433, 0.085872, 0.906932,
		-0.428904, -0.896609, -0.110152,
		30.581312, 37.161907, 32.589802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865993, 37.418411, 33.172577>,  <30.881546, 37.789532, 32.666908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865993, 37.418411, 33.172577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897316, 37.144100, 32.883144>,  <30.916109, 36.979511, 32.709484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897316, 37.144100, 32.883144>,  <30.865993, 37.418411, 33.172577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897316, 37.144100, 32.883144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862554, -0.317322, 0.394091,
		-0.499869, -0.654990, 0.566674,
		0.078307, -0.685780, -0.723584,
		30.920809, 36.938366, 32.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706408, 36.937553, 33.629898>,  <30.865993, 37.418411, 33.172577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706408, 36.937553, 33.629898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025103, 36.887394, 33.393429>,  <31.216320, 36.857300, 33.251549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025103, 36.887394, 33.393429>,  <30.706408, 36.937553, 33.629898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025103, 36.887394, 33.393429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416510, -0.594847, 0.687515,
		-0.437870, -0.793998, -0.421707,
		0.796736, -0.125396, -0.591174,
		31.264124, 36.849773, 33.216076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872681, 36.307396, 33.767952>,  <30.706408, 36.937553, 33.629898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872681, 36.307396, 33.767952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195404, 36.459572, 33.587147>,  <31.389038, 36.550877, 33.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195404, 36.459572, 33.587147>,  <30.872681, 36.307396, 33.767952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195404, 36.459572, 33.587147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585633, -0.616047, 0.526802,
		-0.078045, -0.689746, -0.719833,
		0.806810, 0.380443, -0.452018,
		31.437447, 36.573704, 33.451542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178768, 35.759514, 33.488346>,  <30.872681, 36.307396, 33.767952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178768, 35.759514, 33.488346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460073, 36.041302, 33.526581>,  <31.628857, 36.210377, 33.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460073, 36.041302, 33.526581>,  <31.178768, 35.759514, 33.488346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460073, 36.041302, 33.526581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636760, -0.683967, 0.355986,
		0.316160, -0.189488, -0.929590,
		0.703264, 0.704474, 0.095584,
		31.671053, 36.252644, 33.555256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786804, 35.401096, 33.315968>,  <31.178768, 35.759514, 33.488346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786804, 35.401096, 33.315968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928164, 35.721764, 33.508816>,  <32.012978, 35.914165, 33.624523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928164, 35.721764, 33.508816>,  <31.786804, 35.401096, 33.315968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928164, 35.721764, 33.508816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667827, -0.577096, 0.470070,
		0.655070, 0.155851, -0.739320,
		0.353398, 0.801667, 0.482120,
		32.034184, 35.962265, 33.653450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585304, 35.261745, 33.333046>,  <31.786804, 35.401096, 33.315968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585304, 35.261745, 33.333046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478081, 35.513802, 33.624542>,  <32.413746, 35.665035, 33.799442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478081, 35.513802, 33.624542>,  <32.585304, 35.261745, 33.333046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478081, 35.513802, 33.624542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708401, -0.383728, 0.592386,
		0.652924, 0.675039, -0.343529,
		-0.268062, 0.630139, 0.728744,
		32.397663, 35.702843, 33.843166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238930, 35.644249, 33.544643>,  <32.585304, 35.261745, 33.333046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238930, 35.644249, 33.544643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961147, 35.660824, 33.831978>,  <32.794476, 35.670769, 34.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961147, 35.660824, 33.831978>,  <33.238930, 35.644249, 33.544643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961147, 35.660824, 33.831978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684576, -0.269335, 0.677358,
		0.221542, 0.962155, 0.158675,
		-0.694460, 0.041438, 0.718337,
		32.752808, 35.673256, 34.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576443, 35.854183, 34.246826>,  <33.238930, 35.644249, 33.544643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576443, 35.854183, 34.246826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228203, 35.703617, 34.373547>,  <33.019260, 35.613277, 34.449581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228203, 35.703617, 34.373547>,  <33.576443, 35.854183, 34.246826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228203, 35.703617, 34.373547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464453, -0.416398, 0.781598,
		-0.162289, 0.827601, 0.537344,
		-0.870601, -0.376415, 0.316805,
		32.967022, 35.590691, 34.468590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569920, 35.950989, 34.958755>,  <33.576443, 35.854183, 34.246826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569920, 35.950989, 34.958755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303497, 35.660259, 34.891712>,  <33.143642, 35.485821, 34.851486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303497, 35.660259, 34.891712>,  <33.569920, 35.950989, 34.958755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303497, 35.660259, 34.891712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357887, -0.508552, 0.783130,
		-0.654437, 0.461624, 0.598846,
		-0.666055, -0.726828, -0.167606,
		33.103680, 35.442211, 34.841431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128063, 35.869904, 35.635635>,  <33.569920, 35.950989, 34.958755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128063, 35.869904, 35.635635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113422, 35.548161, 35.398430>,  <33.104637, 35.355114, 35.256107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113422, 35.548161, 35.398430>,  <33.128063, 35.869904, 35.635635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113422, 35.548161, 35.398430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373890, -0.561335, 0.738315,
		-0.926750, -0.194701, 0.321286,
		-0.036598, -0.804360, -0.593014,
		33.102444, 35.306854, 35.220524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912582, 35.326897, 36.055550>,  <33.128063, 35.869904, 35.635635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912582, 35.326897, 36.055550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081032, 35.132511, 35.749218>,  <33.182102, 35.015881, 35.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081032, 35.132511, 35.749218>,  <32.912582, 35.326897, 36.055550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081032, 35.132511, 35.749218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320922, -0.709892, 0.626947,
		-0.848328, -0.509794, -0.142998,
		0.421127, -0.485966, -0.765826,
		33.207371, 34.986721, 35.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819256, 34.541130, 36.069927>,  <32.912582, 35.326897, 36.055550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819256, 34.541130, 36.069927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082073, 34.572906, 35.770065>,  <33.239765, 34.591972, 35.590149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082073, 34.572906, 35.770065>,  <32.819256, 34.541130, 36.069927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082073, 34.572906, 35.770065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501300, -0.788741, 0.355788,
		-0.563016, -0.609570, -0.558065,
		0.657047, 0.079444, -0.749652,
		33.279186, 34.596741, 35.545170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028435, 33.764305, 35.900681>,  <32.819256, 34.541130, 36.069927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028435, 33.764305, 35.900681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321014, 33.992096, 35.750652>,  <33.496563, 34.128773, 35.660637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321014, 33.992096, 35.750652>,  <33.028435, 33.764305, 35.900681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321014, 33.992096, 35.750652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644486, -0.757033, 0.107421,
		-0.222766, -0.320300, -0.920751,
		0.731446, 0.569481, -0.375070,
		33.540447, 34.162941, 35.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343208, 33.354660, 35.383755>,  <33.028435, 33.764305, 35.900681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343208, 33.354660, 35.383755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622688, 33.623405, 35.482079>,  <33.790375, 33.784653, 35.541073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622688, 33.623405, 35.482079>,  <33.343208, 33.354660, 35.383755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622688, 33.623405, 35.482079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581703, -0.733535, 0.351494,
		0.416465, -0.102600, -0.903344,
		0.698698, 0.671863, 0.245809,
		33.832298, 33.824963, 35.555820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929447, 33.211655, 35.021805>,  <33.343208, 33.354660, 35.383755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929447, 33.211655, 35.021805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078072, 33.431759, 35.320911>,  <34.167248, 33.563820, 35.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078072, 33.431759, 35.320911>,  <33.929447, 33.211655, 35.021805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078072, 33.431759, 35.320911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665100, -0.719715, 0.199128,
		0.647751, 0.423350, -0.633398,
		0.371565, 0.550258, 0.747767,
		34.189541, 33.596836, 35.545242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578953, 33.007877, 35.108341>,  <33.929447, 33.211655, 35.021805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578953, 33.007877, 35.108341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521141, 33.188908, 35.460316>,  <34.486454, 33.297527, 35.671501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521141, 33.188908, 35.460316>,  <34.578953, 33.007877, 35.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521141, 33.188908, 35.460316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462075, -0.755485, 0.464466,
		0.874985, 0.473723, -0.099938,
		-0.144526, 0.452580, 0.879934,
		34.477783, 33.324680, 35.724297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203674, 32.871750, 35.461319>,  <34.578953, 33.007877, 35.108341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203674, 32.871750, 35.461319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934105, 32.983318, 35.734974>,  <34.772366, 33.050259, 35.899166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934105, 32.983318, 35.734974>,  <35.203674, 32.871750, 35.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934105, 32.983318, 35.734974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396930, -0.644314, 0.653686,
		0.623121, 0.712085, 0.323504,
		-0.673919, 0.278917, 0.684134,
		34.731930, 33.066994, 35.940212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587158, 32.952568, 36.032032>,  <35.203674, 32.871750, 35.461319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587158, 32.952568, 36.032032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214249, 32.862534, 36.145313>,  <34.990501, 32.808514, 36.213284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214249, 32.862534, 36.145313>,  <35.587158, 32.952568, 36.032032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214249, 32.862534, 36.145313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354084, -0.728144, 0.586882,
		0.074113, 0.647411, 0.758529,
		-0.932272, -0.225087, 0.283203,
		34.934566, 32.795006, 36.230274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738159, 32.756516, 36.644608>,  <35.587158, 32.952568, 36.032032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738159, 32.756516, 36.644608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371750, 32.606937, 36.586563>,  <35.151905, 32.517189, 36.551739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371750, 32.606937, 36.586563>,  <35.738159, 32.756516, 36.644608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371750, 32.606937, 36.586563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237432, -0.797075, 0.555245,
		-0.323294, 0.474167, 0.818930,
		-0.916028, -0.373948, -0.145107,
		35.096943, 32.494755, 36.543030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406403, 32.549191, 37.247543>,  <35.738159, 32.756516, 36.644608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406403, 32.549191, 37.247543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170059, 32.337791, 37.003716>,  <35.028255, 32.210953, 36.857418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170059, 32.337791, 37.003716>,  <35.406403, 32.549191, 37.247543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170059, 32.337791, 37.003716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098185, -0.797054, 0.595872,
		-0.800780, 0.292223, 0.522835,
		-0.590855, -0.528497, -0.609574,
		34.992802, 32.179241, 36.820843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939850, 32.230598, 37.738129>,  <35.406403, 32.549191, 37.247543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939850, 32.230598, 37.738129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948540, 32.033619, 37.390099>,  <34.953754, 31.915432, 37.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948540, 32.033619, 37.390099>,  <34.939850, 32.230598, 37.738129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948540, 32.033619, 37.390099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029995, -0.869565, 0.492906,
		-0.999314, -0.036807, -0.004123,
		0.021727, -0.492444, -0.870073,
		34.955059, 31.885885, 37.129078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513012, 31.724110, 37.881195>,  <34.939850, 32.230598, 37.738129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513012, 31.724110, 37.881195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733150, 31.600750, 37.570839>,  <34.865234, 31.526733, 37.384624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733150, 31.600750, 37.570839>,  <34.513012, 31.724110, 37.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733150, 31.600750, 37.570839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175920, -0.865590, 0.468834,
		-0.816193, -0.394517, -0.422121,
		0.550347, -0.308400, -0.775892,
		34.898254, 31.508230, 37.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265656, 31.034052, 37.754044>,  <34.513012, 31.724110, 37.881195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265656, 31.034052, 37.754044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636181, 31.051207, 37.604321>,  <34.858498, 31.061499, 37.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636181, 31.051207, 37.604321>,  <34.265656, 31.034052, 37.754044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636181, 31.051207, 37.604321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263276, -0.784352, 0.561674,
		-0.269500, -0.618831, -0.737846,
		0.926313, 0.042886, -0.374307,
		34.914074, 31.064072, 37.492027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417442, 30.403017, 37.609180>,  <34.265656, 31.034052, 37.754044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417442, 30.403017, 37.609180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783401, 30.561361, 37.640816>,  <35.002975, 30.656368, 37.659798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783401, 30.561361, 37.640816>,  <34.417442, 30.403017, 37.609180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783401, 30.561361, 37.640816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309726, -0.814000, 0.491401,
		0.258904, -0.425086, -0.867335,
		0.914898, 0.395862, 0.079088,
		35.057873, 30.680120, 37.664543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851223, 29.850674, 37.370876>,  <34.417442, 30.403017, 37.609180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851223, 29.850674, 37.370876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079933, 30.104744, 37.578579>,  <35.217159, 30.257185, 37.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079933, 30.104744, 37.578579>,  <34.851223, 29.850674, 37.370876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079933, 30.104744, 37.578579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405551, -0.769011, 0.494115,
		0.713166, -0.071935, -0.697295,
		0.571772, 0.635174, 0.519259,
		35.251465, 30.295296, 37.734356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501213, 29.579187, 37.424503>,  <34.851223, 29.850674, 37.370876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501213, 29.579187, 37.424503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507370, 29.843904, 37.724316>,  <35.511063, 30.002735, 37.904202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507370, 29.843904, 37.724316>,  <35.501213, 29.579187, 37.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507370, 29.843904, 37.724316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432184, -0.680380, 0.591862,
		0.901654, 0.314825, -0.296489,
		0.015392, 0.661792, 0.749529,
		35.511990, 30.042442, 37.949173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268574, 29.713589, 37.690540>,  <35.501213, 29.579187, 37.424503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268574, 29.713589, 37.690540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047295, 29.810385, 38.009392>,  <35.914528, 29.868462, 38.200703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047295, 29.810385, 38.009392>,  <36.268574, 29.713589, 37.690540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047295, 29.810385, 38.009392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699635, -0.384451, 0.602253,
		0.452194, 0.890864, 0.043375,
		-0.553201, 0.241989, 0.797126,
		35.881336, 29.882982, 38.248531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740074, 29.974424, 38.354698>,  <36.268574, 29.713589, 37.690540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740074, 29.974424, 38.354698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374210, 29.910973, 38.503418>,  <36.154694, 29.872902, 38.592651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374210, 29.910973, 38.503418>,  <36.740074, 29.974424, 38.354698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374210, 29.910973, 38.503418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386756, -0.610894, 0.690817,
		0.117546, 0.775658, 0.620111,
		-0.914660, -0.158629, 0.371799,
		36.099812, 29.863384, 38.614956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848488, 29.859753, 39.109589>,  <36.740074, 29.974424, 38.354698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848488, 29.859753, 39.109589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480961, 29.712496, 39.052666>,  <36.260445, 29.624142, 39.018513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480961, 29.712496, 39.052666>,  <36.848488, 29.859753, 39.109589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480961, 29.712496, 39.052666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177836, -0.708032, 0.683422,
		-0.352358, 0.602629, 0.716018,
		-0.918813, -0.368143, -0.142311,
		36.205318, 29.602053, 39.009972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522285, 29.793989, 39.725925>,  <36.848488, 29.859753, 39.109589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522285, 29.793989, 39.725925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341785, 29.543617, 39.471497>,  <36.233486, 29.393394, 39.318840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341785, 29.543617, 39.471497>,  <36.522285, 29.793989, 39.725925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341785, 29.543617, 39.471497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255264, -0.773521, 0.580091,
		-0.855110, 0.099400, 0.508829,
		-0.451251, -0.625927, -0.636072,
		36.206409, 29.355839, 39.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115219, 29.312183, 40.143684>,  <36.522285, 29.793989, 39.725925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115219, 29.312183, 40.143684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150585, 29.144049, 39.782463>,  <36.171803, 29.043167, 39.565731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150585, 29.144049, 39.782463>,  <36.115219, 29.312183, 40.143684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150585, 29.144049, 39.782463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324049, -0.845146, 0.425112,
		-0.941900, -0.330218, 0.061489,
		0.088413, -0.420339, -0.903050,
		36.177109, 29.017946, 39.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901978, 28.647766, 40.262691>,  <36.115219, 29.312183, 40.143684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901978, 28.647766, 40.262691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093357, 28.641279, 39.911507>,  <36.208187, 28.637386, 39.700794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093357, 28.641279, 39.911507>,  <35.901978, 28.647766, 40.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093357, 28.641279, 39.911507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369641, -0.903210, 0.218123,
		-0.796523, -0.428892, -0.426149,
		0.478453, -0.016218, -0.877963,
		36.236893, 28.636414, 39.648117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803730, 27.993368, 39.977428>,  <35.901978, 28.647766, 40.262691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803730, 27.993368, 39.977428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134567, 28.153139, 39.819252>,  <36.333069, 28.249002, 39.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134567, 28.153139, 39.819252>,  <35.803730, 27.993368, 39.977428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134567, 28.153139, 39.819252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513479, -0.823100, 0.242583,
		-0.228592, -0.403689, -0.885879,
		0.827094, 0.399427, -0.395440,
		36.382694, 28.272966, 39.700619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206516, 27.479940, 39.903294>,  <35.803730, 27.993368, 39.977428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206516, 27.479940, 39.903294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494438, 27.744724, 39.819691>,  <36.667191, 27.903595, 39.769531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494438, 27.744724, 39.819691>,  <36.206516, 27.479940, 39.903294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494438, 27.744724, 39.819691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693965, -0.678835, 0.239992,
		0.016986, -0.317790, -0.948009,
		0.719808, 0.661962, -0.209004,
		36.710381, 27.943314, 39.756989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706654, 27.159567, 39.412952>,  <36.206516, 27.479940, 39.903294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706654, 27.159567, 39.412952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917404, 27.443159, 39.600464>,  <37.043854, 27.613314, 39.712971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917404, 27.443159, 39.600464>,  <36.706654, 27.159567, 39.412952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917404, 27.443159, 39.600464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821616, -0.566050, -0.067340,
		0.217608, 0.420634, -0.880746,
		0.526872, 0.708981, 0.468777,
		37.075466, 27.655853, 39.741096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338955, 27.307434, 39.019058>,  <36.706654, 27.159567, 39.412952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338955, 27.307434, 39.019058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434673, 27.456148, 39.377834>,  <37.492104, 27.545378, 39.593102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434673, 27.456148, 39.377834>,  <37.338955, 27.307434, 39.019058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434673, 27.456148, 39.377834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860435, -0.509224, -0.018484,
		0.449874, 0.776186, -0.441756,
		0.239300, 0.371787, 0.896945,
		37.506462, 27.567684, 39.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066841, 27.455858, 38.990299>,  <37.338955, 27.307434, 39.019058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066841, 27.455858, 38.990299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995075, 27.463259, 39.383739>,  <37.952015, 27.467699, 39.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995075, 27.463259, 39.383739>,  <38.066841, 27.455858, 38.990299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995075, 27.463259, 39.383739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879885, -0.444175, 0.168850,
		0.440014, 0.895749, 0.063414,
		-0.179414, 0.018500, 0.983600,
		37.941250, 27.468809, 39.678818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662403, 27.661642, 39.354801>,  <38.066841, 27.455858, 38.990299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662403, 27.661642, 39.354801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455406, 27.450066, 39.623848>,  <38.331207, 27.323120, 39.785278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455406, 27.450066, 39.623848>,  <38.662403, 27.661642, 39.354801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455406, 27.450066, 39.623848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806172, -0.564891, 0.176022,
		0.286851, 0.633338, 0.718749,
		-0.517496, -0.528943, 0.672619,
		38.300156, 27.291382, 39.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262699, 27.500080, 39.934616>,  <38.662403, 27.661642, 39.354801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262699, 27.500080, 39.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952541, 27.256369, 40.001003>,  <38.766445, 27.110142, 40.040836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952541, 27.256369, 40.001003>,  <39.262699, 27.500080, 39.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952541, 27.256369, 40.001003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628409, -0.718614, 0.297819,
		-0.062191, 0.335221, 0.940085,
		-0.775393, -0.609279, 0.165964,
		38.719925, 27.073586, 40.050793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433987, 27.090422, 40.598999>,  <39.262699, 27.500080, 39.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433987, 27.090422, 40.598999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165031, 26.870981, 40.400230>,  <39.003658, 26.739317, 40.280972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165031, 26.870981, 40.400230>,  <39.433987, 27.090422, 40.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165031, 26.870981, 40.400230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501419, -0.831421, 0.239413,
		-0.544489, -0.088185, 0.834119,
		-0.672391, -0.548601, -0.496917,
		38.963314, 26.706400, 40.251156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274567, 26.521729, 40.959255>,  <39.433987, 27.090422, 40.598999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274567, 26.521729, 40.959255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206387, 26.406675, 40.582275>,  <39.165478, 26.337643, 40.356087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206387, 26.406675, 40.582275>,  <39.274567, 26.521729, 40.959255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206387, 26.406675, 40.582275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480066, -0.859500, 0.175492,
		-0.860514, -0.422526, 0.284584,
		-0.170450, -0.287632, -0.942451,
		39.155251, 26.320385, 40.299541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744640, 25.961319, 41.158451>,  <39.274567, 26.521729, 40.959255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744640, 25.961319, 41.158451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997353, 25.864382, 40.863934>,  <40.148979, 25.806219, 40.687225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997353, 25.864382, 40.863934>,  <39.744640, 25.961319, 41.158451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997353, 25.864382, 40.863934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154781, 0.891303, -0.426172,
		0.759538, 0.383211, 0.525597,
		0.631780, -0.242341, -0.736292,
		40.186886, 25.791679, 40.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741077, 26.115417, 41.848320>,  <39.744640, 25.961319, 41.158451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741077, 26.115417, 41.848320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490227, 25.831255, 41.720547>,  <39.339718, 25.660757, 41.643883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490227, 25.831255, 41.720547>,  <39.741077, 26.115417, 41.848320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490227, 25.831255, 41.720547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778885, -0.575819, -0.248536,
		-0.007376, -0.404666, 0.914435,
		-0.627123, -0.710406, -0.319436,
		39.302090, 25.618134, 41.624718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094448, 25.465178, 41.976631>,  <39.741077, 26.115417, 41.848320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094448, 25.465178, 41.976631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824356, 25.389856, 41.691364>,  <39.662300, 25.344664, 41.520203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824356, 25.389856, 41.691364>,  <40.094448, 25.465178, 41.976631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824356, 25.389856, 41.691364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629304, -0.651416, -0.423832,
		-0.384760, -0.734982, 0.558355,
		-0.675231, -0.188301, -0.713166,
		39.621788, 25.333366, 41.477413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041534, 24.744074, 41.870377>,  <40.094448, 25.465178, 41.976631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041534, 24.744074, 41.870377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905647, 24.899525, 41.527786>,  <39.824116, 24.992796, 41.322231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905647, 24.899525, 41.527786>,  <40.041534, 24.744074, 41.870377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905647, 24.899525, 41.527786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562069, -0.646249, -0.516178,
		-0.754101, -0.656757, 0.001109,
		-0.339721, 0.388628, -0.856480,
		39.803730, 25.016113, 41.270844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810757, 24.216902, 41.487579>,  <40.041534, 24.744074, 41.870377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810757, 24.216902, 41.487579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925358, 24.512705, 41.243927>,  <39.994118, 24.690187, 41.097736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925358, 24.512705, 41.243927>,  <39.810757, 24.216902, 41.487579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925358, 24.512705, 41.243927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359906, -0.672293, -0.646908,
		-0.887911, -0.033892, -0.458765,
		0.286500, 0.739509, -0.609134,
		40.011307, 24.734558, 41.061188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477299, 24.271732, 40.722057>,  <39.810757, 24.216902, 41.487579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477299, 24.271732, 40.722057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850311, 24.413904, 40.747505>,  <40.074120, 24.499208, 40.762775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850311, 24.413904, 40.747505>,  <39.477299, 24.271732, 40.722057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850311, 24.413904, 40.747505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310338, -0.698882, -0.644402,
		-0.184577, 0.620672, -0.762035,
		0.932535, 0.355431, 0.063620,
		40.130074, 24.520533, 40.766590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630714, 24.418491, 40.057564>,  <39.477299, 24.271732, 40.722057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630714, 24.418491, 40.057564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949207, 24.365984, 40.293797>,  <40.140305, 24.334480, 40.435535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949207, 24.365984, 40.293797>,  <39.630714, 24.418491, 40.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949207, 24.365984, 40.293797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351595, -0.694004, -0.628283,
		0.492337, 0.707904, -0.506435,
		0.796232, -0.131267, 0.590579,
		40.188076, 24.326603, 40.470970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264015, 24.416475, 39.742680>,  <39.630714, 24.418491, 40.057564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264015, 24.416475, 39.742680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273609, 24.165840, 40.054272>,  <40.279366, 24.015459, 40.241226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273609, 24.165840, 40.054272>,  <40.264015, 24.416475, 39.742680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273609, 24.165840, 40.054272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447470, -0.690063, -0.568844,
		0.893977, 0.362216, 0.263827,
		0.023987, -0.626588, 0.778981,
		40.280804, 23.977863, 40.287968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996162, 24.784214, 39.787868>,  <40.264015, 24.416475, 39.742680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996162, 24.784214, 39.787868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094547, 24.496572, 39.527901>,  <41.153576, 24.323988, 39.371922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094547, 24.496572, 39.527901>,  <40.996162, 24.784214, 39.787868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094547, 24.496572, 39.527901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078643, 0.653499, -0.752831,
		0.966085, 0.236277, 0.104180,
		0.245958, -0.719106, -0.649917,
		41.168335, 24.280840, 39.332924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561359, 25.018055, 39.362064>,  <40.996162, 24.784214, 39.787868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561359, 25.018055, 39.362064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279152, 24.779291, 39.209259>,  <41.109825, 24.636032, 39.117577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279152, 24.779291, 39.209259>,  <41.561359, 25.018055, 39.362064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279152, 24.779291, 39.209259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165010, 0.662595, -0.730575,
		0.689209, -0.452401, -0.565971,
		-0.705523, -0.596910, -0.382016,
		41.067493, 24.600218, 39.094654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676487, 24.879839, 38.609802>,  <41.561359, 25.018055, 39.362064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676487, 24.879839, 38.609802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285469, 24.849550, 38.688469>,  <41.050858, 24.831377, 38.735668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285469, 24.849550, 38.688469>,  <41.676487, 24.879839, 38.609802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285469, 24.849550, 38.688469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202169, 0.600407, -0.773718,
		-0.059491, -0.796102, -0.602232,
		-0.977542, -0.075724, 0.196665,
		40.992207, 24.826834, 38.747467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338398, 24.730831, 38.003807>,  <41.676487, 24.879839, 38.609802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338398, 24.730831, 38.003807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074421, 24.912916, 38.242893>,  <40.916035, 25.022167, 38.386345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074421, 24.912916, 38.242893>,  <41.338398, 24.730831, 38.003807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074421, 24.912916, 38.242893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374805, 0.490018, -0.787022,
		-0.651151, -0.743414, -0.152768,
		-0.659942, 0.455212, 0.597711,
		40.876438, 25.049480, 38.422207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653954, 24.758400, 37.658371>,  <41.338398, 24.730831, 38.003807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653954, 24.758400, 37.658371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662346, 25.043667, 37.938644>,  <40.667381, 25.214827, 38.106808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662346, 25.043667, 37.938644>,  <40.653954, 24.758400, 37.658371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662346, 25.043667, 37.938644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476166, 0.623370, -0.620222,
		-0.879105, -0.320627, 0.352665,
		0.020981, 0.713168, 0.700680,
		40.668640, 25.257618, 38.148849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958401, 25.152630, 37.603390>,  <40.653954, 24.758400, 37.658371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958401, 25.152630, 37.603390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210625, 25.401266, 37.789303>,  <40.361958, 25.550447, 37.900848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210625, 25.401266, 37.789303>,  <39.958401, 25.152630, 37.603390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210625, 25.401266, 37.789303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499697, 0.783340, -0.369705,
		-0.593887, 0.000871, 0.804548,
		0.630557, 0.621593, 0.464780,
		40.399792, 25.587744, 37.928738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519737, 25.610847, 38.120171>,  <39.958401, 25.152630, 37.603390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519737, 25.610847, 38.120171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867237, 25.787580, 38.030674>,  <40.075737, 25.893621, 37.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867237, 25.787580, 38.030674>,  <39.519737, 25.610847, 38.120171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867237, 25.787580, 38.030674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490077, 0.832089, -0.259716,
		0.071418, 0.335276, 0.939409,
		0.868749, 0.441834, -0.223737,
		40.127861, 25.920132, 37.963554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459721, 26.356020, 38.363964>,  <39.519737, 25.610847, 38.120171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459721, 26.356020, 38.363964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777725, 26.383144, 38.122849>,  <39.968529, 26.399418, 37.978180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777725, 26.383144, 38.122849>,  <39.459721, 26.356020, 38.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777725, 26.383144, 38.122849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258730, 0.936710, -0.235865,
		0.548643, 0.343476, 0.762244,
		0.795016, 0.067810, -0.602787,
		40.016232, 26.403488, 37.942013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647141, 26.952936, 38.401241>,  <39.459721, 26.356020, 38.363964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647141, 26.952936, 38.401241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856697, 26.869886, 38.070805>,  <39.982430, 26.820057, 37.872543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856697, 26.869886, 38.070805>,  <39.647141, 26.952936, 38.401241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856697, 26.869886, 38.070805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115099, 0.943687, -0.310173,
		0.843974, 0.257579, 0.470490,
		0.523890, -0.207625, -0.826094,
		40.013863, 26.807598, 37.822975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195354, 27.513611, 38.302635>,  <39.647141, 26.952936, 38.401241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195354, 27.513611, 38.302635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101025, 27.322790, 37.963978>,  <40.044426, 27.208298, 37.760784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101025, 27.322790, 37.963978>,  <40.195354, 27.513611, 38.302635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101025, 27.322790, 37.963978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150389, 0.878637, -0.453189,
		0.960087, 0.020451, -0.278951,
		-0.235829, -0.477052, -0.846644,
		40.030277, 27.179674, 37.709984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578358, 27.868076, 37.675594>,  <40.195354, 27.513611, 38.302635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578358, 27.868076, 37.675594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276917, 27.651741, 37.526154>,  <40.096050, 27.521940, 37.436489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276917, 27.651741, 37.526154>,  <40.578358, 27.868076, 37.675594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276917, 27.651741, 37.526154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333588, 0.804402, -0.491586,
		0.566395, -0.245831, -0.786616,
		-0.753602, -0.540837, -0.373602,
		40.050835, 27.489491, 37.414074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611797, 27.919687, 36.888535>,  <40.578358, 27.868076, 37.675594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611797, 27.919687, 36.888535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234379, 27.838224, 36.993027>,  <40.007927, 27.789347, 37.055721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234379, 27.838224, 36.993027>,  <40.611797, 27.919687, 36.888535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234379, 27.838224, 36.993027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321530, 0.752659, -0.574564,
		-0.079603, -0.626122, -0.775651,
		-0.943548, -0.203658, 0.261231,
		39.951313, 27.777126, 37.071396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156914, 27.958244, 36.156830>,  <40.611797, 27.919687, 36.888535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156914, 27.958244, 36.156830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897419, 27.980715, 36.460403>,  <39.741722, 27.994198, 36.642548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897419, 27.980715, 36.460403>,  <40.156914, 27.958244, 36.156830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897419, 27.980715, 36.460403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452539, 0.773312, -0.444069,
		-0.611844, -0.631532, -0.476251,
		-0.648734, 0.056178, 0.758939,
		39.702797, 27.997568, 36.688084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652527, 28.205868, 35.894272>,  <40.156914, 27.958244, 36.156830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652527, 28.205868, 35.894272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542652, 28.316801, 36.262539>,  <39.476727, 28.383362, 36.483498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542652, 28.316801, 36.262539>,  <39.652527, 28.205868, 35.894272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542652, 28.316801, 36.262539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511741, 0.768464, -0.384168,
		-0.814043, -0.576671, -0.069167,
		-0.274691, 0.277333, 0.920669,
		39.460243, 28.400002, 36.538738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993557, 28.427782, 35.794193>,  <39.652527, 28.205868, 35.894272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993557, 28.427782, 35.794193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123112, 28.576422, 36.142220>,  <39.200844, 28.665606, 36.351036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123112, 28.576422, 36.142220>,  <38.993557, 28.427782, 35.794193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123112, 28.576422, 36.142220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395506, 0.888604, -0.232289,
		-0.859462, -0.268881, 0.434774,
		0.323883, 0.371599, 0.870065,
		39.220276, 28.687901, 36.403240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450703, 28.673176, 35.993484>,  <38.993557, 28.427782, 35.794193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450703, 28.673176, 35.993484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708267, 28.865959, 36.231171>,  <38.862808, 28.981630, 36.373783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708267, 28.865959, 36.231171>,  <38.450703, 28.673176, 35.993484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708267, 28.865959, 36.231171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462120, 0.863973, -0.199988,
		-0.609769, -0.145821, 0.779049,
		0.643915, 0.481961, 0.594211,
		38.901443, 29.010548, 36.409435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966038, 29.197699, 36.468388>,  <38.450703, 28.673176, 35.993484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966038, 29.197699, 36.468388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353119, 29.287451, 36.422424>,  <38.585369, 29.341303, 36.394848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353119, 29.287451, 36.422424>,  <37.966038, 29.197699, 36.468388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353119, 29.287451, 36.422424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247231, 0.933797, -0.258651,
		0.049265, 0.278706, 0.959112,
		0.967703, 0.224380, -0.114908,
		38.643429, 29.354765, 36.387951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162930, 29.867970, 36.842079>,  <37.966038, 29.197699, 36.468388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162930, 29.867970, 36.842079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450340, 29.831385, 36.566296>,  <38.622787, 29.809435, 36.400826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450340, 29.831385, 36.566296>,  <38.162930, 29.867970, 36.842079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450340, 29.831385, 36.566296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082726, 0.973039, -0.215294,
		0.690561, 0.211731, 0.691588,
		0.718527, -0.091461, -0.689459,
		38.665897, 29.803946, 36.359459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377430, 30.524052, 36.762260>,  <38.162930, 29.867970, 36.842079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377430, 30.524052, 36.762260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520561, 30.352074, 36.430695>,  <38.606441, 30.248886, 36.231754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520561, 30.352074, 36.430695>,  <38.377430, 30.524052, 36.762260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520561, 30.352074, 36.430695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103261, 0.864030, -0.492736,
		0.928059, 0.261911, 0.264780,
		0.357831, -0.429947, -0.828917,
		38.627911, 30.223089, 36.182018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862465, 31.015293, 36.487335>,  <38.377430, 30.524052, 36.762260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862465, 31.015293, 36.487335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744640, 30.781521, 36.184898>,  <38.673946, 30.641256, 36.003437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744640, 30.781521, 36.184898>,  <38.862465, 31.015293, 36.487335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744640, 30.781521, 36.184898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159444, 0.810159, -0.564109,
		0.942236, -0.045613, -0.331829,
		-0.294565, -0.584432, -0.756089,
		38.656269, 30.606192, 35.958073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125359, 31.431236, 35.974693>,  <38.862465, 31.015293, 36.487335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125359, 31.431236, 35.974693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862259, 31.173742, 35.818249>,  <38.704399, 31.019245, 35.724380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862259, 31.173742, 35.818249>,  <39.125359, 31.431236, 35.974693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862259, 31.173742, 35.818249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307634, 0.703544, -0.640615,
		0.687549, -0.301047, -0.660792,
		-0.657752, -0.643736, -0.391109,
		38.664932, 30.980621, 35.700916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212051, 31.567184, 35.205296>,  <39.125359, 31.431236, 35.974693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212051, 31.567184, 35.205296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861858, 31.407398, 35.314079>,  <38.651745, 31.311525, 35.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861858, 31.407398, 35.314079>,  <39.212051, 31.567184, 35.205296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861858, 31.407398, 35.314079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480355, 0.780913, -0.399291,
		-0.052874, -0.480209, -0.875559,
		-0.875479, -0.399468, 0.271961,
		38.599216, 31.287558, 35.395668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788651, 31.647070, 34.552517>,  <39.212051, 31.567184, 35.205296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788651, 31.647070, 34.552517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536083, 31.578432, 34.855003>,  <38.384544, 31.537249, 35.036495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536083, 31.578432, 34.855003>,  <38.788651, 31.647070, 34.552517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536083, 31.578432, 34.855003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697165, 0.552601, -0.456720,
		-0.339516, -0.815590, -0.468554,
		-0.631419, -0.171596, 0.756218,
		38.346657, 31.526953, 35.081867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185707, 31.628084, 34.243858>,  <38.788651, 31.647070, 34.552517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185707, 31.628084, 34.243858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061462, 31.661270, 34.622623>,  <37.986916, 31.681183, 34.849880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061462, 31.661270, 34.622623>,  <38.185707, 31.628084, 34.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061462, 31.661270, 34.622623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847587, 0.426739, -0.315419,
		-0.430253, -0.900561, -0.062228,
		-0.310609, 0.082966, 0.946910,
		37.968281, 31.686159, 34.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539207, 31.502605, 34.212070>,  <38.185707, 31.628084, 34.243858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539207, 31.502605, 34.212070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589508, 31.723740, 34.541569>,  <37.619686, 31.856421, 34.739269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589508, 31.723740, 34.541569>,  <37.539207, 31.502605, 34.212070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589508, 31.723740, 34.541569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789836, 0.558220, -0.254065,
		-0.600289, -0.618677, 0.506846,
		0.125748, 0.552837, 0.823747,
		37.627232, 31.889591, 34.788692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911327, 31.541410, 34.525703>,  <37.539207, 31.502605, 34.212070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911327, 31.541410, 34.525703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114071, 31.863270, 34.649399>,  <37.235718, 32.056385, 34.723618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114071, 31.863270, 34.649399>,  <36.911327, 31.541410, 34.525703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114071, 31.863270, 34.649399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759505, 0.586534, -0.281302,
		-0.407730, -0.092289, 0.908427,
		0.506862, 0.804649, 0.309241,
		37.266129, 32.104664, 34.742172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393875, 31.941217, 34.812489>,  <36.911327, 31.541410, 34.525703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393875, 31.941217, 34.812489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700371, 32.188839, 34.743603>,  <36.884266, 32.337410, 34.702271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700371, 32.188839, 34.743603>,  <36.393875, 31.941217, 34.812489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700371, 32.188839, 34.743603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642093, 0.747891, -0.168451,
		0.024519, 0.239652, 0.970549,
		0.766235, 0.619053, -0.172216,
		36.930241, 32.374554, 34.691936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124531, 32.524334, 35.029293>,  <36.393875, 31.941217, 34.812489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124531, 32.524334, 35.029293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438862, 32.664650, 34.825558>,  <36.627460, 32.748840, 34.703316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438862, 32.664650, 34.825558>,  <36.124531, 32.524334, 35.029293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438862, 32.664650, 34.825558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440998, 0.895236, -0.063820,
		0.433593, 0.274769, 0.858195,
		0.785823, 0.350790, -0.509341,
		36.674610, 32.769886, 34.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256336, 33.213230, 35.288898>,  <36.124531, 32.524334, 35.029293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256336, 33.213230, 35.288898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455910, 33.204247, 34.942360>,  <36.575653, 33.198856, 34.734436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455910, 33.204247, 34.942360>,  <36.256336, 33.213230, 35.288898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455910, 33.204247, 34.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379022, 0.893336, -0.241441,
		0.779366, 0.448828, 0.437198,
		0.498930, -0.022463, -0.866351,
		36.605587, 33.197506, 34.682453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542049, 33.859009, 35.229816>,  <36.256336, 33.213230, 35.288898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542049, 33.859009, 35.229816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543743, 33.715965, 34.856270>,  <36.544758, 33.630138, 34.632141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543743, 33.715965, 34.856270>,  <36.542049, 33.859009, 35.229816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543743, 33.715965, 34.856270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423722, 0.845250, -0.325595,
		0.905782, 0.397077, -0.147946,
		0.004235, -0.357606, -0.933863,
		36.545013, 33.608685, 34.576111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828117, 34.335011, 34.817879>,  <36.542049, 33.859009, 35.229816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828117, 34.335011, 34.817879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608204, 34.115391, 34.566074>,  <36.476257, 33.983620, 34.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608204, 34.115391, 34.566074>,  <36.828117, 34.335011, 34.817879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608204, 34.115391, 34.566074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336290, 0.835343, -0.434869,
		0.764624, -0.027383, -0.643894,
		-0.549780, -0.549046, -0.629515,
		36.443272, 33.950676, 34.377220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757042, 34.720116, 34.257019>,  <36.828117, 34.335011, 34.817879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757042, 34.720116, 34.257019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479637, 34.445141, 34.170788>,  <36.313194, 34.280155, 34.119049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479637, 34.445141, 34.170788>,  <36.757042, 34.720116, 34.257019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479637, 34.445141, 34.170788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582726, 0.711195, -0.393233,
		0.423643, -0.147087, -0.893808,
		-0.693511, -0.687435, -0.215581,
		36.271584, 34.238911, 34.106113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722923, 34.702091, 33.512428>,  <36.757042, 34.720116, 34.257019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722923, 34.702091, 33.512428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380291, 34.559212, 33.661392>,  <36.174713, 34.473484, 33.750771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380291, 34.559212, 33.661392>,  <36.722923, 34.702091, 33.512428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380291, 34.559212, 33.661392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514377, 0.648565, -0.561052,
		-0.041125, -0.672141, -0.739280,
		-0.856577, -0.357196, 0.372406,
		36.123318, 34.452053, 33.773113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326340, 34.582321, 32.910824>,  <36.722923, 34.702091, 33.512428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326340, 34.582321, 32.910824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070541, 34.617107, 33.216366>,  <35.917061, 34.637978, 33.399693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070541, 34.617107, 33.216366>,  <36.326340, 34.582321, 32.910824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070541, 34.617107, 33.216366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533691, 0.664953, -0.522505,
		-0.553368, -0.741806, -0.378825,
		-0.639498, 0.086962, 0.763858,
		35.878693, 34.643196, 33.445522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603077, 34.493347, 32.625683>,  <36.326340, 34.582321, 32.910824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603077, 34.493347, 32.625683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573013, 34.678303, 32.979076>,  <35.554977, 34.789276, 33.191113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573013, 34.678303, 32.979076>,  <35.603077, 34.493347, 32.625683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573013, 34.678303, 32.979076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538069, 0.727132, -0.426334,
		-0.839543, -0.507418, 0.194150,
		-0.075157, 0.462392, 0.883484,
		35.550465, 34.817020, 33.244122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879364, 34.678772, 32.729279>,  <35.603077, 34.493347, 32.625683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879364, 34.678772, 32.729279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085945, 34.940475, 32.950268>,  <35.209892, 35.097496, 33.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085945, 34.940475, 32.950268>,  <34.879364, 34.678772, 32.729279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085945, 34.940475, 32.950268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438740, 0.756227, -0.485414,
		-0.735380, 0.008303, 0.677605,
		0.516454, 0.654256, 0.552471,
		35.240883, 35.136753, 33.116009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371033, 35.260113, 32.891651>,  <34.879364, 34.678772, 32.729279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371033, 35.260113, 32.891651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744354, 35.396820, 32.935730>,  <34.968346, 35.478844, 32.962177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744354, 35.396820, 32.935730>,  <34.371033, 35.260113, 32.891651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744354, 35.396820, 32.935730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213850, 0.775501, -0.594026,
		-0.288477, 0.530840, 0.796863,
		0.933300, 0.341772, 0.110194,
		35.024345, 35.499352, 32.968788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198338, 35.864410, 32.869827>,  <34.371033, 35.260113, 32.891651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198338, 35.864410, 32.869827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596413, 35.884445, 32.836159>,  <34.835258, 35.896465, 32.815956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596413, 35.884445, 32.836159>,  <34.198338, 35.864410, 32.869827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596413, 35.884445, 32.836159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091999, 0.772838, -0.627900,
		0.033604, 0.632625, 0.773729,
		0.995192, 0.050082, -0.084171,
		34.894970, 35.899471, 32.810905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299805, 36.615437, 32.847206>,  <34.198338, 35.864410, 32.869827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299805, 36.615437, 32.847206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623619, 36.426426, 32.707851>,  <34.817905, 36.313019, 32.624237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623619, 36.426426, 32.707851>,  <34.299805, 36.615437, 32.847206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623619, 36.426426, 32.707851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126604, 0.719983, -0.682346,
		0.573263, 0.508273, 0.642673,
		0.809532, -0.472528, -0.348390,
		34.866478, 36.284668, 32.603333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720535, 37.198322, 32.656002>,  <34.299805, 36.615437, 32.847206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720535, 37.198322, 32.656002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818436, 36.867920, 32.452900>,  <34.877178, 36.669678, 32.331039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818436, 36.867920, 32.452900>,  <34.720535, 37.198322, 32.656002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818436, 36.867920, 32.452900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065867, 0.536638, -0.841238,
		0.967345, 0.172453, 0.185752,
		0.244755, -0.826002, -0.507755,
		34.891861, 36.620121, 32.300575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225559, 37.373829, 32.265404>,  <34.720535, 37.198322, 32.656002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225559, 37.373829, 32.265404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123089, 37.038059, 32.073681>,  <35.061607, 36.836597, 31.958647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123089, 37.038059, 32.073681>,  <35.225559, 37.373829, 32.265404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123089, 37.038059, 32.073681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187244, 0.443368, -0.876564,
		0.948321, -0.314304, 0.043596,
		-0.256178, -0.839427, -0.479307,
		35.046234, 36.786232, 31.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806427, 37.187103, 31.947332>,  <35.225559, 37.373829, 32.265404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806427, 37.187103, 31.947332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473949, 37.044014, 31.777084>,  <35.274464, 36.958160, 31.674936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473949, 37.044014, 31.777084>,  <35.806427, 37.187103, 31.947332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473949, 37.044014, 31.777084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195378, 0.528769, -0.825973,
		0.520515, -0.769703, -0.369622,
		-0.831199, -0.357715, -0.425616,
		35.224590, 36.936695, 31.649399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274078, 36.695206, 32.364056>,  <35.806427, 37.187103, 31.947332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274078, 36.695206, 32.364056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659939, 36.797104, 32.337051>,  <36.891457, 36.858242, 32.320850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659939, 36.797104, 32.337051>,  <36.274078, 36.695206, 32.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659939, 36.797104, 32.337051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263528, -0.934237, 0.240324,
		-0.001848, -0.249619, -0.968342,
		0.964650, 0.254741, -0.067508,
		36.949333, 36.873528, 32.316799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675426, 36.184357, 31.993841>,  <36.274078, 36.695206, 32.364056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675426, 36.184357, 31.993841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989460, 36.354179, 32.174236>,  <37.177879, 36.456074, 32.282475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989460, 36.354179, 32.174236>,  <36.675426, 36.184357, 31.993841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989460, 36.354179, 32.174236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395540, -0.903972, 0.162426,
		0.476641, 0.050865, -0.877626,
		0.785087, 0.424555, 0.450989,
		37.224987, 36.481544, 32.309532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236870, 35.886738, 31.760441>,  <36.675426, 36.184357, 31.993841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236870, 35.886738, 31.760441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368649, 36.024143, 32.112228>,  <37.447716, 36.106586, 32.323299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368649, 36.024143, 32.112228>,  <37.236870, 35.886738, 31.760441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368649, 36.024143, 32.112228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508702, -0.849290, 0.141167,
		0.795417, 0.400881, -0.454539,
		0.329444, 0.343511, 0.879469,
		37.467484, 36.127197, 32.376068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941612, 35.631573, 31.794657>,  <37.236870, 35.886738, 31.760441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941612, 35.631573, 31.794657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870735, 35.743591, 32.172054>,  <37.828209, 35.810802, 32.398491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870735, 35.743591, 32.172054>,  <37.941612, 35.631573, 31.794657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870735, 35.743591, 32.172054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659813, -0.677507, 0.325008,
		0.730240, 0.680117, -0.064728,
		-0.177190, 0.280043, 0.943493,
		37.817577, 35.827602, 32.455101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588772, 35.881428, 32.047264>,  <37.941612, 35.631573, 31.794657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588772, 35.881428, 32.047264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373814, 35.775356, 32.367489>,  <38.244839, 35.711716, 32.559624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373814, 35.775356, 32.367489>,  <38.588772, 35.881428, 32.047264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373814, 35.775356, 32.367489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741793, -0.600222, 0.299127,
		0.401191, 0.754596, 0.519260,
		-0.537391, -0.265176, 0.800557,
		38.212597, 35.695805, 32.607655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117371, 35.917679, 32.619396>,  <38.588772, 35.881428, 32.047264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117371, 35.917679, 32.619396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809906, 35.670628, 32.685974>,  <38.625427, 35.522396, 32.725922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809906, 35.670628, 32.685974>,  <39.117371, 35.917679, 32.619396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809906, 35.670628, 32.685974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625051, -0.669931, 0.400631,
		-0.135934, 0.411984, 0.900995,
		-0.768657, -0.617626, 0.166444,
		38.579308, 35.485340, 32.735909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251816, 35.568672, 33.238083>,  <39.117371, 35.917679, 32.619396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251816, 35.568672, 33.238083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986412, 35.333065, 33.053555>,  <38.827171, 35.191700, 32.942837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986412, 35.333065, 33.053555>,  <39.251816, 35.568672, 33.238083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986412, 35.333065, 33.053555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526330, -0.805698, 0.271713,
		-0.531726, -0.062520, 0.844606,
		-0.663509, -0.589018, -0.461317,
		38.787361, 35.156361, 32.915161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308712, 35.028152, 33.641056>,  <39.251816, 35.568672, 33.238083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308712, 35.028152, 33.641056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101746, 34.880638, 33.332180>,  <38.977566, 34.792130, 33.146854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101746, 34.880638, 33.332180>,  <39.308712, 35.028152, 33.641056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101746, 34.880638, 33.332180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324659, -0.919505, 0.221602,
		-0.791756, -0.136039, 0.595496,
		-0.517415, -0.368788, -0.772190,
		38.946522, 34.770000, 33.100525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135792, 34.451797, 33.836765>,  <39.308712, 35.028152, 33.641056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135792, 34.451797, 33.836765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039177, 34.384491, 33.454487>,  <38.981209, 34.344109, 33.225121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039177, 34.384491, 33.454487>,  <39.135792, 34.451797, 33.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039177, 34.384491, 33.454487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298037, -0.950114, 0.091960,
		-0.923490, -0.262620, 0.279638,
		-0.241538, -0.168267, -0.955691,
		38.966717, 34.334011, 33.167778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709656, 33.868397, 33.836742>,  <39.135792, 34.451797, 33.836765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709656, 33.868397, 33.836742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883335, 33.873482, 33.476452>,  <38.987541, 33.876534, 33.260277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883335, 33.873482, 33.476452>,  <38.709656, 33.868397, 33.836742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883335, 33.873482, 33.476452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270692, -0.955529, 0.117006,
		-0.859185, -0.294624, -0.418328,
		0.434198, 0.012708, -0.900728,
		39.013596, 33.877293, 33.206234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649208, 33.217258, 33.642445>,  <38.709656, 33.868397, 33.836742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649208, 33.217258, 33.642445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930031, 33.358772, 33.395237>,  <39.098526, 33.443680, 33.246914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930031, 33.358772, 33.395237>,  <38.649208, 33.217258, 33.642445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930031, 33.358772, 33.395237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415769, -0.908223, -0.047613,
		-0.578144, -0.223527, -0.784720,
		0.702058, 0.353789, -0.618019,
		39.140648, 33.464909, 33.209831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897858, 32.717857, 33.236725>,  <38.649208, 33.217258, 33.642445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897858, 32.717857, 33.236725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208420, 32.959400, 33.164558>,  <39.394756, 33.104324, 33.121258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208420, 32.959400, 33.164558>,  <38.897858, 32.717857, 33.236725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208420, 32.959400, 33.164558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606249, -0.793824, -0.048007,
		-0.172209, -0.072105, -0.982418,
		0.776406, 0.603857, -0.180418,
		39.441341, 33.140556, 33.110432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153622, 32.576767, 32.591991>,  <38.897858, 32.717857, 33.236725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153622, 32.576767, 32.591991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444592, 32.738838, 32.813507>,  <39.619175, 32.836082, 32.946415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444592, 32.738838, 32.813507>,  <39.153622, 32.576767, 32.591991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444592, 32.738838, 32.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520902, -0.851413, -0.061294,
		0.446665, 0.333055, -0.830400,
		0.727428, 0.405179, 0.553786,
		39.662819, 32.860394, 32.979641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816746, 32.366478, 32.298931>,  <39.153622, 32.576767, 32.591991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816746, 32.366478, 32.298931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862511, 32.458210, 32.685574>,  <39.889969, 32.513248, 32.917557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862511, 32.458210, 32.685574>,  <39.816746, 32.366478, 32.298931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862511, 32.458210, 32.685574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474470, -0.867458, 0.149646,
		0.872804, 0.441503, -0.208057,
		0.114412, 0.229328, 0.966601,
		39.896835, 32.527008, 32.975555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468342, 32.054253, 32.447689>,  <39.816746, 32.366478, 32.298931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468342, 32.054253, 32.447689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338264, 32.156120, 32.811974>,  <40.260220, 32.217239, 33.030544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338264, 32.156120, 32.811974>,  <40.468342, 32.054253, 32.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338264, 32.156120, 32.811974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591051, -0.697031, 0.405964,
		0.738180, 0.670293, 0.076147,
		-0.325191, 0.254667, 0.910711,
		40.240707, 32.232521, 33.085186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039204, 32.109882, 32.832100>,  <40.468342, 32.054253, 32.447689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039204, 32.109882, 32.832100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751133, 32.047291, 33.102467>,  <40.578289, 32.009735, 33.264687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751133, 32.047291, 33.102467>,  <41.039204, 32.109882, 32.832100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751133, 32.047291, 33.102467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578502, -0.673242, 0.460523,
		0.382993, 0.722675, 0.575375,
		-0.720175, -0.156479, 0.675916,
		40.535080, 32.000347, 33.305241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398663, 31.892338, 33.360477>,  <41.039204, 32.109882, 32.832100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398663, 31.892338, 33.360477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032154, 31.791079, 33.484653>,  <40.812248, 31.730324, 33.559158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032154, 31.791079, 33.484653>,  <41.398663, 31.892338, 33.360477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032154, 31.791079, 33.484653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395719, -0.692269, 0.603466,
		0.062141, 0.675782, 0.734478,
		-0.916267, -0.253147, 0.310438,
		40.757275, 31.715134, 33.577785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353024, 31.944132, 34.099838>,  <41.398663, 31.892338, 33.360477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353024, 31.944132, 34.099838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063618, 31.678482, 34.024509>,  <40.889973, 31.519093, 33.979313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063618, 31.678482, 34.024509>,  <41.353024, 31.944132, 34.099838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063618, 31.678482, 34.024509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346635, -0.585451, 0.732865,
		-0.596968, 0.464959, 0.653791,
		-0.723515, -0.664124, -0.188324,
		40.846561, 31.479244, 33.968014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024071, 31.797310, 34.737759>,  <41.353024, 31.944132, 34.099838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024071, 31.797310, 34.737759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921627, 31.481604, 34.514523>,  <40.860161, 31.292179, 34.380581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921627, 31.481604, 34.514523>,  <41.024071, 31.797310, 34.737759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921627, 31.481604, 34.514523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079839, -0.592644, 0.801498,
		-0.963345, 0.160714, 0.214797,
		-0.256110, -0.789268, -0.558090,
		40.844795, 31.244823, 34.347095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710960, 31.415512, 35.244301>,  <41.024071, 31.797310, 34.737759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710960, 31.415512, 35.244301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785080, 31.143114, 34.960918>,  <40.829552, 30.979675, 34.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785080, 31.143114, 34.960918>,  <40.710960, 31.415512, 35.244301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785080, 31.143114, 34.960918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016962, -0.723051, 0.690587,
		-0.982537, -0.115945, -0.145528,
		0.185294, -0.680995, -0.708457,
		40.840668, 30.938816, 34.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301006, 30.843269, 35.392380>,  <40.710960, 31.415512, 35.244301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301006, 30.843269, 35.392380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593456, 30.709085, 35.154751>,  <40.768929, 30.628576, 35.012173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593456, 30.709085, 35.154751>,  <40.301006, 30.843269, 35.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593456, 30.709085, 35.154751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190919, -0.735372, 0.650214,
		-0.654982, -0.588809, -0.473605,
		0.731128, -0.335459, -0.594070,
		40.812794, 30.608448, 34.976528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230812, 30.121006, 35.367298>,  <40.301006, 30.843269, 35.392380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230812, 30.121006, 35.367298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608688, 30.166880, 35.244392>,  <40.835415, 30.194403, 35.170650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608688, 30.166880, 35.244392>,  <40.230812, 30.121006, 35.367298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608688, 30.166880, 35.244392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291672, -0.722164, 0.627222,
		-0.149961, -0.682149, -0.715670,
		0.944690, 0.114683, -0.307260,
		40.892094, 30.201284, 35.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548748, 29.422888, 35.359428>,  <40.230812, 30.121006, 35.367298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548748, 29.422888, 35.359428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849941, 29.685947, 35.368526>,  <41.030659, 29.843782, 35.373985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849941, 29.685947, 35.368526>,  <40.548748, 29.422888, 35.359428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849941, 29.685947, 35.368526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384691, -0.467977, 0.795619,
		0.533883, -0.590336, -0.605369,
		0.752982, 0.657648, 0.022748,
		41.075836, 29.883242, 35.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172859, 29.118874, 35.319241>,  <40.548748, 29.422888, 35.359428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172859, 29.118874, 35.319241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250317, 29.461941, 35.509781>,  <41.296791, 29.667782, 35.624104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250317, 29.461941, 35.509781>,  <41.172859, 29.118874, 35.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250317, 29.461941, 35.509781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304000, -0.514096, 0.802053,
		0.932783, -0.010506, -0.360285,
		0.193648, 0.857668, 0.476346,
		41.308411, 29.719242, 35.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746429, 29.053391, 35.772068>,  <41.172859, 29.118874, 35.319241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746429, 29.053391, 35.772068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598606, 29.390871, 35.927807>,  <41.509911, 29.593359, 36.021252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598606, 29.390871, 35.927807>,  <41.746429, 29.053391, 35.772068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598606, 29.390871, 35.927807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286237, -0.295268, 0.911529,
		0.884020, 0.448313, -0.132378,
		-0.369563, 0.843701, 0.389347,
		41.487736, 29.643982, 36.044609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225731, 29.280020, 36.258209>,  <41.746429, 29.053391, 35.772068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225731, 29.280020, 36.258209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899414, 29.484745, 36.365940>,  <41.703625, 29.607580, 36.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899414, 29.484745, 36.365940>,  <42.225731, 29.280020, 36.258209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899414, 29.484745, 36.365940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177750, -0.221256, 0.958880,
		0.550359, 0.830115, 0.089523,
		-0.815788, 0.511815, 0.269323,
		41.654678, 29.638290, 36.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472836, 29.727070, 36.837227>,  <42.225731, 29.280020, 36.258209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472836, 29.727070, 36.837227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077263, 29.674826, 36.865391>,  <41.839920, 29.643478, 36.882290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077263, 29.674826, 36.865391>,  <42.472836, 29.727070, 36.837227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077263, 29.674826, 36.865391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099866, -0.234889, 0.966878,
		-0.109747, 0.963207, 0.245332,
		-0.988930, -0.130613, 0.070413,
		41.780582, 29.635641, 36.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198570, 30.070528, 37.473625>,  <42.472836, 29.727070, 36.837227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198570, 30.070528, 37.473625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931942, 29.788567, 37.376637>,  <41.771965, 29.619390, 37.318443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931942, 29.788567, 37.376637>,  <42.198570, 30.070528, 37.473625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931942, 29.788567, 37.376637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041600, -0.289592, 0.956246,
		-0.744280, 0.647493, 0.163710,
		-0.666571, -0.704904, -0.242473,
		41.731972, 29.577095, 37.303894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767403, 30.127565, 37.963005>,  <42.198570, 30.070528, 37.473625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767403, 30.127565, 37.963005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710541, 29.766735, 37.800007>,  <41.676426, 29.550238, 37.702206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710541, 29.766735, 37.800007>,  <41.767403, 30.127565, 37.963005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710541, 29.766735, 37.800007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123781, -0.392246, 0.911494,
		-0.982075, 0.180010, -0.055901,
		-0.142151, -0.902075, -0.407497,
		41.667896, 29.496113, 37.677757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236576, 29.949663, 38.333359>,  <41.767403, 30.127565, 37.963005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236576, 29.949663, 38.333359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378937, 29.605465, 38.187546>,  <41.464355, 29.398947, 38.100060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378937, 29.605465, 38.187546>,  <41.236576, 29.949663, 38.333359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378937, 29.605465, 38.187546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103277, -0.423898, 0.899802,
		-0.928799, -0.282595, -0.239736,
		0.355903, -0.860494, -0.364531,
		41.485706, 29.347317, 38.078186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881264, 29.440254, 38.613033>,  <41.236576, 29.949663, 38.333359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881264, 29.440254, 38.613033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182198, 29.210196, 38.484531>,  <41.362759, 29.072161, 38.407433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182198, 29.210196, 38.484531>,  <40.881264, 29.440254, 38.613033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182198, 29.210196, 38.484531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054642, -0.431485, 0.900464,
		-0.656512, -0.695003, -0.293193,
		0.752333, -0.575145, -0.321252,
		41.407898, 29.037653, 38.388157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631618, 28.695040, 38.628071>,  <40.881264, 29.440254, 38.613033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631618, 28.695040, 38.628071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022274, 28.765186, 38.677734>,  <41.256668, 28.807274, 38.707535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022274, 28.765186, 38.677734>,  <40.631618, 28.695040, 38.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022274, 28.765186, 38.677734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, -0.410212, 0.911015,
		0.210694, -0.894971, -0.393237,
		0.976642, 0.175367, 0.124162,
		41.315266, 28.817797, 38.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895863, 28.022980, 38.930347>,  <40.631618, 28.695040, 38.628071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895863, 28.022980, 38.930347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193672, 28.282511, 38.993214>,  <41.372360, 28.438229, 39.030933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193672, 28.282511, 38.993214>,  <40.895863, 28.022980, 38.930347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193672, 28.282511, 38.993214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179271, -0.421091, 0.889126,
		0.643071, -0.633803, -0.429830,
		0.744527, 0.648827, 0.157169,
		41.417030, 28.477160, 39.040363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433601, 27.613176, 39.146946>,  <40.895863, 28.022980, 38.930347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433601, 27.613176, 39.146946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521950, 27.982088, 39.273830>,  <41.574959, 28.203434, 39.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521950, 27.982088, 39.273830>,  <41.433601, 27.613176, 39.146946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521950, 27.982088, 39.273830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372219, -0.380333, 0.846640,
		0.901482, -0.068928, -0.427294,
		0.220871, 0.922277, 0.317207,
		41.588211, 28.258772, 39.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097984, 27.530426, 39.462265>,  <41.433601, 27.613176, 39.146946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097984, 27.530426, 39.462265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939056, 27.870661, 39.600040>,  <41.843700, 28.074800, 39.682705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939056, 27.870661, 39.600040>,  <42.097984, 27.530426, 39.462265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939056, 27.870661, 39.600040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325005, -0.220586, 0.919627,
		0.858200, 0.477333, -0.188801,
		-0.397322, 0.850585, 0.344443,
		41.819859, 28.125835, 39.703373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616714, 27.771761, 39.989155>,  <42.097984, 27.530426, 39.462265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616714, 27.771761, 39.989155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300571, 28.005100, 40.064022>,  <42.110886, 28.145103, 40.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300571, 28.005100, 40.064022>,  <42.616714, 27.771761, 39.989155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300571, 28.005100, 40.064022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094254, -0.186094, 0.978001,
		0.605346, 0.790616, 0.092099,
		-0.790362, 0.583349, 0.187170,
		42.063461, 28.180105, 40.120174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879856, 28.340687, 40.469501>,  <42.616714, 27.771761, 39.989155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879856, 28.340687, 40.469501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485809, 28.282934, 40.506786>,  <42.249382, 28.248283, 40.529160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485809, 28.282934, 40.506786>,  <42.879856, 28.340687, 40.469501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485809, 28.282934, 40.506786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113091, -0.136200, 0.984205,
		-0.129406, 0.980104, 0.150502,
		-0.985122, -0.144382, 0.093216,
		42.190273, 28.239620, 40.534752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710922, 28.948605, 40.907246>,  <42.879856, 28.340687, 40.469501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710922, 28.948605, 40.907246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432549, 28.661364, 40.906296>,  <42.265526, 28.489019, 40.905727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432549, 28.661364, 40.906296>,  <42.710922, 28.948605, 40.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432549, 28.661364, 40.906296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073638, -0.074652, 0.994487,
		-0.714319, 0.691924, 0.104833,
		-0.695936, -0.718100, -0.002374,
		42.223766, 28.445934, 40.905582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372978, 29.261330, 41.552601>,  <42.710922, 28.948605, 40.907246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372978, 29.261330, 41.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489956, 29.486715, 41.861660>,  <42.560143, 29.621946, 42.047096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489956, 29.486715, 41.861660>,  <42.372978, 29.261330, 41.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489956, 29.486715, 41.861660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207587, 0.751298, -0.626465,
		-0.933480, 0.343597, 0.102744,
		0.292443, 0.563465, 0.772648,
		42.577690, 29.655754, 42.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820011, 29.773922, 41.565804>,  <42.372978, 29.261330, 41.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820011, 29.773922, 41.565804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137634, 29.920027, 41.760143>,  <42.328209, 30.007690, 41.876747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137634, 29.920027, 41.760143>,  <41.820011, 29.773922, 41.565804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137634, 29.920027, 41.760143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096751, 0.865071, -0.492230,
		-0.600091, 0.343853, 0.722257,
		0.794059, 0.365262, 0.485854,
		42.375851, 30.029606, 41.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569416, 30.326147, 42.032394>,  <41.820011, 29.773922, 41.565804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569416, 30.326147, 42.032394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952579, 30.346212, 41.919334>,  <42.182480, 30.358252, 41.851498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952579, 30.346212, 41.919334>,  <41.569416, 30.326147, 42.032394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952579, 30.346212, 41.919334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201315, 0.819304, -0.536855,
		0.204644, 0.571160, 0.794919,
		0.957911, 0.050165, -0.282649,
		42.239952, 30.361261, 41.834541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673973, 30.947491, 41.613483>,  <41.569416, 30.326147, 42.032394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673973, 30.947491, 41.613483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034790, 30.791874, 41.538692>,  <42.251282, 30.698503, 41.493816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034790, 30.791874, 41.538692>,  <41.673973, 30.947491, 41.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034790, 30.791874, 41.538692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034879, 0.497459, -0.866786,
		0.430232, 0.775358, 0.462299,
		0.902044, -0.389044, -0.186979,
		42.305405, 30.675161, 41.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923687, 31.512051, 41.483910>,  <41.673973, 30.947491, 41.613483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923687, 31.512051, 41.483910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180092, 31.241049, 41.339634>,  <42.333935, 31.078447, 41.253067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180092, 31.241049, 41.339634>,  <41.923687, 31.512051, 41.483910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180092, 31.241049, 41.339634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085050, 0.404340, -0.910646,
		0.762808, 0.614407, 0.201563,
		0.641008, -0.677505, -0.360689,
		42.372395, 31.037798, 41.231426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390087, 31.850815, 41.146477>,  <41.923687, 31.512051, 41.483910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390087, 31.850815, 41.146477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385250, 31.489866, 40.974163>,  <42.382347, 31.273296, 40.870773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385250, 31.489866, 40.974163>,  <42.390087, 31.850815, 41.146477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385250, 31.489866, 40.974163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190881, 0.424979, -0.884849,
		0.981539, 0.071532, -0.177383,
		-0.012089, -0.902372, -0.430788,
		42.381622, 31.219154, 40.844925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815319, 31.782166, 40.536903>,  <42.390087, 31.850815, 41.146477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815319, 31.782166, 40.536903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569996, 31.469437, 40.491982>,  <42.422802, 31.281799, 40.465027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569996, 31.469437, 40.491982>,  <42.815319, 31.782166, 40.536903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569996, 31.469437, 40.491982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340196, 0.389799, -0.855759,
		0.712827, -0.486635, -0.505038,
		-0.613306, -0.781820, -0.112307,
		42.386005, 31.234890, 40.458290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944096, 31.480028, 39.884304>,  <42.815319, 31.782166, 40.536903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944096, 31.480028, 39.884304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568138, 31.401083, 39.995762>,  <42.342564, 31.353716, 40.062637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568138, 31.401083, 39.995762>,  <42.944096, 31.480028, 39.884304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568138, 31.401083, 39.995762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325766, 0.273701, -0.904966,
		0.102340, -0.941348, -0.321544,
		-0.939895, -0.197362, 0.278649,
		42.286171, 31.341875, 40.079357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682278, 31.240501, 39.264050>,  <42.944096, 31.480028, 39.884304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682278, 31.240501, 39.264050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361382, 31.332073, 39.484592>,  <42.168842, 31.387016, 39.616920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361382, 31.332073, 39.484592>,  <42.682278, 31.240501, 39.264050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361382, 31.332073, 39.484592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492927, 0.267010, -0.828087,
		-0.336794, -0.936107, -0.101360,
		-0.802243, 0.228931, 0.551360,
		42.120708, 31.400753, 39.650002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058231, 31.040283, 38.818783>,  <42.682278, 31.240501, 39.264050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058231, 31.040283, 38.818783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910606, 31.293716, 39.090775>,  <41.822033, 31.445776, 39.253967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910606, 31.293716, 39.090775>,  <42.058231, 31.040283, 38.818783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910606, 31.293716, 39.090775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435841, 0.528207, -0.728725,
		-0.820875, -0.565306, 0.081201,
		-0.369061, 0.633583, 0.679976,
		41.799889, 31.483791, 39.294765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374390, 31.116011, 38.641006>,  <42.058231, 31.040283, 38.818783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374390, 31.116011, 38.641006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408932, 31.431244, 38.884800>,  <41.429657, 31.620384, 39.031075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408932, 31.431244, 38.884800>,  <41.374390, 31.116011, 38.641006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408932, 31.431244, 38.884800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638348, 0.513459, -0.573474,
		-0.764889, -0.339538, 0.547412,
		0.086357, 0.788082, 0.609482,
		41.434837, 31.667669, 39.067646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708054, 31.412870, 38.762043>,  <41.374390, 31.116011, 38.641006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708054, 31.412870, 38.762043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959530, 31.705793, 38.866714>,  <41.110416, 31.881548, 38.929516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959530, 31.705793, 38.866714>,  <40.708054, 31.412870, 38.762043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959530, 31.705793, 38.866714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477920, 0.629288, -0.612853,
		-0.613469, 0.260231, 0.745611,
		0.628688, 0.732308, 0.261679,
		41.148136, 31.925486, 38.945217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350071, 32.006954, 38.779739>,  <40.708054, 31.412870, 38.762043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350071, 32.006954, 38.779739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720016, 32.133320, 38.695045>,  <40.941982, 32.209137, 38.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720016, 32.133320, 38.695045>,  <40.350071, 32.006954, 38.779739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720016, 32.133320, 38.695045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380212, 0.755798, -0.533112,
		-0.008390, 0.573558, 0.819122,
		0.924862, 0.315912, -0.211733,
		40.997475, 32.228092, 38.631527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278530, 32.669807, 38.746780>,  <40.350071, 32.006954, 38.779739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278530, 32.669807, 38.746780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632950, 32.601936, 38.574207>,  <40.845600, 32.561214, 38.470665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632950, 32.601936, 38.574207>,  <40.278530, 32.669807, 38.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632950, 32.601936, 38.574207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177564, 0.735440, -0.653911,
		0.428245, 0.656002, 0.621505,
		0.886046, -0.169677, -0.431430,
		40.898762, 32.551033, 38.444778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607311, 33.326820, 38.642422>,  <40.278530, 32.669807, 38.746780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607311, 33.326820, 38.642422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736038, 33.060959, 38.372704>,  <40.813274, 32.901443, 38.210873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736038, 33.060959, 38.372704>,  <40.607311, 33.326820, 38.642422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736038, 33.060959, 38.372704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175540, 0.657947, -0.732319,
		0.930388, 0.354036, 0.095063,
		0.321814, -0.664653, -0.674294,
		40.832581, 32.861565, 38.170414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908443, 33.725052, 38.196854>,  <40.607311, 33.326820, 38.642422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908443, 33.725052, 38.196854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882458, 33.399002, 37.966599>,  <40.866867, 33.203373, 37.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882458, 33.399002, 37.966599>,  <40.908443, 33.725052, 38.196854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882458, 33.399002, 37.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073239, 0.571405, -0.817394,
		0.995196, -0.095263, 0.022575,
		-0.064968, -0.815120, -0.575637,
		40.862968, 33.154465, 37.793907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471977, 33.791279, 37.651882>,  <40.908443, 33.725052, 38.196854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471977, 33.791279, 37.651882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197330, 33.527168, 37.530170>,  <41.032543, 33.368702, 37.457146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197330, 33.527168, 37.530170>,  <41.471977, 33.791279, 37.651882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197330, 33.527168, 37.530170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026078, 0.440625, -0.897312,
		0.726549, -0.608178, -0.319761,
		-0.686620, -0.660280, -0.304275,
		40.991344, 33.329086, 37.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642036, 33.657124, 37.023357>,  <41.471977, 33.791279, 37.651882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642036, 33.657124, 37.023357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265583, 33.522739, 37.008430>,  <41.039711, 33.442108, 36.999474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265583, 33.522739, 37.008430>,  <41.642036, 33.657124, 37.023357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265583, 33.522739, 37.008430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070633, 0.303413, -0.950238,
		0.330571, -0.891666, -0.309283,
		-0.941134, -0.335967, -0.037319,
		40.983242, 33.421951, 36.997234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517887, 33.415558, 36.324547>,  <41.642036, 33.657124, 37.023357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517887, 33.415558, 36.324547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137749, 33.411465, 36.448956>,  <40.909664, 33.409008, 36.523602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137749, 33.411465, 36.448956>,  <41.517887, 33.415558, 36.324547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137749, 33.411465, 36.448956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300313, 0.292046, -0.908031,
		-0.081539, -0.956350, -0.280619,
		-0.950349, -0.010234, 0.311018,
		40.852646, 33.408394, 36.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070709, 32.953983, 35.834473>,  <41.517887, 33.415558, 36.324547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070709, 32.953983, 35.834473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854130, 33.232738, 36.022594>,  <40.724182, 33.399990, 36.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854130, 33.232738, 36.022594>,  <41.070709, 32.953983, 35.834473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854130, 33.232738, 36.022594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349841, 0.321913, -0.879763,
		-0.764490, -0.640878, 0.069500,
		-0.541448, 0.696884, 0.470305,
		40.691696, 33.441803, 36.163685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477081, 32.967064, 35.450073>,  <41.070709, 32.953983, 35.834473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477081, 32.967064, 35.450073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476337, 33.311001, 35.654293>,  <40.475891, 33.517365, 35.776825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476337, 33.311001, 35.654293>,  <40.477081, 32.967064, 35.450073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476337, 33.311001, 35.654293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370782, 0.473564, -0.798910,
		-0.928718, -0.190792, 0.317933,
		-0.001864, 0.859846, 0.510549,
		40.475777, 33.568954, 35.807457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846542, 33.270893, 35.314381>,  <40.477081, 32.967064, 35.450073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846542, 33.270893, 35.314381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111919, 33.546116, 35.431976>,  <40.271145, 33.711250, 35.502533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111919, 33.546116, 35.431976>,  <39.846542, 33.270893, 35.314381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111919, 33.546116, 35.431976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230077, 0.561472, -0.794867,
		-0.711975, 0.459710, 0.530809,
		0.663443, 0.688052, 0.293985,
		40.310951, 33.752533, 35.520172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528091, 33.952953, 35.084736>,  <39.846542, 33.270893, 35.314381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528091, 33.952953, 35.084736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913933, 34.020042, 35.166126>,  <40.145439, 34.060295, 35.214962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913933, 34.020042, 35.166126>,  <39.528091, 33.952953, 35.084736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913933, 34.020042, 35.166126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023073, 0.715008, -0.698735,
		-0.262683, 0.678699, 0.685832,
		0.964607, 0.167721, 0.203480,
		40.203316, 34.070358, 35.227169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619576, 34.614590, 34.860577>,  <39.528091, 33.952953, 35.084736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619576, 34.614590, 34.860577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001732, 34.528248, 34.941208>,  <40.231026, 34.476444, 34.989586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001732, 34.528248, 34.941208>,  <39.619576, 34.614590, 34.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001732, 34.528248, 34.941208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292345, 0.788179, -0.541579,
		-0.041977, 0.576350, 0.816124,
		0.955391, -0.215855, 0.201579,
		40.288349, 34.463490, 35.001682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961117, 35.295280, 35.119484>,  <39.619576, 34.614590, 34.860577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961117, 35.295280, 35.119484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228584, 35.038448, 34.969486>,  <40.389065, 34.884350, 34.879490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228584, 35.038448, 34.969486>,  <39.961117, 35.295280, 35.119484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228584, 35.038448, 34.969486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424452, 0.743678, -0.516511,
		0.610515, 0.186207, 0.769804,
		0.668665, -0.642082, -0.374990,
		40.429184, 34.845825, 34.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647820, 35.657280, 35.094902>,  <39.961117, 35.295280, 35.119484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647820, 35.657280, 35.094902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662655, 35.358849, 34.828976>,  <40.671558, 35.179790, 34.669418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662655, 35.358849, 34.828976>,  <40.647820, 35.657280, 35.094902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662655, 35.358849, 34.828976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325143, 0.638088, -0.697944,
		0.944937, -0.190274, 0.266251,
		0.037090, -0.746083, -0.664819,
		40.673782, 35.135025, 34.629528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202057, 35.759296, 34.762478>,  <40.647820, 35.657280, 35.094902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202057, 35.759296, 34.762478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014019, 35.540344, 34.485527>,  <40.901196, 35.408974, 34.319359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014019, 35.540344, 34.485527>,  <41.202057, 35.759296, 34.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014019, 35.540344, 34.485527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351826, 0.603225, -0.715777,
		0.809462, -0.580079, -0.090989,
		-0.470095, -0.547382, -0.692375,
		40.872990, 35.376129, 34.277813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656898, 35.739803, 34.216644>,  <41.202057, 35.759296, 34.762478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656898, 35.739803, 34.216644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309841, 35.645523, 34.041538>,  <41.101608, 35.588955, 33.936474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309841, 35.645523, 34.041538>,  <41.656898, 35.739803, 34.216644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309841, 35.645523, 34.041538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203995, 0.634192, -0.745780,
		0.453410, -0.736373, -0.502170,
		-0.867644, -0.235703, -0.437765,
		41.049549, 35.574814, 33.910210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792576, 35.619862, 33.517864>,  <41.656898, 35.739803, 34.216644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792576, 35.619862, 33.517864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406216, 35.723427, 33.519054>,  <41.174400, 35.785564, 33.519768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406216, 35.723427, 33.519054>,  <41.792576, 35.619862, 33.517864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406216, 35.723427, 33.519054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164042, 0.620780, -0.766630,
		-0.200335, -0.739998, -0.642082,
		-0.965897, 0.258911, 0.002973,
		41.116447, 35.801102, 33.519947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601452, 35.747280, 32.815926>,  <41.792576, 35.619862, 33.517864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601452, 35.747280, 32.815926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300388, 35.929844, 33.005741>,  <41.119751, 36.039383, 33.119629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300388, 35.929844, 33.005741>,  <41.601452, 35.747280, 32.815926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300388, 35.929844, 33.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009920, 0.728517, -0.684956,
		-0.658332, -0.510834, -0.552855,
		-0.752663, 0.456412, 0.474538,
		41.074589, 36.066769, 33.148102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081692, 35.845200, 32.370361>,  <41.601452, 35.747280, 32.815926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081692, 35.845200, 32.370361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970356, 36.114815, 32.644062>,  <40.903553, 36.276585, 32.808281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970356, 36.114815, 32.644062>,  <41.081692, 35.845200, 32.370361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970356, 36.114815, 32.644062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071440, 0.695899, -0.714577,
		-0.957822, -0.247778, -0.145543,
		-0.278340, 0.674040, 0.684249,
		40.886852, 36.317028, 32.849339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515171, 36.240768, 32.159588>,  <41.081692, 35.845200, 32.370361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515171, 36.240768, 32.159588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684574, 36.476376, 32.434891>,  <40.786217, 36.617741, 32.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684574, 36.476376, 32.434891>,  <40.515171, 36.240768, 32.159588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684574, 36.476376, 32.434891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144877, 0.794017, -0.590380,
		-0.894232, 0.150319, 0.421608,
		0.423509, 0.589018, 0.688258,
		40.811626, 36.653080, 32.641369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178265, 36.816895, 32.148548>,  <40.515171, 36.240768, 32.159588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178265, 36.816895, 32.148548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504223, 36.935177, 32.347946>,  <40.699799, 37.006145, 32.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504223, 36.935177, 32.347946>,  <40.178265, 36.816895, 32.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504223, 36.935177, 32.347946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056364, 0.896420, -0.439607,
		-0.576858, 0.330138, 0.747158,
		0.814898, 0.295703, 0.498499,
		40.748692, 37.023888, 32.497498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971340, 37.367992, 32.547703>,  <40.178265, 36.816895, 32.148548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971340, 37.367992, 32.547703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371124, 37.377457, 32.538612>,  <40.610996, 37.383137, 32.533157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371124, 37.377457, 32.538612>,  <39.971340, 37.367992, 32.547703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371124, 37.377457, 32.538612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030266, 0.932284, -0.360460,
		0.012659, 0.360954, 0.932498,
		0.999462, 0.023660, -0.022727,
		40.670963, 37.384556, 32.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262890, 38.037323, 32.919891>,  <39.971340, 37.367992, 32.547703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262890, 38.037323, 32.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555481, 37.914143, 32.676544>,  <40.731037, 37.840233, 32.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555481, 37.914143, 32.676544>,  <40.262890, 38.037323, 32.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555481, 37.914143, 32.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152965, 0.943576, -0.293712,
		0.664485, 0.121786, 0.737311,
		0.731479, -0.307950, -0.608363,
		40.774925, 37.821758, 32.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917511, 38.422783, 33.046383>,  <40.262890, 38.037323, 32.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917511, 38.422783, 33.046383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950054, 38.259739, 32.682571>,  <40.969582, 38.161911, 32.464287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950054, 38.259739, 32.682571>,  <40.917511, 38.422783, 33.046383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950054, 38.259739, 32.682571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287001, 0.883479, -0.370264,
		0.954469, -0.230909, 0.188866,
		0.081362, -0.407610, -0.909524,
		40.974464, 38.137455, 32.409714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380093, 38.932514, 32.675232>,  <40.917511, 38.422783, 33.046383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380093, 38.932514, 32.675232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214725, 38.701885, 32.393337>,  <41.115505, 38.563507, 32.224201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214725, 38.701885, 32.393337>,  <41.380093, 38.932514, 32.675232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214725, 38.701885, 32.393337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198390, 0.698343, -0.687719,
		0.888666, -0.424127, -0.174321,
		-0.413417, -0.576569, -0.704737,
		41.090702, 38.528915, 32.181915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840111, 38.854187, 32.046436>,  <41.380093, 38.932514, 32.675232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840111, 38.854187, 32.046436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459473, 38.831692, 31.925568>,  <41.231091, 38.818195, 31.853046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459473, 38.831692, 31.925568>,  <41.840111, 38.854187, 32.046436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459473, 38.831692, 31.925568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141217, 0.793204, -0.592356,
		0.272994, -0.606354, -0.746866,
		-0.951594, -0.056239, -0.302168,
		41.173996, 38.814819, 31.834917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850170, 39.003975, 31.309643>,  <41.840111, 38.854187, 32.046436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850170, 39.003975, 31.309643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461689, 39.025398, 31.402512>,  <41.228600, 39.038254, 31.458233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461689, 39.025398, 31.402512>,  <41.850170, 39.003975, 31.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461689, 39.025398, 31.402512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136907, 0.672058, -0.727732,
		-0.195012, -0.738559, -0.645369,
		-0.971199, 0.053561, 0.232173,
		41.170330, 39.041466, 31.472164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282249, 38.506783, 30.787817>,  <41.850170, 39.003975, 31.309643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282249, 38.506783, 30.787817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535332, 38.558109, 31.093292>,  <42.687183, 38.588905, 31.276577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535332, 38.558109, 31.093292>,  <42.282249, 38.506783, 30.787817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535332, 38.558109, 31.093292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249737, -0.967296, -0.044383,
		0.733015, 0.218802, -0.644060,
		0.632708, 0.128312, 0.763686,
		42.725143, 38.596603, 31.322397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009434, 38.238274, 30.600573>,  <42.282249, 38.506783, 30.787817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009434, 38.238274, 30.600573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932953, 38.242794, 30.993168>,  <42.887066, 38.245506, 31.228725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932953, 38.242794, 30.993168>,  <43.009434, 38.238274, 30.600573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932953, 38.242794, 30.993168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217388, -0.974614, 0.053572,
		0.957176, 0.223606, 0.183887,
		-0.191198, 0.011303, 0.981486,
		42.875595, 38.246185, 31.287613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544811, 37.866493, 30.711531>,  <43.009434, 38.238274, 30.600573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544811, 37.866493, 30.711531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276417, 37.837978, 31.006742>,  <43.115379, 37.820869, 31.183870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276417, 37.837978, 31.006742>,  <43.544811, 37.866493, 30.711531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276417, 37.837978, 31.006742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085989, -0.996133, -0.018037,
		0.736463, 0.051360, 0.674525,
		-0.670990, -0.071285, 0.738031,
		43.075119, 37.816593, 31.228151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660023, 37.279518, 31.148973>,  <43.544811, 37.866493, 30.711531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660023, 37.279518, 31.148973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277992, 37.366642, 31.229359>,  <43.048775, 37.418915, 31.277590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277992, 37.366642, 31.229359>,  <43.660023, 37.279518, 31.148973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277992, 37.366642, 31.229359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193842, -0.972069, 0.132315,
		0.224169, 0.087416, 0.970622,
		-0.955078, 0.217808, 0.200963,
		42.991470, 37.431984, 31.289648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458298, 37.044811, 31.918211>,  <43.660023, 37.279518, 31.148973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458298, 37.044811, 31.918211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154308, 37.037525, 31.658333>,  <42.971912, 37.033154, 31.502405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154308, 37.037525, 31.658333>,  <43.458298, 37.044811, 31.918211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154308, 37.037525, 31.658333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119894, -0.978524, 0.167680,
		-0.638797, 0.205328, 0.741471,
		-0.759976, -0.018216, -0.649695,
		42.926315, 37.032059, 31.463425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829479, 36.702129, 32.205635>,  <43.458298, 37.044811, 31.918211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829479, 36.702129, 32.205635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857330, 36.661610, 31.808670>,  <42.874043, 36.637299, 31.570490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857330, 36.661610, 31.808670>,  <42.829479, 36.702129, 32.205635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857330, 36.661610, 31.808670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072286, -0.991703, 0.106298,
		-0.994950, -0.079139, -0.061731,
		0.069631, -0.101299, -0.992416,
		42.878220, 36.631222, 31.510944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210770, 36.760250, 32.935101>,  <42.829479, 36.702129, 32.205635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210770, 36.760250, 32.935101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217487, 37.151314, 32.851288>,  <43.221519, 37.385952, 32.800999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217487, 37.151314, 32.851288>,  <43.210770, 36.760250, 32.935101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217487, 37.151314, 32.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966778, 0.037581, 0.252841,
		0.255067, -0.206818, -0.944546,
		0.016795, 0.977657, -0.209533,
		43.222527, 37.444611, 32.788429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678963, 36.265759, 33.002205>,  <43.210770, 36.760250, 32.935101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678963, 36.265759, 33.002205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052723, 36.182995, 32.886211>,  <43.276978, 36.133339, 32.816616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052723, 36.182995, 32.886211>,  <42.678963, 36.265759, 33.002205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052723, 36.182995, 32.886211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327556, -0.819014, -0.471087,
		-0.140033, 0.535169, -0.833057,
		0.934397, -0.206905, -0.289987,
		43.333042, 36.120922, 32.799213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663288, 35.985611, 32.306725>,  <42.678963, 36.265759, 33.002205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663288, 35.985611, 32.306725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963535, 35.854458, 32.536182>,  <43.143684, 35.775768, 32.673855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963535, 35.854458, 32.536182>,  <42.663288, 35.985611, 32.306725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963535, 35.854458, 32.536182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134315, -0.925779, -0.353401,
		0.646940, 0.188221, -0.738947,
		0.750619, -0.327880, 0.573642,
		43.188721, 35.756092, 32.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074173, 35.597889, 31.882626>,  <42.663288, 35.985611, 32.306725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074173, 35.597889, 31.882626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151722, 35.480644, 32.257111>,  <43.198254, 35.410297, 32.481804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151722, 35.480644, 32.257111>,  <43.074173, 35.597889, 31.882626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151722, 35.480644, 32.257111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035430, -0.955791, -0.291903,
		0.980386, 0.023423, -0.195689,
		0.193875, -0.293111, 0.936215,
		43.209885, 35.392712, 32.537975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521297, 35.134869, 31.787714>,  <43.074173, 35.597889, 31.882626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521297, 35.134869, 31.787714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397087, 35.064064, 32.161289>,  <43.322563, 35.021580, 32.385433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397087, 35.064064, 32.161289>,  <43.521297, 35.134869, 31.787714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397087, 35.064064, 32.161289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014170, -0.981538, -0.190743,
		0.950460, -0.072464, 0.302282,
		-0.310524, -0.177010, 0.933939,
		43.303928, 35.010960, 32.441471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013515, 34.598858, 32.103573>,  <43.521297, 35.134869, 31.787714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013515, 34.598858, 32.103573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655186, 34.592232, 32.281216>,  <43.440189, 34.588257, 32.387802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655186, 34.592232, 32.281216>,  <44.013515, 34.598858, 32.103573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655186, 34.592232, 32.281216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094165, -0.969539, -0.226114,
		0.434323, -0.244378, 0.866974,
		-0.895822, -0.016568, 0.444105,
		43.386440, 34.587261, 32.414448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025669, 34.042160, 32.471481>,  <44.013515, 34.598858, 32.103573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025669, 34.042160, 32.471481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632820, 34.117451, 32.470188>,  <43.397110, 34.162624, 32.469414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632820, 34.117451, 32.470188>,  <44.025669, 34.042160, 32.471481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632820, 34.117451, 32.470188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182557, -0.956434, -0.227830,
		-0.045973, -0.223167, 0.973696,
		-0.982120, 0.188229, -0.003230,
		43.338184, 34.173920, 32.469219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801575, 33.510616, 32.810982>,  <44.025669, 34.042160, 32.471481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801575, 33.510616, 32.810982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479557, 33.630318, 32.606102>,  <43.286346, 33.702137, 32.483173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479557, 33.630318, 32.606102>,  <43.801575, 33.510616, 32.810982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479557, 33.630318, 32.606102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184606, -0.946943, -0.263096,
		-0.563756, -0.117249, 0.817577,
		-0.805047, 0.299251, -0.512200,
		43.238045, 33.720093, 32.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239639, 33.271645, 33.100964>,  <43.801575, 33.510616, 32.810982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239639, 33.271645, 33.100964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124649, 33.349823, 32.725910>,  <43.055656, 33.396729, 32.500877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124649, 33.349823, 32.725910>,  <43.239639, 33.271645, 33.100964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124649, 33.349823, 32.725910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249653, -0.960409, -0.123647,
		-0.924680, 0.198538, 0.324883,
		-0.287472, 0.195442, -0.937636,
		43.038406, 33.408455, 32.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736214, 32.810043, 33.019775>,  <43.239639, 33.271645, 33.100964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736214, 32.810043, 33.019775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848366, 32.900665, 32.646667>,  <42.915657, 32.955040, 32.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848366, 32.900665, 32.646667>,  <42.736214, 32.810043, 33.019775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848366, 32.900665, 32.646667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099416, -0.959667, -0.262974,
		-0.954728, 0.166464, -0.246545,
		0.280377, 0.226558, -0.932770,
		42.932480, 32.968632, 32.366837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278439, 32.415653, 32.559216>,  <42.736214, 32.810043, 33.019775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278439, 32.415653, 32.559216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605927, 32.531898, 32.361130>,  <42.802418, 32.601646, 32.242279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605927, 32.531898, 32.361130>,  <42.278439, 32.415653, 32.559216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605927, 32.531898, 32.361130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103453, -0.923005, -0.370619,
		-0.564795, 0.252201, -0.785749,
		0.818721, 0.290612, -0.495218,
		42.851543, 32.619083, 32.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194687, 32.117340, 31.891335>,  <42.278439, 32.415653, 32.559216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194687, 32.117340, 31.891335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585079, 32.204174, 31.884005>,  <42.819313, 32.256275, 31.879606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585079, 32.204174, 31.884005>,  <42.194687, 32.117340, 31.891335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585079, 32.204174, 31.884005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174966, -0.831180, -0.527756,
		-0.129797, 0.511874, -0.849198,
		0.975981, 0.217082, -0.018324,
		42.877872, 32.269299, 31.878508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577129, 31.996696, 31.121748>,  <42.194687, 32.117340, 31.891335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577129, 31.996696, 31.121748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835941, 31.947931, 31.422812>,  <42.991226, 31.918673, 31.603449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835941, 31.947931, 31.422812>,  <42.577129, 31.996696, 31.121748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835941, 31.947931, 31.422812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251686, -0.897655, -0.361760,
		0.719729, 0.423502, -0.550124,
		0.647027, -0.121911, 0.752658,
		43.030048, 31.911358, 31.648609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155354, 31.779737, 30.809664>,  <42.577129, 31.996696, 31.121748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155354, 31.779737, 30.809664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238842, 31.682674, 31.188622>,  <43.288937, 31.624437, 31.415997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238842, 31.682674, 31.188622>,  <43.155354, 31.779737, 30.809664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238842, 31.682674, 31.188622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191543, -0.939824, -0.282919,
		0.959034, 0.240518, -0.149683,
		0.208722, -0.242658, 0.947392,
		43.301460, 31.609877, 31.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580799, 31.196274, 30.765221>,  <43.155354, 31.779737, 30.809664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580799, 31.196274, 30.765221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524342, 31.205936, 31.161098>,  <43.490467, 31.211735, 31.398624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524342, 31.205936, 31.161098>,  <43.580799, 31.196274, 30.765221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524342, 31.205936, 31.161098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218897, -0.974197, 0.054996,
		0.965486, 0.224403, 0.132209,
		-0.141139, 0.024158, 0.989695,
		43.481998, 31.213184, 31.458008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217438, 30.815081, 31.114313>,  <43.580799, 31.196274, 30.765221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217438, 30.815081, 31.114313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892052, 30.819603, 31.346912>,  <43.696819, 30.822317, 31.486471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892052, 30.819603, 31.346912>,  <44.217438, 30.815081, 31.114313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892052, 30.819603, 31.346912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139071, -0.967026, 0.213354,
		0.564735, 0.254426, 0.785074,
		-0.813470, 0.011308, 0.581497,
		43.648010, 30.822996, 31.521362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447098, 30.414833, 31.715725>,  <44.217438, 30.815081, 31.114313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447098, 30.414833, 31.715725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049149, 30.382851, 31.740471>,  <43.810379, 30.363661, 31.755318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049149, 30.382851, 31.740471>,  <44.447098, 30.414833, 31.715725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049149, 30.382851, 31.740471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084641, -0.993417, 0.077194,
		0.055284, 0.082035, 0.995095,
		-0.994877, -0.079958, 0.061864,
		43.750687, 30.358864, 31.759029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445621, 29.893402, 32.179996>,  <44.447098, 30.414833, 31.715725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445621, 29.893402, 32.179996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066406, 29.893385, 32.052738>,  <43.838875, 29.893375, 31.976383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066406, 29.893385, 32.052738>,  <44.445621, 29.893402, 32.179996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066406, 29.893385, 32.052738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040466, -0.991862, 0.120715,
		-0.315562, 0.127316, 0.940325,
		-0.948042, -0.000042, -0.318146,
		43.781994, 29.893372, 31.957294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918591, 29.472555, 32.674137>,  <44.445621, 29.893402, 32.179996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918591, 29.472555, 32.674137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783855, 29.486145, 32.297756>,  <43.703014, 29.494299, 32.071930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783855, 29.486145, 32.297756>,  <43.918591, 29.472555, 32.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783855, 29.486145, 32.297756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205221, -0.977972, 0.038152,
		-0.918925, 0.205953, 0.336394,
		-0.336842, 0.033977, -0.940948,
		43.682804, 29.496338, 32.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163044, 29.213039, 32.713173>,  <43.918591, 29.472555, 32.674137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163044, 29.213039, 32.713173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273903, 29.162882, 32.332127>,  <43.340416, 29.132788, 32.103500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273903, 29.162882, 32.332127>,  <43.163044, 29.213039, 32.713173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273903, 29.162882, 32.332127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341452, -0.939584, 0.024339,
		-0.898110, 0.318525, -0.303216,
		0.277144, -0.125393, -0.952611,
		43.357044, 29.125263, 32.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635933, 28.778124, 32.460739>,  <43.163044, 29.213039, 32.713173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635933, 28.778124, 32.460739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903378, 28.747162, 32.164909>,  <43.063843, 28.728584, 31.987411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903378, 28.747162, 32.164909>,  <42.635933, 28.778124, 32.460739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903378, 28.747162, 32.164909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176132, -0.982751, -0.056379,
		-0.722451, 0.167958, -0.670712,
		0.668612, -0.077403, -0.739572,
		43.103962, 28.723942, 31.943037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346092, 28.551453, 31.823242>,  <42.635933, 28.778124, 32.460739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346092, 28.551453, 31.823242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725395, 28.438038, 31.766096>,  <42.952976, 28.369989, 31.731808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725395, 28.438038, 31.766096>,  <42.346092, 28.551453, 31.823242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725395, 28.438038, 31.766096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312217, -0.914477, -0.257394,
		-0.057667, 0.288681, -0.955687,
		0.948259, -0.283539, -0.142866,
		43.009872, 28.352976, 31.723236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309357, 28.134512, 31.181339>,  <42.346092, 28.551453, 31.823242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309357, 28.134512, 31.181339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634174, 28.022432, 31.386112>,  <42.829063, 27.955185, 31.508976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634174, 28.022432, 31.386112>,  <42.309357, 28.134512, 31.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634174, 28.022432, 31.386112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333382, -0.942704, 0.012847,
		0.479000, -0.181101, -0.858930,
		0.812044, -0.280198, 0.511931,
		42.877789, 27.938374, 31.539692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508347, 27.450146, 30.933556>,  <42.309357, 28.134512, 31.181339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508347, 27.450146, 30.933556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659370, 27.492073, 31.301569>,  <42.749985, 27.517229, 31.522377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659370, 27.492073, 31.301569>,  <42.508347, 27.450146, 30.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659370, 27.492073, 31.301569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186808, -0.964522, 0.186549,
		0.906945, -0.242304, -0.344587,
		0.377564, 0.104818, 0.920032,
		42.772640, 27.523518, 31.577579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186436, 27.520218, 31.004780>,  <42.508347, 27.450146, 30.933556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186436, 27.520218, 31.004780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128273, 27.124475, 31.002411>,  <43.093376, 26.887030, 31.000990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128273, 27.124475, 31.002411>,  <43.186436, 27.520218, 31.004780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128273, 27.124475, 31.002411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484303, -0.065957, -0.872411,
		0.862733, -0.129722, 0.488737,
		-0.145406, -0.989354, -0.005922,
		43.084652, 26.827669, 31.000635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657108, 27.495907, 30.330839>,  <43.186436, 27.520218, 31.004780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657108, 27.495907, 30.330839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885330, 27.738171, 30.108976>,  <44.022263, 27.883530, 29.975859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885330, 27.738171, 30.108976>,  <43.657108, 27.495907, 30.330839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885330, 27.738171, 30.108976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539544, -0.785607, -0.302841,
		-0.619163, -0.126477, -0.775010,
		0.570551, 0.605661, -0.554659,
		44.056496, 27.919868, 29.942579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876617, 27.202759, 29.732735>,  <43.657108, 27.495907, 30.330839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876617, 27.202759, 29.732735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184620, 27.457895, 29.739058>,  <44.369423, 27.610977, 29.742851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184620, 27.457895, 29.739058>,  <43.876617, 27.202759, 29.732735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184620, 27.457895, 29.739058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598102, -0.712960, -0.366009,
		-0.222187, 0.291283, -0.930477,
		0.770005, 0.637842, 0.015807,
		44.415623, 27.649248, 29.743799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188999, 27.296122, 29.002865>,  <43.876617, 27.202759, 29.732735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188999, 27.296122, 29.002865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438408, 27.336643, 29.312950>,  <44.588055, 27.360956, 29.499001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438408, 27.336643, 29.312950>,  <44.188999, 27.296122, 29.002865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438408, 27.336643, 29.312950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548791, -0.762932, -0.341707,
		0.556817, 0.638492, -0.531303,
		0.623525, 0.101306, 0.775212,
		44.625465, 27.367035, 29.545513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625832, 27.566210, 28.493647>,  <44.188999, 27.296122, 29.002865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625832, 27.566210, 28.493647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525120, 27.952160, 28.523643>,  <43.464695, 28.183729, 28.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525120, 27.952160, 28.523643>,  <43.625832, 27.566210, 28.493647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525120, 27.952160, 28.523643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965190, 0.256016, -0.053513,
		-0.070833, 0.058911, -0.995747,
		-0.251775, 0.964876, 0.074994,
		43.449589, 28.241623, 28.546143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736370, 27.976608, 27.931637>,  <43.625832, 27.566210, 28.493647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736370, 27.976608, 27.931637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772186, 28.155870, 28.287420>,  <43.793678, 28.263428, 28.500891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772186, 28.155870, 28.287420>,  <43.736370, 27.976608, 27.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772186, 28.155870, 28.287420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988348, -0.150348, -0.023744,
		0.123088, 0.881222, -0.456396,
		0.089542, 0.448155, 0.889460,
		43.799049, 28.290318, 28.554258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030060, 28.695429, 27.939644>,  <43.736370, 27.976608, 27.931637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030060, 28.695429, 27.939644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089375, 28.452919, 28.252167>,  <44.124966, 28.307413, 28.439680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089375, 28.452919, 28.252167>,  <44.030060, 28.695429, 27.939644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089375, 28.452919, 28.252167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962405, -0.093326, -0.255082,
		0.227566, 0.789762, 0.569640,
		0.148291, -0.606273, 0.781309,
		44.133862, 28.271038, 28.486559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644218, 28.841450, 28.247595>,  <44.030060, 28.695429, 27.939644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644218, 28.841450, 28.247595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603596, 28.449112, 28.314083>,  <44.579220, 28.213709, 28.353975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603596, 28.449112, 28.314083>,  <44.644218, 28.841450, 28.247595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603596, 28.449112, 28.314083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967815, -0.136086, -0.211694,
		0.230260, 0.139369, 0.963097,
		-0.101561, -0.980845, 0.166219,
		44.573128, 28.154858, 28.363949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694042, 29.030430, 27.505167>,  <44.644218, 28.841450, 28.247595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694042, 29.030430, 27.505167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330524, 29.166212, 27.602221>,  <44.112415, 29.247681, 27.660452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330524, 29.166212, 27.602221>,  <44.694042, 29.030430, 27.505167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330524, 29.166212, 27.602221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416535, 0.772169, 0.479847,
		-0.024467, 0.537146, -0.843135,
		-0.908790, 0.339455, 0.242633,
		44.057888, 29.268049, 27.675011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645283, 29.668295, 27.253603>,  <44.694042, 29.030430, 27.505167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645283, 29.668295, 27.253603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431057, 29.609467, 27.586237>,  <44.302521, 29.574169, 27.785818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431057, 29.609467, 27.586237>,  <44.645283, 29.668295, 27.253603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431057, 29.609467, 27.586237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530957, 0.707098, 0.467008,
		-0.656698, 0.691652, -0.300610,
		-0.535567, -0.147072, 0.831587,
		44.270386, 29.565346, 27.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454620, 30.350304, 27.427231>,  <44.645283, 29.668295, 27.253603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454620, 30.350304, 27.427231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412731, 30.137417, 27.763273>,  <44.387596, 30.009684, 27.964899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412731, 30.137417, 27.763273>,  <44.454620, 30.350304, 27.427231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412731, 30.137417, 27.763273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214706, 0.812729, 0.541639,
		-0.971048, 0.237097, 0.029160,
		-0.104722, -0.532218, 0.840105,
		44.381313, 29.977751, 28.015305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185375, 30.778448, 27.825102>,  <44.454620, 30.350304, 27.427231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185375, 30.778448, 27.825102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332199, 30.518169, 28.090992>,  <44.420296, 30.362001, 28.250526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332199, 30.518169, 28.090992>,  <44.185375, 30.778448, 27.825102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332199, 30.518169, 28.090992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303194, 0.759274, 0.575827,
		-0.879397, -0.009824, 0.475987,
		0.367062, -0.650697, 0.664725,
		44.442318, 30.322960, 28.290409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151077, 31.162498, 28.387016>,  <44.185375, 30.778448, 27.825102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151077, 31.162498, 28.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352829, 30.832460, 28.488855>,  <44.473881, 30.634438, 28.549959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352829, 30.832460, 28.488855>,  <44.151077, 31.162498, 28.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352829, 30.832460, 28.488855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423011, 0.493150, 0.760174,
		-0.752772, -0.275717, 0.597758,
		0.504377, -0.825096, 0.254598,
		44.504143, 30.584932, 28.565235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031113, 31.064695, 29.082636>,  <44.151077, 31.162498, 28.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031113, 31.064695, 29.082636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385410, 30.890062, 29.019579>,  <44.597988, 30.785282, 28.981745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385410, 30.890062, 29.019579>,  <44.031113, 31.064695, 29.082636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385410, 30.890062, 29.019579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397732, 0.538764, 0.742659,
		-0.239302, -0.720505, 0.650851,
		0.885745, -0.436584, -0.157641,
		44.651134, 30.759087, 28.972286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198322, 30.930040, 29.755241>,  <44.031113, 31.064695, 29.082636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198322, 30.930040, 29.755241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543282, 30.889788, 29.556787>,  <44.750256, 30.865637, 29.437716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543282, 30.889788, 29.556787>,  <44.198322, 30.930040, 29.755241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543282, 30.889788, 29.556787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499348, 0.330241, 0.800994,
		0.083239, -0.938517, 0.335048,
		0.862393, -0.100632, -0.496136,
		44.801998, 30.859598, 29.407948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680119, 30.657473, 30.242487>,  <44.198322, 30.930040, 29.755241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680119, 30.657473, 30.242487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912575, 30.820782, 29.960894>,  <45.052048, 30.918768, 29.791939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912575, 30.820782, 29.960894>,  <44.680119, 30.657473, 30.242487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912575, 30.820782, 29.960894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510059, 0.491328, 0.706000,
		0.634128, -0.769356, 0.077285,
		0.581138, 0.408274, -0.703982,
		45.086918, 30.943264, 29.749699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340645, 30.626221, 30.385317>,  <44.680119, 30.657473, 30.242487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340645, 30.626221, 30.385317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350990, 30.931549, 30.127117>,  <45.357197, 31.114746, 29.972197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350990, 30.931549, 30.127117>,  <45.340645, 30.626221, 30.385317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350990, 30.931549, 30.127117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386558, 0.587850, 0.710638,
		0.921902, -0.267904, -0.279863,
		0.025866, 0.763322, -0.645501,
		45.358749, 31.160545, 29.933468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045876, 31.112198, 30.493345>,  <45.340645, 30.626221, 30.385317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045876, 31.112198, 30.493345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797092, 31.347736, 30.286879>,  <45.647823, 31.489059, 30.162998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797092, 31.347736, 30.286879>,  <46.045876, 31.112198, 30.493345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797092, 31.347736, 30.286879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295963, 0.787053, 0.541251,
		0.724963, 0.183871, -0.663792,
		-0.621960, 0.588845, -0.516166,
		45.610504, 31.524389, 30.132029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472244, 31.662697, 30.108202>,  <46.045876, 31.112198, 30.493345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472244, 31.662697, 30.108202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100662, 31.794561, 30.175570>,  <45.877712, 31.873680, 30.215990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100662, 31.794561, 30.175570>,  <46.472244, 31.662697, 30.108202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100662, 31.794561, 30.175570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362989, 0.721845, 0.589218,
		0.072670, 0.608492, -0.790226,
		-0.928955, 0.329662, 0.168420,
		45.821976, 31.893459, 30.226095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526863, 32.409916, 30.344881>,  <46.472244, 31.662697, 30.108202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526863, 32.409916, 30.344881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135593, 32.358200, 30.409948>,  <45.900833, 32.327171, 30.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135593, 32.358200, 30.409948>,  <46.526863, 32.409916, 30.344881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135593, 32.358200, 30.409948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010378, 0.751483, 0.659671,
		-0.207530, 0.646961, -0.733739,
		-0.978174, -0.129286, 0.162669,
		45.842140, 32.319416, 30.458750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213627, 33.005058, 30.243568>,  <46.526863, 32.409916, 30.344881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213627, 33.005058, 30.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969910, 32.799057, 30.484747>,  <45.823681, 32.675457, 30.629454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969910, 32.799057, 30.484747>,  <46.213627, 33.005058, 30.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969910, 32.799057, 30.484747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007763, 0.756473, 0.653978,
		-0.792909, 0.403143, -0.456914,
		-0.609290, -0.514998, 0.602944,
		45.787121, 32.644558, 30.665630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708328, 33.390842, 30.261196>,  <46.213627, 33.005058, 30.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708328, 33.390842, 30.261196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702454, 33.154156, 30.583601>,  <45.698929, 33.012146, 30.777044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702454, 33.154156, 30.583601>,  <45.708328, 33.390842, 30.261196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702454, 33.154156, 30.583601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260075, 0.780616, 0.568331,
		-0.965477, -0.201277, -0.165355,
		-0.014687, -0.591715, 0.806014,
		45.698048, 32.976643, 30.825405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199345, 33.811539, 30.622133>,  <45.708328, 33.390842, 30.261196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199345, 33.811539, 30.622133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369797, 33.553913, 30.876249>,  <45.472069, 33.399338, 31.028719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369797, 33.553913, 30.876249>,  <45.199345, 33.811539, 30.622133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369797, 33.553913, 30.876249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082070, 0.671823, 0.736151,
		-0.900931, -0.365835, 0.233427,
		0.426131, -0.644064, 0.635290,
		45.497635, 33.360695, 31.066837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829487, 33.856033, 31.300781>,  <45.199345, 33.811539, 30.622133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829487, 33.856033, 31.300781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190693, 33.703270, 31.379480>,  <45.407417, 33.611614, 31.426699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190693, 33.703270, 31.379480>,  <44.829487, 33.856033, 31.300781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190693, 33.703270, 31.379480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095699, 0.625283, 0.774508,
		-0.418812, -0.680565, 0.601189,
		0.903016, -0.381906, 0.196746,
		45.461597, 33.588699, 31.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834713, 33.807083, 31.988108>,  <44.829487, 33.856033, 31.300781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834713, 33.807083, 31.988108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225552, 33.765881, 31.913624>,  <45.460056, 33.741161, 31.868933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225552, 33.765881, 31.913624>,  <44.834713, 33.807083, 31.988108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225552, 33.765881, 31.913624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212023, 0.545877, 0.810595,
		0.018154, -0.831510, 0.555213,
		0.977096, -0.103002, -0.186209,
		45.518681, 33.734982, 31.857761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142929, 33.590515, 32.585461>,  <44.834713, 33.807083, 31.988108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142929, 33.590515, 32.585461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423737, 33.777954, 32.370953>,  <45.592220, 33.890415, 32.242249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423737, 33.777954, 32.370953>,  <45.142929, 33.590515, 32.585461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423737, 33.777954, 32.370953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346616, 0.432987, 0.832094,
		0.622113, -0.770026, 0.141543,
		0.702021, 0.468596, -0.536270,
		45.634342, 33.918533, 32.210072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624413, 33.713688, 33.028294>,  <45.142929, 33.590515, 32.585461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624413, 33.713688, 33.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716339, 33.976646, 32.741234>,  <45.771496, 34.134422, 32.568996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716339, 33.976646, 32.741234>,  <45.624413, 33.713688, 33.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716339, 33.976646, 32.741234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253717, 0.671418, 0.696294,
		0.939582, -0.342097, -0.012492,
		0.229812, 0.657395, -0.717648,
		45.785282, 34.173866, 32.525940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266239, 34.070457, 33.153690>,  <45.624413, 33.713688, 33.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266239, 34.070457, 33.153690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074257, 34.342194, 32.931648>,  <45.959068, 34.505238, 32.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.074257, 34.342194, 32.931648>,  <46.266239, 34.070457, 33.153690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074257, 34.342194, 32.931648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242816, 0.710891, 0.660057,
		0.843023, 0.182007, -0.506148,
		-0.479951, 0.679343, -0.555103,
		45.930271, 34.545998, 32.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674774, 34.585503, 33.213478>,  <46.266239, 34.070457, 33.153690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674774, 34.585503, 33.213478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350216, 34.761620, 33.059711>,  <46.155479, 34.867290, 32.967449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350216, 34.761620, 33.059711>,  <46.674774, 34.585503, 33.213478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350216, 34.761620, 33.059711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263724, 0.862720, 0.431468,
		0.521620, 0.248710, -0.816123,
		-0.811396, 0.440293, -0.384421,
		46.106796, 34.893707, 32.944386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849361, 35.275162, 32.952457>,  <46.674774, 34.585503, 33.213478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849361, 35.275162, 32.952457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458889, 35.281265, 33.039028>,  <46.224606, 35.284927, 33.090973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458889, 35.281265, 33.039028>,  <46.849361, 35.275162, 32.952457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458889, 35.281265, 33.039028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105032, 0.906077, 0.409869,
		-0.189851, 0.422838, -0.886095,
		-0.976179, 0.015254, 0.216431,
		46.166035, 35.285843, 33.103958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257771, 35.779129, 33.451897>,  <46.849361, 35.275162, 32.952457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257771, 35.779129, 33.451897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535812, 35.664871, 33.188007>,  <47.702637, 35.596317, 33.029675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535812, 35.664871, 33.188007>,  <47.257771, 35.779129, 33.451897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535812, 35.664871, 33.188007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693878, 0.506601, 0.511751,
		0.188039, -0.813489, 0.550342,
		0.695108, -0.285641, -0.659723,
		47.744343, 35.579178, 32.990089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.167675, 35.103382, 33.936703>,  <47.257771, 35.779129, 33.451897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.167675, 35.103382, 33.936703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200645, 34.769104, 34.153893>,  <47.220428, 34.568539, 34.284206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200645, 34.769104, 34.153893>,  <47.167675, 35.103382, 33.936703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200645, 34.769104, 34.153893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634849, 0.464008, 0.617789,
		-0.768227, 0.293782, 0.568788,
		0.082427, -0.835697, 0.542970,
		47.225372, 34.518394, 34.316784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069920, 35.241146, 34.632442>,  <47.167675, 35.103382, 33.936703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069920, 35.241146, 34.632442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288353, 34.907913, 34.597183>,  <47.419411, 34.707973, 34.576027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.288353, 34.907913, 34.597183>,  <47.069920, 35.241146, 34.632442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288353, 34.907913, 34.597183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743414, 0.433403, 0.509409,
		-0.386177, -0.343707, 0.855998,
		0.546079, -0.833083, -0.088147,
		47.452175, 34.657990, 34.570740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406879, 34.911434, 35.265659>,  <47.069920, 35.241146, 34.632442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406879, 34.911434, 35.265659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649200, 34.820808, 34.960590>,  <47.794594, 34.766434, 34.777550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649200, 34.820808, 34.960590>,  <47.406879, 34.911434, 35.265659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649200, 34.820808, 34.960590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793510, 0.241792, 0.558461,
		0.057880, -0.943506, 0.326261,
		0.605799, -0.226567, -0.762676,
		47.830940, 34.752838, 34.731789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.188171, 34.467808, 39.414112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016510, 34.131184, 39.282898>,  <36.913513, 33.929211, 39.204170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016510, 34.131184, 39.282898>,  <37.188171, 34.467808, 39.414112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016510, 34.131184, 39.282898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323237, 0.482220, -0.814237,
		0.843413, -0.243399, -0.478969,
		-0.429153, -0.841559, -0.328034,
		36.887764, 33.878716, 39.184486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612877, 34.242420, 38.816723>,  <37.188171, 34.467808, 39.414112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612877, 34.242420, 38.816723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240829, 34.096237, 38.802181>,  <37.017601, 34.008526, 38.793457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240829, 34.096237, 38.802181>,  <37.612877, 34.242420, 38.816723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240829, 34.096237, 38.802181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185484, 0.552865, -0.812365,
		0.316984, -0.748852, -0.582016,
		-0.930116, -0.365461, -0.036349,
		36.961796, 33.986599, 38.791275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377197, 34.077877, 38.157211>,  <37.612877, 34.242420, 38.816723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377197, 34.077877, 38.157211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023270, 34.137825, 38.333679>,  <36.810913, 34.173794, 38.439560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023270, 34.137825, 38.333679>,  <37.377197, 34.077877, 38.157211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023270, 34.137825, 38.333679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241889, 0.661504, -0.709861,
		-0.398219, -0.734815, -0.549062,
		-0.884822, 0.149868, 0.441167,
		36.757824, 34.182785, 38.466030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860020, 33.938190, 37.572826>,  <37.377197, 34.077877, 38.157211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860020, 33.938190, 37.572826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673950, 34.159286, 37.849403>,  <36.562309, 34.291946, 38.015350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673950, 34.159286, 37.849403>,  <36.860020, 33.938190, 37.572826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673950, 34.159286, 37.849403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427456, 0.543738, -0.722239,
		-0.775176, -0.631525, -0.016657,
		-0.465169, 0.552743, 0.691442,
		36.534401, 34.325108, 38.056835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183846, 33.831692, 37.365700>,  <36.860020, 33.938190, 37.572826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183846, 33.831692, 37.365700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196213, 34.159374, 37.594765>,  <36.203632, 34.355984, 37.732204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196213, 34.159374, 37.594765>,  <36.183846, 33.831692, 37.365700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196213, 34.159374, 37.594765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511269, 0.505274, -0.695200,
		-0.858864, -0.271288, 0.434459,
		0.030921, 0.819208, 0.572663,
		36.205490, 34.405136, 37.766563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413158, 34.198715, 37.371296>,  <36.183846, 33.831692, 37.365700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413158, 34.198715, 37.371296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693409, 34.466972, 37.468761>,  <35.861557, 34.627926, 37.527241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693409, 34.466972, 37.468761>,  <35.413158, 34.198715, 37.371296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693409, 34.466972, 37.468761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344399, 0.616913, -0.707678,
		-0.624913, 0.411900, 0.663191,
		0.700623, 0.670639, 0.243659,
		35.903595, 34.668163, 37.541859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058411, 34.723598, 37.599316>,  <35.413158, 34.198715, 37.371296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058411, 34.723598, 37.599316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417210, 34.832413, 37.459946>,  <35.632488, 34.897701, 37.376324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.417210, 34.832413, 37.459946>,  <35.058411, 34.723598, 37.599316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417210, 34.832413, 37.459946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441794, 0.578270, -0.685873,
		0.014903, 0.769156, 0.638888,
		0.896993, 0.272035, -0.348426,
		35.686306, 34.914024, 37.355419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900459, 35.403168, 37.388153>,  <35.058411, 34.723598, 37.599316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900459, 35.403168, 37.388153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271095, 35.371170, 37.241169>,  <35.493477, 35.351971, 37.152977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271095, 35.371170, 37.241169>,  <34.900459, 35.403168, 37.388153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271095, 35.371170, 37.241169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176927, 0.769499, -0.613651,
		0.331848, 0.633618, 0.698860,
		0.926593, -0.079992, -0.367461,
		35.549072, 35.347172, 37.130932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209194, 36.048271, 37.367203>,  <34.900459, 35.403168, 37.388153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209194, 36.048271, 37.367203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396408, 35.837170, 37.083675>,  <35.508736, 35.710510, 36.913559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396408, 35.837170, 37.083675>,  <35.209194, 36.048271, 37.367203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396408, 35.837170, 37.083675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303806, 0.657112, -0.689859,
		0.829846, 0.538221, 0.147218,
		0.468036, -0.527751, -0.708817,
		35.536819, 35.678844, 36.871029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573910, 36.598339, 36.946098>,  <35.209194, 36.048271, 37.367203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573910, 36.598339, 36.946098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569355, 36.281464, 36.702030>,  <35.566624, 36.091339, 36.555592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569355, 36.281464, 36.702030>,  <35.573910, 36.598339, 36.946098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569355, 36.281464, 36.702030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224831, 0.596611, -0.770393,
		0.974331, 0.128413, -0.184902,
		-0.011386, -0.792190, -0.610168,
		35.565941, 36.043808, 36.518978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075111, 36.755627, 36.411091>,  <35.573910, 36.598339, 36.946098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075111, 36.755627, 36.411091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844151, 36.473686, 36.246262>,  <35.705574, 36.304523, 36.147366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.844151, 36.473686, 36.246262>,  <36.075111, 36.755627, 36.411091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844151, 36.473686, 36.246262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051741, 0.535277, -0.843091,
		0.814822, -0.465478, -0.345537,
		-0.577398, -0.704847, -0.412071,
		35.670933, 36.262234, 36.122639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482010, 36.463104, 35.815395>,  <36.075111, 36.755627, 36.411091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482010, 36.463104, 35.815395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084854, 36.426796, 35.784599>,  <35.846561, 36.405010, 35.766121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084854, 36.426796, 35.784599>,  <36.482010, 36.463104, 35.815395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084854, 36.426796, 35.784599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006149, 0.606871, -0.794777,
		0.118864, -0.789600, -0.601999,
		-0.992891, -0.090769, -0.076990,
		35.786987, 36.399567, 35.761501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317028, 36.312061, 35.155033>,  <36.482010, 36.463104, 35.815395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317028, 36.312061, 35.155033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963295, 36.435917, 35.294792>,  <35.751057, 36.510231, 35.378647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963295, 36.435917, 35.294792>,  <36.317028, 36.312061, 35.155033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963295, 36.435917, 35.294792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053626, 0.676076, -0.734878,
		-0.463769, -0.668613, -0.581270,
		-0.884332, 0.309642, 0.349398,
		35.697994, 36.528809, 35.399612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892479, 36.441364, 34.549274>,  <36.317028, 36.312061, 35.155033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892479, 36.441364, 34.549274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699234, 36.637173, 34.839645>,  <35.583286, 36.754658, 35.013866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699234, 36.637173, 34.839645>,  <35.892479, 36.441364, 34.549274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699234, 36.637173, 34.839645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128361, 0.780544, -0.611780,
		-0.866096, -0.388742, -0.314259,
		-0.483117, 0.489522, 0.725925,
		35.554298, 36.784031, 35.057423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345146, 36.736523, 34.192467>,  <35.892479, 36.441364, 34.549274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345146, 36.736523, 34.192467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397114, 36.940960, 34.532326>,  <35.428295, 37.063622, 34.736240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397114, 36.940960, 34.532326>,  <35.345146, 36.736523, 34.192467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397114, 36.940960, 34.532326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075329, 0.859524, -0.505515,
		-0.988659, 0.001674, 0.150170,
		0.129921, 0.511093, 0.849649,
		35.436089, 37.094288, 34.787220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785957, 37.209732, 34.173225>,  <35.345146, 36.736523, 34.192467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785957, 37.209732, 34.173225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078552, 37.370293, 34.393700>,  <35.254108, 37.466629, 34.525986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078552, 37.370293, 34.393700>,  <34.785957, 37.209732, 34.173225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078552, 37.370293, 34.393700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080854, 0.853720, -0.514417,
		-0.677045, 0.331723, 0.656940,
		0.731487, 0.401399, 0.551186,
		35.297997, 37.490711, 34.559055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612988, 37.805737, 34.242523>,  <34.785957, 37.209732, 34.173225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612988, 37.805737, 34.242523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007549, 37.814171, 34.307720>,  <35.244286, 37.819233, 34.346840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007549, 37.814171, 34.307720>,  <34.612988, 37.805737, 34.242523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007549, 37.814171, 34.307720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076665, 0.818203, -0.569796,
		-0.145378, 0.574543, 0.805460,
		0.986401, 0.021085, 0.162996,
		35.303471, 37.820496, 34.356621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814953, 38.450012, 34.539871>,  <34.612988, 37.805737, 34.242523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814953, 38.450012, 34.539871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134270, 38.286217, 34.363213>,  <35.325859, 38.187939, 34.257217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134270, 38.286217, 34.363213>,  <34.814953, 38.450012, 34.539871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134270, 38.286217, 34.363213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030054, 0.759471, -0.649847,
		0.601519, 0.505494, 0.618587,
		0.798293, -0.409486, -0.441644,
		35.373756, 38.163372, 34.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117134, 39.008484, 34.365944>,  <34.814953, 38.450012, 34.539871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117134, 39.008484, 34.365944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350132, 38.745049, 34.175385>,  <35.489933, 38.586987, 34.061050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350132, 38.745049, 34.175385>,  <35.117134, 39.008484, 34.365944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350132, 38.745049, 34.175385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288101, 0.715328, -0.636635,
		0.760062, 0.233587, 0.606417,
		0.582497, -0.658592, -0.476397,
		35.524879, 38.547470, 34.032467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720875, 39.292603, 34.251186>,  <35.117134, 39.008484, 34.365944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720875, 39.292603, 34.251186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699650, 39.010025, 33.968876>,  <35.686916, 38.840477, 33.799492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699650, 39.010025, 33.968876>,  <35.720875, 39.292603, 34.251186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699650, 39.010025, 33.968876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418981, 0.625801, -0.657897,
		0.906443, -0.330614, 0.262783,
		-0.053059, -0.706447, -0.705774,
		35.683731, 38.798092, 33.757145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265728, 39.399612, 33.871262>,  <35.720875, 39.292603, 34.251186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265728, 39.399612, 33.871262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092110, 39.145550, 33.615707>,  <35.987938, 38.993111, 33.462376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092110, 39.145550, 33.615707>,  <36.265728, 39.399612, 33.871262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092110, 39.145550, 33.615707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303708, 0.564494, -0.767534,
		0.848155, -0.527179, -0.052112,
		-0.434044, -0.635161, -0.638887,
		35.961895, 38.955002, 33.424042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812042, 39.225407, 33.380653>,  <36.265728, 39.399612, 33.871262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812042, 39.225407, 33.380653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457779, 39.161560, 33.206234>,  <36.245220, 39.123253, 33.101582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457779, 39.161560, 33.206234>,  <36.812042, 39.225407, 33.380653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457779, 39.161560, 33.206234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253515, 0.620552, -0.742055,
		0.389032, -0.767750, -0.509131,
		-0.885654, -0.159611, -0.436051,
		36.192081, 39.113678, 33.075417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380348, 38.797287, 33.750305>,  <36.812042, 39.225407, 33.380653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380348, 38.797287, 33.750305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694809, 39.022205, 33.647717>,  <37.883488, 39.157158, 33.586163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694809, 39.022205, 33.647717>,  <37.380348, 38.797287, 33.750305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694809, 39.022205, 33.647717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445375, -0.227731, 0.865899,
		0.428488, -0.794957, -0.429466,
		0.786155, 0.562300, -0.256474,
		37.930656, 39.190895, 33.570774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974487, 38.290134, 33.755070>,  <37.380348, 38.797287, 33.750305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974487, 38.290134, 33.755070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092312, 38.670593, 33.792046>,  <38.163006, 38.898869, 33.814232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092312, 38.670593, 33.792046>,  <37.974487, 38.290134, 33.755070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092312, 38.670593, 33.792046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531254, -0.243393, 0.811498,
		0.794357, -0.189924, -0.576997,
		0.294560, 0.951151, 0.092443,
		38.180679, 38.955940, 33.819778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758308, 38.243465, 33.810997>,  <37.974487, 38.290134, 33.755070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758308, 38.243465, 33.810997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.605862, 38.585186, 33.952374>,  <38.514393, 38.790218, 34.037201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.605862, 38.585186, 33.952374>,  <38.758308, 38.243465, 33.810997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605862, 38.585186, 33.952374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489099, -0.138113, 0.861224,
		0.784560, 0.501092, -0.365202,
		-0.381114, 0.854302, 0.353442,
		38.491528, 38.841476, 34.058407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305489, 38.475571, 34.167912>,  <38.758308, 38.243465, 33.810997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305489, 38.475571, 34.167912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006573, 38.709881, 34.293404>,  <38.827225, 38.850468, 34.368698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006573, 38.709881, 34.293404>,  <39.305489, 38.475571, 34.167912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006573, 38.709881, 34.293404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405573, 0.028073, 0.913632,
		0.526377, 0.809986, -0.258554,
		-0.747287, 0.585778, 0.313731,
		38.782387, 38.885612, 34.387524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646786, 38.994823, 34.653252>,  <39.305489, 38.475571, 34.167912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646786, 38.994823, 34.653252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265244, 38.976665, 34.771973>,  <39.036316, 38.965771, 34.843204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265244, 38.976665, 34.771973>,  <39.646786, 38.994823, 34.653252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265244, 38.976665, 34.771973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296139, 0.020815, 0.954918,
		-0.049528, 0.998752, -0.006410,
		-0.953860, -0.045397, 0.296800,
		38.979084, 38.963047, 34.861012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539085, 39.502800, 35.210007>,  <39.646786, 38.994823, 34.653252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539085, 39.502800, 35.210007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.269363, 39.209099, 35.241459>,  <39.107529, 39.032879, 35.260330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.269363, 39.209099, 35.241459>,  <39.539085, 39.502800, 35.210007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269363, 39.209099, 35.241459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168944, -0.049739, 0.984370,
		-0.718866, 0.677051, 0.157587,
		-0.674307, -0.734254, 0.078629,
		39.067070, 38.988823, 35.265049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437973, 39.479786, 35.893974>,  <39.539085, 39.502800, 35.210007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437973, 39.479786, 35.893974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252102, 39.137226, 35.803951>,  <39.140579, 38.931690, 35.749935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252102, 39.137226, 35.803951>,  <39.437973, 39.479786, 35.893974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252102, 39.137226, 35.803951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167811, -0.334732, 0.927251,
		-0.869434, 0.393104, 0.299255,
		-0.464676, -0.856402, -0.225060,
		39.112698, 38.880306, 35.736435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013668, 39.156567, 36.490772>,  <39.437973, 39.479786, 35.893974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013668, 39.156567, 36.490772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059345, 38.839661, 36.251015>,  <39.086750, 38.649517, 36.107159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.059345, 38.839661, 36.251015>,  <39.013668, 39.156567, 36.490772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059345, 38.839661, 36.251015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015416, -0.601855, 0.798457,
		-0.993339, -0.100419, -0.056514,
		0.114193, -0.792267, -0.599394,
		39.093605, 38.601982, 36.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540169, 38.578850, 36.816383>,  <39.013668, 39.156567, 36.490772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540169, 38.578850, 36.816383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808273, 38.421280, 36.564804>,  <38.969135, 38.326736, 36.413857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808273, 38.421280, 36.564804>,  <38.540169, 38.578850, 36.816383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808273, 38.421280, 36.564804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130320, -0.771848, 0.622309,
		-0.730593, -0.499074, -0.466003,
		0.670261, -0.393925, -0.628946,
		39.009350, 38.303101, 36.376118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361401, 37.882511, 36.697906>,  <38.540169, 38.578850, 36.816383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361401, 37.882511, 36.697906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751358, 37.931374, 36.623436>,  <38.985332, 37.960693, 36.578754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751358, 37.931374, 36.623436>,  <38.361401, 37.882511, 36.697906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751358, 37.931374, 36.623436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217808, -0.696966, 0.683227,
		-0.046294, -0.706623, -0.706074,
		0.974893, 0.122159, -0.186173,
		39.043827, 37.968021, 36.567585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648788, 37.164890, 36.630070>,  <38.361401, 37.882511, 36.697906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648788, 37.164890, 36.630070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962963, 37.400845, 36.705032>,  <39.151466, 37.542416, 36.750011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962963, 37.400845, 36.705032>,  <38.648788, 37.164890, 36.630070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962963, 37.400845, 36.705032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305072, -0.632415, 0.712027,
		0.538534, -0.502081, -0.676680,
		0.785438, 0.589887, 0.187406,
		39.198593, 37.577812, 36.761253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185051, 36.675667, 36.700218>,  <38.648788, 37.164890, 36.630070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185051, 36.675667, 36.700218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357670, 37.004227, 36.849384>,  <39.461243, 37.201363, 36.938885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357670, 37.004227, 36.849384>,  <39.185051, 36.675667, 36.700218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357670, 37.004227, 36.849384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202196, -0.490950, 0.847399,
		0.879139, -0.290289, -0.377952,
		0.431546, 0.821401, 0.372918,
		39.487133, 37.250648, 36.961258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966354, 36.550228, 36.769691>,  <39.185051, 36.675667, 36.700218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966354, 36.550228, 36.769691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830467, 36.831989, 37.018982>,  <39.748936, 37.001045, 37.168556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.830467, 36.831989, 37.018982>,  <39.966354, 36.550228, 36.769691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830467, 36.831989, 37.018982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307135, -0.543217, 0.781398,
		0.888965, 0.456869, -0.031806,
		-0.339719, 0.704405, 0.623221,
		39.728550, 37.043312, 37.205948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495770, 36.651352, 37.279221>,  <39.966354, 36.550228, 36.769691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495770, 36.651352, 37.279221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139172, 36.753628, 37.428810>,  <39.925213, 36.814991, 37.518566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139172, 36.753628, 37.428810>,  <40.495770, 36.651352, 37.279221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139172, 36.753628, 37.428810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105311, -0.685930, 0.720007,
		0.440618, 0.681267, 0.584577,
		-0.891496, 0.255686, 0.373978,
		39.871723, 36.830334, 37.541004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646980, 36.493702, 37.962521>,  <40.495770, 36.651352, 37.279221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646980, 36.493702, 37.962521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249481, 36.521297, 37.927422>,  <40.010983, 36.537857, 37.906361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.249481, 36.521297, 37.927422>,  <40.646980, 36.493702, 37.962521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249481, 36.521297, 37.927422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111529, -0.645980, 0.755163,
		-0.004585, 0.760230, 0.649637,
		-0.993750, 0.068991, -0.087749,
		39.951355, 36.541996, 37.901096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400486, 36.533813, 38.714951>,  <40.646980, 36.493702, 37.962521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400486, 36.533813, 38.714951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067173, 36.442806, 38.513409>,  <39.867184, 36.388203, 38.392483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067173, 36.442806, 38.513409>,  <40.400486, 36.533813, 38.714951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067173, 36.442806, 38.513409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168032, -0.764045, 0.622897,
		-0.526691, 0.603714, 0.598437,
		-0.833284, -0.227517, -0.503859,
		39.817188, 36.374550, 38.362251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766689, 36.570217, 39.173275>,  <40.400486, 36.533813, 38.714951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766689, 36.570217, 39.173275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679844, 36.300117, 38.891312>,  <39.627735, 36.138058, 38.722134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679844, 36.300117, 38.891312>,  <39.766689, 36.570217, 39.173275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679844, 36.300117, 38.891312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289144, -0.645241, 0.707149,
		-0.932339, 0.357354, -0.055153,
		-0.217115, -0.675250, -0.704910,
		39.614708, 36.097542, 38.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337677, 36.052731, 39.554321>,  <39.766689, 36.570217, 39.173275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337677, 36.052731, 39.554321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426392, 35.876198, 39.206520>,  <39.479618, 35.770279, 38.997841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426392, 35.876198, 39.206520>,  <39.337677, 36.052731, 39.554321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426392, 35.876198, 39.206520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000443, -0.891757, 0.452513,
		-0.975096, -0.099975, -0.197973,
		0.221784, -0.441332, -0.869505,
		39.492928, 35.743797, 38.945667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.790981, 35.568851, 39.550045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078724, 35.440380, 39.303673>,  <39.251369, 35.363297, 39.155849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078724, 35.440380, 39.303673>,  <38.790981, 35.568851, 39.550045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078724, 35.440380, 39.303673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072141, -0.916435, 0.393628,
		-0.690884, -0.238726, -0.682414,
		0.719357, -0.321181, -0.615928,
		39.294533, 35.344025, 39.118893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526394, 34.943432, 39.315716>,  <38.790981, 35.568851, 39.550045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526394, 34.943432, 39.315716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919621, 34.909321, 39.250828>,  <39.155556, 34.888855, 39.211895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919621, 34.909321, 39.250828>,  <38.526394, 34.943432, 39.315716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919621, 34.909321, 39.250828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016758, -0.839594, 0.542956,
		-0.182499, -0.536479, -0.823945,
		0.983063, -0.085281, -0.162216,
		39.214539, 34.883736, 39.202164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717285, 34.326473, 38.969597>,  <38.526394, 34.943432, 39.315716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717285, 34.326473, 38.969597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041225, 34.440636, 39.174606>,  <39.235588, 34.509132, 39.297611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.041225, 34.440636, 39.174606>,  <38.717285, 34.326473, 38.969597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041225, 34.440636, 39.174606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030668, -0.893075, 0.448862,
		0.585833, -0.347793, -0.732010,
		0.809851, 0.285407, 0.512527,
		39.284180, 34.526257, 39.328365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972145, 33.712555, 38.978508>,  <38.717285, 34.326473, 38.969597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972145, 33.712555, 38.978508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231304, 33.914116, 39.207001>,  <39.386799, 34.035053, 39.344097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231304, 33.914116, 39.207001>,  <38.972145, 33.712555, 38.978508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231304, 33.914116, 39.207001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160668, -0.823451, 0.544164,
		0.744588, -0.260786, -0.614475,
		0.647901, 0.503904, 0.571232,
		39.425674, 34.065289, 39.378368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547844, 33.256733, 38.977455>,  <38.972145, 33.712555, 38.978508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547844, 33.256733, 38.977455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529465, 33.486710, 39.304218>,  <39.518436, 33.624695, 39.500275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529465, 33.486710, 39.304218>,  <39.547844, 33.256733, 38.977455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529465, 33.486710, 39.304218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163787, -0.802364, 0.573921,
		0.985425, 0.160167, -0.057303,
		-0.045946, 0.574942, 0.816903,
		39.515682, 33.659191, 39.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041622, 33.034023, 39.383884>,  <39.547844, 33.256733, 38.977455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041622, 33.034023, 39.383884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807770, 33.239338, 39.635201>,  <39.667458, 33.362526, 39.785992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807770, 33.239338, 39.635201>,  <40.041622, 33.034023, 39.383884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807770, 33.239338, 39.635201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067142, -0.802378, 0.593028,
		0.808516, 0.304518, 0.503558,
		-0.584631, 0.513283, 0.628290,
		39.632381, 33.393322, 39.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312584, 33.016464, 40.106632>,  <40.041622, 33.034023, 39.383884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312584, 33.016464, 40.106632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932243, 33.130127, 40.155834>,  <39.704037, 33.198326, 40.185356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932243, 33.130127, 40.155834>,  <40.312584, 33.016464, 40.106632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932243, 33.130127, 40.155834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111159, -0.684038, 0.720927,
		0.288999, 0.671823, 0.682007,
		-0.950854, 0.284158, 0.123007,
		39.646988, 33.215374, 40.192738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250908, 33.307953, 40.774624>,  <40.312584, 33.016464, 40.106632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250908, 33.307953, 40.774624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876427, 33.206470, 40.677338>,  <39.651737, 33.145580, 40.618965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.876427, 33.206470, 40.677338>,  <40.250908, 33.307953, 40.774624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876427, 33.206470, 40.677338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089181, -0.497880, 0.862648,
		-0.339950, 0.829306, 0.443493,
		-0.936205, -0.253706, -0.243213,
		39.595566, 33.130360, 40.604374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841465, 33.442913, 41.333748>,  <40.250908, 33.307953, 40.774624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841465, 33.442913, 41.333748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623962, 33.181217, 41.123489>,  <39.493462, 33.024200, 40.997334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623962, 33.181217, 41.123489>,  <39.841465, 33.442913, 41.333748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623962, 33.181217, 41.123489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158311, -0.535125, 0.829806,
		-0.824174, 0.534430, 0.187406,
		-0.543759, -0.654237, -0.525643,
		39.460835, 32.984947, 40.965797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237656, 33.415909, 41.744995>,  <39.841465, 33.442913, 41.333748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237656, 33.415909, 41.744995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267467, 33.085861, 41.520985>,  <39.285355, 32.887833, 41.386578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267467, 33.085861, 41.520985>,  <39.237656, 33.415909, 41.744995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267467, 33.085861, 41.520985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012100, -0.560798, 0.827864,
		-0.997145, -0.068477, -0.031813,
		0.074531, -0.825116, -0.560025,
		39.289825, 32.838326, 41.352978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692471, 32.938152, 41.971985>,  <39.237656, 33.415909, 41.744995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692471, 32.938152, 41.971985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967445, 32.715961, 41.784847>,  <39.132431, 32.582649, 41.672565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967445, 32.715961, 41.784847>,  <38.692471, 32.938152, 41.971985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967445, 32.715961, 41.784847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088583, -0.703524, 0.705129,
		-0.720819, -0.443291, -0.532835,
		0.687440, -0.555470, -0.467845,
		39.173676, 32.549320, 41.644493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449577, 32.306728, 41.980774>,  <38.692471, 32.938152, 41.971985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449577, 32.306728, 41.980774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833721, 32.230000, 41.899876>,  <39.064209, 32.183960, 41.851337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833721, 32.230000, 41.899876>,  <38.449577, 32.306728, 41.980774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833721, 32.230000, 41.899876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012782, -0.755101, 0.655484,
		-0.278456, -0.626918, -0.727623,
		0.960364, -0.191824, -0.202249,
		39.121830, 32.172451, 41.839199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569061, 31.549557, 41.864586>,  <38.449577, 32.306728, 41.980774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569061, 31.549557, 41.864586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922485, 31.705414, 41.968510>,  <39.134541, 31.798927, 42.030865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922485, 31.705414, 41.968510>,  <38.569061, 31.549557, 41.864586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922485, 31.705414, 41.968510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060117, -0.644543, 0.762201,
		0.464442, -0.657833, -0.592917,
		0.883561, 0.389642, 0.259805,
		39.187553, 31.822306, 42.046452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959602, 30.931892, 42.009212>,  <38.569061, 31.549557, 41.864586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959602, 30.931892, 42.009212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180538, 31.230768, 42.157066>,  <39.313099, 31.410093, 42.245777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.180538, 31.230768, 42.157066>,  <38.959602, 30.931892, 42.009212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180538, 31.230768, 42.157066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283115, -0.585190, 0.759867,
		0.784072, -0.315053, -0.534763,
		0.552337, 0.747191, 0.369635,
		39.346241, 31.454926, 42.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599373, 30.588964, 42.246075>,  <38.959602, 30.931892, 42.009212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599373, 30.588964, 42.246075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618809, 30.944334, 42.428654>,  <39.630470, 31.157555, 42.538200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618809, 30.944334, 42.428654>,  <39.599373, 30.588964, 42.246075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618809, 30.944334, 42.428654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598731, -0.391691, 0.698641,
		0.799475, 0.239341, -0.550959,
		0.048592, 0.888422, 0.456448,
		39.633385, 31.210861, 42.565586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370922, 30.770681, 42.398582>,  <39.599373, 30.588964, 42.246075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370922, 30.770681, 42.398582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118439, 30.949091, 42.652397>,  <39.966949, 31.056137, 42.804688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118439, 30.949091, 42.652397>,  <40.370922, 30.770681, 42.398582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118439, 30.949091, 42.652397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560541, -0.303107, 0.770662,
		0.536066, 0.842133, -0.058691,
		-0.631211, 0.446024, 0.634535,
		39.929077, 31.082899, 42.842758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783230, 31.124273, 42.908859>,  <40.370922, 30.770681, 42.398582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783230, 31.124273, 42.908859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424831, 31.065470, 43.076469>,  <40.209793, 31.030188, 43.177036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424831, 31.065470, 43.076469>,  <40.783230, 31.124273, 42.908859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424831, 31.065470, 43.076469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443380, -0.348388, 0.825857,
		0.024575, 0.925751, 0.377334,
		-0.895997, -0.147007, 0.419021,
		40.156033, 31.021368, 43.202175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977394, 31.010498, 43.547440>,  <40.783230, 31.124273, 42.908859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977394, 31.010498, 43.547440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603165, 30.870548, 43.528316>,  <40.378628, 30.786579, 43.516842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603165, 30.870548, 43.528316>,  <40.977394, 31.010498, 43.547440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603165, 30.870548, 43.528316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209682, -0.659352, 0.722003,
		-0.284129, 0.665465, 0.690237,
		-0.935577, -0.349872, -0.047805,
		40.322491, 30.765587, 43.513973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871513, 30.975996, 44.200466>,  <40.977394, 31.010498, 43.547440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871513, 30.975996, 44.200466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613850, 30.740889, 44.004677>,  <40.459251, 30.599825, 43.887203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.613850, 30.740889, 44.004677>,  <40.871513, 30.975996, 44.200466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613850, 30.740889, 44.004677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333987, -0.791839, 0.511315,
		-0.688117, 0.165894, 0.706381,
		-0.644164, -0.587767, -0.489472,
		40.420601, 30.564558, 43.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538933, 30.567806, 44.657852>,  <40.871513, 30.975996, 44.200466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538933, 30.567806, 44.657852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495407, 30.369272, 44.313339>,  <40.469292, 30.250153, 44.106632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495407, 30.369272, 44.313339>,  <40.538933, 30.567806, 44.657852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495407, 30.369272, 44.313339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365321, -0.825766, 0.429710,
		-0.924500, -0.267885, 0.271179,
		-0.108817, -0.496334, -0.861285,
		40.462761, 30.220371, 44.054955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211834, 29.946213, 44.895214>,  <40.538933, 30.567806, 44.657852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211834, 29.946213, 44.895214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323593, 29.872007, 44.518379>,  <40.390648, 29.827484, 44.292278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323593, 29.872007, 44.518379>,  <40.211834, 29.946213, 44.895214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323593, 29.872007, 44.518379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425376, -0.855704, 0.294663,
		-0.860809, -0.483068, -0.160168,
		0.279398, -0.185516, -0.942083,
		40.407413, 29.816353, 44.235756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758171, 29.375198, 44.551228>,  <40.211834, 29.946213, 44.895214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758171, 29.375198, 44.551228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145672, 29.432890, 44.470512>,  <40.378174, 29.467505, 44.422081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.145672, 29.432890, 44.470512>,  <39.758171, 29.375198, 44.551228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145672, 29.432890, 44.470512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220117, -0.874897, 0.431398,
		-0.114328, -0.462335, -0.879304,
		0.968751, 0.144229, -0.201792,
		40.436298, 29.476158, 44.409973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140255, 28.756235, 44.181217>,  <39.758171, 29.375198, 44.551228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140255, 28.756235, 44.181217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415237, 28.967148, 44.380966>,  <40.580227, 29.093697, 44.500816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415237, 28.967148, 44.380966>,  <40.140255, 28.756235, 44.181217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415237, 28.967148, 44.380966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373127, -0.846380, 0.380023,
		0.623037, -0.074922, -0.778596,
		0.687459, 0.527284, 0.499371,
		40.621475, 29.125334, 44.530777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809338, 28.035961, 44.042988>,  <40.140255, 28.756235, 44.181217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809338, 28.035961, 44.042988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747318, 27.725374, 43.798676>,  <39.710106, 27.539022, 43.652088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747318, 27.725374, 43.798676>,  <39.809338, 28.035961, 44.042988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747318, 27.725374, 43.798676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445964, 0.606694, -0.658056,
		0.881519, 0.170355, -0.440345,
		-0.155052, -0.776467, -0.610784,
		39.700802, 27.492434, 43.615440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041920, 28.184813, 43.419117>,  <39.809338, 28.035961, 44.042988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041920, 28.184813, 43.419117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757042, 27.910433, 43.359447>,  <39.586117, 27.745804, 43.323647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757042, 27.910433, 43.359447>,  <40.041920, 28.184813, 43.419117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757042, 27.910433, 43.359447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380687, 0.555941, -0.738923,
		0.589797, -0.469466, -0.657070,
		-0.712191, -0.685953, -0.149173,
		39.543385, 27.704647, 43.314697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959576, 28.293097, 42.739883>,  <40.041920, 28.184813, 43.419117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959576, 28.293097, 42.739883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631126, 28.102819, 42.866039>,  <39.434055, 27.988653, 42.941734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631126, 28.102819, 42.866039>,  <39.959576, 28.293097, 42.739883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631126, 28.102819, 42.866039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522870, 0.405416, -0.749830,
		0.228826, -0.780611, -0.581623,
		-0.821125, -0.475694, 0.315388,
		39.384789, 27.960112, 42.960655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707073, 27.952404, 42.170353>,  <39.959576, 28.293097, 42.739883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707073, 27.952404, 42.170353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410755, 28.036942, 42.425400>,  <39.232964, 28.087664, 42.578426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410755, 28.036942, 42.425400>,  <39.707073, 27.952404, 42.170353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410755, 28.036942, 42.425400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477920, 0.501189, -0.721389,
		-0.472026, -0.839132, -0.270275,
		-0.740799, 0.211344, 0.637613,
		39.188515, 28.100346, 42.616684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046108, 27.620806, 41.848087>,  <39.707073, 27.952404, 42.170353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046108, 27.620806, 41.848087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949352, 27.905167, 42.112240>,  <38.891300, 28.075783, 42.270733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949352, 27.905167, 42.112240>,  <39.046108, 27.620806, 41.848087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949352, 27.905167, 42.112240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550618, 0.459831, -0.696689,
		-0.798944, -0.532139, 0.280209,
		-0.241887, 0.710903, 0.660384,
		38.876785, 28.118437, 42.310356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411366, 27.772682, 41.548908>,  <39.046108, 27.620806, 41.848087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411366, 27.772682, 41.548908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524883, 28.055264, 41.808258>,  <38.592995, 28.224813, 41.963867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524883, 28.055264, 41.808258>,  <38.411366, 27.772682, 41.548908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524883, 28.055264, 41.808258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499734, 0.686048, -0.528776,
		-0.818370, -0.173952, 0.547733,
		0.283790, 0.706455, 0.648371,
		38.610020, 28.267200, 42.002769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770706, 28.037157, 41.780163>,  <38.411366, 27.772682, 41.548908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770706, 28.037157, 41.780163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040207, 28.329700, 41.822456>,  <38.201908, 28.505226, 41.847832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.040207, 28.329700, 41.822456>,  <37.770706, 28.037157, 41.780163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040207, 28.329700, 41.822456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574092, 0.608135, -0.548261,
		-0.465273, 0.308692, 0.829597,
		0.673750, 0.731356, 0.105731,
		38.242332, 28.549107, 41.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387772, 28.579123, 41.893272>,  <37.770706, 28.037157, 41.780163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387772, 28.579123, 41.893272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735962, 28.723606, 41.759521>,  <37.944874, 28.810297, 41.679272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735962, 28.723606, 41.759521>,  <37.387772, 28.579123, 41.893272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735962, 28.723606, 41.759521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486389, 0.735475, -0.471702,
		0.075541, 0.573240, 0.815899,
		0.870471, 0.361211, -0.334375,
		37.997105, 28.831970, 41.659210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370583, 29.265921, 41.917984>,  <37.387772, 28.579123, 41.893272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370583, 29.265921, 41.917984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692368, 29.251617, 41.680813>,  <37.885437, 29.243034, 41.538509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692368, 29.251617, 41.680813>,  <37.370583, 29.265921, 41.917984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692368, 29.251617, 41.680813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212728, 0.914637, -0.343782,
		0.554608, 0.402692, 0.728182,
		0.804460, -0.035760, -0.592929,
		37.933704, 29.240889, 41.502934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719250, 29.875494, 41.991592>,  <37.370583, 29.265921, 41.917984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719250, 29.875494, 41.991592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838627, 29.722794, 41.641689>,  <37.910252, 29.631174, 41.431747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838627, 29.722794, 41.641689>,  <37.719250, 29.875494, 41.991592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838627, 29.722794, 41.641689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099959, 0.898982, -0.426427,
		0.949179, 0.214704, 0.230135,
		0.298442, -0.381751, -0.874756,
		37.928158, 29.608269, 41.379261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184673, 30.415604, 41.737267>,  <37.719250, 29.875494, 41.991592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184673, 30.415604, 41.737267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037804, 30.183258, 41.446671>,  <37.949684, 30.043850, 41.272312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037804, 30.183258, 41.446671>,  <38.184673, 30.415604, 41.737267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037804, 30.183258, 41.446671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246647, 0.813880, -0.526085,
		0.896857, -0.013977, -0.442101,
		-0.367170, -0.580865, -0.726486,
		37.927654, 30.008999, 41.228725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445190, 30.622009, 41.129852>,  <38.184673, 30.415604, 41.737267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445190, 30.622009, 41.129852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114582, 30.434465, 41.005249>,  <37.916218, 30.321939, 40.930489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114582, 30.434465, 41.005249>,  <38.445190, 30.622009, 41.129852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114582, 30.434465, 41.005249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190254, 0.753500, -0.629318,
		0.529779, -0.460880, -0.711986,
		-0.826522, -0.468857, -0.311504,
		37.866627, 30.293808, 40.911797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453510, 30.725824, 40.506905>,  <38.445190, 30.622009, 41.129852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453510, 30.725824, 40.506905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066425, 30.632603, 40.545296>,  <37.834175, 30.576670, 40.568329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.066425, 30.632603, 40.545296>,  <38.453510, 30.725824, 40.506905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066425, 30.632603, 40.545296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243320, 0.764537, -0.596891,
		0.065730, -0.600974, -0.796561,
		-0.967716, -0.233053, 0.095976,
		37.776112, 30.562687, 40.574089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194962, 30.786797, 39.859604>,  <38.453510, 30.725824, 40.506905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194962, 30.786797, 39.859604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867226, 30.800917, 40.088493>,  <37.670586, 30.809389, 40.225826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867226, 30.800917, 40.088493>,  <38.194962, 30.786797, 39.859604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867226, 30.800917, 40.088493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407721, 0.665812, -0.624866,
		-0.403053, -0.745284, -0.531131,
		-0.819336, 0.035300, 0.572226,
		37.621426, 30.811506, 40.260162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573364, 30.614990, 39.489285>,  <38.194962, 30.786797, 39.859604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573364, 30.614990, 39.489285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 30.838381, 39.799522>,  <37.385067, 30.972416, 39.985664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455677, 30.838381, 39.799522>,  <37.573364, 30.614990, 39.489285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455677, 30.838381, 39.799522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272656, 0.728738, -0.628172,
		-0.916022, -0.396286, -0.062132,
		-0.294214, 0.558479, 0.775590,
		37.367413, 31.005924, 40.032200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003666, 31.018476, 39.286846>,  <37.573364, 30.614990, 39.489285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003666, 31.018476, 39.286846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093479, 31.238340, 39.608707>,  <37.147366, 31.370258, 39.801823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093479, 31.238340, 39.608707>,  <37.003666, 31.018476, 39.286846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093479, 31.238340, 39.608707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080945, 0.833399, -0.546712,
		-0.971099, 0.057622, 0.231617,
		0.224532, 0.549659, 0.804649,
		37.160839, 31.403238, 39.850101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499958, 31.522268, 39.398117>,  <37.003666, 31.018476, 39.286846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499958, 31.522268, 39.398117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800694, 31.686342, 39.604603>,  <36.981136, 31.784786, 39.728497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800694, 31.686342, 39.604603>,  <36.499958, 31.522268, 39.398117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800694, 31.686342, 39.604603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251509, 0.902147, -0.350533,
		-0.609489, 0.133712, 0.781438,
		0.751842, 0.410185, 0.516218,
		37.026245, 31.809399, 39.759468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162647, 32.079388, 39.689575>,  <36.499958, 31.522268, 39.398117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162647, 32.079388, 39.689575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556538, 32.145813, 39.710476>,  <36.792873, 32.185669, 39.723015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556538, 32.145813, 39.710476>,  <36.162647, 32.079388, 39.689575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556538, 32.145813, 39.710476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144695, 0.947609, -0.284781,
		-0.096807, 0.272872, 0.957167,
		0.984729, 0.166066, 0.052252,
		36.851955, 32.195633, 39.726151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169434, 32.747017, 40.024952>,  <36.162647, 32.079388, 39.689575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169434, 32.747017, 40.024952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522884, 32.693459, 39.845497>,  <36.734955, 32.661324, 39.737823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522884, 32.693459, 39.845497>,  <36.169434, 32.747017, 40.024952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522884, 32.693459, 39.845497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066298, 0.984362, -0.163205,
		0.463470, 0.114469, 0.878688,
		0.883629, -0.133896, -0.448633,
		36.787971, 32.653290, 39.710907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539143, 33.344501, 40.348911>,  <36.169434, 32.747017, 40.024952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539143, 33.344501, 40.348911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698082, 33.200039, 40.011467>,  <36.793446, 33.113361, 39.809002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698082, 33.200039, 40.011467>,  <36.539143, 33.344501, 40.348911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698082, 33.200039, 40.011467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047111, 0.926116, -0.374286,
		0.916458, 0.108978, 0.385004,
		0.397348, -0.361156, -0.843612,
		36.817287, 33.091694, 39.758385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139568, 33.732666, 40.178169>,  <36.539143, 33.344501, 40.348911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139568, 33.732666, 40.178169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036190, 33.566162, 39.829472>,  <36.974163, 33.466259, 39.620255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.036190, 33.566162, 39.829472>,  <37.139568, 33.732666, 40.178169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036190, 33.566162, 39.829472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021255, 0.904633, -0.425661,
		0.965792, -0.091482, -0.242647,
		-0.258447, -0.416257, -0.871743,
		36.958656, 33.441284, 39.567947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.896374, 27.659372, 32.286697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.602852, 27.751553, 32.031067>,  <43.426739, 27.806862, 31.877689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.602852, 27.751553, 32.031067>,  <43.896374, 27.659372, 32.286697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602852, 27.751553, 32.031067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278497, 0.960073, 0.026424,
		0.619649, -0.158590, -0.768689,
		-0.733808, 0.230452, -0.639076,
		43.382710, 27.820688, 31.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230751, 28.050724, 31.625513>,  <43.896374, 27.659372, 32.286697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230751, 28.050724, 31.625513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842052, 28.141773, 31.650507>,  <43.608833, 28.196404, 31.665504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842052, 28.141773, 31.650507>,  <44.230751, 28.050724, 31.625513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842052, 28.141773, 31.650507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214087, 0.961401, -0.172845,
		-0.099418, -0.154583, -0.982965,
		-0.971742, 0.227624, 0.062486,
		43.550529, 28.210060, 31.669252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088139, 28.560648, 31.148794>,  <44.230751, 28.050724, 31.625513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088139, 28.560648, 31.148794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784225, 28.608093, 31.404503>,  <43.601879, 28.636560, 31.557928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784225, 28.608093, 31.404503>,  <44.088139, 28.560648, 31.148794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784225, 28.608093, 31.404503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082344, 0.992856, -0.086350,
		-0.644946, -0.012967, -0.764118,
		-0.759779, 0.118611, 0.639271,
		43.556293, 28.643677, 31.596285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642220, 28.924978, 30.793488>,  <44.088139, 28.560648, 31.148794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642220, 28.924978, 30.793488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557003, 29.011013, 31.174717>,  <43.505875, 29.062634, 31.403456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557003, 29.011013, 31.174717>,  <43.642220, 28.924978, 30.793488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557003, 29.011013, 31.174717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018978, 0.974373, -0.224136,
		-0.976859, -0.065837, -0.203497,
		-0.213039, 0.215087, 0.953075,
		43.493092, 29.075539, 31.460640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131626, 29.521441, 30.844913>,  <43.642220, 28.924978, 30.793488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131626, 29.521441, 30.844913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306862, 29.514124, 31.204411>,  <43.412003, 29.509733, 31.420109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.306862, 29.514124, 31.204411>,  <43.131626, 29.521441, 30.844913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306862, 29.514124, 31.204411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032396, 0.998822, 0.036120,
		-0.898346, -0.044939, 0.436985,
		0.438093, -0.018292, 0.898743,
		43.438290, 29.508636, 31.474033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723663, 29.870955, 31.190279>,  <43.131626, 29.521441, 30.844913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723663, 29.870955, 31.190279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042870, 29.885242, 31.430910>,  <43.234394, 29.893816, 31.575289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042870, 29.885242, 31.430910>,  <42.723663, 29.870955, 31.190279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042870, 29.885242, 31.430910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160483, 0.974791, 0.155006,
		-0.580875, -0.220240, 0.783631,
		0.798016, 0.035721, 0.601577,
		43.282276, 29.895958, 31.611383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471069, 30.224876, 31.822056>,  <42.723663, 29.870955, 31.190279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471069, 30.224876, 31.822056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868294, 30.270203, 31.809532>,  <43.106628, 30.297400, 31.802019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.868294, 30.270203, 31.809532>,  <42.471069, 30.224876, 31.822056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868294, 30.270203, 31.809532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109466, 0.988401, 0.105264,
		0.042873, -0.101107, 0.993951,
		0.993066, 0.113317, -0.031308,
		43.166214, 30.304197, 31.800140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638058, 30.652893, 32.397446>,  <42.471069, 30.224876, 31.822056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638058, 30.652893, 32.397446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946903, 30.710176, 32.149792>,  <43.132210, 30.744547, 32.001198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.946903, 30.710176, 32.149792>,  <42.638058, 30.652893, 32.397446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946903, 30.710176, 32.149792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044232, 0.984025, 0.172446,
		0.633942, -0.105762, 0.766115,
		0.772115, 0.143207, -0.619137,
		43.178539, 30.753139, 31.964050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139923, 31.086430, 32.726254>,  <42.638058, 30.652893, 32.397446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139923, 31.086430, 32.726254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229496, 31.130064, 32.338863>,  <43.283241, 31.156244, 32.106430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229496, 31.130064, 32.338863>,  <43.139923, 31.086430, 32.726254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229496, 31.130064, 32.338863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012574, 0.993957, 0.109046,
		0.974522, -0.012242, 0.223956,
		0.223937, 0.109084, -0.968480,
		43.296677, 31.162788, 32.048321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637489, 31.577999, 32.760143>,  <43.139923, 31.086430, 32.726254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637489, 31.577999, 32.760143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538364, 31.571018, 32.372684>,  <43.478889, 31.566830, 32.140209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538364, 31.571018, 32.372684>,  <43.637489, 31.577999, 32.760143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538364, 31.571018, 32.372684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042508, 0.999071, -0.007126,
		0.967876, 0.039410, -0.248321,
		-0.247809, -0.017453, -0.968652,
		43.464024, 31.565783, 32.082088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058067, 32.005600, 32.374828>,  <43.637489, 31.577999, 32.760143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058067, 32.005600, 32.374828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723621, 31.981441, 32.156742>,  <43.522953, 31.966946, 32.025890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723621, 31.981441, 32.156742>,  <44.058067, 32.005600, 32.374828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723621, 31.981441, 32.156742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177232, 0.970358, 0.164300,
		0.519127, 0.234003, -0.822040,
		-0.836120, -0.060399, -0.545212,
		43.472786, 31.963322, 31.993179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145115, 32.542194, 31.922152>,  <44.058067, 32.005600, 32.374828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145115, 32.542194, 31.922152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755970, 32.460728, 31.878218>,  <43.522484, 32.411846, 31.851858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755970, 32.460728, 31.878218>,  <44.145115, 32.542194, 31.922152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755970, 32.460728, 31.878218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214044, 0.972409, 0.092766,
		0.087909, 0.113757, -0.989612,
		-0.972861, -0.203665, -0.109832,
		43.464111, 32.399628, 31.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855076, 32.902504, 31.444914>,  <44.145115, 32.542194, 31.922152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855076, 32.902504, 31.444914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.531158, 32.834015, 31.669384>,  <43.336807, 32.792919, 31.804066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.531158, 32.834015, 31.669384>,  <43.855076, 32.902504, 31.444914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531158, 32.834015, 31.669384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155920, 0.984879, 0.075508,
		-0.565620, -0.026352, -0.824245,
		-0.809792, -0.171225, 0.561176,
		43.288219, 32.782646, 31.837736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281250, 33.284824, 31.112888>,  <43.855076, 32.902504, 31.444914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281250, 33.284824, 31.112888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207077, 33.208569, 31.498484>,  <43.162575, 33.162815, 31.729841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207077, 33.208569, 31.498484>,  <43.281250, 33.284824, 31.112888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207077, 33.208569, 31.498484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215709, 0.964970, 0.149339,
		-0.958689, -0.180249, -0.220057,
		-0.185430, -0.190638, 0.963988,
		43.151447, 33.151379, 31.787680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583599, 33.654331, 31.269695>,  <43.281250, 33.284824, 31.112888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583599, 33.654331, 31.269695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729954, 33.575676, 31.633554>,  <42.817768, 33.528484, 31.851870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729954, 33.575676, 31.633554>,  <42.583599, 33.654331, 31.269695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729954, 33.575676, 31.633554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345063, 0.879092, 0.328828,
		-0.864324, -0.434201, 0.253799,
		0.365891, -0.196637, 0.909647,
		42.839722, 33.516685, 31.906448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286182, 34.172722, 31.676128>,  <42.583599, 33.654331, 31.269695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286182, 34.172722, 31.676128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550415, 34.018471, 31.933788>,  <42.708954, 33.925922, 32.088383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.550415, 34.018471, 31.933788>,  <42.286182, 34.172722, 31.676128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550415, 34.018471, 31.933788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073026, 0.886937, 0.456081,
		-0.747196, -0.254238, 0.614053,
		0.660579, -0.385624, 0.644150,
		42.748589, 33.902782, 32.127033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094059, 34.381466, 32.472240>,  <42.286182, 34.172722, 31.676128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094059, 34.381466, 32.472240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488625, 34.316792, 32.483894>,  <42.725365, 34.277988, 32.490887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.488625, 34.316792, 32.483894>,  <42.094059, 34.381466, 32.472240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488625, 34.316792, 32.483894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127331, 0.864465, 0.486300,
		-0.103810, -0.475983, 0.873306,
		0.986413, -0.161682, 0.029133,
		42.784550, 34.268288, 32.492634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321930, 34.519169, 33.174919>,  <42.094059, 34.381466, 32.472240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321930, 34.519169, 33.174919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629742, 34.550449, 32.921398>,  <42.814430, 34.569218, 32.769287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629742, 34.550449, 32.921398>,  <42.321930, 34.519169, 33.174919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629742, 34.550449, 32.921398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281727, 0.849107, 0.446819,
		0.573107, -0.522401, 0.631384,
		0.769531, 0.078197, -0.633803,
		42.860600, 34.573910, 32.731258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909611, 34.754318, 33.687145>,  <42.321930, 34.519169, 33.174919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909611, 34.754318, 33.687145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048405, 34.811222, 33.316338>,  <43.131680, 34.845364, 33.093853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.048405, 34.811222, 33.316338>,  <42.909611, 34.754318, 33.687145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048405, 34.811222, 33.316338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400793, 0.871138, 0.283696,
		0.847920, -0.469981, 0.245254,
		0.346982, 0.142255, -0.927021,
		43.152500, 34.853897, 33.038231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548611, 35.023880, 33.727264>,  <42.909611, 34.754318, 33.687145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548611, 35.023880, 33.727264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435947, 35.143288, 33.362507>,  <43.368347, 35.214931, 33.143650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435947, 35.143288, 33.362507>,  <43.548611, 35.023880, 33.727264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435947, 35.143288, 33.362507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280156, 0.934547, 0.219397,
		0.917703, -0.193678, -0.346856,
		-0.281661, 0.298515, -0.911897,
		43.351448, 35.232841, 33.088940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.148880, 35.339748, 33.459023>,  <43.548611, 35.023880, 33.727264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.148880, 35.339748, 33.459023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817501, 35.483372, 33.287094>,  <43.618675, 35.569546, 33.183937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.817501, 35.483372, 33.287094>,  <44.148880, 35.339748, 33.459023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817501, 35.483372, 33.287094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332355, 0.932896, 0.138729,
		0.450793, -0.027925, -0.892192,
		-0.828448, 0.359062, -0.429824,
		43.568966, 35.591091, 33.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883034, 35.355103, 33.281780>,  <44.148880, 35.339748, 33.459023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883034, 35.355103, 33.281780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.278816, 35.356331, 33.223869>,  <45.516285, 35.357067, 33.189121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.278816, 35.356331, 33.223869>,  <44.883034, 35.355103, 33.281780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278816, 35.356331, 33.223869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108322, -0.647857, -0.754021,
		-0.096111, 0.761756, -0.640696,
		0.989459, 0.003068, -0.144781,
		45.575653, 35.357250, 33.180435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994770, 35.400654, 32.512226>,  <44.883034, 35.355103, 33.281780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994770, 35.400654, 32.512226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339447, 35.254654, 32.653233>,  <45.546253, 35.167053, 32.737835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339447, 35.254654, 32.653233>,  <44.994770, 35.400654, 32.512226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339447, 35.254654, 32.653233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045000, -0.637001, -0.769549,
		0.505435, 0.678976, -0.532472,
		0.861690, -0.364996, 0.352517,
		45.597954, 35.145157, 32.758987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469700, 35.399620, 31.948046>,  <44.994770, 35.400654, 32.512226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469700, 35.399620, 31.948046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570354, 35.124649, 32.220551>,  <45.630749, 34.959667, 32.384052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.570354, 35.124649, 32.220551>,  <45.469700, 35.399620, 31.948046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570354, 35.124649, 32.220551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121582, -0.675885, -0.726910,
		0.960154, 0.265749, -0.086500,
		0.251640, -0.687428, 0.681264,
		45.645847, 34.918419, 32.424931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004425, 34.991112, 31.527948>,  <45.469700, 35.399620, 31.948046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004425, 34.991112, 31.527948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940029, 34.741783, 31.834032>,  <45.901390, 34.592186, 32.017681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940029, 34.741783, 31.834032>,  <46.004425, 34.991112, 31.527948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940029, 34.741783, 31.834032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147966, -0.781804, -0.605713,
		0.975801, 0.015709, 0.218097,
		-0.160994, -0.623326, 0.765209,
		45.891731, 34.554787, 32.063595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540302, 34.491859, 31.523060>,  <46.004425, 34.991112, 31.527948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540302, 34.491859, 31.523060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252197, 34.321308, 31.741938>,  <46.079334, 34.218979, 31.873264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252197, 34.321308, 31.741938>,  <46.540302, 34.491859, 31.523060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252197, 34.321308, 31.741938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117721, -0.702237, -0.702143,
		0.683637, -0.570146, 0.455603,
		-0.720265, -0.426377, 0.547193,
		46.036118, 34.193394, 31.906096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748203, 33.772121, 31.498644>,  <46.540302, 34.491859, 31.523060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748203, 33.772121, 31.498644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367435, 33.757496, 31.620302>,  <46.138973, 33.748722, 31.693298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367435, 33.757496, 31.620302>,  <46.748203, 33.772121, 31.498644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367435, 33.757496, 31.620302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185123, -0.722392, -0.666242,
		0.244073, -0.690516, 0.680893,
		-0.951923, -0.036563, 0.304147,
		46.081860, 33.746529, 31.711546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618160, 33.024384, 31.711143>,  <46.748203, 33.772121, 31.498644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618160, 33.024384, 31.711143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263050, 33.190063, 31.630857>,  <46.049984, 33.289471, 31.582685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263050, 33.190063, 31.630857>,  <46.618160, 33.024384, 31.711143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263050, 33.190063, 31.630857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240450, -0.789209, -0.565096,
		-0.392470, -0.453418, 0.800237,
		-0.887779, 0.414201, -0.200717,
		45.996716, 33.314323, 31.570642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099216, 32.548389, 31.944548>,  <46.618160, 33.024384, 31.711143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099216, 32.548389, 31.944548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928104, 32.792347, 31.677704>,  <45.825436, 32.938721, 31.517597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928104, 32.792347, 31.677704>,  <46.099216, 32.548389, 31.944548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928104, 32.792347, 31.677704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221731, -0.786304, -0.576681,
		-0.876264, -0.098775, 0.471599,
		-0.427782, 0.609892, -0.667108,
		45.799770, 32.975315, 31.477571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481091, 32.238609, 31.847294>,  <46.099216, 32.548389, 31.944548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481091, 32.238609, 31.847294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558830, 32.452652, 31.518444>,  <45.605476, 32.581078, 31.321135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558830, 32.452652, 31.518444>,  <45.481091, 32.238609, 31.847294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558830, 32.452652, 31.518444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242313, -0.785942, -0.568841,
		-0.950532, 0.309767, -0.023086,
		0.194353, 0.535108, -0.822123,
		45.617134, 32.613186, 31.271807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952259, 32.083652, 31.450142>,  <45.481091, 32.238609, 31.847294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952259, 32.083652, 31.450142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231140, 32.240982, 31.210409>,  <45.398468, 32.335381, 31.066570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231140, 32.240982, 31.210409>,  <44.952259, 32.083652, 31.450142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231140, 32.240982, 31.210409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147334, -0.739568, -0.656758,
		-0.701568, 0.546197, -0.457680,
		0.697205, 0.393328, -0.599331,
		45.440300, 32.358982, 31.030609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656418, 31.932257, 30.914167>,  <44.952259, 32.083652, 31.450142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656418, 31.932257, 30.914167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018993, 32.036377, 30.781134>,  <45.236538, 32.098850, 30.701313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018993, 32.036377, 30.781134>,  <44.656418, 31.932257, 30.914167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018993, 32.036377, 30.781134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174344, -0.486636, -0.856032,
		-0.384675, 0.833924, -0.395723,
		0.906438, 0.260302, -0.332586,
		45.290924, 32.114468, 30.681358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549995, 32.225113, 30.198250>,  <44.656418, 31.932257, 30.914167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549995, 32.225113, 30.198250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937958, 32.131794, 30.226120>,  <45.170734, 32.075802, 30.242842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937958, 32.131794, 30.226120>,  <44.549995, 32.225113, 30.198250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937958, 32.131794, 30.226120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068052, -0.534509, -0.842419,
		0.233779, 0.812325, -0.534300,
		0.969905, -0.233299, 0.069677,
		45.228928, 32.061806, 30.247023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855892, 32.317623, 29.537043>,  <44.549995, 32.225113, 30.198250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855892, 32.317623, 29.537043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081402, 32.047550, 29.727322>,  <45.216709, 31.885508, 29.841488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081402, 32.047550, 29.727322>,  <44.855892, 32.317623, 29.537043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081402, 32.047550, 29.727322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062570, -0.609214, -0.790534,
		0.823553, 0.415921, -0.385707,
		0.563777, -0.675180, 0.475696,
		45.250534, 31.844995, 29.870031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379421, 32.110752, 29.060770>,  <44.855892, 32.317623, 29.537043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379421, 32.110752, 29.060770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356094, 31.829277, 29.344015>,  <45.342098, 31.660393, 29.513962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.356094, 31.829277, 29.344015>,  <45.379421, 32.110752, 29.060770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356094, 31.829277, 29.344015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076951, -0.704043, -0.705976,
		0.995328, -0.095659, -0.013092,
		-0.058316, -0.703686, 0.708114,
		45.338600, 31.618172, 29.556450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804626, 31.591913, 28.845261>,  <45.379421, 32.110752, 29.060770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804626, 31.591913, 28.845261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583168, 31.394339, 29.113440>,  <45.450291, 31.275793, 29.274347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.583168, 31.394339, 29.113440>,  <45.804626, 31.591913, 28.845261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583168, 31.394339, 29.113440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292882, -0.638166, -0.712014,
		0.779546, -0.590568, 0.208656,
		-0.553650, -0.493936, 0.670446,
		45.417072, 31.246159, 29.314573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919605, 30.972702, 28.629797>,  <45.804626, 31.591913, 28.845261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919605, 30.972702, 28.629797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609985, 30.917973, 28.877060>,  <45.424213, 30.885134, 29.025417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609985, 30.917973, 28.877060>,  <45.919605, 30.972702, 28.629797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609985, 30.917973, 28.877060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435383, -0.593822, -0.676621,
		0.459656, -0.792877, 0.400079,
		-0.774053, -0.136825, 0.618159,
		45.377769, 30.876925, 29.062508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821266, 30.221748, 28.735928>,  <45.919605, 30.972702, 28.629797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821266, 30.221748, 28.735928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465172, 30.392939, 28.798302>,  <45.251514, 30.495653, 28.835726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465172, 30.392939, 28.798302>,  <45.821266, 30.221748, 28.735928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465172, 30.392939, 28.798302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414380, -0.618794, -0.667370,
		-0.189125, -0.658734, 0.728218,
		-0.890236, 0.427975, 0.155937,
		45.198101, 30.521332, 28.845083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366894, 29.689024, 29.015186>,  <45.821266, 30.221748, 28.735928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366894, 29.689024, 29.015186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119759, 29.950705, 28.840691>,  <44.971478, 30.107712, 28.735994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119759, 29.950705, 28.840691>,  <45.366894, 29.689024, 29.015186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119759, 29.950705, 28.840691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501233, -0.755132, -0.422542,
		-0.605843, -0.042405, 0.794453,
		-0.617835, 0.654200, -0.436237,
		44.934410, 30.146965, 28.709820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918812, 29.236570, 28.932068>,  <45.366894, 29.689024, 29.015186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918812, 29.236570, 28.932068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764271, 29.570705, 28.775637>,  <44.671547, 29.771187, 28.681778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764271, 29.570705, 28.775637>,  <44.918812, 29.236570, 28.932068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764271, 29.570705, 28.775637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802012, -0.513656, -0.304850,
		-0.455532, 0.195870, 0.868404,
		-0.386350, 0.835340, -0.391077,
		44.648365, 29.821308, 28.658314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191963, 29.319475, 29.117054>,  <44.918812, 29.236570, 28.932068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191963, 29.319475, 29.117054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254265, 29.534456, 28.785540>,  <44.291645, 29.663445, 28.586630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254265, 29.534456, 28.785540>,  <44.191963, 29.319475, 29.117054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254265, 29.534456, 28.785540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800684, -0.422671, -0.424564,
		-0.578487, 0.729723, 0.364496,
		0.155752, 0.537451, -0.828787,
		44.300991, 29.695692, 28.536903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535042, 29.609438, 28.975519>,  <44.191963, 29.319475, 29.117054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535042, 29.609438, 28.975519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736233, 29.581993, 28.630890>,  <43.856949, 29.565527, 28.424112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736233, 29.581993, 28.630890>,  <43.535042, 29.609438, 28.975519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736233, 29.581993, 28.630890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733706, -0.560778, -0.383672,
		-0.456828, 0.825118, -0.332398,
		0.502976, -0.068610, -0.861573,
		43.887127, 29.561411, 28.372417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.845261, 38.293736, 37.591579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765430, 37.963657, 37.380211>,  <39.717533, 37.765610, 37.253391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765430, 37.963657, 37.380211>,  <39.845261, 38.293736, 37.591579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765430, 37.963657, 37.380211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025716, 0.534672, -0.844668,
		0.979545, -0.182165, -0.085487,
		-0.199576, -0.825192, -0.528420,
		39.705559, 37.716099, 37.221684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231472, 38.344246, 36.879738>,  <39.845261, 38.293736, 37.591579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231472, 38.344246, 36.879738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916847, 38.100971, 36.836987>,  <39.728073, 37.955006, 36.811337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916847, 38.100971, 36.836987>,  <40.231472, 38.344246, 36.879738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916847, 38.100971, 36.836987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199517, 0.414099, -0.888096,
		0.584388, -0.677221, -0.447059,
		-0.786565, -0.608189, -0.106877,
		39.680878, 37.918514, 36.804924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253563, 38.132923, 36.145809>,  <40.231472, 38.344246, 36.879738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253563, 38.132923, 36.145809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881824, 38.069496, 36.279179>,  <39.658779, 38.031441, 36.359200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881824, 38.069496, 36.279179>,  <40.253563, 38.132923, 36.145809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881824, 38.069496, 36.279179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369198, 0.404689, -0.836612,
		-0.002273, -0.900602, -0.434639,
		-0.929348, -0.158566, 0.333420,
		39.603020, 38.021927, 36.379204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947693, 37.663055, 35.628895>,  <40.253563, 38.132923, 36.145809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947693, 37.663055, 35.628895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656868, 37.846298, 35.833450>,  <39.482372, 37.956245, 35.956184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656868, 37.846298, 35.833450>,  <39.947693, 37.663055, 35.628895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656868, 37.846298, 35.833450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322878, 0.429194, -0.843530,
		-0.605911, -0.778415, -0.164139,
		-0.727064, 0.458107, 0.511387,
		39.438747, 37.983730, 35.986866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289886, 37.632240, 35.240597>,  <39.947693, 37.663055, 35.628895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289886, 37.632240, 35.240597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242210, 37.938839, 35.493031>,  <39.213604, 38.122799, 35.644493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242210, 37.938839, 35.493031>,  <39.289886, 37.632240, 35.240597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242210, 37.938839, 35.493031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435822, 0.530719, -0.726908,
		-0.892105, -0.361684, 0.270800,
		-0.119193, 0.766499, 0.631087,
		39.206451, 38.168789, 35.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664024, 37.849964, 35.122993>,  <39.289886, 37.632240, 35.240597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664024, 37.849964, 35.122993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798164, 38.169704, 35.322422>,  <38.878647, 38.361549, 35.442078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798164, 38.169704, 35.322422>,  <38.664024, 37.849964, 35.122993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798164, 38.169704, 35.322422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462022, 0.600748, -0.652409,
		-0.821021, -0.011564, 0.570781,
		0.335351, 0.799354, 0.498570,
		38.898769, 38.409512, 35.471992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064751, 38.205460, 35.278469>,  <38.664024, 37.849964, 35.122993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064751, 38.205460, 35.278469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376488, 38.455872, 35.289181>,  <38.563530, 38.606117, 35.295609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376488, 38.455872, 35.289181>,  <38.064751, 38.205460, 35.278469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376488, 38.455872, 35.289181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286671, 0.394228, -0.873157,
		-0.557180, 0.672808, 0.486703,
		0.779339, 0.626029, 0.026781,
		38.610291, 38.643681, 35.297215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777988, 39.016411, 35.229740>,  <38.064751, 38.205460, 35.278469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777988, 39.016411, 35.229740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149521, 38.987637, 35.084362>,  <38.372440, 38.970371, 34.997135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149521, 38.987637, 35.084362>,  <37.777988, 39.016411, 35.229740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149521, 38.987637, 35.084362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326138, 0.306680, -0.894193,
		0.175781, 0.949091, 0.261396,
		0.928835, -0.071931, -0.363443,
		38.428173, 38.966057, 34.975330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911430, 39.614334, 34.948418>,  <37.777988, 39.016411, 35.229740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911430, 39.614334, 34.948418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174759, 39.374531, 34.766342>,  <38.332756, 39.230648, 34.657097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174759, 39.374531, 34.766342>,  <37.911430, 39.614334, 34.948418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174759, 39.374531, 34.766342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148016, 0.489805, -0.859175,
		0.738040, 0.632989, 0.233713,
		0.658323, -0.599512, -0.455188,
		38.372257, 39.194675, 34.629787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369823, 40.058342, 34.433228>,  <37.911430, 39.614334, 34.948418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369823, 40.058342, 34.433228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387203, 39.681030, 34.301575>,  <38.397629, 39.454643, 34.222584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387203, 39.681030, 34.301575>,  <38.369823, 40.058342, 34.433228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387203, 39.681030, 34.301575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024956, 0.328315, -0.944238,
		0.998744, 0.049238, -0.009276,
		0.043447, -0.943284, -0.329132,
		38.400238, 39.398045, 34.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780773, 40.114006, 33.838886>,  <38.369823, 40.058342, 34.433228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780773, 40.114006, 33.838886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592949, 39.761177, 33.823532>,  <38.480255, 39.549480, 33.814320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592949, 39.761177, 33.823532>,  <38.780773, 40.114006, 33.838886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592949, 39.761177, 33.823532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128978, 0.111539, -0.985355,
		0.873431, -0.457728, -0.166141,
		-0.469556, -0.882068, -0.038385,
		38.452084, 39.496555, 33.812016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934399, 39.943508, 33.185005>,  <38.780773, 40.114006, 33.838886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934399, 39.943508, 33.185005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639297, 39.693680, 33.287479>,  <38.462238, 39.543781, 33.348965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639297, 39.693680, 33.287479>,  <38.934399, 39.943508, 33.185005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639297, 39.693680, 33.287479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281711, -0.060041, -0.957619,
		0.613486, -0.778654, -0.131654,
		-0.737749, -0.624575, 0.256190,
		38.417973, 39.506306, 33.364338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364040, 40.299061, 32.923950>,  <38.934399, 39.943508, 33.185005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364040, 40.299061, 32.923950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435997, 40.678806, 32.820923>,  <39.479172, 40.906654, 32.759106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435997, 40.678806, 32.820923>,  <39.364040, 40.299061, 32.923950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435997, 40.678806, 32.820923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805662, 0.008037, 0.592321,
		0.564399, -0.314071, -0.763422,
		0.179895, 0.949365, -0.257571,
		39.489967, 40.963615, 32.743652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783695, 40.177345, 32.268719>,  <39.364040, 40.299061, 32.923950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783695, 40.177345, 32.268719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116333, 40.214230, 32.487789>,  <40.315914, 40.236359, 32.619232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116333, 40.214230, 32.487789>,  <39.783695, 40.177345, 32.268719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116333, 40.214230, 32.487789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555088, -0.170101, -0.814213,
		0.018083, 0.981103, -0.192639,
		0.831595, 0.092208, 0.547675,
		40.365810, 40.241894, 32.652092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238815, 39.801159, 31.841375>,  <39.783695, 40.177345, 32.268719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238815, 39.801159, 31.841375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459549, 39.634140, 31.552616>,  <40.591988, 39.533928, 31.379360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459549, 39.634140, 31.552616>,  <40.238815, 39.801159, 31.841375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459549, 39.634140, 31.552616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158263, -0.902336, 0.400927,
		-0.818799, -0.106995, -0.564021,
		0.551834, -0.417543, -0.721899,
		40.625099, 39.508877, 31.336046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938358, 39.177860, 31.735062>,  <40.238815, 39.801159, 31.841375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938358, 39.177860, 31.735062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317852, 39.137001, 31.615416>,  <40.545547, 39.112488, 31.543627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317852, 39.137001, 31.615416>,  <39.938358, 39.177860, 31.735062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317852, 39.137001, 31.615416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034029, -0.907832, 0.417951,
		-0.314240, -0.406703, -0.857815,
		0.948733, -0.102146, -0.299117,
		40.602470, 39.106358, 31.525681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005970, 38.502888, 31.452654>,  <39.938358, 39.177860, 31.735062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005970, 38.502888, 31.452654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384995, 38.581615, 31.553366>,  <40.612408, 38.628853, 31.613792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384995, 38.581615, 31.553366>,  <40.005970, 38.502888, 31.452654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384995, 38.581615, 31.553366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056566, -0.878708, 0.473997,
		0.314531, -0.434899, -0.843761,
		0.947560, 0.196815, 0.251781,
		40.669262, 38.640659, 31.628901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425529, 37.903271, 31.261353>,  <40.005970, 38.502888, 31.452654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425529, 37.903271, 31.261353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665821, 38.085068, 31.524431>,  <40.809994, 38.194145, 31.682278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665821, 38.085068, 31.524431>,  <40.425529, 37.903271, 31.261353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665821, 38.085068, 31.524431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172438, -0.876980, 0.448521,
		0.780636, -0.156026, -0.605197,
		0.600727, 0.454491, 0.657698,
		40.846039, 38.221416, 31.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108952, 37.602371, 31.248192>,  <40.425529, 37.903271, 31.261353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108952, 37.602371, 31.248192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079075, 37.778740, 31.605965>,  <41.061150, 37.884560, 31.820629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079075, 37.778740, 31.605965>,  <41.108952, 37.602371, 31.248192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079075, 37.778740, 31.605965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071924, -0.892221, 0.445836,
		0.994610, 0.097631, 0.034928,
		-0.074691, 0.440921, 0.894433,
		41.056667, 37.911015, 31.874294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680191, 37.457142, 31.662863>,  <41.108952, 37.602371, 31.248192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680191, 37.457142, 31.662863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397221, 37.556919, 31.927385>,  <41.227440, 37.616787, 32.086098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397221, 37.556919, 31.927385>,  <41.680191, 37.457142, 31.662863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397221, 37.556919, 31.927385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200522, -0.826375, 0.526209,
		0.677747, 0.504860, 0.534579,
		-0.707425, 0.249442, 0.661309,
		41.184994, 37.631752, 32.125778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999825, 37.407810, 32.361225>,  <41.680191, 37.457142, 31.662863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999825, 37.407810, 32.361225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603275, 37.419750, 32.412285>,  <41.365345, 37.426914, 32.442921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603275, 37.419750, 32.412285>,  <41.999825, 37.407810, 32.361225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603275, 37.419750, 32.412285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076843, -0.656574, 0.750337,
		0.106211, 0.753670, 0.648614,
		-0.991370, 0.029853, 0.127650,
		41.305862, 37.428707, 32.450581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838062, 37.415020, 33.074482>,  <41.999825, 37.407810, 32.361225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838062, 37.415020, 33.074482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510609, 37.273731, 32.893341>,  <41.314137, 37.188957, 32.784657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510609, 37.273731, 32.893341>,  <41.838062, 37.415020, 33.074482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510609, 37.273731, 32.893341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010113, -0.797247, 0.603569,
		-0.574231, 0.489521, 0.656223,
		-0.818631, -0.353224, -0.452853,
		41.265018, 37.167763, 32.757484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377663, 37.243568, 33.645264>,  <41.838062, 37.415020, 33.074482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377663, 37.243568, 33.645264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240635, 37.061733, 33.316387>,  <41.158417, 36.952633, 33.119061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240635, 37.061733, 33.316387>,  <41.377663, 37.243568, 33.645264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240635, 37.061733, 33.316387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149283, -0.837688, 0.525351,
		-0.927556, 0.302709, 0.219105,
		-0.342570, -0.454584, -0.822192,
		41.137863, 36.925358, 33.069729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725269, 37.086571, 33.892315>,  <41.377663, 37.243568, 33.645264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725269, 37.086571, 33.892315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791542, 36.851662, 33.575413>,  <40.831306, 36.710716, 33.385273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791542, 36.851662, 33.575413>,  <40.725269, 37.086571, 33.892315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791542, 36.851662, 33.575413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436188, -0.764142, 0.475213,
		-0.884471, 0.266834, -0.382768,
		0.165686, -0.587270, -0.792251,
		40.841248, 36.675480, 33.337738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139992, 36.675003, 33.814564>,  <40.725269, 37.086571, 33.892315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139992, 36.675003, 33.814564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421097, 36.489643, 33.598640>,  <40.589760, 36.378429, 33.469086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421097, 36.489643, 33.598640>,  <40.139992, 36.675003, 33.814564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421097, 36.489643, 33.598640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129877, -0.829583, 0.543069,
		-0.699472, -0.311539, -0.643182,
		0.702760, -0.463396, -0.539808,
		40.631924, 36.350624, 33.436699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842331, 36.018108, 33.485600>,  <40.139992, 36.675003, 33.814564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842331, 36.018108, 33.485600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237164, 35.955200, 33.497814>,  <40.474064, 35.917454, 33.505142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237164, 35.955200, 33.497814>,  <39.842331, 36.018108, 33.485600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237164, 35.955200, 33.497814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148656, -0.828055, 0.540580,
		-0.059735, -0.538136, -0.840739,
		0.987083, -0.157272, 0.030533,
		40.533287, 35.908020, 33.506973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950340, 35.210926, 33.379036>,  <39.842331, 36.018108, 33.485600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950340, 35.210926, 33.379036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288906, 35.340714, 33.547939>,  <40.492046, 35.418587, 33.649281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288906, 35.340714, 33.547939>,  <39.950340, 35.210926, 33.379036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288906, 35.340714, 33.547939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106231, -0.879876, 0.463177,
		0.521823, -0.347182, -0.779208,
		0.846413, 0.324472, 0.422258,
		40.542831, 35.438057, 33.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268482, 34.616684, 33.447598>,  <39.950340, 35.210926, 33.379036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268482, 34.616684, 33.447598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450943, 34.859093, 33.708263>,  <40.560421, 35.004539, 33.864662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450943, 34.859093, 33.708263>,  <40.268482, 34.616684, 33.447598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450943, 34.859093, 33.708263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050637, -0.748774, 0.660888,
		0.888458, -0.268469, -0.372244,
		0.456155, 0.606021, 0.651660,
		40.587791, 35.040897, 33.903763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429798, 33.948204, 32.987686>,  <40.268482, 34.616684, 33.447598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429798, 33.948204, 32.987686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119850, 33.699013, 33.030521>,  <39.933880, 33.549496, 33.056221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119850, 33.699013, 33.030521>,  <40.429798, 33.948204, 32.987686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119850, 33.699013, 33.030521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632083, 0.761816, -0.141803,
		0.006760, -0.177567, -0.984085,
		-0.774871, -0.622982, 0.107087,
		39.887390, 33.512119, 33.062649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975899, 33.987743, 32.409126>,  <40.429798, 33.948204, 32.987686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975899, 33.987743, 32.409126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732399, 33.827713, 32.683167>,  <39.586300, 33.731693, 32.847591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732399, 33.827713, 32.683167>,  <39.975899, 33.987743, 32.409126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732399, 33.827713, 32.683167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724359, 0.632527, -0.274252,
		-0.323625, -0.663211, -0.674846,
		-0.608745, -0.400076, 0.685105,
		39.549774, 33.707691, 32.888699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439285, 34.020397, 31.979183>,  <39.975899, 33.987743, 32.409126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439285, 34.020397, 31.979183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320690, 34.013775, 32.361141>,  <39.249535, 34.009800, 32.590317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320690, 34.013775, 32.361141>,  <39.439285, 34.020397, 31.979183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320690, 34.013775, 32.361141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701388, 0.682379, -0.205946,
		-0.648190, -0.730811, -0.213928,
		-0.296487, -0.016555, 0.954893,
		39.231743, 34.008808, 32.647610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802670, 34.034145, 31.924934>,  <39.439285, 34.020397, 31.979183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802670, 34.034145, 31.924934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865726, 34.141090, 32.305180>,  <38.903561, 34.205257, 32.533325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865726, 34.141090, 32.305180>,  <38.802670, 34.034145, 31.924934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865726, 34.141090, 32.305180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618222, 0.777379, -0.116122,
		-0.770033, -0.569384, 0.287838,
		0.157641, 0.267366, 0.950613,
		38.913017, 34.221298, 32.590363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305840, 34.501335, 32.032566>,  <38.802670, 34.034145, 31.924934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305840, 34.501335, 32.032566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511463, 34.549622, 32.372253>,  <38.634838, 34.578594, 32.576065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511463, 34.549622, 32.372253>,  <38.305840, 34.501335, 32.032566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511463, 34.549622, 32.372253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428210, 0.893967, 0.132132,
		-0.743219, -0.431567, 0.511248,
		0.514063, 0.120718, 0.849215,
		38.665684, 34.585838, 32.627018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868076, 34.339291, 32.662155>,  <38.305840, 34.501335, 32.032566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868076, 34.339291, 32.662155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160122, 34.603111, 32.733624>,  <38.335350, 34.761402, 32.776505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160122, 34.603111, 32.733624>,  <37.868076, 34.339291, 32.662155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160122, 34.603111, 32.733624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667022, 0.744676, -0.023228,
		-0.148375, -0.102221, 0.983634,
		0.730114, 0.659552, 0.178675,
		38.379154, 34.800976, 32.787228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568104, 34.738522, 33.163170>,  <37.868076, 34.339291, 32.662155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568104, 34.738522, 33.163170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878830, 34.961769, 33.046505>,  <38.065266, 35.095718, 32.976505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878830, 34.961769, 33.046505>,  <37.568104, 34.738522, 33.163170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878830, 34.961769, 33.046505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587584, 0.808986, -0.016914,
		0.226508, 0.184513, 0.956373,
		0.776813, 0.558118, -0.291658,
		38.111874, 35.129204, 32.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571663, 35.279514, 33.599434>,  <37.568104, 34.738522, 33.163170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571663, 35.279514, 33.599434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783272, 35.429775, 33.295059>,  <37.910236, 35.519932, 33.112434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783272, 35.429775, 33.295059>,  <37.571663, 35.279514, 33.599434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783272, 35.429775, 33.295059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587046, 0.809509, -0.008497,
		0.612792, 0.451199, 0.648772,
		0.529021, 0.375652, -0.760935,
		37.941978, 35.542469, 33.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512234, 35.991352, 33.715317>,  <37.571663, 35.279514, 33.599434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512234, 35.991352, 33.715317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599895, 35.949512, 33.327290>,  <37.652493, 35.924408, 33.094475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599895, 35.949512, 33.327290>,  <37.512234, 35.991352, 33.715317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599895, 35.949512, 33.327290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375849, 0.908459, -0.182864,
		0.900394, 0.404674, 0.159780,
		0.219154, -0.104596, -0.970068,
		37.665642, 35.918133, 33.036270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857716, 36.585331, 33.540787>,  <37.512234, 35.991352, 33.715317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857716, 36.585331, 33.540787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718143, 36.438732, 33.195782>,  <37.634399, 36.350773, 32.988777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718143, 36.438732, 33.195782>,  <37.857716, 36.585331, 33.540787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718143, 36.438732, 33.195782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261176, 0.921924, -0.286082,
		0.900020, 0.125446, -0.417405,
		-0.348928, -0.366496, -0.862514,
		37.613464, 36.328785, 32.937027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175385, 36.993351, 32.985577>,  <37.857716, 36.585331, 33.540787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175385, 36.993351, 32.985577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874836, 36.831993, 32.776691>,  <37.694508, 36.735176, 32.651360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874836, 36.831993, 32.776691>,  <38.175385, 36.993351, 32.985577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874836, 36.831993, 32.776691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359456, 0.913873, -0.188754,
		0.553378, 0.045888, -0.831665,
		-0.751375, -0.403399, -0.522212,
		37.649426, 36.710972, 32.620029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116558, 37.465790, 32.475502>,  <38.175385, 36.993351, 32.985577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116558, 37.465790, 32.475502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777573, 37.253914, 32.489555>,  <37.574181, 37.126789, 32.497990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777573, 37.253914, 32.489555>,  <38.116558, 37.465790, 32.475502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777573, 37.253914, 32.489555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527545, 0.832956, -0.166976,
		0.059178, -0.160042, -0.985335,
		-0.847464, -0.529690, 0.035137,
		37.523335, 37.095009, 32.500095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.877583, 30.362904, 34.186214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.572281, 30.428011, 34.436317>,  <41.389099, 30.467075, 34.586380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.572281, 30.428011, 34.436317>,  <41.877583, 30.362904, 34.186214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572281, 30.428011, 34.436317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535936, 0.381006, -0.753397,
		-0.360858, -0.910132, -0.203570,
		-0.763253, 0.162769, 0.625262,
		41.343304, 30.476841, 34.623898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225052, 30.059954, 33.908138>,  <41.877583, 30.362904, 34.186214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225052, 30.059954, 33.908138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.121208, 30.353268, 34.159500>,  <41.058903, 30.529257, 34.310318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.121208, 30.353268, 34.159500>,  <41.225052, 30.059954, 33.908138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121208, 30.353268, 34.159500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605845, 0.383067, -0.697289,
		-0.752033, -0.561742, 0.344808,
		-0.259611, 0.733284, 0.628408,
		41.043324, 30.573254, 34.348022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552334, 30.137426, 33.719521>,  <41.225052, 30.059954, 33.908138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552334, 30.137426, 33.719521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650364, 30.489964, 33.881104>,  <40.709183, 30.701485, 33.978054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.650364, 30.489964, 33.881104>,  <40.552334, 30.137426, 33.719521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650364, 30.489964, 33.881104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542189, 0.470004, -0.696511,
		-0.803723, -0.048323, 0.593038,
		0.245073, 0.881341, 0.403953,
		40.723885, 30.754366, 34.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032650, 30.559494, 33.597691>,  <40.552334, 30.137426, 33.719521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032650, 30.559494, 33.597691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290115, 30.841755, 33.716183>,  <40.444595, 31.011112, 33.787277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290115, 30.841755, 33.716183>,  <40.032650, 30.559494, 33.597691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290115, 30.841755, 33.716183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454335, 0.663813, -0.594081,
		-0.615855, 0.247801, 0.747875,
		0.643663, 0.705654, 0.296227,
		40.483215, 31.053452, 33.805050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617157, 31.163643, 33.696884>,  <40.032650, 30.559494, 33.597691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617157, 31.163643, 33.696884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976040, 31.339928, 33.685623>,  <40.191368, 31.445698, 33.678867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.976040, 31.339928, 33.685623>,  <39.617157, 31.163643, 33.696884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976040, 31.339928, 33.685623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441607, 0.895155, -0.060665,
		-0.001535, 0.066862, 0.997761,
		0.897207, 0.440711, -0.028153,
		40.245201, 31.472141, 33.677177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506840, 31.765690, 34.100742>,  <39.617157, 31.163643, 33.696884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506840, 31.765690, 34.100742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835873, 31.834436, 33.883923>,  <40.033291, 31.875685, 33.753830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835873, 31.834436, 33.883923>,  <39.506840, 31.765690, 34.100742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835873, 31.834436, 33.883923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248022, 0.966220, -0.070025,
		0.511705, 0.192042, 0.837424,
		0.822583, 0.171868, -0.542050,
		40.082649, 31.885996, 33.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816063, 32.480564, 34.281109>,  <39.506840, 31.765690, 34.100742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816063, 32.480564, 34.281109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957710, 32.393280, 33.917355>,  <40.042698, 32.340912, 33.699100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957710, 32.393280, 33.917355>,  <39.816063, 32.480564, 34.281109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957710, 32.393280, 33.917355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149179, 0.946768, -0.285266,
		0.923225, 0.236680, 0.302719,
		0.354121, -0.218206, -0.909387,
		40.063946, 32.327820, 33.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203182, 32.970539, 34.178303>,  <39.816063, 32.480564, 34.281109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203182, 32.970539, 34.178303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121307, 32.822147, 33.815983>,  <40.072182, 32.733112, 33.598591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.121307, 32.822147, 33.815983>,  <40.203182, 32.970539, 34.178303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121307, 32.822147, 33.815983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329008, 0.897630, -0.293282,
		0.921876, 0.237984, -0.305790,
		-0.204690, -0.370977, -0.905803,
		40.059902, 32.710854, 33.544243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527367, 33.435349, 33.726200>,  <40.203182, 32.970539, 34.178303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527367, 33.435349, 33.726200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286018, 33.268154, 33.454544>,  <40.141209, 33.167839, 33.291550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286018, 33.268154, 33.454544>,  <40.527367, 33.435349, 33.726200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286018, 33.268154, 33.454544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512949, 0.855494, -0.070804,
		0.610598, 0.305645, -0.730583,
		-0.603369, -0.417984, -0.679143,
		40.105007, 33.142757, 33.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729229, 34.157112, 33.811710>,  <40.527367, 33.435349, 33.726200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729229, 34.157112, 33.811710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715908, 34.467037, 34.064236>,  <40.707916, 34.652992, 34.215752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.715908, 34.467037, 34.064236>,  <40.729229, 34.157112, 33.811710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715908, 34.467037, 34.064236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058835, -0.629050, 0.775135,
		0.997712, 0.062957, -0.024637,
		-0.033302, 0.774811, 0.631315,
		40.705917, 34.699482, 34.253632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211239, 33.954784, 34.360771>,  <40.729229, 34.157112, 33.811710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211239, 33.954784, 34.360771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.992363, 34.247543, 34.523205>,  <40.861038, 34.423199, 34.620667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.992363, 34.247543, 34.523205>,  <41.211239, 33.954784, 34.360771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992363, 34.247543, 34.523205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053282, -0.514639, 0.855750,
		0.835310, 0.446622, 0.320603,
		-0.547192, 0.731899, 0.406086,
		40.828205, 34.467113, 34.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509033, 34.150673, 35.041199>,  <41.211239, 33.954784, 34.360771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509033, 34.150673, 35.041199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.122906, 34.254192, 35.055008>,  <40.891232, 34.316303, 35.063293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.122906, 34.254192, 35.055008>,  <41.509033, 34.150673, 35.041199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122906, 34.254192, 35.055008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119987, -0.557165, 0.821688,
		0.231883, 0.789045, 0.568892,
		-0.965315, 0.258795, 0.034521,
		40.833313, 34.331829, 35.065365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428513, 34.287865, 35.725285>,  <41.509033, 34.150673, 35.041199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428513, 34.287865, 35.725285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075943, 34.222771, 35.547924>,  <40.864403, 34.183712, 35.441505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.075943, 34.222771, 35.547924>,  <41.428513, 34.287865, 35.725285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075943, 34.222771, 35.547924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259648, -0.617253, 0.742685,
		-0.394557, 0.769750, 0.501807,
		-0.881424, -0.162738, -0.443405,
		40.811516, 34.173950, 35.414902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889217, 34.667004, 36.087227>,  <41.428513, 34.287865, 35.725285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889217, 34.667004, 36.087227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.758495, 34.334152, 35.908001>,  <40.680061, 34.134441, 35.800465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.758495, 34.334152, 35.908001>,  <40.889217, 34.667004, 36.087227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758495, 34.334152, 35.908001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136470, -0.427574, 0.893620,
		-0.935187, 0.353186, 0.026172,
		-0.326805, -0.832130, -0.448061,
		40.660454, 34.084515, 35.773582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271141, 34.742611, 36.364674>,  <40.889217, 34.667004, 36.087227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271141, 34.742611, 36.364674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373005, 34.391365, 36.202652>,  <40.434124, 34.180618, 36.105438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373005, 34.391365, 36.202652>,  <40.271141, 34.742611, 36.364674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373005, 34.391365, 36.202652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125173, -0.445273, 0.886602,
		-0.958895, -0.175081, -0.223309,
		0.254661, -0.878111, -0.405055,
		40.449402, 34.127934, 36.081135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006226, 34.315739, 36.846912>,  <40.271141, 34.742611, 36.364674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006226, 34.315739, 36.846912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201992, 34.050350, 36.620537>,  <40.319450, 33.891117, 36.484711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201992, 34.050350, 36.620537>,  <40.006226, 34.315739, 36.846912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201992, 34.050350, 36.620537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106771, -0.598500, 0.793976,
		-0.865490, -0.449009, -0.222075,
		0.489415, -0.663467, -0.565937,
		40.348816, 33.851311, 36.450756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776955, 33.719231, 37.119171>,  <40.006226, 34.315739, 36.846912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776955, 33.719231, 37.119171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103058, 33.604080, 36.918179>,  <40.298717, 33.534988, 36.797585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103058, 33.604080, 36.918179>,  <39.776955, 33.719231, 37.119171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103058, 33.604080, 36.918179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230821, -0.634249, 0.737869,
		-0.531110, -0.717535, -0.450628,
		0.815257, -0.287876, -0.502478,
		40.347633, 33.517715, 36.767437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782379, 32.993073, 37.066872>,  <39.776955, 33.719231, 37.119171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782379, 32.993073, 37.066872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.159935, 33.121948, 37.037830>,  <40.386467, 33.199276, 37.020405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.159935, 33.121948, 37.037830>,  <39.782379, 32.993073, 37.066872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159935, 33.121948, 37.037830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238054, -0.511306, 0.825770,
		0.228934, -0.796717, -0.559313,
		0.943885, 0.322194, -0.072607,
		40.443100, 33.218605, 37.016048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253540, 32.370522, 37.062080>,  <39.782379, 32.993073, 37.066872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253540, 32.370522, 37.062080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472523, 32.680237, 37.189056>,  <40.603912, 32.866066, 37.265240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472523, 32.680237, 37.189056>,  <40.253540, 32.370522, 37.062080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472523, 32.680237, 37.189056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385950, -0.570198, 0.725202,
		0.742516, -0.274504, -0.610996,
		0.547460, 0.774288, 0.317436,
		40.636761, 32.912525, 37.284286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789818, 31.984560, 37.167789>,  <40.253540, 32.370522, 37.062080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789818, 31.984560, 37.167789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836922, 32.342793, 37.339401>,  <40.865185, 32.557732, 37.442368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.836922, 32.342793, 37.339401>,  <40.789818, 31.984560, 37.167789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836922, 32.342793, 37.339401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389534, -0.439067, 0.809619,
		0.913452, 0.071779, -0.400565,
		0.117761, 0.895583, 0.429027,
		40.872250, 32.611465, 37.468109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454094, 32.049961, 37.402092>,  <40.789818, 31.984560, 37.167789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454094, 32.049961, 37.402092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296703, 32.319698, 37.652031>,  <41.202271, 32.481541, 37.801994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.296703, 32.319698, 37.652031>,  <41.454094, 32.049961, 37.402092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296703, 32.319698, 37.652031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469812, -0.436730, 0.767166,
		0.790225, 0.595422, -0.144974,
		-0.393473, 0.674344, 0.624852,
		41.178661, 32.522003, 37.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037697, 32.321049, 37.831661>,  <41.454094, 32.049961, 37.402092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037697, 32.321049, 37.831661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687675, 32.387165, 38.013634>,  <41.477661, 32.426834, 38.122818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687675, 32.387165, 38.013634>,  <42.037697, 32.321049, 37.831661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687675, 32.387165, 38.013634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402671, -0.272947, 0.873702,
		0.268588, 0.947723, 0.172285,
		-0.875052, 0.165292, 0.454931,
		41.425159, 32.436752, 38.150112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246124, 32.671597, 38.421230>,  <42.037697, 32.321049, 37.831661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246124, 32.671597, 38.421230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.868847, 32.549900, 38.474628>,  <41.642479, 32.476883, 38.506668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.868847, 32.549900, 38.474628>,  <42.246124, 32.671597, 38.421230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868847, 32.549900, 38.474628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242572, -0.356050, 0.902434,
		-0.227028, 0.883553, 0.409625,
		-0.943195, -0.304241, 0.133492,
		41.585888, 32.458626, 38.514675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.162395, 30.465284, 39.122963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396244, 30.278830, 38.857349>,  <35.536552, 30.166958, 38.697983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396244, 30.278830, 38.857349>,  <35.162395, 30.465284, 39.122963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396244, 30.278830, 38.857349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148186, 0.743350, -0.652282,
		0.797658, 0.479738, 0.365504,
		0.584622, -0.466135, -0.664029,
		35.571632, 30.138988, 38.658142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763210, 30.884291, 38.896336>,  <35.162395, 30.465284, 39.122963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763210, 30.884291, 38.896336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674419, 30.623318, 38.606491>,  <35.621143, 30.466734, 38.432583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674419, 30.623318, 38.606491>,  <35.763210, 30.884291, 38.896336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674419, 30.623318, 38.606491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227093, 0.757307, -0.612302,
		0.948238, 0.028637, -0.316268,
		-0.221978, -0.652430, -0.724611,
		35.607826, 30.427589, 38.389107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059391, 31.191219, 38.330021>,  <35.763210, 30.884291, 38.896336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059391, 31.191219, 38.330021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819508, 30.919855, 38.160263>,  <35.675579, 30.757036, 38.058407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819508, 30.919855, 38.160263>,  <36.059391, 31.191219, 38.330021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819508, 30.919855, 38.160263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186803, 0.634384, -0.750108,
		0.778113, -0.370563, -0.507171,
		-0.599703, -0.678410, -0.424400,
		35.639595, 30.716331, 38.032944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231544, 31.290913, 37.644360>,  <36.059391, 31.191219, 38.330021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231544, 31.290913, 37.644360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881279, 31.098015, 37.654564>,  <35.671120, 30.982275, 37.660686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.881279, 31.098015, 37.654564>,  <36.231544, 31.290913, 37.644360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881279, 31.098015, 37.654564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349595, 0.596577, -0.722412,
		0.333161, -0.641509, -0.690992,
		-0.875664, -0.482246, 0.025512,
		35.618580, 30.953341, 37.662216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123669, 31.165821, 37.000851>,  <36.231544, 31.290913, 37.644360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123669, 31.165821, 37.000851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756718, 31.134380, 37.156918>,  <35.536545, 31.115515, 37.250557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756718, 31.134380, 37.156918>,  <36.123669, 31.165821, 37.000851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756718, 31.134380, 37.156918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345870, 0.642512, -0.683778,
		-0.196942, -0.762233, -0.616615,
		-0.917381, -0.078604, 0.390171,
		35.481503, 31.110800, 37.273968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688976, 31.160793, 36.371471>,  <36.123669, 31.165821, 37.000851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688976, 31.160793, 36.371471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435295, 31.260880, 36.664097>,  <35.283089, 31.320930, 36.839672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435295, 31.260880, 36.664097>,  <35.688976, 31.160793, 36.371471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435295, 31.260880, 36.664097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386097, 0.717276, -0.580039,
		-0.669867, -0.650314, -0.358288,
		-0.634199, 0.250215, 0.731563,
		35.245037, 31.335943, 36.883564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888847, 31.054163, 36.102654>,  <35.688976, 31.160793, 36.371471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888847, 31.054163, 36.102654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938309, 31.313122, 36.403477>,  <34.967983, 31.468496, 36.583969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.938309, 31.313122, 36.403477>,  <34.888847, 31.054163, 36.102654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938309, 31.313122, 36.403477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371450, 0.732971, -0.569893,
		-0.920182, -0.208884, 0.331107,
		0.123651, 0.647395, 0.752057,
		34.975403, 31.507339, 36.629093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333858, 31.564501, 35.896645>,  <34.888847, 31.054163, 36.102654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333858, 31.564501, 35.896645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.525333, 31.745457, 36.197632>,  <34.640217, 31.854031, 36.378223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.525333, 31.745457, 36.197632>,  <34.333858, 31.564501, 35.896645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525333, 31.745457, 36.197632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391410, 0.877114, -0.278333,
		-0.785913, -0.161289, 0.596931,
		0.478684, 0.452390, 0.752466,
		34.668938, 31.881174, 36.423370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878780, 32.049744, 36.237164>,  <34.333858, 31.564501, 35.896645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878780, 32.049744, 36.237164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243229, 32.184875, 36.331596>,  <34.461899, 32.265953, 36.388256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243229, 32.184875, 36.331596>,  <33.878780, 32.049744, 36.237164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243229, 32.184875, 36.331596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269518, 0.921745, -0.278830,
		-0.311807, 0.190418, 0.930869,
		0.911118, 0.337828, 0.236086,
		34.516563, 32.286224, 36.402424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683735, 32.524670, 36.612545>,  <33.878780, 32.049744, 36.237164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683735, 32.524670, 36.612545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053410, 32.607071, 36.483898>,  <34.275215, 32.656513, 36.406712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053410, 32.607071, 36.483898>,  <33.683735, 32.524670, 36.612545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053410, 32.607071, 36.483898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296391, 0.917925, -0.263753,
		0.240885, 0.339082, 0.909394,
		0.924190, 0.206002, -0.321615,
		34.330666, 32.668873, 36.387413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849171, 33.223980, 36.858112>,  <33.683735, 32.524670, 36.612545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849171, 33.223980, 36.858112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119858, 33.168251, 36.568935>,  <34.282269, 33.134815, 36.395432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.119858, 33.168251, 36.568935>,  <33.849171, 33.223980, 36.858112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119858, 33.168251, 36.568935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242286, 0.885099, -0.397363,
		0.695234, 0.444061, 0.565207,
		0.676718, -0.139319, -0.722941,
		34.322872, 33.126457, 36.352055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273804, 33.733826, 36.904629>,  <33.849171, 33.223980, 36.858112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273804, 33.733826, 36.904629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337532, 33.618572, 36.526932>,  <34.375771, 33.549419, 36.300312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337532, 33.618572, 36.526932>,  <34.273804, 33.733826, 36.904629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337532, 33.618572, 36.526932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337679, 0.882865, -0.326377,
		0.927679, 0.370851, 0.043367,
		0.159324, -0.288129, -0.944244,
		34.385330, 33.532135, 36.243660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612309, 34.293232, 36.546768>,  <34.273804, 33.733826, 36.904629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612309, 34.293232, 36.546768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.468563, 34.071583, 36.246418>,  <34.382317, 33.938595, 36.066208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.468563, 34.071583, 36.246418>,  <34.612309, 34.293232, 36.546768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468563, 34.071583, 36.246418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395278, 0.819261, -0.415411,
		0.845349, 0.147522, -0.513441,
		-0.359360, -0.554119, -0.750874,
		34.360756, 33.905346, 36.021156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696602, 34.707714, 35.958836>,  <34.612309, 34.293232, 36.546768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696602, 34.707714, 35.958836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448616, 34.424660, 35.823254>,  <34.299824, 34.254826, 35.741905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448616, 34.424660, 35.823254>,  <34.696602, 34.707714, 35.958836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448616, 34.424660, 35.823254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489368, 0.686405, -0.537929,
		0.613321, -0.167623, -0.771842,
		-0.619966, -0.707638, -0.338957,
		34.262627, 34.212368, 35.721565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398346, 34.957561, 35.817688>,  <34.696602, 34.707714, 35.958836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398346, 34.957561, 35.817688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463444, 35.297668, 36.017914>,  <35.502502, 35.501732, 36.138050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463444, 35.297668, 36.017914>,  <35.398346, 34.957561, 35.817688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463444, 35.297668, 36.017914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362507, -0.523375, 0.771147,
		0.917661, 0.055959, -0.393403,
		0.162745, 0.850263, 0.500567,
		35.512268, 35.552746, 36.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153954, 35.027122, 35.947392>,  <35.398346, 34.957561, 35.817688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153954, 35.027122, 35.947392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975361, 35.252903, 36.225113>,  <35.868206, 35.388371, 36.391747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975361, 35.252903, 36.225113>,  <36.153954, 35.027122, 35.947392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975361, 35.252903, 36.225113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502512, -0.483850, 0.716499,
		0.740365, 0.668796, -0.067613,
		-0.446477, 0.564447, 0.694304,
		35.841419, 35.422237, 36.433403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634628, 35.174553, 36.481091>,  <36.153954, 35.027122, 35.947392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634628, 35.174553, 36.481091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293121, 35.213696, 36.685642>,  <36.088219, 35.237183, 36.808372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293121, 35.213696, 36.685642>,  <36.634628, 35.174553, 36.481091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293121, 35.213696, 36.685642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456901, -0.330130, 0.825988,
		0.249651, 0.938849, 0.237142,
		-0.853766, 0.097859, 0.511378,
		36.036991, 35.243053, 36.839054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722836, 35.637180, 37.151585>,  <36.634628, 35.174553, 36.481091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722836, 35.637180, 37.151585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394875, 35.418137, 37.218380>,  <36.198097, 35.286709, 37.258457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.394875, 35.418137, 37.218380>,  <36.722836, 35.637180, 37.151585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394875, 35.418137, 37.218380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406858, -0.352134, 0.842893,
		-0.402775, 0.759029, 0.511515,
		-0.819902, -0.547610, 0.166987,
		36.148903, 35.253853, 37.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560005, 35.729576, 37.901707>,  <36.722836, 35.637180, 37.151585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560005, 35.729576, 37.901707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367401, 35.394142, 37.799786>,  <36.251839, 35.192883, 37.738632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367401, 35.394142, 37.799786>,  <36.560005, 35.729576, 37.901707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367401, 35.394142, 37.799786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267603, -0.417509, 0.868375,
		-0.834586, 0.349949, 0.425444,
		-0.481513, -0.838584, -0.254800,
		36.222946, 35.142567, 37.723347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316544, 35.490372, 38.527878>,  <36.560005, 35.729576, 37.901707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316544, 35.490372, 38.527878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269112, 35.165382, 38.299549>,  <36.240654, 34.970390, 38.162552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269112, 35.165382, 38.299549>,  <36.316544, 35.490372, 38.527878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269112, 35.165382, 38.299549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228717, -0.581763, 0.780538,
		-0.966244, -0.038001, 0.254810,
		-0.118578, -0.812470, -0.570817,
		36.233540, 34.921642, 38.128304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919315, 35.030979, 38.963623>,  <36.316544, 35.490372, 38.527878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919315, 35.030979, 38.963623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.118221, 34.831932, 38.679340>,  <36.237564, 34.712505, 38.508770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.118221, 34.831932, 38.679340>,  <35.919315, 35.030979, 38.963623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118221, 34.831932, 38.679340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229135, -0.714756, 0.660772,
		-0.836794, -0.491428, -0.241403,
		0.497266, -0.497616, -0.710707,
		36.267403, 34.682648, 38.466129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589306, 34.363117, 39.004162>,  <35.919315, 35.030979, 38.963623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589306, 34.363117, 39.004162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953484, 34.307896, 38.848194>,  <36.171989, 34.274761, 38.754612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.953484, 34.307896, 38.848194>,  <35.589306, 34.363117, 39.004162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953484, 34.307896, 38.848194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138609, -0.786335, 0.602051,
		-0.389724, -0.602179, -0.696776,
		0.910441, -0.138054, -0.389920,
		36.226616, 34.266479, 38.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640984, 33.681450, 38.904465>,  <35.589306, 34.363117, 39.004162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640984, 33.681450, 38.904465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010849, 33.831177, 38.932400>,  <36.232769, 33.921013, 38.949162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010849, 33.831177, 38.932400>,  <35.640984, 33.681450, 38.904465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010849, 33.831177, 38.932400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330531, -0.880093, 0.340860,
		0.189053, -0.292099, -0.937517,
		0.924667, 0.374319, 0.069837,
		36.288250, 33.943474, 38.953350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055443, 33.015781, 38.764072>,  <35.640984, 33.681450, 38.904465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055443, 33.015781, 38.764072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317528, 33.285194, 38.900917>,  <36.474781, 33.446842, 38.983025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317528, 33.285194, 38.900917>,  <36.055443, 33.015781, 38.764072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317528, 33.285194, 38.900917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561247, -0.737137, 0.376339,
		0.505664, -0.054571, -0.861003,
		0.655214, 0.673536, 0.342116,
		36.514091, 33.487255, 39.003551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641666, 32.945869, 38.422867>,  <36.055443, 33.015781, 38.764072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641666, 32.945869, 38.422867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.728382, 33.105793, 38.779102>,  <36.780411, 33.201748, 38.992844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.728382, 33.105793, 38.779102>,  <36.641666, 32.945869, 38.422867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728382, 33.105793, 38.779102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498946, -0.829509, 0.250933,
		0.839081, 0.389958, -0.379310,
		0.216787, 0.399808, 0.890593,
		36.793419, 33.225735, 39.046280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285999, 32.618092, 38.611988>,  <36.641666, 32.945869, 38.422867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285999, 32.618092, 38.611988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143826, 32.762543, 38.956837>,  <37.058521, 32.849213, 39.163746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143826, 32.762543, 38.956837>,  <37.285999, 32.618092, 38.611988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143826, 32.762543, 38.956837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436191, -0.751672, 0.494699,
		0.826683, 0.551882, 0.109647,
		-0.355434, 0.361132, 0.862120,
		37.037197, 32.870884, 39.215473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926167, 32.526222, 39.033554>,  <37.285999, 32.618092, 38.611988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926167, 32.526222, 39.033554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601162, 32.571178, 39.262356>,  <37.406158, 32.598152, 39.399635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601162, 32.571178, 39.262356>,  <37.926167, 32.526222, 39.033554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601162, 32.571178, 39.262356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231664, -0.838172, 0.493760,
		0.534933, 0.533700, 0.654989,
		-0.812513, 0.112391, 0.572005,
		37.357407, 32.604897, 39.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144924, 32.397930, 39.761448>,  <37.926167, 32.526222, 39.033554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144924, 32.397930, 39.761448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749718, 32.336205, 39.762711>,  <37.512592, 32.299168, 39.763470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749718, 32.336205, 39.762711>,  <38.144924, 32.397930, 39.761448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749718, 32.336205, 39.762711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132850, -0.839795, 0.526398,
		-0.078580, 0.520510, 0.850232,
		-0.988016, -0.154317, 0.003158,
		37.453312, 32.289909, 39.763657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393665, 32.799633, 40.305546>,  <38.144924, 32.397930, 39.761448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393665, 32.799633, 40.305546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.762852, 32.906883, 40.415989>,  <38.984364, 32.971233, 40.482254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.762852, 32.906883, 40.415989>,  <38.393665, 32.799633, 40.305546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762852, 32.906883, 40.415989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018188, 0.746991, -0.664585,
		-0.384445, 0.608369, 0.694326,
		0.922969, 0.268125, 0.276112,
		39.039742, 32.987320, 40.498821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422009, 33.585190, 40.326202>,  <38.393665, 32.799633, 40.305546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422009, 33.585190, 40.326202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802479, 33.464176, 40.301743>,  <39.030762, 33.391567, 40.287067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802479, 33.464176, 40.301743>,  <38.422009, 33.585190, 40.326202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802479, 33.464176, 40.301743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224529, 0.814155, -0.535479,
		0.211790, 0.495603, 0.842331,
		0.951174, -0.302537, -0.061153,
		39.087830, 33.373417, 40.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866199, 34.056858, 40.567833>,  <38.422009, 33.585190, 40.326202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866199, 34.056858, 40.567833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112560, 33.848717, 40.331226>,  <39.260376, 33.723831, 40.189262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112560, 33.848717, 40.331226>,  <38.866199, 34.056858, 40.567833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112560, 33.848717, 40.331226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274801, 0.845568, -0.457710,
		0.738343, 0.119353, 0.663780,
		0.615901, -0.520355, -0.591521,
		39.297329, 33.692612, 40.153770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556717, 34.322453, 40.692860>,  <38.866199, 34.056858, 40.567833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556717, 34.322453, 40.692860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.525837, 34.138733, 40.338890>,  <39.507309, 34.028500, 40.126511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.525837, 34.138733, 40.338890>,  <39.556717, 34.322453, 40.692860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525837, 34.138733, 40.338890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127142, 0.875787, -0.465651,
		0.988876, -0.148457, -0.009210,
		-0.077195, -0.459301, -0.884920,
		39.502678, 34.000942, 40.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747288, 34.819710, 40.344814>,  <39.556717, 34.322453, 40.692860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747288, 34.819710, 40.344814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665112, 34.568363, 40.044693>,  <39.615807, 34.417553, 39.864620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.665112, 34.568363, 40.044693>,  <39.747288, 34.819710, 40.344814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665112, 34.568363, 40.044693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030516, 0.762166, -0.646662,
		0.978195, -0.155743, -0.137401,
		-0.205435, -0.628368, -0.750300,
		39.603481, 34.379852, 39.819603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307018, 34.958687, 39.865582>,  <39.747288, 34.819710, 40.344814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307018, 34.958687, 39.865582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.991463, 34.812408, 39.668026>,  <39.802128, 34.724644, 39.549492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.991463, 34.812408, 39.668026>,  <40.307018, 34.958687, 39.865582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991463, 34.812408, 39.668026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016405, 0.815920, -0.577932,
		0.614317, -0.447822, -0.649670,
		-0.788889, -0.365691, -0.493887,
		39.754795, 34.702702, 39.519859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528206, 34.997952, 39.178974>,  <40.307018, 34.958687, 39.865582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528206, 34.997952, 39.178974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131569, 34.946812, 39.170929>,  <39.893589, 34.916126, 39.166103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131569, 34.946812, 39.170929>,  <40.528206, 34.997952, 39.178974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131569, 34.946812, 39.170929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101371, 0.863844, -0.493455,
		0.080460, -0.487266, -0.869539,
		-0.991590, -0.127850, -0.020110,
		39.834091, 34.908455, 39.164894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358082, 34.992359, 38.454929>,  <40.528206, 34.997952, 39.178974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358082, 34.992359, 38.454929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020676, 35.083069, 38.649681>,  <39.818230, 35.137493, 38.766533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020676, 35.083069, 38.649681>,  <40.358082, 34.992359, 38.454929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020676, 35.083069, 38.649681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183135, 0.730734, -0.657639,
		-0.504912, -0.643896, -0.574859,
		-0.843520, 0.226773, 0.486876,
		39.767620, 35.151100, 38.795746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835712, 35.035976, 37.906254>,  <40.358082, 34.992359, 38.454929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835712, 35.035976, 37.906254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734905, 35.263962, 38.219082>,  <39.674419, 35.400753, 38.406776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734905, 35.263962, 38.219082>,  <39.835712, 35.035976, 37.906254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734905, 35.263962, 38.219082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123780, 0.782529, -0.610186,
		-0.959773, -0.250585, -0.126665,
		-0.252022, 0.569961, 0.782067,
		39.659298, 35.434952, 38.453701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196903, 35.282436, 37.776905>,  <39.835712, 35.035976, 37.906254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196903, 35.282436, 37.776905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341297, 35.533428, 38.052864>,  <39.427933, 35.684025, 38.218437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341297, 35.533428, 38.052864>,  <39.196903, 35.282436, 37.776905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341297, 35.533428, 38.052864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142944, 0.768265, -0.623968,
		-0.921551, 0.126627, 0.367027,
		0.360985, 0.627483, 0.689895,
		39.449593, 35.721672, 38.259834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872116, 35.947071, 37.604511>,  <39.196903, 35.282436, 37.776905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872116, 35.947071, 37.604511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.149834, 36.099712, 37.848587>,  <39.316463, 36.191299, 37.995033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.149834, 36.099712, 37.848587>,  <38.872116, 35.947071, 37.604511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149834, 36.099712, 37.848587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038053, 0.827198, -0.560621,
		-0.718682, 0.412457, 0.559799,
		0.694297, 0.381606, 0.610187,
		39.358124, 36.214195, 38.031643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615711, 36.618370, 37.916935>,  <38.872116, 35.947071, 37.604511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615711, 36.618370, 37.916935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014591, 36.589722, 37.908344>,  <39.253918, 36.572533, 37.903191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.014591, 36.589722, 37.908344>,  <38.615711, 36.618370, 37.916935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014591, 36.589722, 37.908344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047198, 0.825733, -0.562084,
		0.057992, 0.559496, 0.826802,
		0.997201, -0.071619, -0.021479,
		39.313751, 36.568237, 37.901901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892036, 37.243675, 38.241257>,  <38.615711, 36.618370, 37.916935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892036, 37.243675, 38.241257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163143, 37.096596, 37.986565>,  <39.325809, 37.008347, 37.833748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163143, 37.096596, 37.986565>,  <38.892036, 37.243675, 38.241257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163143, 37.096596, 37.986565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142017, 0.915136, -0.377303,
		0.721428, 0.165299, 0.672472,
		0.677771, -0.367699, -0.636729,
		39.366474, 36.986286, 37.795547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253670, 37.826599, 38.130699>,  <38.892036, 37.243675, 38.241257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253670, 37.826599, 38.130699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.364845, 37.599388, 37.820835>,  <39.431549, 37.463062, 37.634918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.364845, 37.599388, 37.820835>,  <39.253670, 37.826599, 38.130699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364845, 37.599388, 37.820835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155299, 0.822393, -0.547314,
		0.947962, 0.031816, 0.316790,
		0.277939, -0.568030, -0.774656,
		39.448227, 37.428978, 37.588440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.377926, 34.662350, 25.302393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.760099, 34.593666, 25.398443>,  <26.989405, 34.552456, 25.456074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.760099, 34.593666, 25.398443>,  <26.377926, 34.662350, 25.302393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760099, 34.593666, 25.398443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283835, -0.757874, 0.587422,
		0.081121, -0.629400, -0.772836,
		0.955436, -0.171705, 0.240125,
		27.046730, 34.542156, 25.470480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499210, 34.295128, 25.965342>,  <26.377926, 34.662350, 25.302393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499210, 34.295128, 25.965342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580498, 33.961399, 26.170321>,  <26.629271, 33.761162, 26.293308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580498, 33.961399, 26.170321>,  <26.499210, 34.295128, 25.965342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580498, 33.961399, 26.170321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723262, 0.224869, 0.652936,
		-0.659995, -0.503323, -0.557739,
		0.203220, -0.834326, 0.512446,
		26.641464, 33.711102, 26.324055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898914, 34.081181, 26.297398>,  <26.499210, 34.295128, 25.965342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898914, 34.081181, 26.297398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188993, 33.902534, 26.507013>,  <26.363041, 33.795345, 26.632784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188993, 33.902534, 26.507013>,  <25.898914, 34.081181, 26.297398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188993, 33.902534, 26.507013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486173, 0.206799, 0.849041,
		-0.487569, -0.870497, -0.067164,
		0.725199, -0.446619, 0.524041,
		26.406553, 33.768547, 26.664225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516861, 33.618103, 26.698875>,  <25.898914, 34.081181, 26.297398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516861, 33.618103, 26.698875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864153, 33.693569, 26.882435>,  <26.072527, 33.738850, 26.992571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864153, 33.693569, 26.882435>,  <25.516861, 33.618103, 26.698875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864153, 33.693569, 26.882435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495751, 0.367630, 0.786816,
		-0.020263, -0.910634, 0.412716,
		0.868229, 0.188661, 0.458897,
		26.124622, 33.750168, 27.020103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497911, 33.388927, 27.318731>,  <25.516861, 33.618103, 26.698875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497911, 33.388927, 27.318731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809551, 33.636414, 27.359108>,  <25.996536, 33.784904, 27.383335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.809551, 33.636414, 27.359108>,  <25.497911, 33.388927, 27.318731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809551, 33.636414, 27.359108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466373, 0.464438, 0.752857,
		0.418920, -0.633633, 0.650397,
		0.779104, 0.618714, 0.100946,
		26.043282, 33.822029, 27.389391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605810, 33.448650, 28.069056>,  <25.497911, 33.388927, 27.318731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605810, 33.448650, 28.069056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775368, 33.774822, 27.911379>,  <25.877102, 33.970524, 27.816772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.775368, 33.774822, 27.911379>,  <25.605810, 33.448650, 28.069056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775368, 33.774822, 27.911379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341873, 0.547089, 0.764079,
		0.838711, -0.189126, 0.510682,
		0.423896, 0.815429, -0.394192,
		25.902536, 34.019451, 27.793121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029032, 33.733784, 28.597851>,  <25.605810, 33.448650, 28.069056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029032, 33.733784, 28.597851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.000961, 34.042297, 28.344807>,  <25.984119, 34.227406, 28.192980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.000961, 34.042297, 28.344807>,  <26.029032, 33.733784, 28.597851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000961, 34.042297, 28.344807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115534, 0.623622, 0.773142,
		0.990821, 0.127346, 0.045344,
		-0.070178, 0.771284, -0.632611,
		25.979908, 34.273682, 28.155024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357300, 34.251167, 28.966141>,  <26.029032, 33.733784, 28.597851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357300, 34.251167, 28.966141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126631, 34.459461, 28.714336>,  <25.988230, 34.584438, 28.563253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126631, 34.459461, 28.714336>,  <26.357300, 34.251167, 28.966141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126631, 34.459461, 28.714336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304129, 0.578325, 0.756998,
		0.758259, 0.627991, -0.175132,
		-0.576671, 0.520737, -0.629510,
		25.953629, 34.615681, 28.525484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626043, 34.859966, 29.024208>,  <26.357300, 34.251167, 28.966141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626043, 34.859966, 29.024208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.252745, 34.885147, 28.882734>,  <26.028767, 34.900257, 28.797850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.252745, 34.885147, 28.882734>,  <26.626043, 34.859966, 29.024208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252745, 34.885147, 28.882734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257584, 0.569000, 0.780954,
		0.250409, 0.819924, -0.514801,
		-0.933245, 0.062953, -0.353682,
		25.972771, 34.904034, 28.776630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623449, 35.509422, 28.997742>,  <26.626043, 34.859966, 29.024208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623449, 35.509422, 28.997742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249973, 35.366768, 29.010597>,  <26.025888, 35.281174, 29.018311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249973, 35.366768, 29.010597>,  <26.623449, 35.509422, 28.997742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249973, 35.366768, 29.010597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194443, 0.580319, 0.790837,
		-0.300695, 0.732146, -0.611183,
		-0.933689, -0.356640, 0.032138,
		25.969866, 35.259777, 29.020239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055935, 36.138535, 28.945187>,  <26.623449, 35.509422, 28.997742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055935, 36.138535, 28.945187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932325, 35.814125, 29.143881>,  <25.858160, 35.619480, 29.263098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.932325, 35.814125, 29.143881>,  <26.055935, 36.138535, 28.945187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932325, 35.814125, 29.143881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298167, 0.578585, 0.759168,
		-0.903106, 0.086493, -0.420618,
		-0.309025, -0.811023, 0.496734,
		25.839617, 35.570820, 29.292900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761864, 36.480221, 29.413836>,  <26.055935, 36.138535, 28.945187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761864, 36.480221, 29.413836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.687122, 36.102734, 29.522995>,  <25.642277, 35.876240, 29.588491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.687122, 36.102734, 29.522995>,  <25.761864, 36.480221, 29.413836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687122, 36.102734, 29.522995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379317, 0.325558, 0.866101,
		-0.906203, 0.058318, -0.418801,
		-0.186853, -0.943722, 0.272901,
		25.631067, 35.819618, 29.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025768, 36.523567, 29.548992>,  <25.761864, 36.480221, 29.413836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025768, 36.523567, 29.548992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.221004, 36.220253, 29.721861>,  <25.338146, 36.038265, 29.825583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.221004, 36.220253, 29.721861>,  <25.025768, 36.523567, 29.548992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221004, 36.220253, 29.721861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342346, 0.289145, 0.893977,
		-0.802851, -0.584291, -0.118468,
		0.488088, -0.758287, 0.432169,
		25.367432, 35.992767, 29.851511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567249, 36.156517, 29.912973>,  <25.025768, 36.523567, 29.548992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567249, 36.156517, 29.912973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.916452, 36.065002, 30.085257>,  <25.125975, 36.010094, 30.188627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.916452, 36.065002, 30.085257>,  <24.567249, 36.156517, 29.912973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916452, 36.065002, 30.085257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431877, 0.047623, 0.900674,
		-0.226575, -0.972311, -0.057232,
		0.873010, -0.228788, 0.430709,
		25.178356, 35.996368, 30.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366861, 35.708462, 30.391863>,  <24.567249, 36.156517, 29.912973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366861, 35.708462, 30.391863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.730738, 35.827625, 30.507597>,  <24.949062, 35.899124, 30.577038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.730738, 35.827625, 30.507597>,  <24.366861, 35.708462, 30.391863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730738, 35.827625, 30.507597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325682, 0.079475, 0.942133,
		0.257676, -0.951280, 0.169322,
		0.909690, 0.297910, 0.289336,
		25.003645, 35.917000, 30.594398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387154, 35.499088, 31.117430>,  <24.366861, 35.708462, 30.391863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387154, 35.499088, 31.117430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.671474, 35.778526, 31.084631>,  <24.842066, 35.946190, 31.064951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.671474, 35.778526, 31.084631>,  <24.387154, 35.499088, 31.117430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671474, 35.778526, 31.084631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052308, 0.168748, 0.984270,
		0.701446, -0.695330, 0.156488,
		0.710800, 0.698599, -0.081996,
		24.884714, 35.988106, 31.060032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905806, 35.373486, 31.618414>,  <24.387154, 35.499088, 31.117430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905806, 35.373486, 31.618414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.939690, 35.760944, 31.525000>,  <24.960020, 35.993420, 31.468952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.939690, 35.760944, 31.525000>,  <24.905806, 35.373486, 31.618414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939690, 35.760944, 31.525000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077840, 0.240093, 0.967624,
		0.993360, -0.063790, 0.095739,
		0.084711, 0.968652, -0.233534,
		24.965103, 36.051540, 31.454939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397219, 35.587959, 32.158722>,  <24.905806, 35.373486, 31.618414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397219, 35.587959, 32.158722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.222799, 35.913311, 32.004692>,  <25.118149, 36.108521, 31.912273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.222799, 35.913311, 32.004692>,  <25.397219, 35.587959, 32.158722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222799, 35.913311, 32.004692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055404, 0.402822, 0.913600,
		0.898217, 0.419708, -0.130586,
		-0.436047, 0.813376, -0.385075,
		25.091986, 36.157322, 31.889170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681984, 36.119862, 32.537792>,  <25.397219, 35.587959, 32.158722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681984, 36.119862, 32.537792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.331556, 36.241886, 32.388424>,  <25.121300, 36.315102, 32.298805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.331556, 36.241886, 32.388424>,  <25.681984, 36.119862, 32.537792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331556, 36.241886, 32.388424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236739, 0.402539, 0.884261,
		0.420069, 0.863076, -0.280432,
		-0.876069, 0.305061, -0.373418,
		25.068735, 36.333405, 32.276398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670692, 36.831879, 32.694664>,  <25.681984, 36.119862, 32.537792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670692, 36.831879, 32.694664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304653, 36.670593, 32.693192>,  <25.085030, 36.573822, 32.692307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304653, 36.670593, 32.693192>,  <25.670692, 36.831879, 32.694664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304653, 36.670593, 32.693192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171974, 0.381999, 0.908021,
		-0.364718, 0.831563, -0.418909,
		-0.915099, -0.403212, -0.003685,
		25.030123, 36.549629, 32.692085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266394, 36.492355, 32.944729>,  <25.670692, 36.831879, 32.694664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266394, 36.492355, 32.944729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665131, 36.523903, 32.941082>,  <26.904373, 36.542831, 32.938892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.665131, 36.523903, 32.941082>,  <26.266394, 36.492355, 32.944729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665131, 36.523903, 32.941082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067116, -0.898438, -0.433941,
		-0.042415, 0.431959, -0.900895,
		0.996843, 0.078870, -0.009116,
		26.964184, 36.547565, 32.938347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459549, 36.225136, 32.350239>,  <26.266394, 36.492355, 32.944729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459549, 36.225136, 32.350239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795773, 36.186848, 32.563515>,  <26.997507, 36.163876, 32.691483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795773, 36.186848, 32.563515>,  <26.459549, 36.225136, 32.350239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795773, 36.186848, 32.563515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136949, -0.914743, -0.380119,
		0.524120, 0.392533, -0.755788,
		0.840561, -0.095723, 0.533192,
		27.047941, 36.158131, 32.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962376, 35.964100, 31.936495>,  <26.459549, 36.225136, 32.350239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962376, 35.964100, 31.936495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126190, 35.856815, 32.285286>,  <27.224480, 35.792446, 32.494560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126190, 35.856815, 32.285286>,  <26.962376, 35.964100, 31.936495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126190, 35.856815, 32.285286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299380, -0.863364, -0.406170,
		0.861772, 0.427395, -0.273283,
		0.409538, -0.268211, 0.871976,
		27.249052, 35.776352, 32.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679285, 35.740471, 31.764154>,  <26.962376, 35.964100, 31.936495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679285, 35.740471, 31.764154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608875, 35.567898, 32.118076>,  <27.566629, 35.464355, 32.330429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.608875, 35.567898, 32.118076>,  <27.679285, 35.740471, 31.764154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608875, 35.567898, 32.118076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409200, -0.849571, -0.332844,
		0.895305, 0.303474, 0.326087,
		-0.176025, -0.431432, 0.884806,
		27.556068, 35.438469, 32.383518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353535, 35.488224, 32.044773>,  <27.679285, 35.740471, 31.764154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353535, 35.488224, 32.044773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073055, 35.281231, 32.240948>,  <27.904768, 35.157036, 32.358654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073055, 35.281231, 32.240948>,  <28.353535, 35.488224, 32.044773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073055, 35.281231, 32.240948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408347, -0.855377, -0.318720,
		0.584442, -0.023217, 0.811103,
		-0.701199, -0.517485, 0.490438,
		27.862696, 35.125984, 32.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706163, 34.973656, 32.290787>,  <28.353535, 35.488224, 32.044773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706163, 34.973656, 32.290787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329834, 34.849720, 32.345703>,  <28.104036, 34.775360, 32.378654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329834, 34.849720, 32.345703>,  <28.706163, 34.973656, 32.290787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329834, 34.849720, 32.345703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275808, -0.935445, -0.221071,
		0.196924, -0.170124, 0.965546,
		-0.940824, -0.309840, 0.137290,
		28.047586, 34.756767, 32.386890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745476, 34.479275, 32.838436>,  <28.706163, 34.973656, 32.290787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745476, 34.479275, 32.838436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422874, 34.413860, 32.611172>,  <28.229313, 34.374611, 32.474812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422874, 34.413860, 32.611172>,  <28.745476, 34.479275, 32.838436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422874, 34.413860, 32.611172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376954, -0.882560, -0.281057,
		-0.455473, -0.440844, 0.773435,
		-0.806505, -0.163535, -0.568160,
		28.180923, 34.364799, 32.440723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615473, 33.792107, 32.904911>,  <28.745476, 34.479275, 32.838436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615473, 33.792107, 32.904911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453012, 33.918816, 32.562054>,  <28.355536, 33.994843, 32.356339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453012, 33.918816, 32.562054>,  <28.615473, 33.792107, 32.904911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453012, 33.918816, 32.562054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569933, -0.645391, -0.508574,
		-0.714295, -0.695073, 0.081588,
		-0.406153, 0.316772, -0.857144,
		28.331167, 34.013847, 32.304909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590862, 33.247490, 32.464336>,  <28.615473, 33.792107, 32.904911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590862, 33.247490, 32.464336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497782, 33.500896, 32.169174>,  <28.441933, 33.652939, 31.992077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497782, 33.500896, 32.169174>,  <28.590862, 33.247490, 32.464336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497782, 33.500896, 32.169174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436036, -0.610244, -0.661418,
		-0.869323, -0.475667, -0.134231,
		-0.232701, 0.633516, -0.737908,
		28.427971, 33.690952, 31.947802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353907, 32.839603, 31.919127>,  <28.590862, 33.247490, 32.464336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353907, 32.839603, 31.919127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417950, 33.188484, 31.734243>,  <28.456375, 33.397812, 31.623314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417950, 33.188484, 31.734243>,  <28.353907, 32.839603, 31.919127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417950, 33.188484, 31.734243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260776, -0.488987, -0.832398,
		-0.952030, 0.012741, -0.305740,
		0.160108, 0.872198, -0.462208,
		28.465982, 33.450142, 31.595581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899094, 33.036182, 31.317101>,  <28.353907, 32.839603, 31.919127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899094, 33.036182, 31.317101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244358, 33.219238, 31.231758>,  <28.451517, 33.329071, 31.180552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.244358, 33.219238, 31.231758>,  <27.899094, 33.036182, 31.317101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244358, 33.219238, 31.231758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062636, -0.516328, -0.854097,
		-0.501032, 0.723858, -0.474338,
		0.863159, 0.457641, -0.213357,
		28.503305, 33.356529, 31.167751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783495, 33.086590, 30.666155>,  <27.899094, 33.036182, 31.317101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783495, 33.086590, 30.666155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170250, 33.184845, 30.693836>,  <28.402304, 33.243797, 30.710445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170250, 33.184845, 30.693836>,  <27.783495, 33.086590, 30.666155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170250, 33.184845, 30.693836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189020, -0.507126, -0.840889,
		-0.171458, 0.826127, -0.536765,
		0.966888, 0.245637, 0.069204,
		28.460316, 33.258537, 30.714598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014324, 33.216175, 29.992043>,  <27.783495, 33.086590, 30.666155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014324, 33.216175, 29.992043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349524, 33.133152, 30.193905>,  <28.550644, 33.083340, 30.315022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349524, 33.133152, 30.193905>,  <28.014324, 33.216175, 29.992043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349524, 33.133152, 30.193905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321944, -0.558655, -0.764367,
		0.440577, 0.803010, -0.401332,
		0.838000, -0.207556, 0.504654,
		28.600924, 33.070885, 30.345301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447180, 33.147388, 29.544601>,  <28.014324, 33.216175, 29.992043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447180, 33.147388, 29.544601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687658, 32.999756, 29.828106>,  <28.831945, 32.911175, 29.998209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687658, 32.999756, 29.828106>,  <28.447180, 33.147388, 29.544601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687658, 32.999756, 29.828106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530817, -0.478538, -0.699453,
		0.597325, 0.796731, -0.091781,
		0.601196, -0.369082, 0.708761,
		28.868017, 32.889030, 30.040733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102413, 33.312069, 29.294317>,  <28.447180, 33.147388, 29.544601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102413, 33.312069, 29.294317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102188, 33.012100, 29.558929>,  <29.102053, 32.832119, 29.717697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102188, 33.012100, 29.558929>,  <29.102413, 33.312069, 29.294317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102188, 33.012100, 29.558929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524851, -0.563312, -0.638131,
		0.851194, 0.346844, 0.393913,
		-0.000564, -0.749919, 0.661530,
		29.102018, 32.787125, 29.757389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811457, 33.162319, 29.355442>,  <29.102413, 33.312069, 29.294317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811457, 33.162319, 29.355442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611387, 32.836147, 29.471998>,  <29.491346, 32.640446, 29.541933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611387, 32.836147, 29.471998>,  <29.811457, 33.162319, 29.355442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611387, 32.836147, 29.471998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669200, -0.577557, -0.467546,
		0.549545, -0.038854, 0.834560,
		-0.500172, -0.815425, 0.291393,
		29.461336, 32.591518, 29.559416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242510, 32.612663, 29.493315>,  <29.811457, 33.162319, 29.355442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242510, 32.612663, 29.493315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897852, 32.429337, 29.406122>,  <29.691057, 32.319340, 29.353807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897852, 32.429337, 29.406122>,  <30.242510, 32.612663, 29.493315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897852, 32.429337, 29.406122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489171, -0.635585, -0.597280,
		0.135195, -0.621274, 0.771842,
		-0.861646, -0.458312, -0.217981,
		29.639359, 32.291843, 29.340729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343918, 31.920937, 29.493988>,  <30.242510, 32.612663, 29.493315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343918, 31.920937, 29.493988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018517, 31.966957, 29.265961>,  <29.823277, 31.994570, 29.129145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018517, 31.966957, 29.265961>,  <30.343918, 31.920937, 29.493988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018517, 31.966957, 29.265961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394650, -0.610774, -0.686445,
		-0.427158, -0.783402, 0.451462,
		-0.813503, 0.115051, -0.570066,
		29.774466, 32.001472, 29.094940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111979, 31.238506, 29.176733>,  <30.343918, 31.920937, 29.493988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111979, 31.238506, 29.176733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941847, 31.513182, 28.940916>,  <29.839767, 31.677986, 28.799427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941847, 31.513182, 28.940916>,  <30.111979, 31.238506, 29.176733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941847, 31.513182, 28.940916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101735, -0.610993, -0.785072,
		-0.899304, -0.393889, 0.190012,
		-0.425327, 0.686687, -0.589541,
		29.814249, 31.719187, 28.764053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812553, 30.866625, 28.643570>,  <30.111979, 31.238506, 29.176733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812553, 30.866625, 28.643570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795937, 31.231514, 28.480537>,  <29.785967, 31.450447, 28.382717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795937, 31.231514, 28.480537>,  <29.812553, 30.866625, 28.643570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795937, 31.231514, 28.480537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076626, -0.409641, -0.909023,
		-0.996194, -0.006532, 0.086918,
		-0.041543, 0.912223, -0.407581,
		29.783474, 31.505180, 28.358263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235367, 30.834660, 28.163506>,  <29.812553, 30.866625, 28.643570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235367, 30.834660, 28.163506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454454, 31.145134, 28.038580>,  <29.585907, 31.331419, 27.963625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454454, 31.145134, 28.038580>,  <29.235367, 30.834660, 28.163506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454454, 31.145134, 28.038580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080122, -0.322909, -0.943033,
		-0.832816, 0.541541, -0.114674,
		0.547720, 0.776185, -0.312313,
		29.618771, 31.377989, 27.944885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889799, 31.104916, 27.657679>,  <29.235367, 30.834660, 28.163506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889799, 31.104916, 27.657679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270792, 31.211555, 27.598755>,  <29.499388, 31.275539, 27.563400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270792, 31.211555, 27.598755>,  <28.889799, 31.104916, 27.657679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270792, 31.211555, 27.598755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008267, -0.460822, -0.887454,
		-0.304478, 0.846503, -0.436721,
		0.952483, 0.266600, -0.147308,
		29.556538, 31.291536, 27.554562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.105064, 32.757130, 39.136490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.802319, 32.504059, 39.070911>,  <41.620670, 32.352219, 39.031563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.802319, 32.504059, 39.070911>,  <42.105064, 32.757130, 39.136490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802319, 32.504059, 39.070911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066873, -0.324496, 0.943520,
		-0.650139, 0.703155, 0.287909,
		-0.756866, -0.632673, -0.163946,
		41.575260, 32.314259, 39.021729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679714, 32.709885, 39.806610>,  <42.105064, 32.757130, 39.136490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679714, 32.709885, 39.806610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.623287, 32.387390, 39.576801>,  <41.589432, 32.193893, 39.438915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.623287, 32.387390, 39.576801>,  <41.679714, 32.709885, 39.806610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623287, 32.387390, 39.576801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139206, -0.590717, 0.794780,
		-0.980164, 0.032138, 0.195563,
		-0.141065, -0.806238, -0.574526,
		41.580967, 32.145519, 39.404442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193207, 32.244366, 40.192337>,  <41.679714, 32.709885, 39.806610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193207, 32.244366, 40.192337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.404369, 32.028736, 39.929821>,  <41.531067, 31.899359, 39.772312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.404369, 32.028736, 39.929821>,  <41.193207, 32.244366, 40.192337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404369, 32.028736, 39.929821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251875, -0.638605, 0.727147,
		-0.811095, -0.549168, -0.201345,
		0.527906, -0.539071, -0.656291,
		41.562740, 31.867014, 39.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014568, 31.596279, 40.307407>,  <41.193207, 32.244366, 40.192337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014568, 31.596279, 40.307407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355476, 31.542765, 40.105129>,  <41.560020, 31.510656, 39.983761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.355476, 31.542765, 40.105129>,  <41.014568, 31.596279, 40.307407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355476, 31.542765, 40.105129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295587, -0.674425, 0.676594,
		-0.431574, -0.726121, -0.535249,
		0.852275, -0.133787, -0.505696,
		41.611160, 31.502628, 39.953419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129158, 30.873743, 40.385769>,  <41.014568, 31.596279, 40.307407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129158, 30.873743, 40.385769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.491280, 30.977571, 40.251278>,  <41.708553, 31.039869, 40.170582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.491280, 30.977571, 40.251278>,  <41.129158, 30.873743, 40.385769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491280, 30.977571, 40.251278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424200, -0.593389, 0.684064,
		-0.021951, -0.761913, -0.647307,
		0.905302, 0.259572, -0.336230,
		41.762871, 31.055443, 40.150410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555008, 30.266621, 40.200848>,  <41.129158, 30.873743, 40.385769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555008, 30.266621, 40.200848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.813328, 30.557421, 40.294147>,  <41.968319, 30.731901, 40.350128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.813328, 30.557421, 40.294147>,  <41.555008, 30.266621, 40.200848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813328, 30.557421, 40.294147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400180, -0.582485, 0.707508,
		0.650225, -0.363568, -0.667102,
		0.645804, 0.727001, 0.233253,
		42.007069, 30.775520, 40.364124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231903, 29.949879, 40.378891>,  <41.555008, 30.266621, 40.200848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231903, 29.949879, 40.378891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.281792, 30.321178, 40.519062>,  <42.311726, 30.543959, 40.603165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.281792, 30.321178, 40.519062>,  <42.231903, 29.949879, 40.378891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281792, 30.321178, 40.519062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488410, -0.364868, 0.792671,
		0.863655, 0.072292, -0.498872,
		0.124719, 0.928248, 0.350428,
		42.319206, 30.599653, 40.624191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970657, 30.108099, 40.584602>,  <42.231903, 29.949879, 40.378891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970657, 30.108099, 40.584602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.779770, 30.391651, 40.792351>,  <42.665237, 30.561783, 40.917000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.779770, 30.391651, 40.792351>,  <42.970657, 30.108099, 40.584602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779770, 30.391651, 40.792351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481230, -0.283714, 0.829412,
		0.735308, 0.645750, -0.205741,
		-0.477221, 0.708882, 0.519371,
		42.636604, 30.604317, 40.948162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464817, 30.329353, 41.017120>,  <42.970657, 30.108099, 40.584602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464817, 30.329353, 41.017120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119122, 30.410515, 41.201256>,  <42.911705, 30.459211, 41.311737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119122, 30.410515, 41.201256>,  <43.464817, 30.329353, 41.017120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119122, 30.410515, 41.201256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383704, -0.325936, 0.864024,
		0.325357, 0.923361, 0.203832,
		-0.864242, 0.202905, 0.460343,
		42.859848, 30.471386, 41.339359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576279, 30.454653, 41.787865>,  <43.464817, 30.329353, 41.017120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576279, 30.454653, 41.787865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.177151, 30.428579, 41.791988>,  <42.937675, 30.412935, 41.794464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.177151, 30.428579, 41.791988>,  <43.576279, 30.454653, 41.787865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177151, 30.428579, 41.791988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037719, -0.435090, 0.899597,
		-0.054151, 0.898024, 0.436600,
		-0.997820, -0.065183, 0.010312,
		42.877804, 30.409025, 41.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433788, 30.531227, 42.512615>,  <43.576279, 30.454653, 41.787865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433788, 30.531227, 42.512615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.107540, 30.368155, 42.348392>,  <42.911789, 30.270311, 42.249859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.107540, 30.368155, 42.348392>,  <43.433788, 30.531227, 42.512615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107540, 30.368155, 42.348392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034894, -0.673635, 0.738240,
		-0.577529, 0.616452, 0.535207,
		-0.815624, -0.407680, -0.410554,
		42.862854, 30.245852, 42.225227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998600, 30.361799, 43.087265>,  <43.433788, 30.531227, 42.512615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998600, 30.361799, 43.087265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.885971, 30.156559, 42.762932>,  <42.818394, 30.033415, 42.568333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.885971, 30.156559, 42.762932>,  <42.998600, 30.361799, 43.087265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885971, 30.156559, 42.762932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216083, -0.789407, 0.574582,
		-0.934894, 0.336992, 0.111401,
		-0.281570, -0.513101, -0.810830,
		42.801498, 30.002628, 42.519684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351303, 30.218002, 43.141033>,  <42.998600, 30.361799, 43.087265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351303, 30.218002, 43.141033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.459805, 29.902943, 42.919754>,  <42.524906, 29.713907, 42.786987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.459805, 29.902943, 42.919754>,  <42.351303, 30.218002, 43.141033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459805, 29.902943, 42.919754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382892, -0.615616, 0.688775,
		-0.883073, 0.024985, -0.468570,
		0.271250, -0.787650, -0.553200,
		42.541180, 29.666647, 42.753796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759583, 29.688665, 43.018040>,  <42.351303, 30.218002, 43.141033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759583, 29.688665, 43.018040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.112373, 29.500900, 43.001194>,  <42.324047, 29.388241, 42.991085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.112373, 29.500900, 43.001194>,  <41.759583, 29.688665, 43.018040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112373, 29.500900, 43.001194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361155, -0.730563, 0.579522,
		-0.302801, -0.495914, -0.813868,
		0.881974, -0.469412, -0.042113,
		42.376965, 29.360077, 42.988560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284946, 29.407053, 43.476028>,  <41.759583, 29.688665, 43.018040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284946, 29.407053, 43.476028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950672, 29.338957, 43.684895>,  <40.750107, 29.298100, 43.810215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950672, 29.338957, 43.684895>,  <41.284946, 29.407053, 43.476028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950672, 29.338957, 43.684895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455871, 0.745242, -0.486617,
		-0.306294, -0.644695, -0.700394,
		-0.835683, -0.170241, 0.522161,
		40.699966, 29.287884, 43.841541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836662, 29.511890, 43.043713>,  <41.284946, 29.407053, 43.476028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836662, 29.511890, 43.043713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683998, 29.583128, 43.406506>,  <40.592400, 29.625870, 43.624184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.683998, 29.583128, 43.406506>,  <40.836662, 29.511890, 43.043713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683998, 29.583128, 43.406506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498458, 0.786690, -0.364223,
		-0.778381, -0.591102, -0.211474,
		-0.381657, 0.178093, 0.906984,
		40.569500, 29.636557, 43.678600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087772, 29.574440, 43.033897>,  <40.836662, 29.511890, 43.043713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087772, 29.574440, 43.033897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184586, 29.773975, 43.366783>,  <40.242672, 29.893698, 43.566513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184586, 29.773975, 43.366783>,  <40.087772, 29.574440, 43.033897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184586, 29.773975, 43.366783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580524, 0.761706, -0.287742,
		-0.777439, -0.413476, 0.473947,
		0.242034, 0.498839, 0.832213,
		40.257195, 29.923628, 43.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422043, 29.816359, 43.326191>,  <40.087772, 29.574440, 43.033897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422043, 29.816359, 43.326191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736012, 30.037457, 43.438175>,  <39.924393, 30.170115, 43.505367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736012, 30.037457, 43.438175>,  <39.422043, 29.816359, 43.326191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736012, 30.037457, 43.438175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469386, 0.825408, -0.313653,
		-0.404452, 0.114782, 0.907328,
		0.784918, 0.552744, 0.279961,
		39.971485, 30.203279, 43.522163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185589, 30.365681, 43.764969>,  <39.422043, 29.816359, 43.326191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185589, 30.365681, 43.764969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543949, 30.485609, 43.633835>,  <39.758965, 30.557566, 43.555157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.543949, 30.485609, 43.633835>,  <39.185589, 30.365681, 43.764969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543949, 30.485609, 43.633835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410629, 0.840498, -0.353479,
		0.169562, 0.451299, 0.876115,
		0.895898, 0.299821, -0.327833,
		39.812717, 30.575556, 43.535484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099876, 31.080244, 43.876064>,  <39.185589, 30.365681, 43.764969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099876, 31.080244, 43.876064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429188, 31.052572, 43.650703>,  <39.626774, 31.035969, 43.515488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429188, 31.052572, 43.650703>,  <39.099876, 31.080244, 43.876064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429188, 31.052572, 43.650703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157892, 0.925465, -0.344360,
		0.545232, 0.372462, 0.750996,
		0.823282, -0.069180, -0.563402,
		39.676170, 31.031818, 43.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302738, 31.734756, 43.732655>,  <39.099876, 31.080244, 43.876064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302738, 31.734756, 43.732655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473717, 31.525600, 43.437664>,  <39.576302, 31.400106, 43.260670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473717, 31.525600, 43.437664>,  <39.302738, 31.734756, 43.732655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473717, 31.525600, 43.437664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033523, 0.806029, -0.590926,
		0.903420, 0.277310, 0.327004,
		0.427444, -0.522892, -0.737479,
		39.601952, 31.368732, 43.216419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632599, 32.273766, 43.324554>,  <39.302738, 31.734756, 43.732655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632599, 32.273766, 43.324554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625870, 31.951513, 43.087685>,  <39.621834, 31.758162, 42.945564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625870, 31.951513, 43.087685>,  <39.632599, 32.273766, 43.324554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625870, 31.951513, 43.087685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022169, 0.592413, -0.805329,
		0.999613, -0.000419, -0.027826,
		-0.016821, -0.805634, -0.592175,
		39.620823, 31.709824, 42.910030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116638, 32.374504, 42.760616>,  <39.632599, 32.273766, 43.324554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116638, 32.374504, 42.760616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875488, 32.087387, 42.621300>,  <39.730797, 31.915117, 42.537708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.875488, 32.087387, 42.621300>,  <40.116638, 32.374504, 42.760616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875488, 32.087387, 42.621300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004742, 0.433319, -0.901228,
		0.797819, -0.544982, -0.257835,
		-0.602878, -0.717795, -0.348295,
		39.694626, 31.872049, 42.516811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489914, 32.033592, 42.188179>,  <40.116638, 32.374504, 42.760616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489914, 32.033592, 42.188179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.092621, 31.994652, 42.162842>,  <39.854244, 31.971289, 42.147640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.092621, 31.994652, 42.162842>,  <40.489914, 32.033592, 42.188179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092621, 31.994652, 42.162842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011249, 0.462196, -0.886707,
		0.115595, -0.881419, -0.457973,
		-0.993233, -0.097347, -0.063342,
		39.794651, 31.965448, 42.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420349, 32.091953, 41.608753>,  <40.489914, 32.033592, 42.188179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420349, 32.091953, 41.608753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025917, 32.098984, 41.674896>,  <39.789257, 32.103203, 41.714581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025917, 32.098984, 41.674896>,  <40.420349, 32.091953, 41.608753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025917, 32.098984, 41.674896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146983, 0.372928, -0.916144,
		-0.077766, -0.927694, -0.365153,
		-0.986077, 0.017573, 0.165356,
		39.730095, 32.104256, 41.724503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986382, 31.800264, 40.944706>,  <40.420349, 32.091953, 41.608753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986382, 31.800264, 40.944706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719074, 32.008926, 41.156857>,  <39.558689, 32.134125, 41.284145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719074, 32.008926, 41.156857>,  <39.986382, 31.800264, 40.944706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719074, 32.008926, 41.156857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317623, 0.444620, -0.837513,
		-0.672707, -0.728142, -0.131435,
		-0.668267, 0.521654, 0.530374,
		39.518593, 32.165424, 41.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331299, 31.739298, 40.605053>,  <39.986382, 31.800264, 40.944706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331299, 31.739298, 40.605053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.303349, 32.064537, 40.836220>,  <39.286579, 32.259682, 40.974922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.303349, 32.064537, 40.836220>,  <39.331299, 31.739298, 40.605053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303349, 32.064537, 40.836220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308640, 0.533290, -0.787618,
		-0.948609, -0.233402, 0.213692,
		-0.069872, 0.813096, 0.577921,
		39.282387, 32.308464, 41.009598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751690, 32.100628, 40.425941>,  <39.331299, 31.739298, 40.605053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751690, 32.100628, 40.425941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996731, 32.374989, 40.583046>,  <39.143757, 32.539604, 40.677307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996731, 32.374989, 40.583046>,  <38.751690, 32.100628, 40.425941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996731, 32.374989, 40.583046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166599, 0.597808, -0.784137,
		-0.772632, 0.414932, 0.480490,
		0.612604, 0.685899, 0.392758,
		39.180511, 32.580757, 40.700874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005539, 32.159977, 40.440659>,  <38.751690, 32.100628, 40.425941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005539, 32.159977, 40.440659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660885, 32.084579, 40.252167>,  <37.454094, 32.039341, 40.139072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660885, 32.084579, 40.252167>,  <38.005539, 32.159977, 40.440659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660885, 32.084579, 40.252167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077343, -0.868863, 0.488973,
		-0.501599, 0.457762, 0.734065,
		-0.861636, -0.188494, -0.471225,
		37.402393, 32.028030, 40.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467045, 32.046150, 40.952312>,  <38.005539, 32.159977, 40.440659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467045, 32.046150, 40.952312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364258, 31.847551, 40.620659>,  <37.302586, 31.728392, 40.421669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364258, 31.847551, 40.620659>,  <37.467045, 32.046150, 40.952312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364258, 31.847551, 40.620659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061714, -0.864618, 0.498625,
		-0.964448, 0.076960, 0.252818,
		-0.256966, -0.496500, -0.829130,
		37.287167, 31.698601, 40.371922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866322, 31.592161, 41.081017>,  <37.467045, 32.046150, 40.952312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866322, 31.592161, 41.081017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047714, 31.433950, 40.761539>,  <37.156551, 31.339024, 40.569851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.047714, 31.433950, 40.761539>,  <36.866322, 31.592161, 41.081017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047714, 31.433950, 40.761539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080305, -0.874358, 0.478591,
		-0.887642, -0.281170, -0.364740,
		0.453479, -0.395527, -0.798696,
		37.183758, 31.315292, 40.521931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592949, 30.888371, 41.028538>,  <36.866322, 31.592161, 41.081017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592949, 30.888371, 41.028538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916050, 30.860935, 40.794331>,  <37.109913, 30.844473, 40.653809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916050, 30.860935, 40.794331>,  <36.592949, 30.888371, 41.028538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916050, 30.860935, 40.794331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266266, -0.843679, 0.466164,
		-0.525960, -0.532448, -0.663223,
		0.807755, -0.068590, -0.585514,
		37.158375, 30.840359, 40.618675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530609, 30.205801, 40.829533>,  <36.592949, 30.888371, 41.028538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530609, 30.205801, 40.829533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906616, 30.314659, 40.747261>,  <37.132221, 30.379974, 40.697899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906616, 30.314659, 40.747261>,  <36.530609, 30.205801, 40.829533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906616, 30.314659, 40.747261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335702, -0.845098, 0.416068,
		-0.060586, -0.460158, -0.885767,
		0.940018, 0.272146, -0.205677,
		37.188622, 30.396303, 40.685558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778412, 29.666803, 40.528278>,  <36.530609, 30.205801, 40.829533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778412, 29.666803, 40.528278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.104198, 29.866220, 40.647007>,  <37.299671, 29.985870, 40.718243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.104198, 29.866220, 40.647007>,  <36.778412, 29.666803, 40.528278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104198, 29.866220, 40.647007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439768, -0.864132, 0.244703,
		0.378486, -0.068770, -0.923049,
		0.814465, 0.498544, 0.296819,
		37.348537, 30.015783, 40.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330067, 29.230930, 40.317261>,  <36.778412, 29.666803, 40.528278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330067, 29.230930, 40.317261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531689, 29.474415, 40.562344>,  <37.652660, 29.620504, 40.709393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531689, 29.474415, 40.562344>,  <37.330067, 29.230930, 40.317261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531689, 29.474415, 40.562344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534438, -0.777110, 0.332380,
		0.678460, 0.159915, -0.717021,
		0.504051, 0.608710, 0.612703,
		37.682903, 29.657028, 40.746155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633244, 28.780136, 39.694866>,  <37.330067, 29.230930, 40.317261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633244, 28.780136, 39.694866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349346, 28.498495, 39.703827>,  <37.179008, 28.329512, 39.709206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349346, 28.498495, 39.703827>,  <37.633244, 28.780136, 39.694866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349346, 28.498495, 39.703827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531557, 0.514405, -0.672930,
		0.462285, -0.489520, -0.739367,
		-0.709747, -0.704101, 0.022406,
		37.136421, 28.287264, 39.710548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381363, 28.699133, 38.986950>,  <37.633244, 28.780136, 39.694866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381363, 28.699133, 38.986950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089466, 28.591209, 39.238243>,  <36.914330, 28.526455, 39.389019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089466, 28.591209, 39.238243>,  <37.381363, 28.699133, 38.986950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089466, 28.591209, 39.238243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674306, 0.435969, -0.596022,
		-0.113079, -0.858565, -0.500078,
		-0.729743, -0.269808, 0.628235,
		36.870544, 28.510267, 39.426712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885540, 28.352604, 38.569004>,  <37.381363, 28.699133, 38.986950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885540, 28.352604, 38.569004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697178, 28.490736, 38.893719>,  <36.584160, 28.573614, 39.088547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697178, 28.490736, 38.893719>,  <36.885540, 28.352604, 38.569004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697178, 28.490736, 38.893719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701461, 0.411462, -0.581937,
		-0.534980, -0.843473, 0.048477,
		-0.470902, 0.345329, 0.811788,
		36.555908, 28.594336, 39.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240719, 28.505144, 38.335861>,  <36.885540, 28.352604, 38.569004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240719, 28.505144, 38.335861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223148, 28.652716, 38.707230>,  <36.212605, 28.741259, 38.930050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223148, 28.652716, 38.707230>,  <36.240719, 28.505144, 38.335861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223148, 28.652716, 38.707230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602800, 0.731297, -0.319118,
		-0.796682, -0.573669, 0.190266,
		-0.043927, 0.368928, 0.928419,
		36.209969, 28.763393, 38.985756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593754, 28.572687, 38.528217>,  <36.240719, 28.505144, 38.335861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593754, 28.572687, 38.528217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757889, 28.820507, 38.795883>,  <35.856369, 28.969198, 38.956482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757889, 28.820507, 38.795883>,  <35.593754, 28.572687, 38.528217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757889, 28.820507, 38.795883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545369, 0.754825, -0.364434,
		-0.730890, -0.215405, 0.647612,
		0.410333, 0.619548, 0.669169,
		35.880989, 29.006372, 38.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005436, 29.075197, 38.650921>,  <35.593754, 28.572687, 38.528217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005436, 29.075197, 38.650921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361542, 29.228954, 38.748634>,  <35.575203, 29.321209, 38.807262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361542, 29.228954, 38.748634>,  <35.005436, 29.075197, 38.650921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361542, 29.228954, 38.748634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227165, 0.839648, -0.493344,
		-0.394752, 0.383712, 0.834827,
		0.890262, 0.384392, 0.244287,
		35.628620, 29.344273, 38.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904053, 29.747324, 39.086926>,  <35.005436, 29.075197, 38.650921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904053, 29.747324, 39.086926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280838, 29.786396, 38.958447>,  <35.506908, 29.809839, 38.881359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280838, 29.786396, 38.958447>,  <34.904053, 29.747324, 39.086926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280838, 29.786396, 38.958447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263582, 0.807737, -0.527338,
		0.207935, 0.581394, 0.786603,
		0.941960, 0.097682, -0.321201,
		35.563427, 29.815701, 38.862087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.145462, 27.487879, 40.834400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.449146, 27.739100, 40.902691>,  <41.631359, 27.889832, 40.943665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.449146, 27.739100, 40.902691>,  <41.145462, 27.487879, 40.834400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449146, 27.739100, 40.902691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367878, 0.630498, -0.683475,
		-0.536900, 0.456097, 0.709728,
		0.759213, 0.628051, 0.170726,
		41.676910, 27.927515, 40.953907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902122, 28.246580, 40.642326>,  <41.145462, 27.487879, 40.834400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902122, 28.246580, 40.642326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.301384, 28.239653, 40.619053>,  <41.540943, 28.235497, 40.605087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.301384, 28.239653, 40.619053>,  <40.902122, 28.246580, 40.642326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301384, 28.239653, 40.619053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039348, 0.545300, -0.837317,
		0.046230, 0.838063, 0.543612,
		0.998156, -0.017319, -0.058186,
		41.600830, 28.234457, 40.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989002, 28.879459, 40.497261>,  <40.902122, 28.246580, 40.642326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989002, 28.879459, 40.497261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.303749, 28.662506, 40.379509>,  <41.492599, 28.532335, 40.308857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.303749, 28.662506, 40.379509>,  <40.989002, 28.879459, 40.497261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303749, 28.662506, 40.379509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077004, 0.386997, -0.918860,
		0.612296, 0.745692, 0.262750,
		0.786870, -0.542381, -0.294378,
		41.539810, 28.499792, 40.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374390, 29.286034, 40.103985>,  <40.989002, 28.879459, 40.497261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374390, 29.286034, 40.103985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.510632, 28.931005, 39.979912>,  <41.592377, 28.717989, 39.905468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.510632, 28.931005, 39.979912>,  <41.374390, 29.286034, 40.103985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510632, 28.931005, 39.979912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165643, 0.381390, -0.909453,
		0.925502, 0.258381, 0.276921,
		0.340600, -0.887570, -0.310178,
		41.612812, 28.664734, 39.886860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951225, 29.446096, 39.809528>,  <41.374390, 29.286034, 40.103985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951225, 29.446096, 39.809528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.824627, 29.094429, 39.667042>,  <41.748669, 28.883429, 39.581551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.824627, 29.094429, 39.667042>,  <41.951225, 29.446096, 39.809528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824627, 29.094429, 39.667042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151833, 0.323732, -0.933887,
		0.936365, -0.349653, 0.031029,
		-0.316491, -0.879170, -0.356221,
		41.729679, 28.830677, 39.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184063, 29.498814, 39.161983>,  <41.951225, 29.446096, 39.809528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184063, 29.498814, 39.161983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.983780, 29.152821, 39.148739>,  <41.863609, 28.945225, 39.140793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.983780, 29.152821, 39.148739>,  <42.184063, 29.498814, 39.161983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983780, 29.152821, 39.148739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151747, -0.050054, -0.987151,
		0.852213, -0.499296, 0.156321,
		-0.500705, -0.864984, -0.033110,
		41.833569, 28.893326, 39.138805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585392, 28.876768, 38.810574>,  <42.184063, 29.498814, 39.161983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585392, 28.876768, 38.810574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.188282, 28.835072, 38.786808>,  <41.950016, 28.810053, 38.772549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.188282, 28.835072, 38.786808>,  <42.585392, 28.876768, 38.810574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188282, 28.835072, 38.786808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058534, 0.011438, -0.998220,
		0.104740, -0.994486, -0.005254,
		-0.992775, -0.104246, -0.059409,
		41.890450, 28.803799, 38.768986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505409, 28.471712, 38.152882>,  <42.585392, 28.876768, 38.810574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505409, 28.471712, 38.152882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.136795, 28.613695, 38.215843>,  <41.915627, 28.698885, 38.253620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.136795, 28.613695, 38.215843>,  <42.505409, 28.471712, 38.152882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136795, 28.613695, 38.215843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056551, 0.278356, -0.958812,
		-0.384150, -0.892482, -0.236442,
		-0.921537, 0.354956, 0.157401,
		41.860332, 28.720182, 38.263065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101765, 28.220726, 37.591309>,  <42.505409, 28.471712, 38.152882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101765, 28.220726, 37.591309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.906986, 28.534710, 37.744526>,  <41.790119, 28.723101, 37.836456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.906986, 28.534710, 37.744526>,  <42.101765, 28.220726, 37.591309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906986, 28.534710, 37.744526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219353, 0.314589, -0.923536,
		-0.845437, -0.533737, 0.018994,
		-0.486951, 0.784958, 0.383042,
		41.760902, 28.770197, 37.859440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440193, 28.334332, 37.160923>,  <42.101765, 28.220726, 37.591309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440193, 28.334332, 37.160923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.497135, 28.695774, 37.322529>,  <41.531300, 28.912640, 37.419491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.497135, 28.695774, 37.322529>,  <41.440193, 28.334332, 37.160923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497135, 28.695774, 37.322529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399471, 0.425903, -0.811806,
		-0.905625, -0.045828, 0.421595,
		0.142355, 0.903607, 0.404016,
		41.539841, 28.966856, 37.443733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764484, 28.765652, 37.082283>,  <41.440193, 28.334332, 37.160923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764484, 28.765652, 37.082283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.060246, 29.031572, 37.124863>,  <41.237701, 29.191124, 37.150410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.060246, 29.031572, 37.124863>,  <40.764484, 28.765652, 37.082283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060246, 29.031572, 37.124863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263833, 0.431566, -0.862637,
		-0.619421, 0.609748, 0.494495,
		0.739398, 0.664800, 0.106449,
		41.282066, 29.231012, 37.156799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486443, 29.456539, 36.963203>,  <40.764484, 28.765652, 37.082283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486443, 29.456539, 36.963203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.880840, 29.512342, 36.926659>,  <41.117481, 29.545824, 36.904732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.880840, 29.512342, 36.926659>,  <40.486443, 29.456539, 36.963203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880840, 29.512342, 36.926659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159603, 0.630701, -0.759436,
		-0.048328, 0.763383, 0.644135,
		0.985998, 0.139508, -0.091358,
		41.176640, 29.554195, 36.899250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874363, 29.576550, 37.038925>,  <40.486443, 29.456539, 36.963203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874363, 29.576550, 37.038925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564289, 29.406782, 36.851749>,  <39.378246, 29.304922, 36.739445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.564289, 29.406782, 36.851749>,  <39.874363, 29.576550, 37.038925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564289, 29.406782, 36.851749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179291, -0.858056, 0.481242,
		-0.605764, 0.289153, 0.741243,
		-0.775180, -0.424418, -0.467937,
		39.331734, 29.279457, 36.711369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605618, 29.109961, 37.521484>,  <39.874363, 29.576550, 37.038925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605618, 29.109961, 37.521484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.457813, 28.993217, 37.168602>,  <39.369133, 28.923172, 36.956875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.457813, 28.993217, 37.168602>,  <39.605618, 29.109961, 37.521484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457813, 28.993217, 37.168602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149270, -0.955708, 0.253654,
		-0.917160, -0.037960, 0.396708,
		-0.369508, -0.291858, -0.882203,
		39.346962, 28.905661, 36.903942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087936, 28.721498, 37.751869>,  <39.605618, 29.109961, 37.521484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087936, 28.721498, 37.751869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.219975, 28.641884, 37.382778>,  <39.299194, 28.594116, 37.161324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.219975, 28.641884, 37.382778>,  <39.087936, 28.721498, 37.751869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219975, 28.641884, 37.382778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218442, -0.934877, 0.279799,
		-0.918326, -0.293921, -0.265118,
		0.330092, -0.199034, -0.922727,
		39.319000, 28.582174, 37.105961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814091, 28.039022, 37.632023>,  <39.087936, 28.721498, 37.751869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814091, 28.039022, 37.632023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.099903, 28.047066, 37.352295>,  <39.271389, 28.051891, 37.184460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.099903, 28.047066, 37.352295>,  <38.814091, 28.039022, 37.632023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099903, 28.047066, 37.352295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296166, -0.914294, 0.276318,
		-0.633825, -0.404551, -0.659245,
		0.714529, 0.020109, -0.699317,
		39.314262, 28.053099, 37.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828144, 27.328772, 37.436092>,  <38.814091, 28.039022, 37.632023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828144, 27.328772, 37.436092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.173271, 27.466017, 37.287598>,  <39.380348, 27.548363, 37.198502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.173271, 27.466017, 37.287598>,  <38.828144, 27.328772, 37.436092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173271, 27.466017, 37.287598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465179, -0.826352, 0.317412,
		-0.197864, -0.446560, -0.872602,
		0.862820, 0.343112, -0.371236,
		39.432117, 27.568951, 37.176228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038860, 26.793577, 36.955177>,  <38.828144, 27.328772, 37.436092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038860, 26.793577, 36.955177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348156, 27.008371, 37.090084>,  <39.533733, 27.137247, 37.171028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.348156, 27.008371, 37.090084>,  <39.038860, 26.793577, 36.955177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348156, 27.008371, 37.090084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469477, -0.842317, 0.264753,
		0.426251, -0.046380, -0.903415,
		0.773241, 0.536984, 0.337264,
		39.580128, 27.169466, 37.191261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716705, 26.583038, 36.608368>,  <39.038860, 26.793577, 36.955177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716705, 26.583038, 36.608368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.785805, 26.747950, 36.966179>,  <39.827263, 26.846897, 37.180866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.785805, 26.747950, 36.966179>,  <39.716705, 26.583038, 36.608368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785805, 26.747950, 36.966179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491025, -0.823331, 0.284640,
		0.853846, 0.390067, -0.344666,
		0.172746, 0.412279, 0.894531,
		39.837627, 26.871634, 37.234539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592075, 26.451727, 36.750858>,  <39.716705, 26.583038, 36.608368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592075, 26.451727, 36.750858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.400135, 26.571465, 37.080738>,  <40.284969, 26.643307, 37.278667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.400135, 26.571465, 37.080738>,  <40.592075, 26.451727, 36.750858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400135, 26.571465, 37.080738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426981, -0.741484, 0.517580,
		0.766437, 0.600495, 0.227990,
		-0.479855, 0.299345, 0.824701,
		40.256180, 26.661268, 37.328148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126808, 26.500877, 37.258442>,  <40.592075, 26.451727, 36.750858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126808, 26.500877, 37.258442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.779655, 26.474211, 37.455353>,  <40.571365, 26.458212, 37.573498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.779655, 26.474211, 37.455353>,  <41.126808, 26.500877, 37.258442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779655, 26.474211, 37.455353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451097, -0.520812, 0.724753,
		0.208067, 0.851065, 0.482076,
		-0.867882, -0.066665, 0.492277,
		40.519291, 26.454210, 37.603035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323193, 26.546413, 37.941582>,  <41.126808, 26.500877, 37.258442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323193, 26.546413, 37.941582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.968113, 26.363800, 37.917698>,  <40.755066, 26.254232, 37.903366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.968113, 26.363800, 37.917698>,  <41.323193, 26.546413, 37.941582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968113, 26.363800, 37.917698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246531, -0.580833, 0.775794,
		-0.388858, 0.673952, 0.628155,
		-0.887700, -0.456533, -0.059711,
		40.701801, 26.226841, 37.899784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068710, 26.459757, 38.577698>,  <41.323193, 26.546413, 37.941582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068710, 26.459757, 38.577698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853184, 26.179523, 38.390568>,  <40.723869, 26.011383, 38.278290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853184, 26.179523, 38.390568>,  <41.068710, 26.459757, 38.577698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853184, 26.179523, 38.390568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221478, -0.653602, 0.723707,
		-0.812788, 0.286333, 0.507335,
		-0.538817, -0.700584, -0.467824,
		40.691540, 25.969349, 38.250221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590389, 26.193304, 39.062454>,  <41.068710, 26.459757, 38.577698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590389, 26.193304, 39.062454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.618927, 25.904102, 38.787594>,  <40.636051, 25.730581, 38.622677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.618927, 25.904102, 38.787594>,  <40.590389, 26.193304, 39.062454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618927, 25.904102, 38.787594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096112, -0.680719, 0.726212,
		-0.992811, -0.117854, 0.020924,
		0.071344, -0.723002, -0.687152,
		40.640331, 25.687202, 38.581448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090332, 25.781542, 39.196243>,  <40.590389, 26.193304, 39.062454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090332, 25.781542, 39.196243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.345253, 25.566141, 38.975750>,  <40.498207, 25.436901, 38.843452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.345253, 25.566141, 38.975750>,  <40.090332, 25.781542, 39.196243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345253, 25.566141, 38.975750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131908, -0.780995, 0.610449,
		-0.759235, -0.316333, -0.568767,
		0.637309, -0.538499, -0.551232,
		40.536446, 25.404591, 38.810379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288490, 25.704412, 39.464767>,  <40.090332, 25.781542, 39.196243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288490, 25.704412, 39.464767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.441536, 25.899294, 39.150764>,  <39.533363, 26.016222, 38.962364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.441536, 25.899294, 39.150764>,  <39.288490, 25.704412, 39.464767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441536, 25.899294, 39.150764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721798, -0.372751, -0.583151,
		-0.576724, 0.789741, 0.209040,
		0.382619, 0.487202, -0.785008,
		39.556320, 26.045454, 38.915260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779007, 26.056850, 39.069782>,  <39.288490, 25.704412, 39.464767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779007, 26.056850, 39.069782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.877693, 26.090551, 39.455952>,  <38.936905, 26.110773, 39.687653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.877693, 26.090551, 39.455952>,  <38.779007, 26.056850, 39.069782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877693, 26.090551, 39.455952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671442, 0.733204, 0.107599,
		-0.698783, -0.674770, 0.237462,
		0.246713, 0.084253, 0.965419,
		38.951706, 26.115828, 39.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137344, 26.002285, 39.499096>,  <38.779007, 26.056850, 39.069782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137344, 26.002285, 39.499096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.396729, 26.203236, 39.727875>,  <38.552357, 26.323807, 39.865143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.396729, 26.203236, 39.727875>,  <38.137344, 26.002285, 39.499096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396729, 26.203236, 39.727875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651321, 0.755064, 0.075227,
		-0.394061, -0.421300, 0.816836,
		0.648457, 0.502379, 0.571943,
		38.591267, 26.353949, 39.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761269, 26.202883, 40.044170>,  <38.137344, 26.002285, 39.499096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761269, 26.202883, 40.044170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046204, 26.482880, 40.064507>,  <38.217163, 26.650879, 40.076710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046204, 26.482880, 40.064507>,  <37.761269, 26.202883, 40.044170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046204, 26.482880, 40.064507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679240, 0.669356, 0.300992,
		0.176662, -0.248942, 0.952270,
		0.712337, 0.699993, 0.050842,
		38.259903, 26.692877, 40.079758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550816, 26.595667, 40.628738>,  <37.761269, 26.202883, 40.044170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550816, 26.595667, 40.628738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781063, 26.816673, 40.387611>,  <37.919212, 26.949276, 40.242935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.781063, 26.816673, 40.387611>,  <37.550816, 26.595667, 40.628738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781063, 26.816673, 40.387611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507999, 0.819303, 0.265857,
		0.640781, 0.153199, 0.752283,
		0.575619, 0.552515, -0.602819,
		37.953747, 26.982428, 40.206764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665855, 27.237654, 40.861027>,  <37.550816, 26.595667, 40.628738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665855, 27.237654, 40.861027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.735954, 27.308735, 40.473686>,  <37.778011, 27.351383, 40.241280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.735954, 27.308735, 40.473686>,  <37.665855, 27.237654, 40.861027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735954, 27.308735, 40.473686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604086, 0.796071, 0.036763,
		0.777412, 0.578527, 0.246854,
		0.175245, 0.177701, -0.968355,
		37.788528, 27.362045, 40.183178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820911, 27.973446, 40.835732>,  <37.665855, 27.237654, 40.861027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820911, 27.973446, 40.835732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.703365, 27.851898, 40.473228>,  <37.632839, 27.778969, 40.255726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.703365, 27.851898, 40.473228>,  <37.820911, 27.973446, 40.835732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703365, 27.851898, 40.473228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770173, 0.636806, 0.036212,
		0.566108, 0.708618, -0.421167,
		-0.293862, -0.303872, -0.906260,
		37.615208, 27.760736, 40.201351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662075, 28.593849, 40.425179>,  <37.820911, 27.973446, 40.835732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662075, 28.593849, 40.425179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.472919, 28.294491, 40.239155>,  <37.359425, 28.114876, 40.127541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.472919, 28.294491, 40.239155>,  <37.662075, 28.593849, 40.425179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472919, 28.294491, 40.239155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817246, 0.569837, -0.085997,
		0.329366, 0.339399, -0.881094,
		-0.472892, -0.748395, -0.465057,
		37.331051, 28.069973, 40.099636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122597, 29.084858, 40.239845>,  <37.662075, 28.593849, 40.425179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122597, 29.084858, 40.239845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.085938, 29.255987, 40.599525>,  <38.063942, 29.358665, 40.815334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.085938, 29.255987, 40.599525>,  <38.122597, 29.084858, 40.239845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085938, 29.255987, 40.599525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445880, -0.789792, 0.421213,
		0.890388, 0.439541, -0.118374,
		-0.091649, 0.427824, 0.899204,
		38.058441, 29.384335, 40.869286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828819, 29.105881, 40.545071>,  <38.122597, 29.084858, 40.239845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828819, 29.105881, 40.545071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549797, 29.141232, 40.829494>,  <38.382385, 29.162443, 41.000149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549797, 29.141232, 40.829494>,  <38.828819, 29.105881, 40.545071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549797, 29.141232, 40.829494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466254, -0.697544, 0.544095,
		0.544082, 0.711071, 0.445368,
		-0.697554, 0.088378, 0.711061,
		38.340530, 29.167746, 41.042812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181137, 29.315695, 41.212021>,  <38.828819, 29.105881, 40.545071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181137, 29.315695, 41.212021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.833286, 29.154268, 41.325783>,  <38.624577, 29.057411, 41.394039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.833286, 29.154268, 41.325783>,  <39.181137, 29.315695, 41.212021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833286, 29.154268, 41.325783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457704, -0.443016, 0.770873,
		-0.185101, 0.800544, 0.569971,
		-0.869624, -0.403567, 0.284409,
		38.572399, 29.033197, 41.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170441, 29.399841, 41.902325>,  <39.181137, 29.315695, 41.212021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170441, 29.399841, 41.902325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871021, 29.137510, 41.863194>,  <38.691368, 28.980112, 41.839714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871021, 29.137510, 41.863194>,  <39.170441, 29.399841, 41.902325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871021, 29.137510, 41.863194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397798, -0.562191, 0.725051,
		-0.530503, 0.503820, 0.681712,
		-0.748548, -0.655825, -0.097825,
		38.646458, 28.940763, 41.833847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893906, 29.289799, 42.673935>,  <39.170441, 29.399841, 41.902325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893906, 29.289799, 42.673935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792492, 28.952471, 42.484398>,  <38.731644, 28.750074, 42.370674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792492, 28.952471, 42.484398>,  <38.893906, 29.289799, 42.673935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792492, 28.952471, 42.484398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185249, -0.523112, 0.831887,
		-0.949422, 0.123136, 0.288853,
		-0.253538, -0.843322, -0.473843,
		38.716431, 28.699474, 42.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485386, 28.908575, 43.231335>,  <38.893906, 29.289799, 42.673935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485386, 28.908575, 43.231335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596741, 28.670845, 42.929531>,  <38.663555, 28.528208, 42.748451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.596741, 28.670845, 42.929531>,  <38.485386, 28.908575, 43.231335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596741, 28.670845, 42.929531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348648, -0.669445, 0.655963,
		-0.894955, -0.445669, 0.020844,
		0.278389, -0.594324, -0.754505,
		38.680256, 28.492548, 42.703178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277214, 28.272482, 43.513718>,  <38.485386, 28.908575, 43.231335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277214, 28.272482, 43.513718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543705, 28.218412, 43.220360>,  <38.703598, 28.185970, 43.044346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543705, 28.218412, 43.220360>,  <38.277214, 28.272482, 43.513718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543705, 28.218412, 43.220360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447109, -0.714683, 0.537886,
		-0.596853, -0.686262, -0.415705,
		0.666229, -0.135174, -0.733395,
		38.743572, 28.177860, 43.000343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271137, 27.519360, 43.459663>,  <38.277214, 28.272482, 43.513718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271137, 27.519360, 43.459663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614960, 27.620768, 43.282173>,  <38.821255, 27.681612, 43.175678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614960, 27.620768, 43.282173>,  <38.271137, 27.519360, 43.459663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614960, 27.620768, 43.282173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460087, -0.761847, 0.455970,
		-0.222453, -0.596084, -0.771492,
		0.859555, 0.253522, -0.443725,
		38.872826, 27.696823, 43.149055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498764, 26.932730, 43.220242>,  <38.271137, 27.519360, 43.459663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498764, 26.932730, 43.220242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.816643, 27.174942, 43.237198>,  <39.007370, 27.320269, 43.247372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.816643, 27.174942, 43.237198>,  <38.498764, 26.932730, 43.220242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816643, 27.174942, 43.237198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551859, -0.749807, 0.365023,
		0.252816, -0.266688, -0.930033,
		0.794692, 0.605531, 0.042389,
		39.055050, 27.356602, 43.249916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.028915, 38.937424, 32.495407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388874, 38.988846, 32.662098>,  <35.604847, 39.019699, 32.762112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388874, 38.988846, 32.662098>,  <35.028915, 38.937424, 32.495407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388874, 38.988846, 32.662098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303997, -0.500236, 0.810771,
		0.312695, -0.856293, -0.411078,
		0.899893, 0.128557, 0.416731,
		35.658844, 39.027412, 32.787117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275879, 38.272038, 32.625092>,  <35.028915, 38.937424, 32.495407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275879, 38.272038, 32.625092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507317, 38.487686, 32.869904>,  <35.646179, 38.617073, 33.016792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507317, 38.487686, 32.869904>,  <35.275879, 38.272038, 32.625092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507317, 38.487686, 32.869904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144064, -0.671038, 0.727292,
		0.802792, -0.508978, -0.310591,
		0.578594, 0.539119, 0.612029,
		35.680893, 38.649422, 33.053513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750832, 37.868153, 32.920280>,  <35.275879, 38.272038, 32.625092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750832, 37.868153, 32.920280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739922, 38.170849, 33.181538>,  <35.733376, 38.352467, 33.338291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739922, 38.170849, 33.181538>,  <35.750832, 37.868153, 32.920280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739922, 38.170849, 33.181538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069672, -0.653241, 0.753938,
		0.997197, -0.024939, 0.070543,
		-0.027279, 0.756740, 0.653147,
		35.731739, 38.397869, 33.377483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215069, 37.674953, 33.361958>,  <35.750832, 37.868153, 32.920280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215069, 37.674953, 33.361958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000160, 37.947399, 33.560921>,  <35.871216, 38.110867, 33.680298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000160, 37.947399, 33.560921>,  <36.215069, 37.674953, 33.361958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000160, 37.947399, 33.560921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156908, -0.498746, 0.852427,
		0.828683, 0.536036, 0.161091,
		-0.537275, 0.681115, 0.497411,
		35.838978, 38.151733, 33.710144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625664, 37.883801, 33.887756>,  <36.215069, 37.674953, 33.361958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625664, 37.883801, 33.887756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249222, 37.965565, 33.995483>,  <36.023357, 38.014622, 34.060120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249222, 37.965565, 33.995483>,  <36.625664, 37.883801, 33.887756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249222, 37.965565, 33.995483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105216, -0.579949, 0.807830,
		0.321320, 0.788591, 0.524287,
		-0.941107, 0.204409, 0.269322,
		35.966888, 38.026886, 34.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588703, 37.970768, 34.677212>,  <36.625664, 37.883801, 33.887756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588703, 37.970768, 34.677212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198769, 37.929081, 34.598381>,  <35.964809, 37.904068, 34.551083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198769, 37.929081, 34.598381>,  <36.588703, 37.970768, 34.677212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198769, 37.929081, 34.598381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088521, -0.630381, 0.771222,
		-0.204605, 0.769259, 0.605291,
		-0.974834, -0.104215, -0.197075,
		35.906319, 37.897816, 34.539257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179012, 38.059662, 35.304646>,  <36.588703, 37.970768, 34.677212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179012, 38.059662, 35.304646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924721, 37.866764, 35.063553>,  <35.772144, 37.751026, 34.918896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924721, 37.866764, 35.063553>,  <36.179012, 38.059662, 35.304646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924721, 37.866764, 35.063553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150261, -0.688586, 0.709416,
		-0.757145, 0.541565, 0.365293,
		-0.635731, -0.482241, -0.602735,
		35.734001, 37.722092, 34.882732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637554, 37.782314, 35.815563>,  <36.179012, 38.059662, 35.304646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637554, 37.782314, 35.815563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596428, 37.572952, 35.477222>,  <35.571751, 37.447334, 35.274216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596428, 37.572952, 35.477222>,  <35.637554, 37.782314, 35.815563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596428, 37.572952, 35.477222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489187, -0.713814, 0.501165,
		-0.866097, 0.465311, -0.182651,
		-0.102819, -0.523408, -0.845856,
		35.565582, 37.415932, 35.223465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899025, 37.477371, 35.939167>,  <35.637554, 37.782314, 35.815563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899025, 37.477371, 35.939167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090416, 37.248497, 35.672737>,  <35.205250, 37.111172, 35.512878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090416, 37.248497, 35.672737>,  <34.899025, 37.477371, 35.939167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090416, 37.248497, 35.672737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283682, -0.818596, 0.499425,
		-0.831015, -0.050008, -0.553998,
		0.478476, -0.572189, -0.666079,
		35.233959, 37.076839, 35.472916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560925, 36.852543, 35.961613>,  <34.899025, 37.477371, 35.939167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560925, 36.852543, 35.961613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918076, 36.770676, 35.801170>,  <35.132366, 36.721558, 35.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918076, 36.770676, 35.801170>,  <34.560925, 36.852543, 35.961613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918076, 36.770676, 35.801170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061199, -0.827329, 0.558374,
		-0.446129, -0.523105, -0.726174,
		0.892874, -0.204666, -0.401109,
		35.185936, 36.709274, 35.680836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503174, 36.136799, 35.831707>,  <34.560925, 36.852543, 35.961613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503174, 36.136799, 35.831707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889324, 36.240726, 35.822414>,  <35.121014, 36.303085, 35.816837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889324, 36.240726, 35.822414>,  <34.503174, 36.136799, 35.831707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889324, 36.240726, 35.822414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236266, -0.833143, 0.500051,
		0.110570, -0.488226, -0.865685,
		0.965377, 0.259822, -0.023230,
		35.178936, 36.318672, 35.815445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775627, 35.463245, 35.599037>,  <34.503174, 36.136799, 35.831707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775627, 35.463245, 35.599037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047508, 35.699657, 35.772789>,  <35.210636, 35.841507, 35.877041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047508, 35.699657, 35.772789>,  <34.775627, 35.463245, 35.599037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047508, 35.699657, 35.772789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180105, -0.708561, 0.682279,
		0.711030, -0.385514, -0.588060,
		0.679704, 0.591034, 0.434375,
		35.251419, 35.876968, 35.903103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541988, 34.842384, 35.233784>,  <34.775627, 35.463245, 35.599037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541988, 34.842384, 35.233784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228161, 34.620831, 35.345257>,  <34.039864, 34.487900, 35.412140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228161, 34.620831, 35.345257>,  <34.541988, 34.842384, 35.233784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228161, 34.620831, 35.345257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614505, 0.634694, -0.468558,
		0.082648, -0.538869, -0.838326,
		-0.784572, -0.553880, 0.278682,
		33.992790, 34.454666, 35.428860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214993, 34.627914, 34.651756>,  <34.541988, 34.842384, 35.233784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214993, 34.627914, 34.651756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927429, 34.636898, 34.929653>,  <33.754890, 34.642288, 35.096394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927429, 34.636898, 34.929653>,  <34.214993, 34.627914, 34.651756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927429, 34.636898, 34.929653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538506, 0.613995, -0.577080,
		-0.439530, -0.788990, -0.429311,
		-0.718905, 0.022457, 0.694745,
		33.711758, 34.643635, 35.138077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500286, 34.309803, 34.470245>,  <34.214993, 34.627914, 34.651756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500286, 34.309803, 34.470245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414650, 34.538212, 34.787258>,  <33.363270, 34.675259, 34.977467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414650, 34.538212, 34.787258>,  <33.500286, 34.309803, 34.470245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414650, 34.538212, 34.787258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842071, 0.303308, -0.446004,
		-0.495058, -0.762850, 0.415906,
		-0.214087, 0.571021, 0.792529,
		33.350426, 34.709518, 35.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784809, 34.213890, 34.639507>,  <33.500286, 34.309803, 34.470245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784809, 34.213890, 34.639507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895653, 34.556084, 34.814484>,  <32.962158, 34.761402, 34.919468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895653, 34.556084, 34.814484>,  <32.784809, 34.213890, 34.639507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895653, 34.556084, 34.814484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802715, 0.456333, -0.383937,
		-0.528072, -0.244747, 0.813166,
		0.277107, 0.855487, 0.437439,
		32.978786, 34.812729, 34.945717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136230, 34.501431, 34.671337>,  <32.784809, 34.213890, 34.639507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136230, 34.501431, 34.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412582, 34.785683, 34.724548>,  <32.578392, 34.956234, 34.756477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412582, 34.785683, 34.724548>,  <32.136230, 34.501431, 34.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412582, 34.785683, 34.724548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610044, 0.671756, -0.420226,
		-0.387988, 0.209171, 0.897615,
		0.690878, 0.710627, 0.133030,
		32.619846, 34.998871, 34.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844219, 35.195274, 34.905258>,  <32.136230, 34.501431, 34.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844219, 35.195274, 34.905258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186321, 35.313728, 34.735153>,  <32.391582, 35.384800, 34.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186321, 35.313728, 34.735153>,  <31.844219, 35.195274, 34.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186321, 35.313728, 34.735153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445750, 0.838927, -0.312264,
		0.264290, 0.456624, 0.849497,
		0.855253, 0.296135, -0.425260,
		32.442898, 35.402569, 34.607574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942305, 35.847668, 35.106205>,  <31.844219, 35.195274, 34.905258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942305, 35.847668, 35.106205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147430, 35.801994, 34.765858>,  <32.270508, 35.774590, 34.561649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147430, 35.801994, 34.765858>,  <31.942305, 35.847668, 35.106205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147430, 35.801994, 34.765858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468551, 0.793256, -0.388850,
		0.719360, 0.598085, 0.353292,
		0.512816, -0.114188, -0.850871,
		32.301273, 35.767738, 34.510597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113335, 36.530293, 34.820896>,  <31.942305, 35.847668, 35.106205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113335, 36.530293, 34.820896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180405, 36.280170, 34.516033>,  <32.220646, 36.130096, 34.333115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180405, 36.280170, 34.516033>,  <32.113335, 36.530293, 34.820896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180405, 36.280170, 34.516033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415044, 0.656470, -0.629909,
		0.894217, 0.421946, -0.149457,
		0.167673, -0.625307, -0.762153,
		32.230705, 36.092579, 34.287388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329704, 37.025471, 34.327320>,  <32.113335, 36.530293, 34.820896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329704, 37.025471, 34.327320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240334, 36.688793, 34.130699>,  <32.186710, 36.486786, 34.012726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240334, 36.688793, 34.130699>,  <32.329704, 37.025471, 34.327320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240334, 36.688793, 34.130699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426840, 0.537865, -0.726986,
		0.876292, 0.047385, -0.479445,
		-0.223429, -0.841698, -0.491552,
		32.173306, 36.436283, 33.983234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722481, 36.994164, 33.628838>,  <32.329704, 37.025471, 34.327320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722481, 36.994164, 33.628838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385555, 36.779270, 33.611446>,  <32.183399, 36.650333, 33.601013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385555, 36.779270, 33.611446>,  <32.722481, 36.994164, 33.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385555, 36.779270, 33.611446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380320, 0.649577, -0.658336,
		0.381918, -0.537991, -0.751468,
		-0.842315, -0.537229, -0.043476,
		32.132862, 36.618103, 33.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566372, 36.940716, 32.907715>,  <32.722481, 36.994164, 33.628838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566372, 36.940716, 32.907715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219967, 36.842949, 33.082203>,  <32.012123, 36.784290, 33.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219967, 36.842949, 33.082203>,  <32.566372, 36.940716, 32.907715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219967, 36.842949, 33.082203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487905, 0.603981, -0.630203,
		-0.109437, -0.758596, -0.642304,
		-0.866009, -0.244416, 0.436221,
		31.960165, 36.769623, 33.213070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061253, 36.574890, 32.527054>,  <32.566372, 36.940716, 32.907715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061253, 36.574890, 32.527054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853588, 36.799294, 32.784966>,  <31.728989, 36.933933, 32.939713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853588, 36.799294, 32.784966>,  <32.061253, 36.574890, 32.527054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853588, 36.799294, 32.784966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378700, 0.525323, -0.761986,
		-0.766197, -0.639773, -0.060275,
		-0.519162, 0.561005, 0.644783,
		31.697840, 36.967594, 32.978401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398539, 36.852230, 32.227108>,  <32.061253, 36.574890, 32.527054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398539, 36.852230, 32.227108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472250, 37.091896, 32.538757>,  <31.516476, 37.235695, 32.725746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472250, 37.091896, 32.538757>,  <31.398539, 36.852230, 32.227108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472250, 37.091896, 32.538757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149008, 0.800571, -0.580416,
		-0.971513, -0.009139, 0.236808,
		0.184277, 0.599169, 0.779127,
		31.527533, 37.271648, 32.772495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963093, 36.411972, 31.755253>,  <31.398539, 36.852230, 32.227108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963093, 36.411972, 31.755253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743563, 36.146542, 31.958607>,  <31.611845, 35.987282, 32.080620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743563, 36.146542, 31.958607>,  <31.963093, 36.411972, 31.755253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743563, 36.146542, 31.958607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109457, -0.659972, -0.743274,
		0.828741, -0.352280, 0.434842,
		-0.548824, -0.663578, 0.508386,
		31.578915, 35.947468, 32.111122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696480, 36.556904, 31.547510>,  <31.963093, 36.411972, 31.755253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696480, 36.556904, 31.547510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827065, 36.860645, 31.322371>,  <32.905415, 37.042892, 31.187286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827065, 36.860645, 31.322371>,  <32.696480, 36.556904, 31.547510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827065, 36.860645, 31.322371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821962, 0.065937, 0.565713,
		0.466691, -0.647324, -0.602636,
		0.326463, 0.759357, -0.562848,
		32.925003, 37.088451, 31.153517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482849, 36.309578, 31.354900>,  <32.696480, 36.556904, 31.547510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482849, 36.309578, 31.354900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427708, 36.705467, 31.339716>,  <33.394623, 36.943001, 31.330605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427708, 36.705467, 31.339716>,  <33.482849, 36.309578, 31.354900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427708, 36.705467, 31.339716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718726, 0.126330, 0.683720,
		0.681491, 0.066968, -0.728756,
		-0.137851, 0.989725, -0.037962,
		33.386353, 37.002384, 31.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238464, 36.284943, 31.267603>,  <33.482849, 36.309578, 31.354900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238464, 36.284943, 31.267603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563347, 36.504997, 31.345245>,  <34.758278, 36.637028, 31.391830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563347, 36.504997, 31.345245>,  <34.238464, 36.284943, 31.267603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563347, 36.504997, 31.345245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284093, -0.663607, 0.692038,
		0.509524, -0.506932, -0.695274,
		0.812205, 0.550132, 0.194108,
		34.807007, 36.670036, 31.403477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749222, 35.756229, 31.227606>,  <34.238464, 36.284943, 31.267603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749222, 35.756229, 31.227606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841125, 36.070877, 31.456844>,  <34.896267, 36.259666, 31.594387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841125, 36.070877, 31.456844>,  <34.749222, 35.756229, 31.227606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841125, 36.070877, 31.456844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160834, -0.611443, 0.774771,
		0.959866, -0.085839, -0.267001,
		0.229762, 0.786619, 0.573098,
		34.910053, 36.306862, 31.628773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282856, 35.490479, 31.663708>,  <34.749222, 35.756229, 31.227606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282856, 35.490479, 31.663708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191372, 35.833965, 31.847143>,  <35.136482, 36.040058, 31.957205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191372, 35.833965, 31.847143>,  <35.282856, 35.490479, 31.663708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191372, 35.833965, 31.847143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273753, -0.395333, 0.876796,
		0.934211, 0.326072, -0.144659,
		-0.228710, 0.858714, 0.458587,
		35.122757, 36.091579, 31.984720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850262, 35.699551, 32.032520>,  <35.282856, 35.490479, 31.663708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850262, 35.699551, 32.032520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564358, 35.900051, 32.227612>,  <35.392815, 36.020351, 32.344666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564358, 35.900051, 32.227612>,  <35.850262, 35.699551, 32.032520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564358, 35.900051, 32.227612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214801, -0.506331, 0.835158,
		0.665572, 0.701697, 0.254235,
		-0.714755, 0.501248, 0.487725,
		35.349930, 36.050426, 32.373928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193481, 35.849499, 32.593933>,  <35.850262, 35.699551, 32.032520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193481, 35.849499, 32.593933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799908, 35.873276, 32.661274>,  <35.563763, 35.887543, 32.701679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799908, 35.873276, 32.661274>,  <36.193481, 35.849499, 32.593933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799908, 35.873276, 32.661274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113786, -0.517863, 0.847862,
		0.137582, 0.853396, 0.502779,
		-0.983933, 0.059441, 0.168353,
		35.504726, 35.891109, 32.711781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098099, 36.028484, 33.344437>,  <36.193481, 35.849499, 32.593933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098099, 36.028484, 33.344437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750454, 35.868420, 33.228153>,  <35.541866, 35.772381, 33.158382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750454, 35.868420, 33.228153>,  <36.098099, 36.028484, 33.344437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750454, 35.868420, 33.228153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041316, -0.644426, 0.763550,
		-0.492881, 0.651602, 0.576613,
		-0.869115, -0.400163, -0.290704,
		35.489719, 35.748371, 33.140942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735455, 36.023746, 33.941097>,  <36.098099, 36.028484, 33.344437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735455, 36.023746, 33.941097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572197, 35.746239, 33.703747>,  <35.474243, 35.579735, 33.561337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572197, 35.746239, 33.703747>,  <35.735455, 36.023746, 33.941097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572197, 35.746239, 33.703747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146606, -0.691356, 0.707484,
		-0.901067, 0.201765, 0.383886,
		-0.408148, -0.693771, -0.593378,
		35.449753, 35.538109, 33.525734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380131, 35.472034, 34.328671>,  <35.735455, 36.023746, 33.941097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380131, 35.472034, 34.328671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413364, 35.238426, 34.005680>,  <35.433304, 35.098263, 33.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413364, 35.238426, 34.005680>,  <35.380131, 35.472034, 34.328671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413364, 35.238426, 34.005680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227578, -0.777747, 0.585934,
		-0.970209, -0.232447, 0.068290,
		0.083087, -0.584019, -0.807476,
		35.438290, 35.063221, 33.763435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215176, 34.692554, 34.587643>,  <35.380131, 35.472034, 34.328671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215176, 34.692554, 34.587643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380016, 34.689919, 34.223198>,  <35.478920, 34.688335, 34.004532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380016, 34.689919, 34.223198>,  <35.215176, 34.692554, 34.587643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380016, 34.689919, 34.223198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340239, -0.926524, 0.160595,
		-0.845228, -0.376178, -0.379579,
		0.412101, -0.006591, -0.911114,
		35.503647, 34.687943, 33.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042110, 33.989075, 34.274017>,  <35.215176, 34.692554, 34.587643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042110, 33.989075, 34.274017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373001, 34.127853, 34.097240>,  <35.571537, 34.211121, 33.991173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373001, 34.127853, 34.097240>,  <35.042110, 33.989075, 34.274017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373001, 34.127853, 34.097240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421155, -0.903542, 0.078991,
		-0.371912, -0.251471, -0.893557,
		0.827231, 0.346948, -0.441946,
		35.621170, 34.231937, 33.964657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246330, 33.494717, 33.889999>,  <35.042110, 33.989075, 34.274017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246330, 33.494717, 33.889999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564022, 33.729874, 33.951408>,  <35.754639, 33.870968, 33.988255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564022, 33.729874, 33.951408>,  <35.246330, 33.494717, 33.889999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564022, 33.729874, 33.951408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606203, -0.783884, -0.134329,
		0.041375, 0.199756, -0.978972,
		0.794233, 0.587897, 0.153526,
		35.802292, 33.906242, 33.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764938, 33.297100, 33.486546>,  <35.246330, 33.494717, 33.889999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764938, 33.297100, 33.486546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973999, 33.473221, 33.778564>,  <36.099434, 33.578892, 33.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973999, 33.473221, 33.778564>,  <35.764938, 33.297100, 33.486546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973999, 33.473221, 33.778564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555718, -0.825344, 0.099925,
		0.646540, 0.353477, -0.676048,
		0.522651, 0.440297, 0.730051,
		36.130795, 33.605309, 33.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488014, 33.127468, 33.317867>,  <35.764938, 33.297100, 33.486546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488014, 33.127468, 33.317867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533669, 33.285393, 33.682526>,  <36.561062, 33.380150, 33.901321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533669, 33.285393, 33.682526>,  <36.488014, 33.127468, 33.317867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533669, 33.285393, 33.682526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700781, -0.682436, 0.207815,
		0.704186, 0.615144, -0.354570,
		0.114135, 0.394816, 0.911643,
		36.567909, 33.403839, 33.956020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232395, 33.138821, 33.496204>,  <36.488014, 33.127468, 33.317867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232395, 33.138821, 33.496204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036976, 33.137699, 33.845215>,  <36.919724, 33.137028, 34.054623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036976, 33.137699, 33.845215>,  <37.232395, 33.138821, 33.496204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036976, 33.137699, 33.845215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629920, -0.693083, 0.350481,
		0.603754, 0.720852, 0.340372,
		-0.488551, -0.002803, 0.872531,
		36.890411, 33.136860, 34.106976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715248, 33.019485, 33.911785>,  <37.232395, 33.138821, 33.496204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715248, 33.019485, 33.911785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398094, 32.980656, 34.152420>,  <37.207802, 32.957355, 34.296799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398094, 32.980656, 34.152420>,  <37.715248, 33.019485, 33.911785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398094, 32.980656, 34.152420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504241, -0.658841, 0.558274,
		0.342151, 0.745992, 0.571339,
		-0.792890, -0.097078, 0.601583,
		37.160229, 32.951530, 34.332893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867130, 33.208851, 34.543232>,  <37.715248, 33.019485, 33.911785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867130, 33.208851, 34.543232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572483, 32.946968, 34.611065>,  <37.395695, 32.789841, 34.651764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572483, 32.946968, 34.611065>,  <37.867130, 33.208851, 34.543232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572483, 32.946968, 34.611065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591030, -0.501281, 0.631982,
		-0.328753, 0.565757, 0.756201,
		-0.736618, -0.654703, 0.169581,
		37.351498, 32.750557, 34.661938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951855, 33.031864, 35.255268>,  <37.867130, 33.208851, 34.543232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951855, 33.031864, 35.255268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710068, 32.737808, 35.132511>,  <37.564995, 32.561375, 35.058857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710068, 32.737808, 35.132511>,  <37.951855, 33.031864, 35.255268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710068, 32.737808, 35.132511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657480, -0.677904, 0.328887,
		-0.449821, -0.002974, 0.893113,
		-0.604467, -0.735144, -0.306891,
		37.528728, 32.517265, 35.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845776, 32.624401, 35.857632>,  <37.951855, 33.031864, 35.255268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845776, 32.624401, 35.857632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775856, 32.406754, 35.529392>,  <37.733906, 32.276165, 35.332451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775856, 32.406754, 35.529392>,  <37.845776, 32.624401, 35.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775856, 32.406754, 35.529392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559744, -0.740564, 0.371823,
		-0.810020, -0.394330, 0.434018,
		-0.174797, -0.544123, -0.820595,
		37.723415, 32.243515, 35.283215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653130, 31.981485, 36.143787>,  <37.845776, 32.624401, 35.857632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653130, 31.981485, 36.143787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778023, 31.896208, 35.773479>,  <37.852959, 31.845041, 35.551292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778023, 31.896208, 35.773479>,  <37.653130, 31.981485, 36.143787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778023, 31.896208, 35.773479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379070, -0.865596, 0.327185,
		-0.871102, -0.453091, -0.189448,
		0.312230, -0.213197, -0.925775,
		37.871693, 31.832249, 35.495747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496639, 31.256422, 36.054085>,  <37.653130, 31.981485, 36.143787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496639, 31.256422, 36.054085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748810, 31.332890, 35.753151>,  <37.900112, 31.378769, 35.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748810, 31.332890, 35.753151>,  <37.496639, 31.256422, 36.054085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748810, 31.332890, 35.753151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520852, -0.822807, 0.227380,
		-0.575561, -0.535204, -0.618293,
		0.630431, 0.191168, -0.752338,
		37.937939, 31.390240, 35.527451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503422, 30.634117, 35.726940>,  <37.496639, 31.256422, 36.054085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503422, 30.634117, 35.726940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836948, 30.831127, 35.627205>,  <38.037064, 30.949333, 35.567364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836948, 30.831127, 35.627205>,  <37.503422, 30.634117, 35.726940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836948, 30.831127, 35.627205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548457, -0.790491, 0.272615,
		-0.062831, -0.364062, -0.929253,
		0.833815, 0.492527, -0.249340,
		38.087093, 30.978886, 35.552402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763783, 30.256197, 35.144989>,  <37.503422, 30.634117, 35.726940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763783, 30.256197, 35.144989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053791, 30.475416, 35.311832>,  <38.227798, 30.606947, 35.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053791, 30.475416, 35.311832>,  <37.763783, 30.256197, 35.144989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053791, 30.475416, 35.311832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474957, -0.836446, 0.273446,
		0.498753, -0.000145, -0.866744,
		0.725025, 0.548049, 0.417111,
		38.271297, 30.639832, 35.436966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389145, 29.956501, 34.885639>,  <37.763783, 30.256197, 35.144989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389145, 29.956501, 34.885639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463371, 30.134884, 35.235882>,  <38.507908, 30.241913, 35.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463371, 30.134884, 35.235882>,  <38.389145, 29.956501, 34.885639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463371, 30.134884, 35.235882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487871, -0.815309, 0.311852,
		0.852964, 0.369317, -0.368859,
		0.185562, 0.445955, 0.875609,
		38.519039, 30.268671, 35.498566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095661, 29.767965, 35.089859>,  <38.389145, 29.956501, 34.885639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095661, 29.767965, 35.089859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925919, 29.886974, 35.431946>,  <38.824074, 29.958380, 35.637199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925919, 29.886974, 35.431946>,  <39.095661, 29.767965, 35.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925919, 29.886974, 35.431946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420880, -0.771443, 0.477217,
		0.801735, 0.562456, 0.202149,
		-0.424360, 0.297521, 0.855219,
		38.798611, 29.976231, 35.688511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667450, 29.730997, 35.565830>,  <39.095661, 29.767965, 35.089859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667450, 29.730997, 35.565830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360165, 29.761864, 35.820042>,  <39.175793, 29.780384, 35.972569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360165, 29.761864, 35.820042>,  <39.667450, 29.730997, 35.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360165, 29.761864, 35.820042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425719, -0.679836, 0.597149,
		0.478136, 0.729293, 0.489406,
		-0.768212, 0.077169, 0.635527,
		39.129700, 29.785015, 36.010700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937149, 29.789011, 36.228012>,  <39.667450, 29.730997, 35.565830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937149, 29.789011, 36.228012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563515, 29.656399, 36.281036>,  <39.339333, 29.576832, 36.312851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563515, 29.656399, 36.281036>,  <39.937149, 29.789011, 36.228012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563515, 29.656399, 36.281036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346718, -0.753577, 0.558488,
		-0.085261, 0.567636, 0.818853,
		-0.934086, -0.331528, 0.132560,
		39.283287, 29.556940, 36.320805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500050, 30.201914, 36.700817>,  <39.937149, 29.789011, 36.228012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500050, 30.201914, 36.700817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851521, 30.029505, 36.618698>,  <41.062405, 29.926060, 36.569427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851521, 30.029505, 36.618698>,  <40.500050, 30.201914, 36.700817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851521, 30.029505, 36.618698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073616, 0.547195, -0.833762,
		0.471706, 0.717494, 0.512538,
		0.878677, -0.431022, -0.205296,
		41.115124, 29.900198, 36.557110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957947, 30.716007, 36.491573>,  <40.500050, 30.201914, 36.700817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957947, 30.716007, 36.491573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117783, 30.380209, 36.344292>,  <41.213684, 30.178730, 36.255924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117783, 30.380209, 36.344292>,  <40.957947, 30.716007, 36.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117783, 30.380209, 36.344292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089137, 0.435348, -0.895839,
		0.912348, 0.325151, 0.248792,
		0.399594, -0.839494, -0.368206,
		41.237659, 30.128361, 36.233829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550903, 30.941679, 36.080738>,  <40.957947, 30.716007, 36.491573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550903, 30.941679, 36.080738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495419, 30.570221, 35.943111>,  <41.462128, 30.347347, 35.860535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495419, 30.570221, 35.943111>,  <41.550903, 30.941679, 36.080738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495419, 30.570221, 35.943111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170159, 0.319908, -0.932043,
		0.975605, -0.187829, 0.113642,
		-0.138709, -0.928644, -0.344065,
		41.453804, 30.291628, 35.839893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922714, 30.822582, 35.538239>,  <41.550903, 30.941679, 36.080738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922714, 30.822582, 35.538239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635006, 30.548260, 35.493843>,  <41.462379, 30.383665, 35.467205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635006, 30.548260, 35.493843>,  <41.922714, 30.822582, 35.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635006, 30.548260, 35.493843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093943, 0.254302, -0.962552,
		0.688351, -0.681907, -0.247338,
		-0.719269, -0.685809, -0.110989,
		41.419224, 30.342518, 35.460545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169979, 30.461475, 34.865467>,  <41.922714, 30.822582, 35.538239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169979, 30.461475, 34.865467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779942, 30.394419, 34.923550>,  <41.545918, 30.354185, 34.958401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779942, 30.394419, 34.923550>,  <42.169979, 30.461475, 34.865467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779942, 30.394419, 34.923550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177929, 0.200456, -0.963410,
		0.132403, -0.965253, -0.225293,
		-0.975095, -0.167645, 0.145205,
		41.487411, 30.344126, 34.967110>
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
