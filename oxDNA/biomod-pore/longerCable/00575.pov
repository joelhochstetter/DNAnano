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
	<23.738848, 34.850044, 35.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134705, 34.849010, 35.040775>,  <24.372219, 34.848389, 35.006329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134705, 34.849010, 35.040775>,  <23.738848, 34.850044, 35.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134705, 34.849010, 35.040775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138968, -0.267927, -0.953364,
		-0.035989, 0.963436, -0.265511,
		0.989643, -0.002587, -0.143530,
		24.431597, 34.848236, 34.997715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105330, 34.122181, 35.102489>,  <23.738848, 34.850044, 35.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105330, 34.122181, 35.102489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223719, 34.189754, 34.726433>,  <24.294752, 34.230297, 34.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223719, 34.189754, 34.726433>,  <24.105330, 34.122181, 35.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223719, 34.189754, 34.726433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444387, -0.895588, -0.021024,
		-0.845529, -0.411563, -0.340141,
		0.295973, 0.168931, -0.940139,
		24.312511, 34.240433, 34.444389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.870510, 33.525799, 34.625999>,  <24.105330, 34.122181, 35.102489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.870510, 33.525799, 34.625999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200846, 33.719349, 34.510170>,  <24.399048, 33.835480, 34.440670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200846, 33.719349, 34.510170>,  <23.870510, 33.525799, 34.625999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200846, 33.719349, 34.510170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500594, -0.865483, -0.018561,
		-0.259604, -0.129632, -0.956975,
		0.825839, 0.483875, -0.289576,
		24.448597, 33.864510, 34.423298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109093, 33.244701, 34.017784>,  <23.870510, 33.525799, 34.625999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109093, 33.244701, 34.017784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408209, 33.386696, 34.242210>,  <24.587679, 33.471893, 34.376865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408209, 33.386696, 34.242210>,  <24.109093, 33.244701, 34.017784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408209, 33.386696, 34.242210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451854, -0.891268, -0.038325,
		0.486454, 0.282178, -0.826885,
		0.747790, 0.354988, 0.561064,
		24.632545, 33.493191, 34.410530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733152, 33.064659, 33.718227>,  <24.109093, 33.244701, 34.017784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733152, 33.064659, 33.718227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803093, 33.093990, 34.110973>,  <24.845057, 33.111588, 34.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803093, 33.093990, 34.110973>,  <24.733152, 33.064659, 33.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803093, 33.093990, 34.110973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389158, -0.921171, -0.000506,
		0.904424, 0.382187, -0.189605,
		0.174852, 0.073328, 0.981860,
		24.855549, 33.115990, 34.405533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129671, 32.562813, 33.682858>,  <24.733152, 33.064659, 33.718227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129671, 32.562813, 33.682858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108383, 32.659718, 34.070358>,  <25.095612, 32.717861, 34.302856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108383, 32.659718, 34.070358>,  <25.129671, 32.562813, 33.682858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108383, 32.659718, 34.070358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552109, -0.801220, 0.230699,
		0.832072, 0.547133, -0.091116,
		-0.053219, 0.242264, 0.968750,
		25.092417, 32.732395, 34.360985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813087, 32.336250, 33.772465>,  <25.129671, 32.562813, 33.682858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813087, 32.336250, 33.772465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630804, 32.365547, 34.127308>,  <25.521435, 32.383125, 34.340214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630804, 32.365547, 34.127308>,  <25.813087, 32.336250, 33.772465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630804, 32.365547, 34.127308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577252, -0.734313, 0.357162,
		0.677577, 0.674848, 0.292351,
		-0.455708, 0.073245, 0.887111,
		25.494091, 32.387520, 34.393440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502493, 32.552200, 33.978661>,  <25.813087, 32.336250, 33.772465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502493, 32.552200, 33.978661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880817, 32.490730, 34.093086>,  <27.107811, 32.453850, 34.161739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880817, 32.490730, 34.093086>,  <26.502493, 32.552200, 33.978661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880817, 32.490730, 34.093086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324229, 0.398315, -0.858033,
		0.017914, 0.904284, 0.426555,
		0.945809, -0.153672, 0.286060,
		27.164560, 32.444630, 34.178905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940807, 33.201557, 33.993553>,  <26.502493, 32.552200, 33.978661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940807, 33.201557, 33.993553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185745, 32.889492, 33.942356>,  <27.332708, 32.702255, 33.911636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185745, 32.889492, 33.942356>,  <26.940807, 33.201557, 33.993553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185745, 32.889492, 33.942356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368944, 0.425182, -0.826499,
		0.699223, 0.458880, 0.548194,
		0.612346, -0.780160, -0.127996,
		27.369450, 32.655445, 33.903957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564903, 33.520432, 33.931938>,  <26.940807, 33.201557, 33.993553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564903, 33.520432, 33.931938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622034, 33.154243, 33.781467>,  <27.656313, 32.934528, 33.691185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622034, 33.154243, 33.781467>,  <27.564903, 33.520432, 33.931938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622034, 33.154243, 33.781467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555661, 0.388694, -0.734955,
		0.819049, -0.104055, 0.564209,
		0.142829, -0.915473, -0.376178,
		27.664883, 32.879601, 33.668613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329033, 33.417885, 33.859276>,  <27.564903, 33.520432, 33.931938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329033, 33.417885, 33.859276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139874, 33.181248, 33.598083>,  <28.026379, 33.039265, 33.441368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139874, 33.181248, 33.598083>,  <28.329033, 33.417885, 33.859276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139874, 33.181248, 33.598083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572000, 0.357574, -0.738212,
		0.670213, -0.722602, 0.169298,
		-0.472896, -0.591598, -0.652979,
		27.998005, 33.003769, 33.402191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833797, 33.059803, 33.437958>,  <28.329033, 33.417885, 33.859276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833797, 33.059803, 33.437958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503157, 33.030018, 33.214821>,  <28.304771, 33.012146, 33.080940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503157, 33.030018, 33.214821>,  <28.833797, 33.059803, 33.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503157, 33.030018, 33.214821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506152, 0.334986, -0.794729,
		0.246046, -0.939276, -0.239211,
		-0.826602, -0.074463, -0.557839,
		28.255177, 33.007679, 33.047470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550831, 33.551216, 32.850662>,  <28.833797, 33.059803, 33.437958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550831, 33.551216, 32.850662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497328, 33.257629, 32.584309>,  <28.465227, 33.081478, 32.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497328, 33.257629, 32.584309>,  <28.550831, 33.551216, 32.850662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497328, 33.257629, 32.584309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633479, -0.453397, 0.627006,
		-0.762112, 0.505687, -0.404310,
		-0.133756, -0.733970, -0.665881,
		28.457201, 33.037437, 32.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824720, 33.493870, 32.529972>,  <28.550831, 33.551216, 32.850662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824720, 33.493870, 32.529972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015690, 33.142418, 32.533604>,  <28.130272, 32.931549, 32.535782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015690, 33.142418, 32.533604>,  <27.824720, 33.493870, 32.529972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015690, 33.142418, 32.533604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670396, -0.357556, 0.650171,
		-0.568011, -0.316493, -0.759734,
		0.477422, -0.878627, 0.009080,
		28.158916, 32.878830, 32.536327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377060, 32.872353, 32.380405>,  <27.824720, 33.493870, 32.529972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377060, 32.872353, 32.380405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695099, 32.802578, 32.612747>,  <27.885923, 32.760712, 32.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695099, 32.802578, 32.612747>,  <27.377060, 32.872353, 32.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695099, 32.802578, 32.612747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589335, -0.448347, 0.672064,
		0.143188, -0.876673, -0.459284,
		0.795099, -0.174441, 0.580851,
		27.933628, 32.750244, 32.787003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413427, 32.161423, 32.637589>,  <27.377060, 32.872353, 32.380405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413427, 32.161423, 32.637589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632399, 32.373951, 32.896206>,  <27.763781, 32.501469, 33.051376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632399, 32.373951, 32.896206>,  <27.413427, 32.161423, 32.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632399, 32.373951, 32.896206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482888, -0.430437, 0.762590,
		0.683478, -0.729671, 0.020936,
		0.547428, 0.531323, 0.646544,
		27.796627, 32.533348, 33.090168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765543, 31.719324, 33.124805>,  <27.413427, 32.161423, 32.637589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765543, 31.719324, 33.124805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722897, 32.083153, 33.285461>,  <27.697309, 32.301449, 33.381855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722897, 32.083153, 33.285461>,  <27.765543, 31.719324, 33.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722897, 32.083153, 33.285461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336805, -0.413099, 0.846115,
		0.935519, -0.045067, 0.350390,
		-0.106615, 0.909570, 0.401641,
		27.690912, 32.356026, 33.405952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114620, 31.575018, 33.770737>,  <27.765543, 31.719324, 33.124805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114620, 31.575018, 33.770737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894117, 31.908413, 33.785774>,  <27.761816, 32.108452, 33.794796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894117, 31.908413, 33.785774>,  <28.114620, 31.575018, 33.770737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894117, 31.908413, 33.785774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365851, -0.281969, 0.886931,
		0.749845, 0.475175, 0.460370,
		-0.551258, 0.833488, 0.037590,
		27.728741, 32.158459, 33.797050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784369, 31.328413, 33.798313>,  <28.114620, 31.575018, 33.770737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784369, 31.328413, 33.798313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063330, 31.080063, 33.655125>,  <29.230707, 30.931053, 33.569214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063330, 31.080063, 33.655125>,  <28.784369, 31.328413, 33.798313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063330, 31.080063, 33.655125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106083, -0.404551, 0.908342,
		-0.708783, -0.671456, -0.216271,
		0.697404, -0.620875, -0.357969,
		29.272551, 30.893801, 33.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640179, 30.641665, 33.956158>,  <28.784369, 31.328413, 33.798313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640179, 30.641665, 33.956158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038162, 30.675678, 33.934898>,  <29.276953, 30.696087, 33.922142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038162, 30.675678, 33.934898>,  <28.640179, 30.641665, 33.956158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038162, 30.675678, 33.934898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077402, -0.314265, 0.946175,
		0.063757, -0.945519, -0.319263,
		0.994959, 0.085037, -0.053149,
		29.336651, 30.701189, 33.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047405, 30.091827, 34.353573>,  <28.640179, 30.641665, 33.956158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047405, 30.091827, 34.353573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348904, 30.352543, 34.320019>,  <29.529802, 30.508972, 34.299885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348904, 30.352543, 34.320019>,  <29.047405, 30.091827, 34.353573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348904, 30.352543, 34.320019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332059, -0.267585, 0.904508,
		0.567101, -0.709626, -0.418124,
		0.753747, 0.651789, -0.083890,
		29.575027, 30.548080, 34.294853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551336, 29.682884, 34.591022>,  <29.047405, 30.091827, 34.353573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551336, 29.682884, 34.591022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636600, 30.070236, 34.642879>,  <29.687759, 30.302647, 34.673992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636600, 30.070236, 34.642879>,  <29.551336, 29.682884, 34.591022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636600, 30.070236, 34.642879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348460, -0.199316, 0.915887,
		0.912764, -0.150055, -0.379927,
		0.213159, 0.968378, 0.129640,
		29.700548, 30.360750, 34.681770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253227, 29.327208, 34.580830>,  <29.551336, 29.682884, 34.591022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253227, 29.327208, 34.580830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242891, 29.498043, 34.219292>,  <30.236691, 29.600544, 34.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242891, 29.498043, 34.219292>,  <30.253227, 29.327208, 34.580830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242891, 29.498043, 34.219292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963545, -0.230209, -0.136325,
		-0.266295, -0.874414, -0.405570,
		-0.025839, 0.427087, -0.903841,
		30.235140, 29.626169, 33.948139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593651, 28.861095, 34.241138>,  <30.253227, 29.327208, 34.580830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593651, 28.861095, 34.241138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602600, 29.209505, 34.044846>,  <30.607969, 29.418550, 33.927071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602600, 29.209505, 34.044846>,  <30.593651, 28.861095, 34.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602600, 29.209505, 34.044846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928219, -0.200431, -0.313429,
		-0.371362, -0.448495, -0.812984,
		0.022376, 0.871022, -0.490734,
		30.609312, 29.470812, 33.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879505, 28.819695, 33.564697>,  <30.593651, 28.861095, 34.241138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879505, 28.819695, 33.564697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925573, 29.201206, 33.675720>,  <30.953215, 29.430113, 33.742332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925573, 29.201206, 33.675720>,  <30.879505, 28.819695, 33.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925573, 29.201206, 33.675720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984571, -0.072548, -0.159239,
		-0.131743, 0.291615, -0.947420,
		0.115170, 0.953781, 0.277558,
		30.960125, 29.487341, 33.758987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257006, 29.111725, 33.038754>,  <30.879505, 28.819695, 33.564697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257006, 29.111725, 33.038754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323921, 29.359674, 33.345417>,  <31.364071, 29.508444, 33.529415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323921, 29.359674, 33.345417>,  <31.257006, 29.111725, 33.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323921, 29.359674, 33.345417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930870, 0.156872, -0.329958,
		-0.324800, 0.768860, -0.550781,
		0.167290, 0.619876, 0.766660,
		31.374107, 29.545637, 33.575417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463181, 29.713308, 32.736141>,  <31.257006, 29.111725, 33.038754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463181, 29.713308, 32.736141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613955, 29.631186, 33.097420>,  <31.704418, 29.581911, 33.314186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613955, 29.631186, 33.097420>,  <31.463181, 29.713308, 32.736141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613955, 29.631186, 33.097420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907076, -0.115512, -0.404808,
		0.187441, 0.971857, 0.142690,
		0.376933, -0.205309, 0.903200,
		31.727034, 29.569593, 33.368382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988672, 30.164394, 32.849865>,  <31.463181, 29.713308, 32.736141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988672, 30.164394, 32.849865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059650, 29.805170, 33.010864>,  <32.102238, 29.589636, 33.107464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059650, 29.805170, 33.010864>,  <31.988672, 30.164394, 32.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059650, 29.805170, 33.010864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898804, -0.018692, -0.437952,
		0.400830, 0.439476, 0.803863,
		0.177443, -0.898060, 0.402495,
		32.112885, 29.535751, 33.131611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681583, 30.224178, 33.106327>,  <31.988672, 30.164394, 32.849865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681583, 30.224178, 33.106327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582394, 29.846941, 33.017704>,  <32.522881, 29.620600, 32.964531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582394, 29.846941, 33.017704>,  <32.681583, 30.224178, 33.106327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582394, 29.846941, 33.017704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923669, -0.161194, -0.347639,
		0.292142, -0.290850, 0.911076,
		-0.247971, -0.943092, -0.221557,
		32.508003, 29.564013, 32.951237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215572, 30.321877, 32.482002>,  <32.681583, 30.224178, 33.106327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215572, 30.321877, 32.482002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385036, 30.024336, 32.275238>,  <33.486713, 29.845812, 32.151180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385036, 30.024336, 32.275238>,  <33.215572, 30.321877, 32.482002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385036, 30.024336, 32.275238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595027, -0.658799, 0.460356,
		-0.682978, 0.112543, -0.721717,
		0.423656, -0.743853, -0.516911,
		33.512135, 29.801180, 32.120167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710747, 29.849712, 32.025280>,  <33.215572, 30.321877, 32.482002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710747, 29.849712, 32.025280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033997, 29.650934, 32.151756>,  <33.227947, 29.531668, 32.227642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033997, 29.650934, 32.151756>,  <32.710747, 29.849712, 32.025280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033997, 29.650934, 32.151756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588601, -0.701375, 0.402023,
		0.021987, -0.510997, -0.859301,
		0.808125, -0.496946, 0.316194,
		33.276436, 29.501850, 32.246616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443954, 29.282488, 32.118656>,  <32.710747, 29.849712, 32.025280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443954, 29.282488, 32.118656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777611, 29.230217, 32.332993>,  <32.977806, 29.198854, 32.461594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777611, 29.230217, 32.332993>,  <32.443954, 29.282488, 32.118656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777611, 29.230217, 32.332993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497729, -0.596922, 0.629245,
		0.237628, -0.791586, -0.562961,
		0.834145, -0.130676, 0.535841,
		33.027855, 29.191013, 32.493744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613522, 28.522539, 32.159172>,  <32.443954, 29.282488, 32.118656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613522, 28.522539, 32.159172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810925, 28.696394, 32.460514>,  <32.929367, 28.800707, 32.641319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810925, 28.696394, 32.460514>,  <32.613522, 28.522539, 32.159172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810925, 28.696394, 32.460514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299230, -0.728455, 0.616291,
		0.816647, -0.529570, -0.229441,
		0.493507, 0.434637, 0.753354,
		32.958977, 28.826784, 32.686520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991177, 28.015387, 32.515282>,  <32.613522, 28.522539, 32.159172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991177, 28.015387, 32.515282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932823, 28.317352, 32.771038>,  <32.897812, 28.498531, 32.924492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932823, 28.317352, 32.771038>,  <32.991177, 28.015387, 32.515282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932823, 28.317352, 32.771038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331765, -0.646212, 0.687271,
		0.932013, -0.111863, 0.344729,
		-0.145888, 0.754915, 0.639391,
		32.889057, 28.543827, 32.962856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196541, 28.232914, 33.316483>,  <32.991177, 28.015387, 32.515282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196541, 28.232914, 33.316483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279785, 28.513435, 33.589207>,  <33.329731, 28.681747, 33.752842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279785, 28.513435, 33.589207>,  <33.196541, 28.232914, 33.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279785, 28.513435, 33.589207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571895, -0.478255, 0.666489,
		0.793489, -0.528628, 0.301541,
		0.208111, 0.701302, 0.681810,
		33.342220, 28.723825, 33.793751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567703, 28.039028, 34.005589>,  <33.196541, 28.232914, 33.316483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567703, 28.039028, 34.005589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299839, 28.336020, 33.998806>,  <33.139122, 28.514214, 33.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299839, 28.336020, 33.998806>,  <33.567703, 28.039028, 34.005589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299839, 28.336020, 33.998806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575090, -0.503969, 0.644428,
		0.469927, 0.441298, 0.764477,
		-0.669657, 0.742477, -0.016957,
		33.098942, 28.558762, 33.993717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424816, 28.211767, 34.696060>,  <33.567703, 28.039028, 34.005589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424816, 28.211767, 34.696060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126690, 28.311483, 34.448715>,  <32.947815, 28.371313, 34.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126690, 28.311483, 34.448715>,  <33.424816, 28.211767, 34.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126690, 28.311483, 34.448715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643916, -0.509621, 0.570665,
		-0.172868, 0.823494, 0.540348,
		-0.745311, 0.249289, -0.618358,
		32.903095, 28.386271, 34.263206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835430, 28.479715, 35.079990>,  <33.424816, 28.211767, 34.696060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835430, 28.479715, 35.079990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699245, 28.343954, 34.729244>,  <32.617535, 28.262497, 34.518799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699245, 28.343954, 34.729244>,  <32.835430, 28.479715, 35.079990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699245, 28.343954, 34.729244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628850, -0.611119, 0.480709,
		-0.699021, 0.715081, -0.005367,
		-0.340466, -0.339401, -0.876864,
		32.597107, 28.242134, 34.466187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099346, 28.389196, 35.087868>,  <32.835430, 28.479715, 35.079990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099346, 28.389196, 35.087868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250008, 28.139387, 34.814194>,  <32.340405, 27.989502, 34.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250008, 28.139387, 34.814194>,  <32.099346, 28.389196, 35.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250008, 28.139387, 34.814194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488229, -0.761499, 0.426323,
		-0.787252, 0.173463, -0.591730,
		0.376651, -0.624524, -0.684181,
		32.363003, 27.952030, 34.608940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644245, 27.835827, 35.240055>,  <32.099346, 28.389196, 35.087868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644245, 27.835827, 35.240055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518419, 27.494938, 35.072834>,  <31.442924, 27.290403, 34.972504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518419, 27.494938, 35.072834>,  <31.644245, 27.835827, 35.240055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518419, 27.494938, 35.072834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526464, 0.209831, -0.823897,
		0.789864, -0.479255, 0.382660,
		-0.314563, -0.852224, -0.418048,
		31.424049, 27.239271, 34.947418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303989, 27.362812, 35.179523>,  <31.644245, 27.835827, 35.240055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303989, 27.362812, 35.179523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001591, 27.374063, 34.917934>,  <31.820152, 27.380814, 34.760983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001591, 27.374063, 34.917934>,  <32.303989, 27.362812, 35.179523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001591, 27.374063, 34.917934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605442, 0.409819, -0.682267,
		0.248820, -0.911733, -0.326851,
		-0.755995, 0.028128, -0.653973,
		31.774792, 27.382502, 34.721741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628075, 27.325815, 34.570042>,  <32.303989, 27.362812, 35.179523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628075, 27.325815, 34.570042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278309, 27.504709, 34.494801>,  <32.068451, 27.612045, 34.449657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278309, 27.504709, 34.494801>,  <32.628075, 27.325815, 34.570042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278309, 27.504709, 34.494801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452671, 0.612489, -0.648032,
		-0.174613, -0.651796, -0.738019,
		-0.874413, 0.447235, -0.188100,
		32.015984, 27.638880, 34.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445290, 27.479317, 33.832584>,  <32.628075, 27.325815, 34.570042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445290, 27.479317, 33.832584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221996, 27.734262, 34.045052>,  <32.088020, 27.887230, 34.172531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221996, 27.734262, 34.045052>,  <32.445290, 27.479317, 33.832584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221996, 27.734262, 34.045052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417302, 0.769024, -0.484212,
		-0.717102, -0.048645, -0.695269,
		-0.558233, 0.637366, 0.531169,
		32.054527, 27.925472, 34.204403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128826, 27.822901, 33.370956>,  <32.445290, 27.479317, 33.832584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128826, 27.822901, 33.370956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249462, 27.980207, 33.718376>,  <32.321842, 28.074591, 33.926830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249462, 27.980207, 33.718376>,  <32.128826, 27.822901, 33.370956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249462, 27.980207, 33.718376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675710, 0.554528, -0.485710,
		-0.672651, 0.733376, -0.098493,
		0.301591, 0.393266, 0.868553,
		32.339939, 28.098186, 33.978943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031334, 28.501581, 33.265144>,  <32.128826, 27.822901, 33.370956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031334, 28.501581, 33.265144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292248, 28.480556, 33.567604>,  <32.448795, 28.467941, 33.749081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292248, 28.480556, 33.567604>,  <32.031334, 28.501581, 33.265144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292248, 28.480556, 33.567604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552162, 0.716381, -0.426515,
		-0.519274, 0.695726, 0.496306,
		0.652282, -0.052564, 0.756152,
		32.487934, 28.464787, 33.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164776, 29.098076, 33.674110>,  <32.031334, 28.501581, 33.265144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164776, 29.098076, 33.674110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481377, 28.854061, 33.659302>,  <32.671337, 28.707651, 33.650417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481377, 28.854061, 33.659302>,  <32.164776, 29.098076, 33.674110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481377, 28.854061, 33.659302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526500, 0.711370, -0.465564,
		0.310348, 0.349005, 0.884239,
		0.791506, -0.610039, -0.037021,
		32.718830, 28.671049, 33.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785885, 29.499252, 33.774639>,  <32.164776, 29.098076, 33.674110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785885, 29.499252, 33.774639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865940, 29.182186, 33.544292>,  <32.913971, 28.991947, 33.406082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865940, 29.182186, 33.544292>,  <32.785885, 29.499252, 33.774639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865940, 29.182186, 33.544292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418814, 0.600569, -0.681111,
		0.885744, -0.104869, 0.452174,
		0.200134, -0.792666, -0.575871,
		32.925980, 28.944386, 33.371532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475891, 29.542280, 33.626408>,  <32.785885, 29.499252, 33.774639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475891, 29.542280, 33.626408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324261, 29.305893, 33.341576>,  <33.233284, 29.164061, 33.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324261, 29.305893, 33.341576>,  <33.475891, 29.542280, 33.626408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324261, 29.305893, 33.341576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575298, 0.452219, -0.681564,
		0.724799, -0.668023, 0.168558,
		-0.379076, -0.590968, -0.712080,
		33.210537, 29.128603, 33.127953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016468, 29.144762, 33.341343>,  <33.475891, 29.542280, 33.626408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016468, 29.144762, 33.341343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717018, 29.175129, 33.077888>,  <33.537350, 29.193350, 32.919815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717018, 29.175129, 33.077888>,  <34.016468, 29.144762, 33.341343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717018, 29.175129, 33.077888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604505, 0.486144, -0.631061,
		0.272282, -0.870574, -0.409832,
		-0.748623, 0.075919, -0.658635,
		33.492432, 29.197905, 32.880299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252640, 28.964993, 32.685970>,  <34.016468, 29.144762, 33.341343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252640, 28.964993, 32.685970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950413, 29.217674, 32.616615>,  <33.769077, 29.369284, 32.575001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950413, 29.217674, 32.616615>,  <34.252640, 28.964993, 32.685970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950413, 29.217674, 32.616615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612181, 0.586715, -0.530095,
		-0.233132, -0.506670, -0.830021,
		-0.755569, 0.631705, -0.173391,
		33.723743, 29.407187, 32.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236038, 29.026091, 31.911072>,  <34.252640, 28.964993, 32.685970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236038, 29.026091, 31.911072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121971, 29.331070, 32.143398>,  <34.053532, 29.514057, 32.282795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121971, 29.331070, 32.143398>,  <34.236038, 29.026091, 31.911072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121971, 29.331070, 32.143398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668264, 0.592566, -0.449765,
		-0.687096, 0.259879, -0.678500,
		-0.285172, 0.762449, 0.580817,
		34.036419, 29.559805, 32.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992474, 29.474751, 31.471115>,  <34.236038, 29.026091, 31.911072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992474, 29.474751, 31.471115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135445, 29.674799, 31.786615>,  <34.221226, 29.794828, 31.975916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135445, 29.674799, 31.786615>,  <33.992474, 29.474751, 31.471115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135445, 29.674799, 31.786615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748787, 0.351293, -0.562060,
		-0.558181, 0.791499, -0.248924,
		0.357425, 0.500122, 0.788749,
		34.242672, 29.824835, 32.023239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262047, 30.122311, 31.223034>,  <33.992474, 29.474751, 31.471115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262047, 30.122311, 31.223034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511871, 30.014465, 31.516218>,  <34.661766, 29.949759, 31.692129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511871, 30.014465, 31.516218>,  <34.262047, 30.122311, 31.223034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511871, 30.014465, 31.516218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780487, 0.248741, -0.573557,
		-0.027680, 0.930288, 0.365783,
		0.624559, -0.269613, 0.732963,
		34.699238, 29.933582, 31.736107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780937, 30.712648, 31.390715>,  <34.262047, 30.122311, 31.223034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780937, 30.712648, 31.390715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949825, 30.369043, 31.506531>,  <35.051159, 30.162880, 31.576021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949825, 30.369043, 31.506531>,  <34.780937, 30.712648, 31.390715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949825, 30.369043, 31.506531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770966, 0.172277, -0.613133,
		0.476807, 0.482100, 0.735007,
		0.422216, -0.859011, 0.289540,
		35.076488, 30.111340, 31.593393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858616, 31.498775, 31.407194>,  <34.780937, 30.712648, 31.390715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858616, 31.498775, 31.407194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059372, 31.843172, 31.374218>,  <35.179825, 32.049812, 31.354433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059372, 31.843172, 31.374218>,  <34.858616, 31.498775, 31.407194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059372, 31.843172, 31.374218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628811, 0.297771, -0.718282,
		-0.593888, 0.412338, 0.690851,
		0.501890, 0.860994, -0.082440,
		35.209938, 32.101471, 31.349485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397766, 32.136074, 31.402811>,  <34.858616, 31.498775, 31.407194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397766, 32.136074, 31.402811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726353, 32.259552, 31.211021>,  <34.923504, 32.333641, 31.095947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726353, 32.259552, 31.211021>,  <34.397766, 32.136074, 31.402811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726353, 32.259552, 31.211021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570049, 0.467033, -0.675962,
		0.015263, 0.828605, 0.559625,
		0.821469, 0.308697, -0.479474,
		34.972794, 32.352161, 31.067179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389942, 32.875835, 31.249342>,  <34.397766, 32.136074, 31.402811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389942, 32.875835, 31.249342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594555, 32.685970, 30.962837>,  <34.717323, 32.572052, 30.790934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594555, 32.685970, 30.962837>,  <34.389942, 32.875835, 31.249342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594555, 32.685970, 30.962837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558824, 0.449441, -0.696935,
		0.652727, 0.756769, -0.035349,
		0.511531, -0.474662, -0.716262,
		34.748013, 32.543571, 30.747959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646835, 33.328827, 30.814137>,  <34.389942, 32.875835, 31.249342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646835, 33.328827, 30.814137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628487, 33.010914, 30.572075>,  <34.617477, 32.820168, 30.426838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628487, 33.010914, 30.572075>,  <34.646835, 33.328827, 30.814137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628487, 33.010914, 30.572075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475563, 0.550115, -0.686450,
		0.878485, 0.256304, -0.403202,
		-0.045868, -0.794784, -0.605156,
		34.614727, 32.772480, 30.390528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936249, 33.576248, 30.220606>,  <34.646835, 33.328827, 30.814137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936249, 33.576248, 30.220606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718727, 33.251911, 30.134058>,  <34.588215, 33.057308, 30.082130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718727, 33.251911, 30.134058>,  <34.936249, 33.576248, 30.220606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718727, 33.251911, 30.134058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377535, 0.466628, -0.799829,
		0.749499, -0.353260, -0.559874,
		-0.543800, -0.810843, -0.216369,
		34.555588, 33.008659, 30.069147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026947, 33.398079, 29.550203>,  <34.936249, 33.576248, 30.220606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026947, 33.398079, 29.550203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671661, 33.241165, 29.645855>,  <34.458488, 33.147015, 29.703245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671661, 33.241165, 29.645855>,  <35.026947, 33.398079, 29.550203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671661, 33.241165, 29.645855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428548, 0.519851, -0.738987,
		0.165585, -0.758858, -0.629854,
		-0.888216, -0.392288, 0.239127,
		34.405197, 33.123478, 29.717592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717793, 33.110455, 28.901310>,  <35.026947, 33.398079, 29.550203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717793, 33.110455, 28.901310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414165, 33.173061, 29.154078>,  <34.231991, 33.210625, 29.305738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414165, 33.173061, 29.154078>,  <34.717793, 33.110455, 28.901310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414165, 33.173061, 29.154078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473958, 0.532572, -0.701236,
		-0.446298, -0.831787, -0.330074,
		-0.759066, 0.156519, 0.631918,
		34.186447, 33.220016, 29.343653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051449, 32.966606, 28.549707>,  <34.717793, 33.110455, 28.901310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051449, 32.966606, 28.549707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004650, 33.231403, 28.845837>,  <33.976570, 33.390282, 29.023514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004650, 33.231403, 28.845837>,  <34.051449, 32.966606, 28.549707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004650, 33.231403, 28.845837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620871, 0.533057, -0.574778,
		-0.775133, -0.526890, 0.348648,
		-0.116996, 0.661994, 0.740321,
		33.969551, 33.430000, 29.067932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380695, 33.335297, 28.390844>,  <34.051449, 32.966606, 28.549707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380695, 33.335297, 28.390844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336636, 33.309368, 28.787563>,  <33.310200, 33.293812, 29.025595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336636, 33.309368, 28.787563>,  <33.380695, 33.335297, 28.390844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336636, 33.309368, 28.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593929, 0.804406, -0.013386,
		-0.796942, -0.590532, -0.127105,
		-0.110150, -0.064823, 0.991799,
		33.303589, 33.289921, 29.085102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622787, 33.351864, 28.609442>,  <33.380695, 33.335297, 28.390844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622787, 33.351864, 28.609442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821918, 33.492069, 28.926756>,  <32.941399, 33.576191, 29.117146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821918, 33.492069, 28.926756>,  <32.622787, 33.351864, 28.609442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821918, 33.492069, 28.926756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624587, 0.779507, 0.047537,
		-0.601710, -0.519143, 0.606988,
		0.497830, 0.350513, 0.793287,
		32.971268, 33.597225, 29.164742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075409, 33.766743, 29.065414>,  <32.622787, 33.351864, 28.609442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075409, 33.766743, 29.065414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445290, 33.864811, 29.181911>,  <32.667217, 33.923653, 29.251810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445290, 33.864811, 29.181911>,  <32.075409, 33.766743, 29.065414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445290, 33.864811, 29.181911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275075, 0.959160, 0.065926,
		-0.263187, -0.141075, 0.954374,
		0.924698, 0.245173, 0.291245,
		32.722698, 33.938362, 29.269285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090092, 34.055557, 29.687653>,  <32.075409, 33.766743, 29.065414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090092, 34.055557, 29.687653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369587, 34.200993, 29.441217>,  <32.537285, 34.288254, 29.293356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369587, 34.200993, 29.441217>,  <32.090092, 34.055557, 29.687653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369587, 34.200993, 29.441217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336098, 0.927092, 0.165948,
		0.631508, 0.091111, 0.769998,
		0.698739, 0.363592, -0.616088,
		32.579208, 34.310070, 29.256392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733400, 34.253387, 30.430479>,  <32.090092, 34.055557, 29.687653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733400, 34.253387, 30.430479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983013, 34.258953, 30.742989>,  <32.132782, 34.262295, 30.930494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983013, 34.258953, 30.742989>,  <31.733400, 34.253387, 30.430479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983013, 34.258953, 30.742989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085375, -0.992641, 0.085873,
		0.776721, -0.120288, -0.618251,
		0.624032, 0.013916, 0.781275,
		32.170223, 34.263126, 30.977371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984449, 34.278465, 30.563644>,  <31.733400, 34.253387, 30.430479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984449, 34.278465, 30.563644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601772, 34.388737, 30.526243>,  <30.372166, 34.454899, 30.503803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601772, 34.388737, 30.526243>,  <30.984449, 34.278465, 30.563644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601772, 34.388737, 30.526243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106196, -0.629572, -0.769650,
		-0.271041, -0.726389, 0.631582,
		-0.956692, 0.275678, -0.093500,
		30.314764, 34.471439, 30.498194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543913, 33.675293, 30.426710>,  <30.984449, 34.278465, 30.563644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543913, 33.675293, 30.426710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 33.964714, 30.304892>,  <30.147463, 34.138367, 30.231800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 33.964714, 30.304892>,  <30.543913, 33.675293, 30.426710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296131, 33.964714, 30.304892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113119, -0.466158, -0.877440,
		-0.776842, -0.509082, 0.370610,
		-0.619452, 0.723555, -0.304544,
		30.110296, 34.181782, 30.213528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902115, 33.329071, 30.129803>,  <30.543913, 33.675293, 30.426710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902115, 33.329071, 30.129803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885519, 33.685211, 29.948448>,  <29.875563, 33.898895, 29.839636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885519, 33.685211, 29.948448>,  <29.902115, 33.329071, 30.129803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885519, 33.685211, 29.948448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075137, -0.455270, -0.887178,
		-0.996310, -0.002741, 0.085787,
		-0.041488, 0.890349, -0.453384,
		29.873072, 33.952316, 29.812433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326662, 33.337227, 29.735825>,  <29.902115, 33.329071, 30.129803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326662, 33.337227, 29.735825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548897, 33.626930, 29.572474>,  <29.682238, 33.800751, 29.474463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548897, 33.626930, 29.572474>,  <29.326662, 33.337227, 29.735825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548897, 33.626930, 29.572474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117268, -0.417994, -0.900849,
		-0.823147, 0.548390, -0.147299,
		0.555587, 0.724258, -0.408379,
		29.715572, 33.844208, 29.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979048, 33.595543, 29.194750>,  <29.326662, 33.337227, 29.735825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979048, 33.595543, 29.194750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352680, 33.697800, 29.095039>,  <29.576860, 33.759155, 29.035213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352680, 33.697800, 29.095039>,  <28.979048, 33.595543, 29.194750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352680, 33.697800, 29.095039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091378, -0.503730, -0.859015,
		-0.345170, 0.825168, -0.447165,
		0.934081, 0.255645, -0.249274,
		29.632904, 33.774494, 29.020258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944763, 33.609985, 28.543034>,  <28.979048, 33.595543, 29.194750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944763, 33.609985, 28.543034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340509, 33.617336, 28.600742>,  <29.577957, 33.621746, 28.635366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340509, 33.617336, 28.600742>,  <28.944763, 33.609985, 28.543034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340509, 33.617336, 28.600742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141033, -0.363432, -0.920884,
		0.035511, 0.931440, -0.362159,
		0.989368, 0.018375, 0.144270,
		29.637320, 33.622849, 28.644024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235090, 33.628281, 27.880051>,  <28.944763, 33.609985, 28.543034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235090, 33.628281, 27.880051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534168, 33.492706, 28.108463>,  <29.713615, 33.411362, 28.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534168, 33.492706, 28.108463>,  <29.235090, 33.628281, 27.880051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534168, 33.492706, 28.108463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266342, -0.634664, -0.725440,
		0.608288, 0.694498, -0.384264,
		0.747695, -0.338931, 0.571032,
		29.758476, 33.391026, 28.279774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934521, 33.683758, 27.470354>,  <29.235090, 33.628281, 27.880051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934521, 33.683758, 27.470354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966969, 33.398495, 27.748871>,  <29.986437, 33.227337, 27.915981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966969, 33.398495, 27.748871>,  <29.934521, 33.683758, 27.470354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966969, 33.398495, 27.748871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442849, -0.600061, -0.666191,
		0.892919, 0.362393, 0.267147,
		0.081118, -0.713160, 0.696292,
		29.991304, 33.184547, 27.957758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647356, 33.431271, 27.355515>,  <29.934521, 33.683758, 27.470354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647356, 33.431271, 27.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427940, 33.156708, 27.546490>,  <30.296291, 32.991970, 27.661076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427940, 33.156708, 27.546490>,  <30.647356, 33.431271, 27.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427940, 33.156708, 27.546490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326242, -0.701459, -0.633657,
		0.769851, -0.191825, 0.608714,
		-0.548539, -0.686409, 0.477438,
		30.263378, 32.950787, 27.689720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064899, 32.871559, 27.419855>,  <30.647356, 33.431271, 27.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064899, 32.871559, 27.419855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710926, 32.704716, 27.502720>,  <30.498543, 32.604610, 27.552439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710926, 32.704716, 27.502720>,  <31.064899, 32.871559, 27.419855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710926, 32.704716, 27.502720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168112, -0.700927, -0.693138,
		0.434316, -0.578554, 0.690394,
		-0.884934, -0.417105, 0.207162,
		30.445446, 32.579586, 27.564869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205954, 32.195248, 27.376572>,  <31.064899, 32.871559, 27.419855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205954, 32.195248, 27.376572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808784, 32.218811, 27.335320>,  <30.570482, 32.232948, 27.310568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808784, 32.218811, 27.335320>,  <31.205954, 32.195248, 27.376572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808784, 32.218811, 27.335320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035719, -0.680027, -0.732316,
		-0.113267, -0.730817, 0.673110,
		-0.992923, 0.058904, -0.103129,
		30.510908, 32.236481, 27.304380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841362, 31.424192, 27.243216>,  <31.205954, 32.195248, 27.376572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841362, 31.424192, 27.243216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590485, 31.696627, 27.092087>,  <30.439959, 31.860088, 27.001410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590485, 31.696627, 27.092087>,  <30.841362, 31.424192, 27.243216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590485, 31.696627, 27.092087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207572, -0.613715, -0.761753,
		-0.750694, -0.399342, 0.526293,
		-0.627194, 0.681087, -0.377820,
		30.402327, 31.900953, 26.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297413, 30.971439, 27.049200>,  <30.841362, 31.424192, 27.243216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297413, 30.971439, 27.049200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200254, 31.301594, 26.845341>,  <30.141960, 31.499687, 26.723026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200254, 31.301594, 26.845341>,  <30.297413, 30.971439, 27.049200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200254, 31.301594, 26.845341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306744, -0.563774, -0.766855,
		-0.920277, -0.029934, 0.390120,
		-0.242895, 0.825386, -0.509646,
		30.127386, 31.549210, 26.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594423, 30.947620, 26.832188>,  <30.297413, 30.971439, 27.049200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594423, 30.947620, 26.832188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755383, 31.216866, 26.583996>,  <29.851957, 31.378412, 26.435081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755383, 31.216866, 26.583996>,  <29.594423, 30.947620, 26.832188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755383, 31.216866, 26.583996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316579, -0.533642, -0.784222,
		-0.858985, 0.511998, -0.001642,
		0.402397, 0.673115, -0.620478,
		29.876102, 31.418800, 26.397852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098885, 31.215580, 26.328293>,  <29.594423, 30.947620, 26.832188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098885, 31.215580, 26.328293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442514, 31.268194, 26.130428>,  <29.648691, 31.299763, 26.011709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442514, 31.268194, 26.130428>,  <29.098885, 31.215580, 26.328293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442514, 31.268194, 26.130428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371060, -0.505642, -0.778871,
		-0.352571, 0.852657, -0.385577,
		0.859074, 0.131535, -0.494662,
		29.700237, 31.307655, 25.982029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889555, 31.246073, 25.631458>,  <29.098885, 31.215580, 26.328293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889555, 31.246073, 25.631458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285311, 31.194738, 25.604212>,  <29.522764, 31.163939, 25.587864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285311, 31.194738, 25.604212>,  <28.889555, 31.246073, 25.631458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285311, 31.194738, 25.604212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112024, -0.375250, -0.920129,
		0.092524, 0.917997, -0.385645,
		0.989389, -0.128335, -0.068118,
		29.582127, 31.156239, 25.583776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954899, 31.509926, 25.073671>,  <28.889555, 31.246073, 25.631458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954899, 31.509926, 25.073671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285309, 31.293705, 25.137531>,  <29.483555, 31.163973, 25.175848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285309, 31.293705, 25.137531>,  <28.954899, 31.509926, 25.073671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285309, 31.293705, 25.137531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019033, -0.309843, -0.950597,
		0.563315, 0.782177, -0.266226,
		0.826023, -0.540552, 0.159652,
		29.533115, 31.131538, 25.185427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394485, 31.499937, 24.452463>,  <28.954899, 31.509926, 25.073671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394485, 31.499937, 24.452463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563150, 31.179060, 24.621552>,  <29.664349, 30.986534, 24.723003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563150, 31.179060, 24.621552>,  <29.394485, 31.499937, 24.452463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563150, 31.179060, 24.621552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143859, -0.401101, -0.904667,
		0.895269, 0.442274, -0.053726,
		0.421660, -0.802192, 0.422719,
		29.689648, 30.938402, 24.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094536, 31.258263, 24.004812>,  <29.394485, 31.499937, 24.452463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094536, 31.258263, 24.004812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969532, 30.955112, 24.233885>,  <29.894529, 30.773222, 24.371328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969532, 30.955112, 24.233885>,  <30.094536, 31.258263, 24.004812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969532, 30.955112, 24.233885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108460, -0.627404, -0.771104,
		0.943702, -0.178864, 0.278269,
		-0.312510, -0.757873, 0.572683,
		29.875778, 30.727751, 24.405689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542482, 30.747545, 23.780056>,  <30.094536, 31.258263, 24.004812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542482, 30.747545, 23.780056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216280, 30.597212, 23.956100>,  <30.020559, 30.507011, 24.061728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216280, 30.597212, 23.956100>,  <30.542482, 30.747545, 23.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216280, 30.597212, 23.956100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008959, -0.768562, -0.639713,
		0.578680, -0.517746, 0.630133,
		-0.815505, -0.375835, 0.440113,
		29.971628, 30.484461, 24.088135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711544, 30.077684, 24.012138>,  <30.542482, 30.747545, 23.780056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711544, 30.077684, 24.012138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315674, 30.080652, 23.954884>,  <30.078152, 30.082432, 23.920530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315674, 30.080652, 23.954884>,  <30.711544, 30.077684, 24.012138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315674, 30.080652, 23.954884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091171, -0.737995, -0.668619,
		-0.110593, -0.674766, 0.729699,
		-0.989675, 0.007417, -0.143136,
		30.018772, 30.082878, 23.911943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596077, 29.422033, 23.889088>,  <30.711544, 30.077684, 24.012138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596077, 29.422033, 23.889088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257708, 29.601727, 23.774124>,  <30.054686, 29.709543, 23.705147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257708, 29.601727, 23.774124>,  <30.596077, 29.422033, 23.889088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257708, 29.601727, 23.774124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105275, -0.668975, -0.735792,
		-0.522810, -0.592167, 0.613195,
		-0.845924, 0.449233, -0.287407,
		30.003931, 29.736496, 23.687902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106558, 28.931892, 23.712461>,  <30.596077, 29.422033, 23.889088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106558, 28.931892, 23.712461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958302, 29.246887, 23.515488>,  <29.869349, 29.435884, 23.397305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958302, 29.246887, 23.515488>,  <30.106558, 28.931892, 23.712461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958302, 29.246887, 23.515488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068313, -0.551874, -0.831125,
		-0.926261, -0.274409, 0.258342,
		-0.370640, 0.787486, -0.492434,
		29.847109, 29.483133, 23.367758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507978, 28.760048, 23.458096>,  <30.106558, 28.931892, 23.712461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507978, 28.760048, 23.458096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652544, 29.058086, 23.233877>,  <29.739283, 29.236910, 23.099346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652544, 29.058086, 23.233877>,  <29.507978, 28.760048, 23.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652544, 29.058086, 23.233877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247472, -0.502969, -0.828118,
		-0.898965, 0.438012, 0.002611,
		0.361413, 0.745096, -0.560547,
		29.760967, 29.281614, 23.065714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062004, 28.856476, 22.916630>,  <29.507978, 28.760048, 23.458096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062004, 28.856476, 22.916630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382772, 29.033268, 22.755842>,  <29.575233, 29.139343, 22.659369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382772, 29.033268, 22.755842>,  <29.062004, 28.856476, 22.916630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382772, 29.033268, 22.755842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268866, -0.333858, -0.903466,
		-0.533514, 0.832582, -0.148894,
		0.801919, 0.441979, -0.401971,
		29.623348, 29.165861, 22.635250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799572, 28.994873, 22.174637>,  <29.062004, 28.856476, 22.916630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799572, 28.994873, 22.174637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194275, 29.058363, 22.161257>,  <29.431097, 29.096457, 22.153229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194275, 29.058363, 22.161257>,  <28.799572, 28.994873, 22.174637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194275, 29.058363, 22.161257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033973, -0.403871, -0.914185,
		-0.158614, 0.900941, -0.403915,
		0.986756, 0.158725, -0.033452,
		29.490301, 29.105980, 22.151220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914398, 29.307285, 21.484858>,  <28.799572, 28.994873, 22.174637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914398, 29.307285, 21.484858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272429, 29.159296, 21.584425>,  <29.487247, 29.070501, 21.644165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272429, 29.159296, 21.584425>,  <28.914398, 29.307285, 21.484858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272429, 29.159296, 21.584425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133350, -0.310585, -0.941145,
		0.425509, 0.875589, -0.228661,
		0.895075, -0.369974, 0.248916,
		29.540951, 29.048304, 21.659100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360304, 29.491634, 20.997309>,  <28.914398, 29.307285, 21.484858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360304, 29.491634, 20.997309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534662, 29.160711, 21.139044>,  <29.639278, 28.962158, 21.224085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534662, 29.160711, 21.139044>,  <29.360304, 29.491634, 20.997309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534662, 29.160711, 21.139044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155022, -0.318807, -0.935056,
		0.886545, 0.462519, -0.010717,
		0.435897, -0.827308, 0.354337,
		29.665432, 28.912519, 21.245344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946518, 29.362471, 20.541483>,  <29.360304, 29.491634, 20.997309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946518, 29.362471, 20.541483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858650, 29.026592, 20.740141>,  <29.805929, 28.825066, 20.859335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858650, 29.026592, 20.740141>,  <29.946518, 29.362471, 20.541483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858650, 29.026592, 20.740141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070665, -0.521438, -0.850358,
		0.973011, -0.151704, 0.173882,
		-0.219671, -0.839695, 0.496645,
		29.792749, 28.774683, 20.889135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513159, 28.849073, 20.371334>,  <29.946518, 29.362471, 20.541483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513159, 28.849073, 20.371334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205471, 28.646423, 20.527094>,  <30.020859, 28.524834, 20.620550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205471, 28.646423, 20.527094>,  <30.513159, 28.849073, 20.371334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205471, 28.646423, 20.527094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135891, -0.465759, -0.874415,
		0.624365, -0.725534, 0.289427,
		-0.769222, -0.506624, 0.389397,
		29.974705, 28.494436, 20.643913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640875, 28.255959, 20.086876>,  <30.513159, 28.849073, 20.371334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640875, 28.255959, 20.086876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248888, 28.245077, 20.165792>,  <30.013697, 28.238548, 20.213142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248888, 28.245077, 20.165792>,  <30.640875, 28.255959, 20.086876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248888, 28.245077, 20.165792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171282, -0.390340, -0.904598,
		0.101618, -0.920269, 0.377861,
		-0.979968, -0.027203, 0.197291,
		29.954897, 28.236916, 20.224979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396589, 27.571014, 19.891924>,  <30.640875, 28.255959, 20.086876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396589, 27.571014, 19.891924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070520, 27.802134, 19.908154>,  <29.874880, 27.940805, 19.917891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070520, 27.802134, 19.908154>,  <30.396589, 27.571014, 19.891924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070520, 27.802134, 19.908154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353595, -0.440932, -0.824954,
		-0.458771, -0.686822, 0.563742,
		-0.815168, 0.577801, 0.040570,
		29.825970, 27.975473, 19.920326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944324, 27.163805, 19.542046>,  <30.396589, 27.571014, 19.891924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944324, 27.163805, 19.542046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755098, 27.516024, 19.553673>,  <29.641562, 27.727354, 19.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755098, 27.516024, 19.553673>,  <29.944324, 27.163805, 19.542046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755098, 27.516024, 19.553673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397703, -0.183989, -0.898877,
		-0.786156, -0.436789, 0.437235,
		-0.473066, 0.880547, 0.029069,
		29.613178, 27.780188, 19.562393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193745, 27.073774, 19.458975>,  <29.944324, 27.163805, 19.542046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193745, 27.073774, 19.458975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280352, 27.451952, 19.361605>,  <29.332315, 27.678858, 19.303183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.280352, 27.451952, 19.361605>,  <29.193745, 27.073774, 19.458975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280352, 27.451952, 19.361605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421770, -0.134287, -0.896703,
		-0.880472, 0.296821, 0.369685,
		0.216516, 0.945444, -0.243426,
		29.345306, 27.735584, 19.288576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675829, 27.290602, 19.016159>,  <29.193745, 27.073774, 19.458975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675829, 27.290602, 19.016159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976397, 27.533772, 18.913555>,  <29.156736, 27.679674, 18.851992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976397, 27.533772, 18.913555>,  <28.675829, 27.290602, 19.016159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976397, 27.533772, 18.913555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330079, 0.009715, -0.943903,
		-0.571330, 0.793935, 0.207963,
		0.751419, 0.607924, -0.256511,
		29.201822, 27.716148, 18.836601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379616, 27.819637, 18.633509>,  <28.675829, 27.290602, 19.016159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379616, 27.819637, 18.633509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764753, 27.815823, 18.525551>,  <28.995836, 27.813534, 18.460775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764753, 27.815823, 18.525551>,  <28.379616, 27.819637, 18.633509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764753, 27.815823, 18.525551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267072, 0.114752, -0.956820,
		0.040095, 0.993349, 0.107941,
		0.962842, -0.009536, -0.269896,
		29.053606, 27.812962, 18.444582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405174, 28.352985, 18.193483>,  <28.379616, 27.819637, 18.633509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405174, 28.352985, 18.193483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731285, 28.132467, 18.122602>,  <28.926950, 28.000156, 18.080074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731285, 28.132467, 18.122602>,  <28.405174, 28.352985, 18.193483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731285, 28.132467, 18.122602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193331, 0.029319, -0.980696,
		0.545848, 0.833795, -0.082679,
		0.815275, -0.551295, -0.177202,
		28.975868, 27.967079, 18.069443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923450, 28.697950, 17.759695>,  <28.405174, 28.352985, 18.193483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923450, 28.697950, 17.759695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985176, 28.307524, 17.698402>,  <29.022211, 28.073267, 17.661627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985176, 28.307524, 17.698402>,  <28.923450, 28.697950, 17.759695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985176, 28.307524, 17.698402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182092, 0.124338, -0.975388,
		0.971097, 0.178418, -0.158547,
		0.154313, -0.976067, -0.153233,
		29.031469, 28.014704, 17.652433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252924, 28.707634, 17.113613>,  <28.923450, 28.697950, 17.759695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252924, 28.707634, 17.113613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173632, 28.317961, 17.156832>,  <29.126057, 28.084156, 17.182762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173632, 28.317961, 17.156832>,  <29.252924, 28.707634, 17.113613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173632, 28.317961, 17.156832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138959, -0.081186, -0.986965,
		0.970255, -0.210659, -0.119278,
		-0.198229, -0.974183, 0.108044,
		29.114162, 28.025705, 17.189245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672382, 28.378197, 16.653395>,  <29.252924, 28.707634, 17.113613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672382, 28.378197, 16.653395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373146, 28.121464, 16.720814>,  <29.193604, 27.967424, 16.761265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373146, 28.121464, 16.720814>,  <29.672382, 28.378197, 16.653395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373146, 28.121464, 16.720814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125552, -0.112509, -0.985687,
		0.651611, -0.758545, 0.003583,
		-0.748091, -0.641834, 0.168548,
		29.148718, 27.928913, 16.771378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869110, 27.962257, 16.181925>,  <29.672382, 28.378197, 16.653395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869110, 27.962257, 16.181925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490219, 27.867218, 16.267998>,  <29.262884, 27.810194, 16.319641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490219, 27.867218, 16.267998>,  <29.869110, 27.962257, 16.181925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490219, 27.867218, 16.267998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156676, -0.242478, -0.957422,
		0.279657, -0.940612, 0.192457,
		-0.947230, -0.237597, 0.215182,
		29.206051, 27.795938, 16.332552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697479, 27.257334, 15.923102>,  <29.869110, 27.962257, 16.181925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697479, 27.257334, 15.923102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357016, 27.461813, 15.970770>,  <29.152737, 27.584501, 15.999371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357016, 27.461813, 15.970770>,  <29.697479, 27.257334, 15.923102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357016, 27.461813, 15.970770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239660, -0.176490, -0.954680,
		-0.466999, -0.841146, 0.272735,
		-0.851161, 0.511199, 0.119168,
		29.101667, 27.615173, 16.006521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093107, 26.938986, 15.690595>,  <29.697479, 27.257334, 15.923102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093107, 26.938986, 15.690595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995647, 27.325081, 15.652740>,  <28.937172, 27.556738, 15.630027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995647, 27.325081, 15.652740>,  <29.093107, 26.938986, 15.690595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995647, 27.325081, 15.652740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465163, -0.201922, -0.861888,
		-0.851034, -0.165976, 0.498189,
		-0.243648, 0.965235, -0.094637,
		28.922552, 27.614651, 15.624349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421904, 26.926693, 15.350905>,  <29.093107, 26.938986, 15.690595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421904, 26.926693, 15.350905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535332, 27.309170, 15.321826>,  <28.603388, 27.538656, 15.304379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535332, 27.309170, 15.321826>,  <28.421904, 26.926693, 15.350905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535332, 27.309170, 15.321826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494692, 0.080918, -0.865294,
		-0.821504, 0.281334, 0.495966,
		0.283569, 0.956192, -0.072699,
		28.620401, 27.596027, 15.300016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014666, 27.547470, 15.519194>,  <28.421904, 26.926693, 15.350905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014666, 27.547470, 15.519194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901102, 27.218094, 15.322686>,  <27.832964, 27.020468, 15.204782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901102, 27.218094, 15.322686>,  <28.014666, 27.547470, 15.519194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901102, 27.218094, 15.322686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498953, 0.564392, -0.657653,
		0.818804, 0.058406, -0.571094,
		-0.283910, -0.823438, -0.491268,
		27.815929, 26.971062, 15.175305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296423, 27.453201, 14.821518>,  <28.014666, 27.547470, 15.519194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296423, 27.453201, 14.821518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933281, 27.295616, 14.878922>,  <27.715397, 27.201065, 14.913363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933281, 27.295616, 14.878922>,  <28.296423, 27.453201, 14.821518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933281, 27.295616, 14.878922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369255, 0.589091, -0.718765,
		0.198627, -0.705525, -0.680281,
		-0.907853, -0.393963, 0.143509,
		27.660925, 27.177427, 14.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083055, 27.159945, 14.221188>,  <28.296423, 27.453201, 14.821518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083055, 27.159945, 14.221188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797115, 27.307281, 14.458947>,  <27.625551, 27.395683, 14.601604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797115, 27.307281, 14.458947>,  <28.083055, 27.159945, 14.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797115, 27.307281, 14.458947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373384, 0.517644, -0.769824,
		-0.591245, -0.772250, -0.232507,
		-0.714852, 0.368340, 0.594400,
		27.582659, 27.417784, 14.637267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423677, 27.198994, 13.856834>,  <28.083055, 27.159945, 14.221188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423677, 27.198994, 13.856834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409462, 27.472092, 14.148750>,  <27.400932, 27.635950, 14.323900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409462, 27.472092, 14.148750>,  <27.423677, 27.198994, 13.856834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409462, 27.472092, 14.148750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154610, 0.717703, -0.678969,
		-0.987336, -0.136962, 0.080054,
		-0.035538, 0.682747, 0.729790,
		27.398800, 27.676916, 14.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761471, 27.557610, 13.697716>,  <27.423677, 27.198994, 13.856834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761471, 27.557610, 13.697716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001083, 27.804050, 13.902294>,  <27.144852, 27.951916, 14.025042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001083, 27.804050, 13.902294>,  <26.761471, 27.557610, 13.697716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001083, 27.804050, 13.902294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321890, 0.770133, -0.550710,
		-0.733176, 0.165264, 0.659652,
		0.599032, 0.616103, 0.511446,
		27.180794, 27.988882, 14.055728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421934, 28.161892, 14.113500>,  <26.761471, 27.557610, 13.697716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421934, 28.161892, 14.113500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773941, 28.260733, 13.951261>,  <26.985146, 28.320038, 13.853917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773941, 28.260733, 13.951261>,  <26.421934, 28.161892, 14.113500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773941, 28.260733, 13.951261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390568, 0.862428, -0.321986,
		0.270235, 0.441766, 0.855462,
		0.880017, 0.247104, -0.405598,
		27.037947, 28.334864, 13.829581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707930, 28.845360, 14.347341>,  <26.421934, 28.161892, 14.113500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707930, 28.845360, 14.347341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760668, 28.730925, 13.967705>,  <26.792311, 28.662264, 13.739923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760668, 28.730925, 13.967705>,  <26.707930, 28.845360, 14.347341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760668, 28.730925, 13.967705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481362, 0.818505, -0.313593,
		0.866549, 0.498201, -0.029795,
		0.131845, -0.286086, -0.949090,
		26.800220, 28.645100, 13.682978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573412, 29.431646, 14.687162>,  <26.707930, 28.845360, 14.347341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573412, 29.431646, 14.687162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693813, 29.469734, 15.066705>,  <26.766054, 29.492586, 15.294431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693813, 29.469734, 15.066705>,  <26.573412, 29.431646, 14.687162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693813, 29.469734, 15.066705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792505, -0.578400, -0.193363,
		0.530407, 0.810177, -0.249562,
		0.301005, 0.095218, 0.948857,
		26.784115, 29.498299, 15.351362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285110, 29.875666, 15.333729>,  <26.573412, 29.431646, 14.687162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285110, 29.875666, 15.333729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481569, 29.536184, 15.412189>,  <26.599443, 29.332495, 15.459266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481569, 29.536184, 15.412189>,  <26.285110, 29.875666, 15.333729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481569, 29.536184, 15.412189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139414, 0.298869, 0.944056,
		-0.859849, -0.436323, 0.265110,
		0.491146, -0.848705, 0.196153,
		26.628914, 29.281572, 15.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103430, 29.698574, 16.121374>,  <26.285110, 29.875666, 15.333729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103430, 29.698574, 16.121374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411089, 29.465075, 16.017334>,  <26.595684, 29.324974, 15.954910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411089, 29.465075, 16.017334>,  <26.103430, 29.698574, 16.121374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411089, 29.465075, 16.017334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249656, -0.100195, 0.963137,
		-0.588291, -0.805728, 0.068672,
		0.769146, -0.583749, -0.260099,
		26.641832, 29.289949, 15.939304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113880, 28.957748, 16.432325>,  <26.103430, 29.698574, 16.121374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113880, 28.957748, 16.432325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490952, 29.061182, 16.347952>,  <26.717194, 29.123243, 16.297329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490952, 29.061182, 16.347952>,  <26.113880, 28.957748, 16.432325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490952, 29.061182, 16.347952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199982, 0.068254, 0.977419,
		0.267144, -0.963574, 0.012629,
		0.942678, 0.258586, -0.210932,
		26.773754, 29.138758, 16.284672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561205, 28.550806, 16.852850>,  <26.113880, 28.957748, 16.432325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561205, 28.550806, 16.852850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783386, 28.866289, 16.747463>,  <26.916695, 29.055578, 16.684231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783386, 28.866289, 16.747463>,  <26.561205, 28.550806, 16.852850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783386, 28.866289, 16.747463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295355, 0.109052, 0.949144,
		0.777327, -0.605021, -0.172375,
		0.555454, 0.788706, -0.263465,
		26.950022, 29.102901, 16.668425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181095, 28.347965, 17.191866>,  <26.561205, 28.550806, 16.852850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181095, 28.347965, 17.191866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162598, 28.738977, 17.109602>,  <27.151499, 28.973585, 17.060244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162598, 28.738977, 17.109602>,  <27.181095, 28.347965, 17.191866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162598, 28.738977, 17.109602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375063, 0.207809, 0.903406,
		0.925845, -0.035358, -0.376246,
		-0.046245, 0.977530, -0.205661,
		27.148724, 29.032236, 17.047903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839420, 28.606817, 17.466599>,  <27.181095, 28.347965, 17.191866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839420, 28.606817, 17.466599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608511, 28.931808, 17.434015>,  <27.469965, 29.126802, 17.414465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608511, 28.931808, 17.434015>,  <27.839420, 28.606817, 17.466599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608511, 28.931808, 17.434015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246227, 0.268321, 0.931330,
		0.778543, 0.517574, -0.354948,
		-0.577272, 0.812478, -0.081459,
		27.435329, 29.175552, 17.409578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205570, 29.079607, 17.811867>,  <27.839420, 28.606817, 17.466599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205570, 29.079607, 17.811867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840757, 29.243465, 17.804008>,  <27.621870, 29.341782, 17.799294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840757, 29.243465, 17.804008>,  <28.205570, 29.079607, 17.811867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840757, 29.243465, 17.804008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286929, 0.671572, 0.683127,
		0.293034, 0.617397, -0.730035,
		-0.912032, 0.409648, -0.019644,
		27.567148, 29.366360, 17.798115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266813, 29.824202, 17.623848>,  <28.205570, 29.079607, 17.811867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266813, 29.824202, 17.623848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910379, 29.809362, 17.804775>,  <27.696520, 29.800459, 17.913332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910379, 29.809362, 17.804775>,  <28.266813, 29.824202, 17.623848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910379, 29.809362, 17.804775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220217, 0.836113, 0.502413,
		-0.396831, 0.547301, -0.736877,
		-0.891083, -0.037100, 0.452321,
		27.643055, 29.798233, 17.940472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928656, 30.515247, 17.560137>,  <28.266813, 29.824202, 17.623848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928656, 30.515247, 17.560137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752388, 30.352816, 17.880363>,  <27.646627, 30.255356, 18.072500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752388, 30.352816, 17.880363>,  <27.928656, 30.515247, 17.560137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752388, 30.352816, 17.880363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094704, 0.865820, 0.491310,
		-0.892659, 0.292323, -0.343085,
		-0.440671, -0.406081, 0.800566,
		27.620186, 30.230991, 18.120533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567219, 31.016624, 17.800741>,  <27.928656, 30.515247, 17.560137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567219, 31.016624, 17.800741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586985, 30.769621, 18.114744>,  <27.598845, 30.621418, 18.303146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586985, 30.769621, 18.114744>,  <27.567219, 31.016624, 17.800741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586985, 30.769621, 18.114744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073058, 0.781629, 0.619450,
		-0.996103, -0.087962, -0.006488,
		0.049417, -0.617510, 0.785009,
		27.601810, 30.584368, 18.350246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230274, 31.368746, 18.342228>,  <27.567219, 31.016624, 17.800741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230274, 31.368746, 18.342228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406490, 31.094738, 18.574324>,  <27.512220, 30.930334, 18.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406490, 31.094738, 18.574324>,  <27.230274, 31.368746, 18.342228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406490, 31.094738, 18.574324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127615, 0.591988, 0.795779,
		-0.888617, -0.424618, 0.173375,
		0.440538, -0.685018, 0.580239,
		27.538652, 30.889233, 18.748396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752501, 31.310953, 18.941252>,  <27.230274, 31.368746, 18.342228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752501, 31.310953, 18.941252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131052, 31.200239, 19.007895>,  <27.358183, 31.133812, 19.047880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131052, 31.200239, 19.007895>,  <26.752501, 31.310953, 18.941252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131052, 31.200239, 19.007895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053092, 0.641954, 0.764903,
		-0.318666, -0.715043, 0.622227,
		0.946379, -0.276784, 0.166606,
		27.414967, 31.117205, 19.057877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804783, 31.125189, 19.677010>,  <26.752501, 31.310953, 18.941252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804783, 31.125189, 19.677010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172064, 31.229868, 19.558067>,  <27.392431, 31.292675, 19.486702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172064, 31.229868, 19.558067>,  <26.804783, 31.125189, 19.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172064, 31.229868, 19.558067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036585, 0.691448, 0.721499,
		0.394422, -0.673360, 0.625314,
		0.918201, 0.261698, -0.297357,
		27.447523, 31.308378, 19.468861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120728, 31.314606, 20.264847>,  <26.804783, 31.125189, 19.677010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120728, 31.314606, 20.264847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413546, 31.419487, 20.013336>,  <27.589235, 31.482416, 19.862429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413546, 31.419487, 20.013336>,  <27.120728, 31.314606, 20.264847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413546, 31.419487, 20.013336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423196, 0.548264, 0.721327,
		0.533868, -0.794140, 0.290392,
		0.732046, 0.262200, -0.628777,
		27.633160, 31.498148, 19.824703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824488, 31.100876, 20.603079>,  <27.120728, 31.314606, 20.264847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824488, 31.100876, 20.603079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890751, 31.399019, 20.344778>,  <27.930510, 31.577906, 20.189798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890751, 31.399019, 20.344778>,  <27.824488, 31.100876, 20.603079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890751, 31.399019, 20.344778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515545, 0.492746, 0.701009,
		0.840696, -0.449043, -0.302639,
		0.165660, 0.745360, -0.645752,
		27.940449, 31.622627, 20.151052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481682, 31.294058, 20.705740>,  <27.824488, 31.100876, 20.603079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481682, 31.294058, 20.705740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329769, 31.610416, 20.513805>,  <28.238621, 31.800232, 20.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329769, 31.610416, 20.513805>,  <28.481682, 31.294058, 20.705740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329769, 31.610416, 20.513805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411220, 0.608972, 0.678271,
		0.828651, 0.060277, -0.556511,
		-0.379784, 0.790898, -0.479838,
		28.215834, 31.847685, 20.369854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064978, 31.771441, 20.659689>,  <28.481682, 31.294058, 20.705740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064978, 31.771441, 20.659689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708019, 31.948088, 20.622585>,  <28.493845, 32.054077, 20.600323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708019, 31.948088, 20.622585>,  <29.064978, 31.771441, 20.659689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708019, 31.948088, 20.622585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241591, 0.641185, 0.728365,
		0.381135, 0.627580, -0.678881,
		-0.892395, 0.441618, -0.092760,
		28.440300, 32.080574, 20.594757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140690, 32.483154, 20.686388>,  <29.064978, 31.771441, 20.659689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140690, 32.483154, 20.686388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757355, 32.439457, 20.791952>,  <28.527353, 32.413239, 20.855291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757355, 32.439457, 20.791952>,  <29.140690, 32.483154, 20.686388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757355, 32.439457, 20.791952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149412, 0.595734, 0.789162,
		-0.243435, 0.795717, -0.554593,
		-0.958340, -0.109247, 0.263912,
		28.469852, 32.406681, 20.871126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047062, 33.166977, 20.960129>,  <29.140690, 32.483154, 20.686388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047062, 33.166977, 20.960129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718128, 32.974297, 21.081280>,  <28.520767, 32.858688, 21.153971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718128, 32.974297, 21.081280>,  <29.047062, 33.166977, 20.960129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718128, 32.974297, 21.081280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004966, 0.526196, 0.850349,
		-0.568984, 0.700774, -0.430317,
		-0.822334, -0.481698, 0.302877,
		28.471428, 32.829788, 21.172142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570076, 33.671196, 21.151897>,  <29.047062, 33.166977, 20.960129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570076, 33.671196, 21.151897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426342, 33.341225, 21.326427>,  <28.340101, 33.143242, 21.431147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426342, 33.341225, 21.326427>,  <28.570076, 33.671196, 21.151897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426342, 33.341225, 21.326427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138857, 0.509613, 0.849125,
		-0.922821, 0.244532, -0.297667,
		-0.359333, -0.824924, 0.436327,
		28.318542, 33.093746, 21.457325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899588, 33.818325, 21.501526>,  <28.570076, 33.671196, 21.151897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899588, 33.818325, 21.501526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063917, 33.503269, 21.685198>,  <28.162516, 33.314236, 21.795401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063917, 33.503269, 21.685198>,  <27.899588, 33.818325, 21.501526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063917, 33.503269, 21.685198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230966, 0.397306, 0.888146,
		-0.881974, -0.470928, -0.018694,
		0.410825, -0.787639, 0.459181,
		28.187164, 33.266979, 21.822952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412552, 33.736969, 21.913563>,  <27.899588, 33.818325, 21.501526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412552, 33.736969, 21.913563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719227, 33.536350, 22.073883>,  <27.903231, 33.415977, 22.170074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719227, 33.536350, 22.073883>,  <27.412552, 33.736969, 21.913563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719227, 33.536350, 22.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026412, 0.599109, 0.800231,
		-0.641479, -0.624112, 0.446081,
		0.766685, -0.501550, 0.400801,
		27.949232, 33.385887, 22.194122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187075, 33.711681, 22.589825>,  <27.412552, 33.736969, 21.913563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187075, 33.711681, 22.589825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575327, 33.615559, 22.594288>,  <27.808279, 33.557884, 22.596966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575327, 33.615559, 22.594288>,  <27.187075, 33.711681, 22.589825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575327, 33.615559, 22.594288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101848, 0.452521, 0.885918,
		-0.217943, -0.858765, 0.463707,
		0.970633, -0.240307, 0.011161,
		27.866516, 33.543468, 22.597635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218109, 33.222717, 23.142445>,  <27.187075, 33.711681, 22.589825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218109, 33.222717, 23.142445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577835, 33.391850, 23.097830>,  <27.793671, 33.493328, 23.071060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577835, 33.391850, 23.097830>,  <27.218109, 33.222717, 23.142445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577835, 33.391850, 23.097830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022382, 0.299236, 0.953916,
		0.436727, -0.855375, 0.278572,
		0.899316, 0.422836, -0.111540,
		27.847630, 33.518700, 23.064367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713600, 33.029751, 23.810198>,  <27.218109, 33.222717, 23.142445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713600, 33.029751, 23.810198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896523, 33.346844, 23.648975>,  <28.006275, 33.537098, 23.552242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896523, 33.346844, 23.648975>,  <27.713600, 33.029751, 23.810198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896523, 33.346844, 23.648975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101266, 0.403858, 0.909200,
		0.883527, -0.456596, 0.104409,
		0.457304, 0.792729, -0.403057,
		28.033714, 33.584663, 23.528059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208521, 33.130127, 24.278946>,  <27.713600, 33.029751, 23.810198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208521, 33.130127, 24.278946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148733, 33.466167, 24.070372>,  <28.112860, 33.667789, 23.945227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148733, 33.466167, 24.070372>,  <28.208521, 33.130127, 24.278946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148733, 33.466167, 24.070372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160649, 0.540986, 0.825546,
		0.975628, 0.039626, -0.215822,
		-0.149470, 0.840097, -0.521435,
		28.103891, 33.718197, 23.913940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783062, 33.519455, 24.420139>,  <28.208521, 33.130127, 24.278946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783062, 33.519455, 24.420139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494753, 33.768951, 24.299187>,  <28.321768, 33.918648, 24.226616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494753, 33.768951, 24.299187>,  <28.783062, 33.519455, 24.420139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494753, 33.768951, 24.299187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289187, 0.667035, 0.686611,
		0.629966, 0.407446, -0.661159,
		-0.720773, 0.623740, -0.302381,
		28.278521, 33.956074, 24.208473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127491, 34.173233, 24.598330>,  <28.783062, 33.519455, 24.420139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127491, 34.173233, 24.598330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746410, 34.281818, 24.543680>,  <28.517761, 34.346970, 24.510891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746410, 34.281818, 24.543680>,  <29.127491, 34.173233, 24.598330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746410, 34.281818, 24.543680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150490, 0.811982, 0.563949,
		0.264027, 0.516715, -0.814429,
		-0.952703, 0.271461, -0.136625,
		28.460600, 34.363258, 24.502693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218899, 34.792316, 24.611898>,  <29.127491, 34.173233, 24.598330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218899, 34.792316, 24.611898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834078, 34.718330, 24.692137>,  <28.603186, 34.673939, 24.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834078, 34.718330, 24.692137>,  <29.218899, 34.792316, 24.611898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834078, 34.718330, 24.692137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002018, 0.730325, 0.683097,
		-0.272852, 0.657581, -0.702239,
		-0.962054, -0.184967, 0.200598,
		28.545462, 34.662842, 24.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966322, 35.445232, 24.723625>,  <29.218899, 34.792316, 24.611898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966322, 35.445232, 24.723625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706614, 35.188137, 24.886269>,  <28.550789, 35.033878, 24.983854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706614, 35.188137, 24.886269>,  <28.966322, 35.445232, 24.723625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706614, 35.188137, 24.886269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081899, 0.590596, 0.802801,
		-0.756136, 0.487933, -0.436096,
		-0.649269, -0.642742, 0.406610,
		28.511833, 34.995316, 25.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354006, 35.892647, 25.039186>,  <28.966322, 35.445232, 24.723625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354006, 35.892647, 25.039186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380875, 35.543732, 25.232927>,  <28.396996, 35.334381, 25.349173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380875, 35.543732, 25.232927>,  <28.354006, 35.892647, 25.039186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380875, 35.543732, 25.232927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153440, 0.470644, 0.868879,
		-0.985872, -0.132682, -0.102231,
		0.067170, -0.872290, 0.484353,
		28.401026, 35.282043, 25.378233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725979, 35.863659, 25.534311>,  <28.354006, 35.892647, 25.039186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725979, 35.863659, 25.534311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989923, 35.590611, 25.659920>,  <28.148291, 35.426781, 25.735285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989923, 35.590611, 25.659920>,  <27.725979, 35.863659, 25.534311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989923, 35.590611, 25.659920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174525, 0.267254, 0.947690,
		-0.730837, -0.680150, 0.057216,
		0.659862, -0.682621, 0.314022,
		28.187881, 35.385822, 25.754126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389729, 35.435871, 25.964502>,  <27.725979, 35.863659, 25.534311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389729, 35.435871, 25.964502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773447, 35.407673, 26.073889>,  <28.003677, 35.390755, 26.139521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773447, 35.407673, 26.073889>,  <27.389729, 35.435871, 25.964502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773447, 35.407673, 26.073889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251526, 0.227027, 0.940847,
		-0.128408, -0.971334, 0.200055,
		0.959295, -0.070494, 0.273468,
		28.061235, 35.386524, 26.155930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299917, 35.290031, 26.638227>,  <27.389729, 35.435871, 25.964502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299917, 35.290031, 26.638227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678398, 35.416443, 26.610437>,  <27.905487, 35.492290, 26.593763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678398, 35.416443, 26.610437>,  <27.299917, 35.290031, 26.638227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678398, 35.416443, 26.610437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059006, 0.379640, 0.923251,
		0.318145, -0.869484, 0.377864,
		0.946204, 0.316024, -0.069476,
		27.962259, 35.511250, 26.589594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654263, 34.987019, 27.328566>,  <27.299917, 35.290031, 26.638227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654263, 34.987019, 27.328566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905142, 35.271957, 27.202597>,  <28.055670, 35.442921, 27.127016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905142, 35.271957, 27.202597>,  <27.654263, 34.987019, 27.328566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905142, 35.271957, 27.202597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096200, 0.330389, 0.938929,
		0.772895, -0.619191, 0.138691,
		0.627199, 0.712352, -0.314923,
		28.093302, 35.485664, 27.108120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279734, 34.940655, 27.649790>,  <27.654263, 34.987019, 27.328566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279734, 34.940655, 27.649790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282553, 35.325413, 27.540461>,  <28.284245, 35.556267, 27.474863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282553, 35.325413, 27.540461>,  <28.279734, 34.940655, 27.649790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282553, 35.325413, 27.540461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034217, 0.273402, 0.961291,
		0.999390, 0.002580, 0.034840,
		0.007045, 0.961897, -0.273324,
		28.284666, 35.613983, 27.458464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792377, 35.296974, 28.066854>,  <28.279734, 34.940655, 27.649790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792377, 35.296974, 28.066854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590555, 35.608444, 27.917671>,  <28.469461, 35.795326, 27.828161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590555, 35.608444, 27.917671>,  <28.792377, 35.296974, 28.066854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590555, 35.608444, 27.917671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200105, 0.525677, 0.826814,
		0.839870, 0.342543, -0.421049,
		-0.504555, 0.778671, -0.372956,
		28.439188, 35.842045, 27.805784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311699, 35.817314, 28.020329>,  <28.792377, 35.296974, 28.066854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311699, 35.817314, 28.020329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950861, 35.988823, 28.039839>,  <28.734358, 36.091728, 28.051544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950861, 35.988823, 28.039839>,  <29.311699, 35.817314, 28.020329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950861, 35.988823, 28.039839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290276, 0.519269, 0.803803,
		0.319322, 0.739264, -0.592892,
		-0.902094, 0.428775, 0.048776,
		28.680233, 36.117455, 28.054472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435614, 36.601631, 28.032364>,  <29.311699, 35.817314, 28.020329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435614, 36.601631, 28.032364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066936, 36.547691, 28.177856>,  <28.845730, 36.515327, 28.265152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066936, 36.547691, 28.177856>,  <29.435614, 36.601631, 28.032364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066936, 36.547691, 28.177856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186669, 0.667762, 0.720589,
		-0.340058, 0.732058, -0.590298,
		-0.921691, -0.134852, 0.363731,
		28.790428, 36.507236, 28.286976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042402, 37.248913, 27.951010>,  <29.435614, 36.601631, 28.032364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042402, 37.248913, 27.951010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907791, 37.021404, 28.251207>,  <28.827024, 36.884899, 28.431326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907791, 37.021404, 28.251207>,  <29.042402, 37.248913, 27.951010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907791, 37.021404, 28.251207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017752, 0.800670, 0.598842,
		-0.941506, 0.188205, -0.279546,
		-0.336529, -0.568776, 0.750495,
		28.806833, 36.850773, 28.476357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839600, 37.288696, 27.883160>,  <29.042402, 37.248913, 27.951010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839600, 37.288696, 27.883160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012766, 37.549568, 27.634243>,  <30.116667, 37.706089, 27.484892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012766, 37.549568, 27.634243>,  <29.839600, 37.288696, 27.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012766, 37.549568, 27.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222652, -0.591586, -0.774888,
		-0.873504, 0.474018, -0.110900,
		0.432918, 0.652176, -0.622294,
		30.142641, 37.745220, 27.447556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321817, 37.435093, 27.240986>,  <29.839600, 37.288696, 27.883160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321817, 37.435093, 27.240986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704971, 37.488022, 27.139046>,  <29.934864, 37.519779, 27.077881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704971, 37.488022, 27.139046>,  <29.321817, 37.435093, 27.240986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704971, 37.488022, 27.139046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186797, -0.386913, -0.902998,
		-0.218096, 0.912572, -0.345900,
		0.957884, 0.132327, -0.254850,
		29.992336, 37.527721, 27.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331100, 37.645485, 26.498779>,  <29.321817, 37.435093, 27.240986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331100, 37.645485, 26.498779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724911, 37.584251, 26.532900>,  <29.961197, 37.547512, 26.553371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724911, 37.584251, 26.532900>,  <29.331100, 37.645485, 26.498779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724911, 37.584251, 26.532900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008954, -0.442168, -0.896888,
		0.175016, 0.883772, -0.433955,
		0.984525, -0.153084, 0.085299,
		30.020267, 37.538326, 26.558489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626194, 37.947975, 25.924379>,  <29.331100, 37.645485, 26.498779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626194, 37.947975, 25.924379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884562, 37.671951, 26.054979>,  <30.039583, 37.506336, 26.133339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884562, 37.671951, 26.054979>,  <29.626194, 37.947975, 25.924379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884562, 37.671951, 26.054979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138546, -0.314624, -0.939051,
		0.750727, 0.651788, -0.107617,
		0.645921, -0.690061, 0.326500,
		30.078339, 37.464931, 26.152929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023403, 37.946682, 25.428619>,  <29.626194, 37.947975, 25.924379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023403, 37.946682, 25.428619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113400, 37.599644, 25.605999>,  <30.167397, 37.391418, 25.712427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113400, 37.599644, 25.605999>,  <30.023403, 37.946682, 25.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113400, 37.599644, 25.605999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211733, -0.400710, -0.891404,
		0.951077, 0.294451, 0.093544,
		0.224990, -0.867600, 0.443451,
		30.180897, 37.339363, 25.739035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663280, 37.670265, 25.093536>,  <30.023403, 37.946682, 25.428619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663280, 37.670265, 25.093536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488150, 37.357933, 25.271799>,  <30.383070, 37.170532, 25.378757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488150, 37.357933, 25.271799>,  <30.663280, 37.670265, 25.093536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488150, 37.357933, 25.271799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092089, -0.532034, -0.841700,
		0.894330, -0.327480, 0.304846,
		-0.437828, -0.780830, 0.445657,
		30.356800, 37.123684, 25.405497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968084, 36.959332, 24.835583>,  <30.663280, 37.670265, 25.093536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968084, 36.959332, 24.835583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615950, 36.860401, 24.997490>,  <30.404669, 36.801041, 25.094635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615950, 36.860401, 24.997490>,  <30.968084, 36.959332, 24.835583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615950, 36.860401, 24.997490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100810, -0.736266, -0.669141,
		0.463515, -0.629874, 0.623228,
		-0.880336, -0.247330, 0.404768,
		30.351849, 36.786201, 25.118919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875217, 36.214436, 24.909382>,  <30.968084, 36.959332, 24.835583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875217, 36.214436, 24.909382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496048, 36.339947, 24.887522>,  <30.268547, 36.415253, 24.874405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496048, 36.339947, 24.887522>,  <30.875217, 36.214436, 24.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496048, 36.339947, 24.887522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134750, -0.550577, -0.823837,
		-0.288588, -0.773571, 0.564186,
		-0.947924, 0.313774, -0.054651,
		30.211672, 36.434078, 24.871126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547598, 35.622425, 24.622217>,  <30.875217, 36.214436, 24.909382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547598, 35.622425, 24.622217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291998, 35.921112, 24.548367>,  <30.138638, 36.100327, 24.504057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291998, 35.921112, 24.548367>,  <30.547598, 35.622425, 24.622217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291998, 35.921112, 24.548367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329463, -0.482582, -0.811523,
		-0.695078, -0.457736, 0.554387,
		-0.639000, 0.746721, -0.184625,
		30.100298, 36.145130, 24.492979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004335, 35.306755, 24.304375>,  <30.547598, 35.622425, 24.622217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004335, 35.306755, 24.304375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936466, 35.690201, 24.212927>,  <29.895744, 35.920269, 24.158058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936466, 35.690201, 24.212927>,  <30.004335, 35.306755, 24.304375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936466, 35.690201, 24.212927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233468, -0.264481, -0.935704,
		-0.957447, -0.105387, 0.268681,
		-0.169672, 0.958616, -0.228622,
		29.885565, 35.977787, 24.144341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237852, 35.307888, 24.053158>,  <30.004335, 35.306755, 24.304375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237852, 35.307888, 24.053158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415768, 35.634117, 23.905106>,  <29.522516, 35.829857, 23.816275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415768, 35.634117, 23.905106>,  <29.237852, 35.307888, 24.053158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415768, 35.634117, 23.905106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156413, -0.336177, -0.928719,
		-0.881871, 0.470978, -0.021961,
		0.444790, 0.815576, -0.370132,
		29.549204, 35.878792, 23.794065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741179, 35.643593, 23.582834>,  <29.237852, 35.307888, 24.053158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741179, 35.643593, 23.582834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099489, 35.781330, 23.470394>,  <29.314476, 35.863972, 23.402931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099489, 35.781330, 23.470394>,  <28.741179, 35.643593, 23.582834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099489, 35.781330, 23.470394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280591, -0.052437, -0.958394,
		-0.344753, 0.937380, 0.049646,
		0.895776, 0.344339, -0.281098,
		29.368221, 35.884632, 23.386065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556339, 36.165791, 23.018679>,  <28.741179, 35.643593, 23.582834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556339, 36.165791, 23.018679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943487, 36.095299, 22.946938>,  <29.175776, 36.053001, 22.903893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943487, 36.095299, 22.946938>,  <28.556339, 36.165791, 23.018679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943487, 36.095299, 22.946938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171522, 0.058833, -0.983422,
		0.183863, 0.982589, 0.026715,
		0.967871, -0.176233, -0.179353,
		29.233849, 36.042427, 22.893131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688419, 36.626465, 22.504210>,  <28.556339, 36.165791, 23.018679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688419, 36.626465, 22.504210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973549, 36.345932, 22.505621>,  <29.144627, 36.177612, 22.506468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973549, 36.345932, 22.505621>,  <28.688419, 36.626465, 22.504210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973549, 36.345932, 22.505621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001298, -0.006354, -0.999979,
		0.701340, 0.712806, -0.005440,
		0.712826, -0.701332, 0.003531,
		29.187397, 36.135532, 22.506680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113445, 36.712440, 21.935459>,  <28.688419, 36.626465, 22.504210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113445, 36.712440, 21.935459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235388, 36.343681, 22.031097>,  <29.308554, 36.122425, 22.088480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235388, 36.343681, 22.031097>,  <29.113445, 36.712440, 21.935459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235388, 36.343681, 22.031097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082213, -0.275582, -0.957755,
		0.948844, 0.272319, -0.159804,
		0.304854, -0.921898, 0.239096,
		29.326843, 36.067112, 22.102827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629189, 36.459354, 21.314148>,  <29.113445, 36.712440, 21.935459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629189, 36.459354, 21.314148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502989, 36.134605, 21.510647>,  <29.427269, 35.939758, 21.628546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502989, 36.134605, 21.510647>,  <29.629189, 36.459354, 21.314148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502989, 36.134605, 21.510647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176894, -0.458295, -0.871019,
		0.932292, -0.361706, 0.000978,
		-0.315501, -0.811871, 0.491248,
		29.408339, 35.891045, 21.658022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000977, 35.928978, 21.001570>,  <29.629189, 36.459354, 21.314148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000977, 35.928978, 21.001570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678274, 35.778065, 21.183474>,  <29.484653, 35.687519, 21.292616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678274, 35.778065, 21.183474>,  <30.000977, 35.928978, 21.001570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678274, 35.778065, 21.183474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163265, -0.597332, -0.785199,
		0.567882, -0.707710, 0.420305,
		-0.806755, -0.377279, 0.454759,
		29.436247, 35.664883, 21.319901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047560, 35.166237, 21.010048>,  <30.000977, 35.928978, 21.001570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047560, 35.166237, 21.010048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658833, 35.257042, 21.035473>,  <29.425596, 35.311523, 21.050728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658833, 35.257042, 21.035473>,  <30.047560, 35.166237, 21.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658833, 35.257042, 21.035473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198880, -0.644726, -0.738089,
		-0.126573, -0.729928, 0.671703,
		-0.971816, 0.227010, 0.063564,
		29.367289, 35.325146, 21.054543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752508, 34.597076, 20.999884>,  <30.047560, 35.166237, 21.010048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752508, 34.597076, 20.999884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433172, 34.822308, 20.914467>,  <29.241570, 34.957447, 20.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433172, 34.822308, 20.914467>,  <29.752508, 34.597076, 20.999884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433172, 34.822308, 20.914467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264949, -0.646851, -0.715112,
		-0.540789, -0.514326, 0.665594,
		-0.798341, 0.563073, -0.213539,
		29.193670, 34.991230, 20.850405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146271, 34.112511, 20.796274>,  <29.752508, 34.597076, 20.999884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146271, 34.112511, 20.796274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028332, 34.459248, 20.635448>,  <28.957569, 34.667290, 20.538954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028332, 34.459248, 20.635448>,  <29.146271, 34.112511, 20.796274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028332, 34.459248, 20.635448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283226, -0.481141, -0.829630,
		-0.912606, -0.130738, 0.387374,
		-0.294845, 0.866840, -0.402063,
		28.939878, 34.719299, 20.514830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454081, 34.105717, 20.503597>,  <29.146271, 34.112511, 20.796274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454081, 34.105717, 20.503597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596176, 34.404415, 20.278681>,  <28.681433, 34.583633, 20.143732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596176, 34.404415, 20.278681>,  <28.454081, 34.105717, 20.503597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596176, 34.404415, 20.278681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370327, -0.439881, -0.818146,
		-0.858291, 0.498867, 0.120280,
		0.355238, 0.746750, -0.562290,
		28.702747, 34.628441, 20.109993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944736, 34.193710, 19.968145>,  <28.454081, 34.105717, 20.503597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944736, 34.193710, 19.968145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272200, 34.361885, 19.811670>,  <28.468678, 34.462791, 19.717785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272200, 34.361885, 19.811670>,  <27.944736, 34.193710, 19.968145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272200, 34.361885, 19.811670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228249, -0.386853, -0.893447,
		-0.526971, 0.820718, -0.220737,
		0.818660, 0.420437, -0.391188,
		28.517797, 34.488018, 19.694313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780354, 34.230354, 19.233315>,  <27.944736, 34.193710, 19.968145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780354, 34.230354, 19.233315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174953, 34.284554, 19.270107>,  <28.411713, 34.317074, 19.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174953, 34.284554, 19.270107>,  <27.780354, 34.230354, 19.233315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174953, 34.284554, 19.270107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137047, -0.375530, -0.916622,
		-0.089658, 0.916852, -0.389030,
		0.986499, 0.135498, 0.091983,
		28.470903, 34.325203, 19.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017048, 34.490509, 18.649572>,  <27.780354, 34.230354, 19.233315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017048, 34.490509, 18.649572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350864, 34.310268, 18.776381>,  <28.551155, 34.202126, 18.852465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350864, 34.310268, 18.776381>,  <28.017048, 34.490509, 18.649572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350864, 34.310268, 18.776381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085705, -0.462228, -0.882610,
		0.544237, 0.763745, -0.347130,
		0.834542, -0.450598, 0.317018,
		28.601227, 34.175087, 18.871487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540874, 34.467907, 18.042910>,  <28.017048, 34.490509, 18.649572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540874, 34.467907, 18.042910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683855, 34.183239, 18.284822>,  <28.769644, 34.012440, 18.429970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683855, 34.183239, 18.284822>,  <28.540874, 34.467907, 18.042910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683855, 34.183239, 18.284822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213678, -0.568067, -0.794759,
		0.909159, 0.413316, -0.050989,
		0.357452, -0.711667, 0.604780,
		28.791090, 33.969738, 18.466257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904472, 34.159203, 17.599344>,  <28.540874, 34.467907, 18.042910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904472, 34.159203, 17.599344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925200, 33.892593, 17.896816>,  <28.937635, 33.732628, 18.075300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925200, 33.892593, 17.896816>,  <28.904472, 34.159203, 17.599344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925200, 33.892593, 17.896816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314964, -0.695769, -0.645526,
		0.947688, 0.267683, 0.173876,
		0.051819, -0.666522, 0.743682,
		28.940744, 33.692638, 18.119921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538826, 33.863056, 17.560030>,  <28.904472, 34.159203, 17.599344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538826, 33.863056, 17.560030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311768, 33.596790, 17.753803>,  <29.175533, 33.437031, 17.870068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311768, 33.596790, 17.753803>,  <29.538826, 33.863056, 17.560030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311768, 33.596790, 17.753803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337579, -0.724879, -0.600492,
		0.750879, -0.177331, 0.636187,
		-0.567645, -0.665661, 0.484433,
		29.141474, 33.397091, 17.899134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024340, 33.355282, 17.777205>,  <29.538826, 33.863056, 17.560030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024340, 33.355282, 17.777205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659052, 33.195019, 17.747524>,  <29.439878, 33.098862, 17.729717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659052, 33.195019, 17.747524>,  <30.024340, 33.355282, 17.777205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659052, 33.195019, 17.747524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361711, -0.713271, -0.600342,
		0.187607, -0.575082, 0.796294,
		-0.913219, -0.400656, -0.074199,
		29.385086, 33.074821, 17.725264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148926, 32.607368, 17.830708>,  <30.024340, 33.355282, 17.777205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148926, 32.607368, 17.830708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792200, 32.653690, 17.655775>,  <29.578165, 32.681484, 17.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792200, 32.653690, 17.655775>,  <30.148926, 32.607368, 17.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792200, 32.653690, 17.655775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215531, -0.741169, -0.635779,
		-0.397764, -0.661254, 0.636024,
		-0.891813, 0.115807, -0.437331,
		29.524656, 32.688431, 17.524576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798094, 31.925583, 17.900549>,  <30.148926, 32.607368, 17.830708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798094, 31.925583, 17.900549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602444, 32.111095, 17.605072>,  <29.485054, 32.222404, 17.427786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602444, 32.111095, 17.605072>,  <29.798094, 31.925583, 17.900549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602444, 32.111095, 17.605072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106105, -0.808985, -0.578174,
		-0.865735, -0.361179, 0.346486,
		-0.489126, 0.463782, -0.738690,
		29.455706, 32.250229, 17.383465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472431, 31.346260, 17.559494>,  <29.798094, 31.925583, 17.900549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472431, 31.346260, 17.559494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435036, 31.640083, 17.290665>,  <29.412598, 31.816378, 17.129366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435036, 31.640083, 17.290665>,  <29.472431, 31.346260, 17.559494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435036, 31.640083, 17.290665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096327, -0.665192, -0.740433,
		-0.990949, -0.133963, -0.008569,
		-0.093490, 0.734557, -0.672076,
		29.406988, 31.860451, 17.089043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825361, 31.159895, 17.095917>,  <29.472431, 31.346260, 17.559494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825361, 31.159895, 17.095917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100538, 31.380436, 16.907133>,  <29.265644, 31.512760, 16.793863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100538, 31.380436, 16.907133>,  <28.825361, 31.159895, 17.095917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100538, 31.380436, 16.907133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063661, -0.693629, -0.717514,
		-0.722969, 0.463562, -0.512276,
		0.687941, 0.551352, -0.471961,
		29.306921, 31.545841, 16.765545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696665, 31.003906, 16.298296>,  <28.825361, 31.159895, 17.095917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696665, 31.003906, 16.298296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052774, 31.185133, 16.316805>,  <29.266441, 31.293869, 16.327909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052774, 31.185133, 16.316805>,  <28.696665, 31.003906, 16.298296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052774, 31.185133, 16.316805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330049, -0.571841, -0.751043,
		-0.313812, 0.683907, -0.658629,
		0.890275, 0.453066, 0.046272,
		29.319857, 31.321053, 16.330687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851612, 31.051270, 15.587315>,  <28.696665, 31.003906, 16.298296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851612, 31.051270, 15.587315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194164, 31.110531, 15.785169>,  <29.399696, 31.146088, 15.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194164, 31.110531, 15.785169>,  <28.851612, 31.051270, 15.587315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194164, 31.110531, 15.785169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500425, -0.474179, -0.724382,
		0.127227, 0.867874, -0.480216,
		0.856381, 0.148151, 0.494634,
		29.451078, 31.154976, 15.933558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232937, 31.353586, 15.111036>,  <28.851612, 31.051270, 15.587315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232937, 31.353586, 15.111036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470053, 31.169380, 15.375318>,  <29.612322, 31.058857, 15.533886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470053, 31.169380, 15.375318>,  <29.232937, 31.353586, 15.111036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470053, 31.169380, 15.375318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490879, -0.443775, -0.749735,
		0.638467, 0.768759, -0.037008,
		0.592789, -0.460514, 0.660703,
		29.647890, 31.031225, 15.573528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835445, 31.256659, 14.755041>,  <29.232937, 31.353586, 15.111036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835445, 31.256659, 14.755041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908840, 31.023388, 15.071582>,  <29.952877, 30.883427, 15.261506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908840, 31.023388, 15.071582>,  <29.835445, 31.256659, 14.755041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908840, 31.023388, 15.071582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696339, -0.491112, -0.523375,
		0.693862, 0.647083, 0.315975,
		0.183488, -0.583175, 0.791352,
		29.963886, 30.848434, 15.308988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538153, 31.269970, 14.894310>,  <29.835445, 31.256659, 14.755041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538153, 31.269970, 14.894310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419535, 30.924414, 15.057159>,  <30.348364, 30.717079, 15.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419535, 30.924414, 15.057159>,  <30.538153, 31.269970, 14.894310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419535, 30.924414, 15.057159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736128, -0.478353, -0.478846,
		0.608420, 0.157696, 0.777789,
		-0.296546, -0.863893, 0.407124,
		30.330570, 30.665245, 15.179296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150827, 30.914129, 15.010767>,  <30.538153, 31.269970, 14.894310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150827, 30.914129, 15.010767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879192, 30.620554, 15.005496>,  <30.716211, 30.444408, 15.002334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879192, 30.620554, 15.005496>,  <31.150827, 30.914129, 15.010767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879192, 30.620554, 15.005496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652077, -0.594906, -0.469981,
		0.337098, -0.327750, 0.882578,
		-0.679087, -0.733939, -0.013177,
		30.675467, 30.400372, 15.001543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153658, 30.298853, 14.501700>,  <31.150827, 30.914129, 15.010767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153658, 30.298853, 14.501700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464041, 30.418633, 14.279629>,  <31.650270, 30.490501, 14.146386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464041, 30.418633, 14.279629>,  <31.153658, 30.298853, 14.501700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464041, 30.418633, 14.279629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363080, 0.507687, 0.781298,
		0.515826, -0.807823, 0.285212,
		0.775949, 0.299459, -0.555182,
		31.696827, 30.508469, 14.113075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783524, 30.124113, 14.794440>,  <31.153658, 30.298853, 14.501700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783524, 30.124113, 14.794440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863686, 30.431385, 14.551217>,  <31.911783, 30.615749, 14.405283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863686, 30.431385, 14.551217>,  <31.783524, 30.124113, 14.794440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863686, 30.431385, 14.551217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377081, 0.512357, 0.771557,
		0.904239, -0.383910, -0.186989,
		0.200404, 0.768181, -0.608059,
		31.923807, 30.661839, 14.368799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423653, 30.307922, 14.994016>,  <31.783524, 30.124113, 14.794440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423653, 30.307922, 14.994016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259285, 30.613331, 14.794744>,  <32.160664, 30.796576, 14.675180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259285, 30.613331, 14.794744>,  <32.423653, 30.307922, 14.994016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259285, 30.613331, 14.794744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335022, 0.634678, 0.696380,
		0.847883, 0.119255, -0.516597,
		-0.410920, 0.763520, -0.498179,
		32.136009, 30.842386, 14.645289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956490, 30.806501, 14.906367>,  <32.423653, 30.307922, 14.994016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956490, 30.806501, 14.906367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610874, 31.006046, 14.879336>,  <32.403503, 31.125772, 14.863118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610874, 31.006046, 14.879336>,  <32.956490, 30.806501, 14.906367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610874, 31.006046, 14.879336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322749, 0.651956, 0.686138,
		0.386346, 0.571043, -0.724325,
		-0.864043, 0.498862, -0.067577,
		32.351662, 31.155704, 14.859063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118713, 31.468241, 14.819518>,  <32.956490, 30.806501, 14.906367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118713, 31.468241, 14.819518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731224, 31.499586, 14.913702>,  <32.498730, 31.518393, 14.970212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731224, 31.499586, 14.913702>,  <33.118713, 31.468241, 14.819518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731224, 31.499586, 14.913702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207047, 0.778278, 0.592803,
		-0.136799, 0.623011, -0.770158,
		-0.968720, 0.078364, 0.235460,
		32.440609, 31.523096, 14.984340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024242, 32.153564, 14.757364>,  <33.118713, 31.468241, 14.819518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024242, 32.153564, 14.757364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744617, 32.008347, 15.003782>,  <32.576843, 31.921215, 15.151632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744617, 32.008347, 15.003782>,  <33.024242, 32.153564, 14.757364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744617, 32.008347, 15.003782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103414, 0.801139, 0.589476,
		-0.707543, 0.475788, -0.522502,
		-0.699062, -0.363046, 0.616044,
		32.534901, 31.899433, 15.188596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572735, 32.752468, 14.928167>,  <33.024242, 32.153564, 14.757364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572735, 32.752468, 14.928167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491512, 32.487991, 15.217052>,  <32.442780, 32.329304, 15.390384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491512, 32.487991, 15.217052>,  <32.572735, 32.752468, 14.928167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491512, 32.487991, 15.217052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031924, 0.741658, 0.670018,
		-0.978645, 0.112999, -0.171710,
		-0.203061, -0.661191, 0.722213,
		32.430595, 32.289635, 15.433717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106930, 33.046852, 15.388496>,  <32.572735, 32.752468, 14.928167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106930, 33.046852, 15.388496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245861, 32.746330, 15.612963>,  <32.329220, 32.566017, 15.747643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245861, 32.746330, 15.612963>,  <32.106930, 33.046852, 15.388496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245861, 32.746330, 15.612963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159357, 0.542428, 0.824850,
		-0.924105, -0.375918, 0.068674,
		0.347327, -0.751304, 0.561166,
		32.350060, 32.520939, 15.781312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605886, 33.038326, 15.964323>,  <32.106930, 33.046852, 15.388496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605886, 33.038326, 15.964323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940128, 32.856556, 16.087782>,  <32.140675, 32.747494, 16.161858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940128, 32.856556, 16.087782>,  <31.605886, 33.038326, 15.964323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940128, 32.856556, 16.087782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108216, 0.414678, 0.903511,
		-0.538564, -0.788380, 0.297331,
		0.835606, -0.454422, 0.308646,
		32.190811, 32.720230, 16.180376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464716, 33.071049, 16.648617>,  <31.605886, 33.038326, 15.964323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464716, 33.071049, 16.648617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859238, 33.005306, 16.654142>,  <32.095951, 32.965858, 16.657457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859238, 33.005306, 16.654142>,  <31.464716, 33.071049, 16.648617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859238, 33.005306, 16.654142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018391, 0.192833, 0.981059,
		-0.163910, -0.967369, 0.193214,
		0.986304, -0.164359, 0.013816,
		32.155128, 32.955997, 16.658287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649834, 32.583672, 17.213848>,  <31.464716, 33.071049, 16.648617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649834, 32.583672, 17.213848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987383, 32.778809, 17.124508>,  <32.189911, 32.895893, 17.070904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987383, 32.778809, 17.124508>,  <31.649834, 32.583672, 17.213848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987383, 32.778809, 17.124508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154741, 0.177307, 0.971914,
		0.513745, -0.854734, 0.074135,
		0.843873, 0.487845, -0.223353,
		32.240543, 32.925163, 17.057503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954939, 32.509071, 17.760235>,  <31.649834, 32.583672, 17.213848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954939, 32.509071, 17.760235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182739, 32.802776, 17.612434>,  <32.319420, 32.979000, 17.523754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182739, 32.802776, 17.612434>,  <31.954939, 32.509071, 17.760235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182739, 32.802776, 17.612434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166762, 0.336964, 0.926632,
		0.804898, -0.589335, 0.069454,
		0.569500, 0.734262, -0.369500,
		32.353588, 33.023056, 17.501585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557247, 32.572189, 18.136801>,  <31.954939, 32.509071, 17.760235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557247, 32.572189, 18.136801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548027, 32.929604, 17.957443>,  <32.542496, 33.144054, 17.849829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548027, 32.929604, 17.957443>,  <32.557247, 32.572189, 18.136801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548027, 32.929604, 17.957443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091669, 0.448512, 0.889064,
		0.995523, -0.020608, -0.092250,
		-0.023054, 0.893539, -0.448393,
		32.541111, 33.197666, 17.822926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120640, 33.021275, 18.343771>,  <32.557247, 32.572189, 18.136801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120640, 33.021275, 18.343771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854588, 33.292545, 18.218760>,  <32.694958, 33.455307, 18.143753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854588, 33.292545, 18.218760>,  <33.120640, 33.021275, 18.343771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854588, 33.292545, 18.218760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109379, 0.502498, 0.857631,
		0.738674, 0.536252, -0.408405,
		-0.665129, 0.678181, -0.312528,
		32.655048, 33.495998, 18.125002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418457, 33.697353, 18.414349>,  <33.120640, 33.021275, 18.343771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418457, 33.697353, 18.414349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026417, 33.773529, 18.391926>,  <32.791195, 33.819233, 18.378473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026417, 33.773529, 18.391926>,  <33.418457, 33.697353, 18.414349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026417, 33.773529, 18.391926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103617, 0.731613, 0.673800,
		0.169327, 0.654581, -0.736785,
		-0.980098, 0.190436, -0.056056,
		32.732388, 33.830662, 18.375109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320057, 34.466370, 18.708055>,  <33.418457, 33.697353, 18.414349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320057, 34.466370, 18.708055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946457, 34.323528, 18.712366>,  <32.722298, 34.237823, 18.714952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946457, 34.323528, 18.712366>,  <33.320057, 34.466370, 18.708055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946457, 34.323528, 18.712366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236498, 0.640604, 0.730544,
		-0.267784, 0.679781, -0.682780,
		-0.934002, -0.357105, 0.010776,
		32.666256, 34.216396, 18.715599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718178, 35.041203, 18.657913>,  <33.320057, 34.466370, 18.708055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718178, 35.041203, 18.657913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549103, 34.721149, 18.828148>,  <32.447659, 34.529118, 18.930288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549103, 34.721149, 18.828148>,  <32.718178, 35.041203, 18.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549103, 34.721149, 18.828148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373692, 0.581699, 0.722482,
		-0.825644, 0.146346, -0.544880,
		-0.422689, -0.800130, 0.425588,
		32.422295, 34.481110, 18.955824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062691, 35.287067, 18.845774>,  <32.718178, 35.041203, 18.657913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062691, 35.287067, 18.845774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127583, 34.949547, 19.050390>,  <32.166519, 34.747032, 19.173161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127583, 34.949547, 19.050390>,  <32.062691, 35.287067, 18.845774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127583, 34.949547, 19.050390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104830, 0.500738, 0.859227,
		-0.981169, -0.193016, -0.007222,
		0.162229, -0.843804, 0.511543,
		32.176250, 34.696407, 19.203854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488947, 35.225338, 19.178324>,  <32.062691, 35.287067, 18.845774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488947, 35.225338, 19.178324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761229, 34.999752, 19.365334>,  <31.924599, 34.864399, 19.477539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761229, 34.999752, 19.365334>,  <31.488947, 35.225338, 19.178324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761229, 34.999752, 19.365334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237342, 0.433996, 0.869089,
		-0.693043, -0.702557, 0.161570,
		0.680706, -0.563969, 0.467524,
		31.965441, 34.830563, 19.505590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127619, 34.837036, 19.673433>,  <31.488947, 35.225338, 19.178324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127619, 34.837036, 19.673433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501942, 34.864788, 19.811680>,  <31.726536, 34.881439, 19.894627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501942, 34.864788, 19.811680>,  <31.127619, 34.837036, 19.673433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501942, 34.864788, 19.811680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341140, 0.425260, 0.838318,
		-0.088810, -0.902408, 0.421631,
		0.935807, 0.069384, 0.345615,
		31.782684, 34.885605, 19.915365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066648, 34.549255, 20.390650>,  <31.127619, 34.837036, 19.673433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066648, 34.549255, 20.390650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407614, 34.754597, 20.350925>,  <31.612194, 34.877800, 20.327091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407614, 34.754597, 20.350925>,  <31.066648, 34.549255, 20.390650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407614, 34.754597, 20.350925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043559, 0.258994, 0.964896,
		0.521050, -0.818165, 0.243131,
		0.852414, 0.513350, -0.099310,
		31.663338, 34.908600, 20.321133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347805, 34.451405, 21.011339>,  <31.066648, 34.549255, 20.390650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347805, 34.451405, 21.011339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552383, 34.762352, 20.864845>,  <31.675131, 34.948921, 20.776949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552383, 34.762352, 20.864845>,  <31.347805, 34.451405, 21.011339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552383, 34.762352, 20.864845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031554, 0.442893, 0.896019,
		0.858736, -0.446709, 0.251045,
		0.511446, 0.777365, -0.366233,
		31.705816, 34.995560, 20.754976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843929, 34.524231, 21.493578>,  <31.347805, 34.451405, 21.011339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843929, 34.524231, 21.493578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839804, 34.879223, 21.309288>,  <31.837328, 35.092220, 21.198715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839804, 34.879223, 21.309288>,  <31.843929, 34.524231, 21.493578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839804, 34.879223, 21.309288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261753, 0.447079, 0.855339,
		0.965080, -0.111774, -0.236913,
		-0.010314, 0.887484, -0.460724,
		31.836710, 35.145470, 21.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428257, 34.921318, 21.826359>,  <31.843929, 34.524231, 21.493578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428257, 34.921318, 21.826359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219013, 35.205021, 21.637333>,  <32.093468, 35.375240, 21.523916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219013, 35.205021, 21.637333>,  <32.428257, 34.921318, 21.826359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219013, 35.205021, 21.637333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145749, 0.620760, 0.770334,
		0.839711, 0.334092, -0.428098,
		-0.523108, 0.709253, -0.472566,
		32.062080, 35.417797, 21.495564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782562, 35.586208, 21.941023>,  <32.428257, 34.921318, 21.826359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782562, 35.586208, 21.941023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417645, 35.729359, 21.861380>,  <32.198696, 35.815250, 21.813593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417645, 35.729359, 21.861380>,  <32.782562, 35.586208, 21.941023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417645, 35.729359, 21.861380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073692, 0.621695, 0.779785,
		0.402855, 0.696719, -0.593541,
		-0.912293, 0.357879, -0.199110,
		32.143955, 35.836723, 21.801647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873463, 36.223270, 22.113054>,  <32.782562, 35.586208, 21.941023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873463, 36.223270, 22.113054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474720, 36.222355, 22.081388>,  <32.235474, 36.221806, 22.062389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474720, 36.222355, 22.081388>,  <32.873463, 36.223270, 22.113054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474720, 36.222355, 22.081388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054772, 0.741942, 0.668222,
		0.057202, 0.670460, -0.739738,
		-0.996859, -0.002293, -0.079163,
		32.175663, 36.221668, 22.057640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730473, 36.942554, 21.898491>,  <32.873463, 36.223270, 22.113054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730473, 36.942554, 21.898491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413578, 36.771935, 22.073040>,  <32.223442, 36.669563, 22.177769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413578, 36.771935, 22.073040>,  <32.730473, 36.942554, 21.898491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413578, 36.771935, 22.073040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028200, 0.739933, 0.672089,
		-0.609567, 0.520146, -0.598228,
		-0.792233, -0.426553, 0.436371,
		32.175907, 36.643970, 22.203951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164158, 37.472527, 22.080053>,  <32.730473, 36.942554, 21.898491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164158, 37.472527, 22.080053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142021, 37.174572, 22.346008>,  <32.128738, 36.995800, 22.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142021, 37.174572, 22.346008>,  <32.164158, 37.472527, 22.080053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142021, 37.174572, 22.346008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114341, 0.666256, 0.736905,
		-0.991899, -0.035241, -0.122044,
		-0.055343, -0.744890, 0.664888,
		32.125420, 36.951103, 22.545475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658463, 37.754757, 22.543707>,  <32.164158, 37.472527, 22.080053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658463, 37.754757, 22.543707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825798, 37.459332, 22.755182>,  <31.926199, 37.282074, 22.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825798, 37.459332, 22.755182>,  <31.658463, 37.754757, 22.543707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825798, 37.459332, 22.755182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153270, 0.516322, 0.842567,
		-0.895265, -0.433512, 0.102799,
		0.418341, -0.738565, 0.528689,
		31.951300, 37.237762, 22.913790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196348, 37.647022, 23.111506>,  <31.658463, 37.754757, 22.543707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196348, 37.647022, 23.111506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554207, 37.522614, 23.239801>,  <31.768923, 37.447968, 23.316778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554207, 37.522614, 23.239801>,  <31.196348, 37.647022, 23.111506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554207, 37.522614, 23.239801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121539, 0.521400, 0.844613,
		-0.429925, -0.794613, 0.428668,
		0.894647, -0.311020, 0.320739,
		31.822601, 37.429306, 23.336023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166983, 37.654743, 23.764174>,  <31.196348, 37.647022, 23.111506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166983, 37.654743, 23.764174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560459, 37.584167, 23.778172>,  <31.796545, 37.541824, 23.786572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560459, 37.584167, 23.778172>,  <31.166983, 37.654743, 23.764174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560459, 37.584167, 23.778172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033744, 0.372121, 0.927571,
		-0.176682, -0.911260, 0.372006,
		0.983689, -0.176438, 0.034997,
		31.855566, 37.531235, 23.788671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373247, 37.463947, 24.443596>,  <31.166983, 37.654743, 23.764174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373247, 37.463947, 24.443596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710461, 37.601158, 24.277885>,  <31.912788, 37.683487, 24.178459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710461, 37.601158, 24.277885>,  <31.373247, 37.463947, 24.443596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710461, 37.601158, 24.277885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185304, 0.537841, 0.822429,
		0.504930, -0.770103, 0.389855,
		0.843035, 0.343027, -0.414275,
		31.963371, 37.704067, 24.153603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020134, 37.308338, 24.847839>,  <31.373247, 37.463947, 24.443596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020134, 37.308338, 24.847839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110275, 37.622318, 24.616995>,  <32.164360, 37.810707, 24.478487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110275, 37.622318, 24.616995>,  <32.020134, 37.308338, 24.847839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110275, 37.622318, 24.616995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372759, 0.477814, 0.795452,
		0.900147, -0.394384, -0.184920,
		0.225356, 0.784955, -0.577113,
		32.177883, 37.857803, 24.443861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618061, 37.535316, 25.037321>,  <32.020134, 37.308338, 24.847839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618061, 37.535316, 25.037321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486454, 37.876095, 24.874376>,  <32.407490, 38.080563, 24.776609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486454, 37.876095, 24.874376>,  <32.618061, 37.535316, 25.037321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486454, 37.876095, 24.874376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285940, 0.501006, 0.816842,
		0.899993, 0.152272, -0.408443,
		-0.329015, 0.851943, -0.407361,
		32.387749, 38.131676, 24.752169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057571, 38.017643, 25.213699>,  <32.618061, 37.535316, 25.037321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057571, 38.017643, 25.213699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742928, 38.241470, 25.109295>,  <32.554142, 38.375767, 25.046652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742928, 38.241470, 25.109295>,  <33.057571, 38.017643, 25.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742928, 38.241470, 25.109295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134161, 0.567520, 0.812356,
		0.602696, 0.603991, -0.521490,
		-0.786612, 0.559568, -0.261010,
		32.506943, 38.409340, 25.030993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348587, 38.733707, 25.263409>,  <33.057571, 38.017643, 25.213699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348587, 38.733707, 25.263409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950809, 38.757454, 25.298183>,  <32.712143, 38.771702, 25.319048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950809, 38.757454, 25.298183>,  <33.348587, 38.733707, 25.263409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950809, 38.757454, 25.298183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104880, 0.629736, 0.769697,
		-0.009054, 0.774538, -0.632463,
		-0.994444, 0.059364, 0.086935,
		32.652477, 38.775265, 25.324265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245525, 39.445889, 25.329649>,  <33.348587, 38.733707, 25.263409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245525, 39.445889, 25.329649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938618, 39.238316, 25.480385>,  <32.754475, 39.113770, 25.570826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938618, 39.238316, 25.480385>,  <33.245525, 39.445889, 25.329649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938618, 39.238316, 25.480385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141127, 0.436570, 0.888532,
		-0.625609, 0.734923, -0.261729,
		-0.767266, -0.518936, 0.376840,
		32.708439, 39.082634, 25.593437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894302, 39.908390, 25.786009>,  <33.245525, 39.445889, 25.329649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894302, 39.908390, 25.786009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729107, 39.563236, 25.902538>,  <32.629990, 39.356144, 25.972456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729107, 39.563236, 25.902538>,  <32.894302, 39.908390, 25.786009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729107, 39.563236, 25.902538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057957, 0.344129, 0.937132,
		-0.908890, 0.370141, -0.192132,
		-0.412989, -0.862885, 0.291323,
		32.605209, 39.304371, 25.989935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328022, 40.146725, 26.301010>,  <32.894302, 39.908390, 25.786009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328022, 40.146725, 26.301010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421795, 39.761181, 26.351629>,  <32.478058, 39.529854, 26.382002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421795, 39.761181, 26.351629>,  <32.328022, 40.146725, 26.301010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421795, 39.761181, 26.351629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180653, 0.084716, 0.979892,
		-0.955200, -0.252580, -0.154264,
		0.234432, -0.963860, 0.126550,
		32.492126, 39.472023, 26.389595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774025, 39.844860, 26.658829>,  <32.328022, 40.146725, 26.301010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774025, 39.844860, 26.658829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082233, 39.595448, 26.711752>,  <32.267159, 39.445801, 26.743505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082233, 39.595448, 26.711752>,  <31.774025, 39.844860, 26.658829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082233, 39.595448, 26.711752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154659, 0.018481, 0.987795,
		-0.618367, -0.781580, -0.082195,
		0.770521, -0.623532, 0.132307,
		32.313389, 39.408390, 26.751444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594076, 39.175995, 27.174515>,  <31.774025, 39.844860, 26.658829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594076, 39.175995, 27.174515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965357, 39.322479, 27.200834>,  <32.188126, 39.410370, 27.216625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965357, 39.322479, 27.200834>,  <31.594076, 39.175995, 27.174515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965357, 39.322479, 27.200834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109121, 0.098859, 0.989100,
		0.355719, -0.925264, 0.131723,
		0.928201, 0.366216, 0.065799,
		32.243816, 39.432343, 27.220573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814892, 38.751278, 27.637690>,  <31.594076, 39.175995, 27.174515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814892, 38.751278, 27.637690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991842, 39.109966, 27.643318>,  <32.098015, 39.325180, 27.646696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991842, 39.109966, 27.643318>,  <31.814892, 38.751278, 27.637690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991842, 39.109966, 27.643318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270036, 0.118221, 0.955565,
		0.855209, -0.426521, 0.294445,
		0.442378, 0.896718, 0.014072,
		32.124557, 39.378983, 27.647539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310287, 38.832150, 28.281414>,  <31.814892, 38.751278, 27.637690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310287, 38.832150, 28.281414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211487, 39.199234, 28.156971>,  <32.152206, 39.419487, 28.082304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211487, 39.199234, 28.156971>,  <32.310287, 38.832150, 28.281414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211487, 39.199234, 28.156971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048641, 0.308910, 0.949846,
		0.967794, 0.249745, -0.031662,
		-0.247000, 0.917716, -0.311109,
		32.137386, 39.474548, 28.063639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787075, 39.365875, 28.359932>,  <32.310287, 38.832150, 28.281414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787075, 39.365875, 28.359932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396713, 39.433525, 28.415089>,  <32.162498, 39.474117, 28.448183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396713, 39.433525, 28.415089>,  <32.787075, 39.365875, 28.359932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396713, 39.433525, 28.415089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145316, 0.032264, 0.988859,
		0.162796, 0.985066, -0.056063,
		-0.975900, 0.169129, 0.137893,
		32.103943, 39.484264, 28.456457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437637, 39.749989, 28.511202>,  <32.787075, 39.365875, 28.359932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437637, 39.749989, 28.511202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736378, 39.606384, 28.735102>,  <33.915623, 39.520222, 28.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736378, 39.606384, 28.735102>,  <33.437637, 39.749989, 28.511202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736378, 39.606384, 28.735102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664155, -0.444853, 0.600836,
		0.033297, -0.820497, -0.570681,
		0.746853, -0.359015, 0.559749,
		33.960434, 39.498680, 28.903027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422756, 39.013592, 28.596563>,  <33.437637, 39.749989, 28.511202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422756, 39.013592, 28.596563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558105, 39.184055, 28.932156>,  <33.639317, 39.286331, 29.133511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558105, 39.184055, 28.932156>,  <33.422756, 39.013592, 28.596563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558105, 39.184055, 28.932156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788418, -0.358331, 0.499995,
		0.513710, -0.830655, 0.214740,
		0.338376, 0.426157, 0.838982,
		33.659618, 39.311901, 29.183851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284729, 38.442165, 29.082804>,  <33.422756, 39.013592, 28.596563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284729, 38.442165, 29.082804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323929, 38.798496, 29.260260>,  <33.347446, 39.012295, 29.366734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323929, 38.798496, 29.260260>,  <33.284729, 38.442165, 29.082804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323929, 38.798496, 29.260260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796650, -0.196952, 0.571453,
		0.596444, -0.409426, 0.690380,
		0.097995, 0.890831, 0.443640,
		33.353329, 39.065746, 29.393353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308262, 38.093723, 28.465094>,  <33.284729, 38.442165, 29.082804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308262, 38.093723, 28.465094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670017, 38.112461, 28.634743>,  <33.887070, 38.123703, 28.736532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670017, 38.112461, 28.634743>,  <33.308262, 38.093723, 28.465094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670017, 38.112461, 28.634743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296231, -0.784320, -0.545060,
		0.307116, 0.618586, -0.723209,
		0.904393, 0.046841, 0.424122,
		33.941334, 38.126514, 28.761980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890858, 38.047470, 27.945492>,  <33.308262, 38.093723, 28.465094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890858, 38.047470, 27.945492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059292, 37.904663, 28.279013>,  <34.160355, 37.818981, 28.479124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059292, 37.904663, 28.279013>,  <33.890858, 38.047470, 27.945492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059292, 37.904663, 28.279013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424627, -0.734719, -0.529036,
		0.801483, 0.576827, -0.157785,
		0.421090, -0.357014, 0.833801,
		34.185619, 37.797558, 28.529154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604652, 38.031414, 27.968323>,  <33.890858, 38.047470, 27.945492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604652, 38.031414, 27.968323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449764, 37.733524, 28.185745>,  <34.356831, 37.554790, 28.316198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449764, 37.733524, 28.185745>,  <34.604652, 38.031414, 27.968323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449764, 37.733524, 28.185745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284795, -0.657330, -0.697717,
		0.876901, -0.115365, 0.466622,
		-0.387217, -0.744720, 0.543558,
		34.333599, 37.510109, 28.348812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042152, 37.482044, 27.944096>,  <34.604652, 38.031414, 27.968323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042152, 37.482044, 27.944096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662678, 37.358971, 27.973307>,  <34.434994, 37.285126, 27.990833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662678, 37.358971, 27.973307>,  <35.042152, 37.482044, 27.944096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662678, 37.358971, 27.973307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089597, -0.482996, -0.871026,
		0.303272, -0.819784, 0.485778,
		-0.948683, -0.307682, 0.073029,
		34.378075, 37.266666, 27.995214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972569, 36.781696, 27.787758>,  <35.042152, 37.482044, 27.944096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972569, 36.781696, 27.787758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640797, 36.978943, 27.682777>,  <34.441734, 37.097290, 27.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640797, 36.978943, 27.682777>,  <34.972569, 36.781696, 27.787758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640797, 36.978943, 27.682777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016879, -0.491743, -0.870577,
		-0.558356, -0.717653, 0.416189,
		-0.829430, 0.493116, -0.262454,
		34.391968, 37.126877, 27.604042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550842, 36.248291, 27.565496>,  <34.972569, 36.781696, 27.787758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550842, 36.248291, 27.565496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490139, 36.614506, 27.416498>,  <34.453716, 36.834236, 27.327099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490139, 36.614506, 27.416498>,  <34.550842, 36.248291, 27.565496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490139, 36.614506, 27.416498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023337, -0.373436, -0.927362,
		-0.988141, -0.149432, 0.035308,
		-0.151763, 0.915541, -0.372495,
		34.444611, 36.889168, 27.304750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046852, 36.008026, 28.028547>,  <34.550842, 36.248291, 27.565496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046852, 36.008026, 28.028547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716667, 35.794689, 28.102488>,  <34.518559, 35.666687, 28.146852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716667, 35.794689, 28.102488>,  <35.046852, 36.008026, 28.028547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716667, 35.794689, 28.102488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564375, -0.774003, 0.287054,
		-0.010020, 0.341278, 0.939909,
		-0.825458, -0.533338, 0.184853,
		34.469028, 35.634689, 28.157944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007423, 35.701416, 28.750320>,  <35.046852, 36.008026, 28.028547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007423, 35.701416, 28.750320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834373, 35.492611, 28.456291>,  <34.730545, 35.367329, 28.279873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834373, 35.492611, 28.456291>,  <35.007423, 35.701416, 28.750320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834373, 35.492611, 28.456291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646714, -0.747757, 0.150404,
		-0.628171, -0.410315, 0.661092,
		-0.432623, -0.522017, -0.735075,
		34.704586, 35.336006, 28.235769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611225, 35.428947, 29.318325>,  <35.007423, 35.701416, 28.750320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611225, 35.428947, 29.318325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342152, 35.580013, 29.572842>,  <34.180706, 35.670654, 29.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342152, 35.580013, 29.572842>,  <34.611225, 35.428947, 29.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342152, 35.580013, 29.572842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663337, -0.073212, 0.744731,
		0.327845, 0.923042, -0.201272,
		-0.672683, 0.377668, 0.636290,
		34.140347, 35.693314, 29.763729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898895, 35.112022, 29.936922>,  <34.611225, 35.428947, 29.318325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898895, 35.112022, 29.936922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781746, 34.760921, 30.088591>,  <34.711456, 34.550259, 30.179592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781746, 34.760921, 30.088591>,  <34.898895, 35.112022, 29.936922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781746, 34.760921, 30.088591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851572, 0.419783, 0.314019,
		-0.434802, -0.230925, -0.870414,
		-0.292871, -0.877756, 0.379172,
		34.693886, 34.497593, 30.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241989, 34.839752, 29.645056>,  <34.898895, 35.112022, 29.936922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241989, 34.839752, 29.645056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265762, 34.690063, 30.015230>,  <34.280025, 34.600250, 30.237335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265762, 34.690063, 30.015230>,  <34.241989, 34.839752, 29.645056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265762, 34.690063, 30.015230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945079, 0.277385, 0.172866,
		-0.321391, -0.884883, -0.337178,
		0.059438, -0.374218, 0.925434,
		34.283592, 34.577797, 30.292860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084637, 34.074139, 29.560562>,  <34.241989, 34.839752, 29.645056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084637, 34.074139, 29.560562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723873, 33.933426, 29.460314>,  <33.507416, 33.848999, 29.400166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723873, 33.933426, 29.460314>,  <34.084637, 34.074139, 29.560562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723873, 33.933426, 29.460314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335333, -0.936000, 0.107029,
		-0.272232, 0.012489, 0.962151,
		-0.901910, -0.351778, -0.250621,
		33.453300, 33.827892, 29.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676212, 33.836288, 30.084040>,  <34.084637, 34.074139, 29.560562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676212, 33.836288, 30.084040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595249, 33.639004, 29.745625>,  <33.546673, 33.520634, 29.542576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595249, 33.639004, 29.745625>,  <33.676212, 33.836288, 30.084040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595249, 33.639004, 29.745625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407482, -0.827995, 0.385205,
		-0.890501, -0.266778, 0.368563,
		-0.202404, -0.493208, -0.846037,
		33.534527, 33.491043, 29.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267632, 33.345341, 30.265640>,  <33.676212, 33.836288, 30.084040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267632, 33.345341, 30.265640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521496, 33.287125, 29.962057>,  <33.673817, 33.252193, 29.779907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521496, 33.287125, 29.962057>,  <33.267632, 33.345341, 30.265640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521496, 33.287125, 29.962057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471693, -0.704978, 0.529634,
		-0.612132, -0.694135, -0.378774,
		0.634665, -0.145541, -0.758958,
		33.711895, 33.243462, 29.734369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245945, 32.591629, 29.955975>,  <33.267632, 33.345341, 30.265640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245945, 32.591629, 29.955975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600193, 32.772926, 29.915489>,  <33.812744, 32.881702, 29.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600193, 32.772926, 29.915489>,  <33.245945, 32.591629, 29.955975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600193, 32.772926, 29.915489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427791, -0.711376, 0.557619,
		0.180735, -0.537138, -0.823904,
		0.885624, 0.453240, -0.101212,
		33.865879, 32.908897, 29.885126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723145, 32.005306, 29.806286>,  <33.245945, 32.591629, 29.955975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723145, 32.005306, 29.806286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948479, 32.320869, 29.904486>,  <34.083679, 32.510208, 29.963406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948479, 32.320869, 29.904486>,  <33.723145, 32.005306, 29.806286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948479, 32.320869, 29.904486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608341, -0.597108, 0.522860,
		0.559079, -0.145200, -0.816301,
		0.563339, 0.788910, 0.245499,
		34.117481, 32.557541, 29.978136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469261, 31.785904, 29.775354>,  <33.723145, 32.005306, 29.806286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469261, 31.785904, 29.775354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441948, 32.088024, 30.036079>,  <34.425560, 32.269295, 30.192514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441948, 32.088024, 30.036079>,  <34.469261, 31.785904, 29.775354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441948, 32.088024, 30.036079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576533, -0.503330, 0.643637,
		0.814216, 0.419739, -0.401088,
		-0.068280, 0.755300, 0.651813,
		34.421463, 32.314613, 30.231623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106205, 31.831945, 29.937517>,  <34.469261, 31.785904, 29.775354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106205, 31.831945, 29.937517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853809, 31.973606, 30.213612>,  <34.702370, 32.058601, 30.379269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853809, 31.973606, 30.213612>,  <35.106205, 31.831945, 29.937517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853809, 31.973606, 30.213612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467260, -0.536741, 0.702551,
		0.619286, 0.765824, 0.173199,
		-0.630993, 0.354151, 0.690235,
		34.664513, 32.079853, 30.420683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690975, 31.780617, 30.337563>,  <35.106205, 31.831945, 29.937517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690975, 31.780617, 30.337563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777874, 31.549526, 30.022846>,  <35.830013, 31.410872, 29.834017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777874, 31.549526, 30.022846>,  <35.690975, 31.780617, 30.337563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777874, 31.549526, 30.022846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413024, 0.784734, -0.462173,
		0.884430, -0.224559, 0.409092,
		0.217243, -0.577725, -0.786791,
		35.843048, 31.376209, 29.786810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428440, 31.781166, 30.059975>,  <35.690975, 31.780617, 30.337563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428440, 31.781166, 30.059975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160210, 31.734240, 29.766972>,  <35.999271, 31.706083, 29.591169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160210, 31.734240, 29.766972>,  <36.428440, 31.781166, 30.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160210, 31.734240, 29.766972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165804, 0.938737, -0.302128,
		0.723076, -0.324052, -0.610042,
		-0.670574, -0.117314, -0.732508,
		35.959038, 31.699045, 29.547218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965450, 32.273029, 30.079782>,  <36.428440, 31.781166, 30.059975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965450, 32.273029, 30.079782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158264, 31.922939, 30.095881>,  <37.273952, 31.712885, 30.105539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158264, 31.922939, 30.095881>,  <36.965450, 32.273029, 30.079782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158264, 31.922939, 30.095881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659586, 0.392736, 0.640863,
		-0.576706, -0.282373, 0.766600,
		0.482034, -0.875228, 0.040244,
		37.302876, 31.660372, 30.107954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187149, 32.274700, 30.838974>,  <36.965450, 32.273029, 30.079782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187149, 32.274700, 30.838974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437923, 32.086891, 30.590298>,  <37.588387, 31.974207, 30.441092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437923, 32.086891, 30.590298>,  <37.187149, 32.274700, 30.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437923, 32.086891, 30.590298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778119, 0.337930, 0.529467,
		-0.038507, -0.815692, 0.577203,
		0.626936, -0.469521, -0.621693,
		37.626003, 31.946035, 30.403790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528488, 31.856884, 31.278379>,  <37.187149, 32.274700, 30.838974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528488, 31.856884, 31.278379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744404, 31.985903, 30.967358>,  <37.873951, 32.063313, 30.780745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744404, 31.985903, 30.967358>,  <37.528488, 31.856884, 31.278379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744404, 31.985903, 30.967358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662273, 0.407467, 0.628781,
		0.519640, -0.854362, 0.006331,
		0.539786, 0.322547, -0.777556,
		37.906342, 32.082668, 30.734091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233212, 31.650772, 31.342793>,  <37.528488, 31.856884, 31.278379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233212, 31.650772, 31.342793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248344, 31.966063, 31.097103>,  <38.257423, 32.155235, 30.949690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248344, 31.966063, 31.097103>,  <38.233212, 31.650772, 31.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248344, 31.966063, 31.097103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803170, 0.341725, 0.487998,
		0.594548, -0.511788, -0.620150,
		0.037831, 0.788224, -0.614224,
		38.259693, 32.202530, 30.912836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858913, 31.550982, 31.100718>,  <38.233212, 31.650772, 31.342793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858913, 31.550982, 31.100718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749390, 31.930765, 31.039320>,  <38.683674, 32.158634, 31.002481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749390, 31.930765, 31.039320>,  <38.858913, 31.550982, 31.100718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749390, 31.930765, 31.039320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940201, 0.297854, 0.165246,
		0.202612, -0.099068, -0.974235,
		-0.273809, 0.949457, -0.153492,
		38.667248, 32.215603, 30.993273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562801, 31.682270, 30.791046>,  <38.858913, 31.550982, 31.100718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562801, 31.682270, 30.791046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795708, 31.361214, 30.739315>,  <39.935452, 31.168579, 30.708277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795708, 31.361214, 30.739315>,  <39.562801, 31.682270, 30.791046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795708, 31.361214, 30.739315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630225, 0.546116, -0.551882,
		0.513593, 0.239837, 0.823833,
		0.582270, -0.802643, -0.129330,
		39.970390, 31.120420, 30.700516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230434, 31.869644, 31.134531>,  <39.562801, 31.682270, 30.791046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230434, 31.869644, 31.134531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189545, 31.655855, 30.798939>,  <40.165009, 31.527582, 30.597584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189545, 31.655855, 30.798939>,  <40.230434, 31.869644, 31.134531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189545, 31.655855, 30.798939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531710, 0.683450, -0.500180,
		0.840734, -0.497227, 0.214317,
		-0.102228, -0.534473, -0.838980,
		40.158875, 31.495514, 30.547245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849255, 31.853302, 30.732098>,  <40.230434, 31.869644, 31.134531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849255, 31.853302, 30.732098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613739, 31.746513, 30.426929>,  <40.472427, 31.682440, 30.243828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613739, 31.746513, 30.426929>,  <40.849255, 31.853302, 30.732098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613739, 31.746513, 30.426929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511099, 0.608253, -0.607294,
		0.626186, -0.747496, -0.221677,
		-0.588786, -0.266980, -0.762924,
		40.437099, 31.666422, 30.198053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329987, 31.798498, 30.074163>,  <40.849255, 31.853302, 30.732098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329987, 31.798498, 30.074163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949554, 31.856649, 29.965126>,  <40.721294, 31.891541, 29.899704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949554, 31.856649, 29.965126>,  <41.329987, 31.798498, 30.074163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949554, 31.856649, 29.965126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289155, 0.729551, -0.619794,
		0.108766, -0.668297, -0.735900,
		-0.951083, 0.145377, -0.272592,
		40.664230, 31.900263, 29.883348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201851, 31.825727, 29.209969>,  <41.329987, 31.798498, 30.074163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201851, 31.825727, 29.209969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959652, 32.042896, 29.442730>,  <40.814335, 32.173199, 29.582388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959652, 32.042896, 29.442730>,  <41.201851, 31.825727, 29.209969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959652, 32.042896, 29.442730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105143, 0.779336, -0.617722,
		-0.788875, -0.312842, -0.528967,
		-0.605493, 0.542922, 0.581906,
		40.778004, 32.205772, 29.617302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006180, 32.524620, 29.224503>,  <41.201851, 31.825727, 29.209969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006180, 32.524620, 29.224503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208481, 32.865833, 29.275967>,  <41.329861, 33.070560, 29.306845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208481, 32.865833, 29.275967>,  <41.006180, 32.524620, 29.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208481, 32.865833, 29.275967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670151, -0.482400, 0.564081,
		0.543245, -0.199063, -0.815634,
		0.505750, 0.853032, 0.128659,
		41.360207, 33.121742, 29.314564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650539, 32.398926, 28.945875>,  <41.006180, 32.524620, 29.224503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650539, 32.398926, 28.945875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619484, 32.631287, 29.269979>,  <41.600853, 32.770702, 29.464441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619484, 32.631287, 29.269979>,  <41.650539, 32.398926, 28.945875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619484, 32.631287, 29.269979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649427, -0.587173, 0.483191,
		0.756451, 0.563717, -0.331671,
		-0.077635, 0.580906, 0.810260,
		41.596195, 32.805557, 29.513058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366673, 32.480392, 29.047005>,  <41.650539, 32.398926, 28.945875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366673, 32.480392, 29.047005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118473, 32.521080, 29.358038>,  <41.969555, 32.545494, 29.544659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118473, 32.521080, 29.358038>,  <42.366673, 32.480392, 29.047005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118473, 32.521080, 29.358038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618343, -0.546384, 0.564904,
		0.482320, 0.831335, 0.276133,
		-0.620499, 0.101720, 0.777582,
		41.932323, 32.551598, 29.591312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687923, 32.780663, 29.548908>,  <42.366673, 32.480392, 29.047005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687923, 32.780663, 29.548908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412868, 32.563873, 29.742165>,  <42.247837, 32.433800, 29.858118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412868, 32.563873, 29.742165>,  <42.687923, 32.780663, 29.548908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412868, 32.563873, 29.742165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725545, -0.487956, 0.485266,
		-0.027249, 0.684227, 0.728760,
		-0.687635, -0.541971, 0.483142,
		42.206577, 32.401283, 29.887108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725204, 32.933266, 30.307741>,  <42.687923, 32.780663, 29.548908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725204, 32.933266, 30.307741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599838, 32.573574, 30.185652>,  <42.524620, 32.357761, 30.112398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599838, 32.573574, 30.185652>,  <42.725204, 32.933266, 30.307741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599838, 32.573574, 30.185652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760604, -0.430151, 0.486263,
		-0.568553, -0.079753, 0.818771,
		-0.313414, -0.899227, -0.305225,
		42.505814, 32.303806, 30.094084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.697762, 32.527092, 30.924564>,  <42.725204, 32.933266, 30.307741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.697762, 32.527092, 30.924564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748089, 32.311798, 30.591223>,  <42.778286, 32.182621, 30.391218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748089, 32.311798, 30.591223>,  <42.697762, 32.527092, 30.924564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748089, 32.311798, 30.591223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794742, -0.448087, 0.409393,
		-0.593763, -0.713811, 0.371376,
		0.125821, -0.538230, -0.833353,
		42.785835, 32.150330, 30.341217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971340, 32.130104, 31.590454>,  <42.697762, 32.527092, 30.924564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971340, 32.130104, 31.590454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288040, 31.951567, 31.423643>,  <43.478058, 31.844442, 31.323557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288040, 31.951567, 31.423643>,  <42.971340, 32.130104, 31.590454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288040, 31.951567, 31.423643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004954, -0.687369, 0.726291,
		-0.610828, -0.572973, -0.546434,
		0.791748, -0.446347, -0.417026,
		43.525562, 31.817663, 31.298534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870140, 31.396030, 31.384296>,  <42.971340, 32.130104, 31.590454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870140, 31.396030, 31.384296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250381, 31.482544, 31.473364>,  <43.478527, 31.534452, 31.526804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250381, 31.482544, 31.473364>,  <42.870140, 31.396030, 31.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250381, 31.482544, 31.473364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015582, -0.683160, 0.730103,
		0.310028, -0.697505, -0.646041,
		0.950600, 0.216286, 0.222667,
		43.535561, 31.547430, 31.540165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169338, 30.747662, 31.525660>,  <42.870140, 31.396030, 31.384296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169338, 30.747662, 31.525660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417744, 31.028639, 31.664753>,  <43.566788, 31.197226, 31.748209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417744, 31.028639, 31.664753>,  <43.169338, 30.747662, 31.525660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417744, 31.028639, 31.664753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253099, -0.599600, 0.759224,
		0.741812, -0.383476, -0.550146,
		0.621012, 0.702443, 0.347733,
		43.604046, 31.239372, 31.769073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920334, 30.508368, 31.693890>,  <43.169338, 30.747662, 31.525660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920334, 30.508368, 31.693890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839130, 30.822172, 31.928267>,  <43.790409, 31.010456, 32.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839130, 30.822172, 31.928267>,  <43.920334, 30.508368, 31.693890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839130, 30.822172, 31.928267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253811, -0.535790, 0.805300,
		0.945711, 0.312199, -0.090350,
		-0.203005, 0.784513, 0.585942,
		43.778229, 31.057526, 32.104050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500912, 30.448530, 32.208599>,  <43.920334, 30.508368, 31.693890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500912, 30.448530, 32.208599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185322, 30.637300, 32.365978>,  <43.995968, 30.750563, 32.460407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.185322, 30.637300, 32.365978>,  <44.500912, 30.448530, 32.208599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185322, 30.637300, 32.365978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071445, -0.565544, 0.821617,
		0.610256, 0.676346, 0.412484,
		-0.788976, 0.471927, 0.393449,
		43.948627, 30.778879, 32.484013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855076, 30.872707, 32.763916>,  <44.500912, 30.448530, 32.208599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855076, 30.872707, 32.763916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105198, 30.847778, 32.452763>,  <45.255272, 30.832821, 32.266071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105198, 30.847778, 32.452763>,  <44.855076, 30.872707, 32.763916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105198, 30.847778, 32.452763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000851, 0.996860, -0.079181,
		0.780378, 0.048850, 0.623397,
		0.625307, -0.062322, -0.777886,
		45.292789, 30.829082, 32.219398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449261, 31.122667, 33.307442>,  <44.855076, 30.872707, 32.763916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449261, 31.122667, 33.307442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739651, 31.192709, 33.573463>,  <45.913883, 31.234734, 33.733078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.739651, 31.192709, 33.573463>,  <45.449261, 31.122667, 33.307442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739651, 31.192709, 33.573463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684778, -0.273466, -0.675496,
		0.063589, 0.945809, -0.318436,
		0.725972, 0.175104, 0.665059,
		45.957443, 31.245239, 33.772980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176655, 30.535940, 33.754414>,  <45.449261, 31.122667, 33.307442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176655, 30.535940, 33.754414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263607, 30.641973, 34.130177>,  <45.315777, 30.705593, 34.355633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263607, 30.641973, 34.130177>,  <45.176655, 30.535940, 33.754414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263607, 30.641973, 34.130177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638125, -0.766859, 0.068732,
		0.738610, 0.584516, -0.335853,
		0.217377, 0.265082, 0.939404,
		45.328819, 30.721498, 34.411999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881165, 30.457680, 33.802845>,  <45.176655, 30.535940, 33.754414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881165, 30.457680, 33.802845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771023, 30.416309, 34.185150>,  <45.704937, 30.391487, 34.414532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.771023, 30.416309, 34.185150>,  <45.881165, 30.457680, 33.802845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771023, 30.416309, 34.185150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543758, -0.836633, 0.066119,
		0.792785, 0.537910, 0.286609,
		-0.275353, -0.103428, 0.955763,
		45.688416, 30.385281, 34.471878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547104, 30.473566, 34.152920>,  <45.881165, 30.457680, 33.802845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547104, 30.473566, 34.152920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242855, 30.273832, 34.318871>,  <46.060307, 30.153992, 34.418442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.242855, 30.273832, 34.318871>,  <46.547104, 30.473566, 34.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242855, 30.273832, 34.318871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588844, -0.799729, 0.117029,
		0.273351, 0.333312, 0.902320,
		-0.760619, -0.499336, 0.414876,
		46.014668, 30.124031, 34.443333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624104, 30.529192, 33.316456>,  <46.547104, 30.473566, 34.152920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624104, 30.529192, 33.316456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818626, 30.634649, 32.983231>,  <46.935341, 30.697924, 32.783295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818626, 30.634649, 32.983231>,  <46.624104, 30.529192, 33.316456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818626, 30.634649, 32.983231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560698, 0.825377, -0.066105,
		0.670163, 0.499245, 0.549214,
		0.486311, 0.263643, -0.833063,
		46.964520, 30.713741, 32.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552261, 31.305092, 33.425697>,  <46.624104, 30.529192, 33.316456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552261, 31.305092, 33.425697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651585, 31.211086, 33.049801>,  <46.711178, 31.154684, 32.824265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651585, 31.211086, 33.049801>,  <46.552261, 31.305092, 33.425697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651585, 31.211086, 33.049801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233015, 0.927147, -0.293434,
		0.940237, 0.291836, 0.175458,
		0.248310, -0.235013, -0.939740,
		46.726078, 31.140583, 32.767879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.004471, 31.675516, 33.043804>,  <46.552261, 31.305092, 33.425697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.004471, 31.675516, 33.043804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358212, 31.862028, 33.052738>,  <47.570457, 31.973936, 33.058098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358212, 31.862028, 33.052738>,  <47.004471, 31.675516, 33.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358212, 31.862028, 33.052738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252349, -0.437259, -0.863206,
		-0.392729, 0.769017, -0.504358,
		0.884355, 0.466280, 0.022337,
		47.623520, 32.001911, 33.059441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939564, 32.230873, 32.532238>,  <47.004471, 31.675516, 33.043804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939564, 32.230873, 32.532238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257648, 32.007832, 32.627495>,  <47.448502, 31.874006, 32.684650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257648, 32.007832, 32.627495>,  <46.939564, 32.230873, 32.532238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257648, 32.007832, 32.627495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127707, -0.537981, -0.833227,
		0.592727, 0.632182, -0.499020,
		0.795214, -0.557605, 0.238142,
		47.496212, 31.840549, 32.698936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301052, 32.581142, 32.652897>,  <46.939564, 32.230873, 32.532238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301052, 32.581142, 32.652897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055714, 32.524586, 32.963718>,  <45.908508, 32.490654, 33.150211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055714, 32.524586, 32.963718>,  <46.301052, 32.581142, 32.652897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055714, 32.524586, 32.963718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497721, 0.694717, 0.519271,
		-0.613252, 0.705250, -0.355731,
		-0.613348, -0.141389, 0.777054,
		45.871708, 32.482170, 33.196835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013874, 33.235027, 32.965652>,  <46.301052, 32.581142, 32.652897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013874, 33.235027, 32.965652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027225, 32.954964, 33.250935>,  <46.035236, 32.786926, 33.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027225, 32.954964, 33.250935>,  <46.013874, 33.235027, 32.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027225, 32.954964, 33.250935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508123, 0.626385, 0.591146,
		-0.860638, 0.342664, 0.376675,
		0.033380, -0.700159, 0.713206,
		46.037239, 32.744915, 33.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878445, 33.444523, 33.601421>,  <46.013874, 33.235027, 32.965652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878445, 33.444523, 33.601421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120770, 33.132298, 33.663033>,  <46.266163, 32.944962, 33.700001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120770, 33.132298, 33.663033>,  <45.878445, 33.444523, 33.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120770, 33.132298, 33.663033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641141, 0.593585, 0.486410,
		-0.471100, -0.195919, 0.860047,
		0.605808, -0.780559, 0.154027,
		46.302513, 32.898129, 33.709240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997276, 33.247192, 34.344471>,  <45.878445, 33.444523, 33.601421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997276, 33.247192, 34.344471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310112, 33.153419, 34.113514>,  <46.497814, 33.097157, 33.974941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310112, 33.153419, 34.113514>,  <45.997276, 33.247192, 34.344471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310112, 33.153419, 34.113514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582386, 0.604650, 0.543345,
		0.221742, -0.761208, 0.609419,
		0.782085, -0.234435, -0.577394,
		46.544739, 33.083088, 33.940296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525940, 33.066334, 34.759388>,  <45.997276, 33.247192, 34.344471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525940, 33.066334, 34.759388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646011, 33.246941, 34.423286>,  <46.718056, 33.355305, 34.221626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.646011, 33.246941, 34.423286>,  <46.525940, 33.066334, 34.759388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.646011, 33.246941, 34.423286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523153, 0.658645, 0.540831,
		0.797623, -0.601926, -0.038501,
		0.300182, 0.451521, -0.840250,
		46.736065, 33.382397, 34.171211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215439, 33.268806, 34.900673>,  <46.525940, 33.066334, 34.759388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215439, 33.268806, 34.900673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088161, 33.500832, 34.600731>,  <47.011795, 33.640045, 34.420765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088161, 33.500832, 34.600731>,  <47.215439, 33.268806, 34.900673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088161, 33.500832, 34.600731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499265, 0.774923, 0.387595,
		0.805910, -0.251048, -0.536175,
		-0.318190, 0.580060, -0.749857,
		46.992706, 33.674850, 34.375774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640846, 33.570396, 34.392067>,  <47.215439, 33.268806, 34.900673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640846, 33.570396, 34.392067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347351, 33.841682, 34.375763>,  <47.171253, 34.004456, 34.365982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347351, 33.841682, 34.375763>,  <47.640846, 33.570396, 34.392067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347351, 33.841682, 34.375763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564913, 0.642289, 0.518013,
		0.377503, 0.357058, -0.854401,
		-0.733734, 0.678214, -0.040760,
		47.127232, 34.045147, 34.363537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875191, 34.255405, 34.135246>,  <47.640846, 33.570396, 34.392067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875191, 34.255405, 34.135246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574165, 34.282890, 34.397217>,  <47.393551, 34.299381, 34.554401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.574165, 34.282890, 34.397217>,  <47.875191, 34.255405, 34.135246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.574165, 34.282890, 34.397217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463422, 0.761849, 0.452577,
		-0.467862, 0.644101, -0.605177,
		-0.752559, 0.068709, 0.654931,
		47.348396, 34.303501, 34.593697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.658810, 34.975437, 34.186714>,  <47.875191, 34.255405, 34.135246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.658810, 34.975437, 34.186714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622932, 34.734318, 34.503849>,  <47.601406, 34.589645, 34.694130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622932, 34.734318, 34.503849>,  <47.658810, 34.975437, 34.186714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622932, 34.734318, 34.503849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531612, 0.644188, 0.549918,
		-0.842225, 0.470808, 0.262673,
		-0.089695, -0.602795, 0.792839,
		47.596024, 34.553478, 34.741699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418800, 35.280430, 34.909637>,  <47.658810, 34.975437, 34.186714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418800, 35.280430, 34.909637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668114, 34.969200, 34.940922>,  <47.817703, 34.782463, 34.959690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668114, 34.969200, 34.940922>,  <47.418800, 35.280430, 34.909637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668114, 34.969200, 34.940922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662304, 0.578417, 0.476222,
		-0.415772, -0.245027, 0.875840,
		0.623288, -0.778072, 0.078207,
		47.855099, 34.735779, 34.964382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.247696, 30.488016, 21.865028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.913322, 30.282631, 21.942570>,  <32.712700, 30.159401, 21.989096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.913322, 30.282631, 21.942570>,  <33.247696, 30.488016, 21.865028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913322, 30.282631, 21.942570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166748, 0.574116, 0.801614,
		-0.522893, 0.637768, -0.565539,
		-0.835930, -0.513461, 0.193855,
		32.662544, 30.128593, 22.000727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738857, 30.987650, 22.032679>,  <33.247696, 30.488016, 21.865028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738857, 30.987650, 22.032679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587700, 30.659607, 22.204546>,  <32.497005, 30.462780, 22.307667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587700, 30.659607, 22.204546>,  <32.738857, 30.987650, 22.032679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587700, 30.659607, 22.204546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008758, 0.467227, 0.884094,
		-0.925807, 0.330333, -0.183746,
		-0.377896, -0.820109, 0.429669,
		32.474331, 30.413574, 22.333447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248417, 31.335365, 22.415791>,  <32.738857, 30.987650, 22.032679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248417, 31.335365, 22.415791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261093, 30.969986, 22.578077>,  <32.268700, 30.750759, 22.675449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.261093, 30.969986, 22.578077>,  <32.248417, 31.335365, 22.415791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261093, 30.969986, 22.578077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062076, 0.403340, 0.912942,
		-0.997568, -0.054116, -0.043922,
		0.031689, -0.913449, 0.405718,
		32.270599, 30.695951, 22.699793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669617, 31.362631, 22.931179>,  <32.248417, 31.335365, 22.415791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669617, 31.362631, 22.931179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909180, 31.057312, 23.028082>,  <32.052917, 30.874121, 23.086224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909180, 31.057312, 23.028082>,  <31.669617, 31.362631, 22.931179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909180, 31.057312, 23.028082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016004, 0.291043, 0.956576,
		-0.800659, -0.576776, 0.162092,
		0.598906, -0.763298, 0.242257,
		32.088852, 30.828323, 23.100760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309462, 31.084438, 23.498819>,  <31.669617, 31.362631, 22.931179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309462, 31.084438, 23.498819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.692598, 30.973875, 23.530157>,  <31.922480, 30.907537, 23.548960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.692598, 30.973875, 23.530157>,  <31.309462, 31.084438, 23.498819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692598, 30.973875, 23.530157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062430, 0.466426, 0.882355,
		-0.280430, -0.840266, 0.464019,
		0.957842, -0.276407, 0.078342,
		31.979952, 30.890953, 23.553659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386385, 30.709606, 24.107840>,  <31.309462, 31.084438, 23.498819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386385, 30.709606, 24.107840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728329, 30.892040, 24.008886>,  <31.933495, 31.001501, 23.949514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.728329, 30.892040, 24.008886>,  <31.386385, 30.709606, 24.107840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728329, 30.892040, 24.008886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062694, 0.382494, 0.921828,
		0.515058, -0.803543, 0.298385,
		0.854860, 0.456088, -0.247385,
		31.984787, 31.028866, 23.934671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769047, 30.633472, 24.715717>,  <31.386385, 30.709606, 24.107840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769047, 30.633472, 24.715717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979225, 30.923985, 24.538441>,  <32.105331, 31.098291, 24.432074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.979225, 30.923985, 24.538441>,  <31.769047, 30.633472, 24.715717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979225, 30.923985, 24.538441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141007, 0.439359, 0.887176,
		0.839060, -0.528658, 0.128449,
		0.525447, 0.726282, -0.443193,
		32.136860, 31.141869, 24.405483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327343, 30.709690, 25.112818>,  <31.769047, 30.633472, 24.715717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327343, 30.709690, 25.112818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.326031, 31.049011, 24.901018>,  <32.325245, 31.252604, 24.773939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.326031, 31.049011, 24.901018>,  <32.327343, 30.709690, 25.112818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326031, 31.049011, 24.901018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153345, 0.523666, 0.838009,
		0.988167, -0.078449, -0.131800,
		-0.003278, 0.848304, -0.529499,
		32.325047, 31.303503, 24.742168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810966, 31.176641, 25.402685>,  <32.327343, 30.709690, 25.112818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810966, 31.176641, 25.402685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582973, 31.431122, 25.194698>,  <32.446178, 31.583811, 25.069906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.582973, 31.431122, 25.194698>,  <32.810966, 31.176641, 25.402685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582973, 31.431122, 25.194698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084967, 0.675073, 0.732842,
		0.817249, 0.373530, -0.438838,
		-0.569986, 0.636201, -0.519965,
		32.411976, 31.621983, 25.038710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146282, 31.700649, 25.345560>,  <32.810966, 31.176641, 25.402685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146282, 31.700649, 25.345560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760872, 31.807673, 25.343395>,  <32.529625, 31.871887, 25.342096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760872, 31.807673, 25.343395>,  <33.146282, 31.700649, 25.345560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760872, 31.807673, 25.343395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199082, 0.730148, 0.653644,
		0.178842, 0.628725, -0.756783,
		-0.963526, 0.267560, -0.005413,
		32.471813, 31.887941, 25.341772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058414, 32.383831, 25.190933>,  <33.146282, 31.700649, 25.345560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058414, 32.383831, 25.190933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726646, 32.297733, 25.397131>,  <32.527584, 32.246075, 25.520849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726646, 32.297733, 25.397131>,  <33.058414, 32.383831, 25.190933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726646, 32.297733, 25.397131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116217, 0.836113, 0.536105,
		-0.546405, 0.504565, -0.668473,
		-0.829419, -0.215242, 0.515495,
		32.477821, 32.233162, 25.551779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915115, 33.007690, 25.353500>,  <33.058414, 32.383831, 25.190933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915115, 33.007690, 25.353500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.652660, 32.809010, 25.580750>,  <32.495186, 32.689800, 25.717100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.652660, 32.809010, 25.580750>,  <32.915115, 33.007690, 25.353500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652660, 32.809010, 25.580750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121664, 0.812621, 0.569952,
		-0.744768, 0.304848, -0.593623,
		-0.656139, -0.496705, 0.568125,
		32.455818, 32.660000, 25.751186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438683, 33.513988, 25.487522>,  <32.915115, 33.007690, 25.353500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438683, 33.513988, 25.487522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360596, 33.233086, 25.761375>,  <32.313744, 33.064545, 25.925688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.360596, 33.233086, 25.761375>,  <32.438683, 33.513988, 25.487522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360596, 33.233086, 25.761375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364849, 0.699966, 0.613948,
		-0.910371, -0.129934, -0.392864,
		-0.195219, -0.702257, 0.684635,
		32.302029, 33.022408, 25.966766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723896, 33.605141, 25.649832>,  <32.438683, 33.513988, 25.487522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723896, 33.605141, 25.649832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894073, 33.407749, 25.953272>,  <31.996180, 33.289314, 26.135336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.894073, 33.407749, 25.953272>,  <31.723896, 33.605141, 25.649832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894073, 33.407749, 25.953272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278883, 0.725963, 0.628651,
		-0.860942, -0.479017, 0.171234,
		0.425445, -0.493478, 0.758602,
		32.021706, 33.259705, 26.180853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290546, 33.743977, 26.152994>,  <31.723896, 33.605141, 25.649832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290546, 33.743977, 26.152994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.638922, 33.645897, 26.323334>,  <31.847946, 33.587051, 26.425537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.638922, 33.645897, 26.323334>,  <31.290546, 33.743977, 26.152994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638922, 33.645897, 26.323334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121461, 0.732305, 0.670057,
		-0.476146, -0.635302, 0.608010,
		0.870937, -0.245196, 0.425848,
		31.900204, 33.572338, 26.451088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140108, 33.746845, 26.891693>,  <31.290546, 33.743977, 26.152994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140108, 33.746845, 26.891693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.536823, 33.758266, 26.841831>,  <31.774853, 33.765118, 26.811914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.536823, 33.758266, 26.841831>,  <31.140108, 33.746845, 26.891693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536823, 33.758266, 26.841831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043440, 0.841574, 0.538393,
		0.120277, -0.539387, 0.833424,
		0.991789, 0.028552, -0.124653,
		31.834360, 33.766830, 26.804436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376518, 33.829517, 27.615889>,  <31.140108, 33.746845, 26.891693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376518, 33.829517, 27.615889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676983, 33.938477, 27.375370>,  <31.857262, 34.003853, 27.231058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.676983, 33.938477, 27.375370>,  <31.376518, 33.829517, 27.615889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676983, 33.938477, 27.375370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209831, 0.765121, 0.608737,
		0.625881, -0.583431, 0.517573,
		0.751162, 0.272394, -0.601296,
		31.902332, 34.020195, 27.194981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987242, 33.924503, 28.037079>,  <31.376518, 33.829517, 27.615889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987242, 33.924503, 28.037079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059898, 34.145500, 27.711685>,  <32.103493, 34.278099, 27.516449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.059898, 34.145500, 27.711685>,  <31.987242, 33.924503, 28.037079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059898, 34.145500, 27.711685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309860, 0.752944, 0.580570,
		0.933270, -0.357522, -0.034430,
		0.181643, 0.552497, -0.813482,
		32.114391, 34.311249, 27.467640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545147, 34.253586, 28.185192>,  <31.987242, 33.924503, 28.037079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545147, 34.253586, 28.185192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403057, 34.466217, 27.877623>,  <32.317802, 34.593796, 27.693081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403057, 34.466217, 27.877623>,  <32.545147, 34.253586, 28.185192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403057, 34.466217, 27.877623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245031, 0.846759, 0.472185,
		0.902094, -0.020677, -0.431044,
		-0.355227, 0.531574, -0.768923,
		32.296490, 34.625690, 27.646946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059036, 34.689686, 28.037045>,  <32.545147, 34.253586, 28.185192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059036, 34.689686, 28.037045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733513, 34.863461, 27.882652>,  <32.538200, 34.967728, 27.790018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.733513, 34.863461, 27.882652>,  <33.059036, 34.689686, 28.037045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733513, 34.863461, 27.882652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250702, 0.861652, 0.441252,
		0.524277, 0.262329, -0.810134,
		-0.813807, 0.434440, -0.385979,
		32.489372, 34.993793, 27.766859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321659, 35.300804, 27.776966>,  <33.059036, 34.689686, 28.037045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321659, 35.300804, 27.776966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927155, 35.363934, 27.796501>,  <32.690453, 35.401810, 27.808222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.927155, 35.363934, 27.796501>,  <33.321659, 35.300804, 27.776966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927155, 35.363934, 27.796501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164936, 0.923803, 0.345521,
		0.009413, 0.348828, -0.937139,
		-0.986259, 0.157821, 0.048839,
		32.631275, 35.411282, 27.811153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204945, 35.949715, 27.406788>,  <33.321659, 35.300804, 27.776966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204945, 35.949715, 27.406788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.870300, 35.911327, 27.622517>,  <32.669514, 35.888294, 27.751953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.870300, 35.911327, 27.622517>,  <33.204945, 35.949715, 27.406788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870300, 35.911327, 27.622517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056630, 0.994411, 0.089105,
		-0.544860, 0.044004, -0.837372,
		-0.836613, -0.095970, 0.539322,
		32.619316, 35.882538, 27.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820873, 36.329807, 27.439363>,  <33.204945, 35.949715, 27.406788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820873, 36.329807, 27.439363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012981, 36.591469, 27.205635>,  <34.128246, 36.748466, 27.065397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012981, 36.591469, 27.205635>,  <33.820873, 36.329807, 27.439363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012981, 36.591469, 27.205635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207693, -0.562422, -0.800341,
		-0.852178, 0.505736, -0.134250,
		0.480266, 0.654150, -0.584321,
		34.157063, 36.787712, 27.030338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360073, 36.368164, 26.835861>,  <33.820873, 36.329807, 27.439363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360073, 36.368164, 26.835861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709713, 36.527229, 26.724283>,  <33.919498, 36.622669, 26.657337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709713, 36.527229, 26.724283>,  <33.360073, 36.368164, 26.835861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709713, 36.527229, 26.724283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021495, -0.542037, -0.840080,
		-0.485266, 0.740311, -0.465248,
		0.874102, 0.397662, -0.278945,
		33.971943, 36.646526, 26.640600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357880, 36.342609, 26.149727>,  <33.360073, 36.368164, 26.835861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357880, 36.342609, 26.149727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742168, 36.385044, 26.252293>,  <33.972744, 36.410507, 26.313833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742168, 36.385044, 26.252293>,  <33.357880, 36.342609, 26.149727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742168, 36.385044, 26.252293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253266, -0.712851, -0.653988,
		0.113404, 0.693245, -0.711724,
		0.960727, 0.106090, 0.256416,
		34.030388, 36.416870, 26.329218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726139, 36.449234, 25.493801>,  <33.357880, 36.342609, 26.149727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726139, 36.449234, 25.493801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980011, 36.288441, 25.757797>,  <34.132336, 36.191963, 25.916195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.980011, 36.288441, 25.757797>,  <33.726139, 36.449234, 25.493801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980011, 36.288441, 25.757797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234587, -0.713529, -0.660186,
		0.736310, 0.573831, -0.358560,
		0.634678, -0.401988, 0.659992,
		34.170414, 36.167843, 25.955795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308350, 36.252594, 25.101341>,  <33.726139, 36.449234, 25.493801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308350, 36.252594, 25.101341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288513, 36.020714, 25.426668>,  <34.276611, 35.881584, 25.621864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.288513, 36.020714, 25.426668>,  <34.308350, 36.252594, 25.101341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288513, 36.020714, 25.426668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131758, -0.810999, -0.570018,
		0.990041, 0.078894, 0.116598,
		-0.049590, -0.579704, 0.813317,
		34.273636, 35.846802, 25.670664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986290, 35.842361, 25.089540>,  <34.308350, 36.252594, 25.101341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986290, 35.842361, 25.089540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739754, 35.642708, 25.333176>,  <34.591831, 35.522915, 25.479357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739754, 35.642708, 25.333176>,  <34.986290, 35.842361, 25.089540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739754, 35.642708, 25.333176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187791, -0.844313, -0.501867,
		0.764759, -0.194940, 0.614118,
		-0.616342, -0.499134, 0.609088,
		34.554852, 35.492970, 25.515902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382248, 35.240486, 25.271109>,  <34.986290, 35.842361, 25.089540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382248, 35.240486, 25.271109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006962, 35.150257, 25.376085>,  <34.781792, 35.096119, 25.439072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006962, 35.150257, 25.376085>,  <35.382248, 35.240486, 25.271109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006962, 35.150257, 25.376085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102697, -0.905686, -0.411322,
		0.330472, -0.358956, 0.872891,
		-0.938212, -0.225574, 0.262440,
		34.725498, 35.082584, 25.454817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410938, 34.630470, 25.613176>,  <35.382248, 35.240486, 25.271109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410938, 34.630470, 25.613176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034817, 34.654861, 25.479250>,  <34.809143, 34.669498, 25.398893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.034817, 34.654861, 25.479250>,  <35.410938, 34.630470, 25.613176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034817, 34.654861, 25.479250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152692, -0.803640, -0.575194,
		-0.304146, -0.591983, 0.746358,
		-0.940309, 0.060980, -0.334815,
		34.752724, 34.673157, 25.378805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072239, 33.916725, 25.699989>,  <35.410938, 34.630470, 25.613176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072239, 33.916725, 25.699989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867157, 34.138451, 25.437729>,  <34.744110, 34.271484, 25.280373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867157, 34.138451, 25.437729>,  <35.072239, 33.916725, 25.699989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867157, 34.138451, 25.437729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044181, -0.779680, -0.624618,
		-0.857432, -0.291273, 0.424230,
		-0.512698, 0.554310, -0.655653,
		34.713348, 34.304745, 25.241034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692318, 33.392864, 25.360847>,  <35.072239, 33.916725, 25.699989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692318, 33.392864, 25.360847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642277, 33.717743, 25.132923>,  <34.612251, 33.912670, 24.996168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642277, 33.717743, 25.132923>,  <34.692318, 33.392864, 25.360847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642277, 33.717743, 25.132923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014128, -0.575721, -0.817524,
		-0.992043, -0.094224, 0.083499,
		-0.125102, 0.812199, -0.569809,
		34.604748, 33.961403, 24.961981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946247, 33.282604, 25.035692>,  <34.692318, 33.392864, 25.360847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946247, 33.282604, 25.035692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222176, 33.499687, 24.844021>,  <34.387733, 33.629936, 24.729017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222176, 33.499687, 24.844021>,  <33.946247, 33.282604, 25.035692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222176, 33.499687, 24.844021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122621, -0.564725, -0.816118,
		-0.713520, 0.621733, -0.323012,
		0.689821, 0.542709, -0.479180,
		34.429123, 33.662498, 24.700266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637882, 33.556950, 24.455599>,  <33.946247, 33.282604, 25.035692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637882, 33.556950, 24.455599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018219, 33.569176, 24.332331>,  <34.246422, 33.576511, 24.258369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018219, 33.569176, 24.332331>,  <33.637882, 33.556950, 24.455599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018219, 33.569176, 24.332331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256743, -0.478638, -0.839636,
		-0.173165, 0.877480, -0.447261,
		0.950840, 0.030564, -0.308170,
		34.303471, 33.578346, 24.239880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525860, 33.756100, 23.777887>,  <33.637882, 33.556950, 24.455599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525860, 33.756100, 23.777887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899479, 33.619320, 23.819109>,  <34.123650, 33.537251, 23.843842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899479, 33.619320, 23.819109>,  <33.525860, 33.756100, 23.777887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899479, 33.619320, 23.819109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038286, -0.382762, -0.923054,
		0.355085, 0.858232, -0.370610,
		0.934050, -0.341952, 0.103055,
		34.179695, 33.516735, 23.850025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876774, 33.766624, 23.050974>,  <33.525860, 33.756100, 23.777887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876774, 33.766624, 23.050974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100258, 33.516968, 23.269438>,  <34.234348, 33.367172, 23.400517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100258, 33.516968, 23.269438>,  <33.876774, 33.766624, 23.050974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100258, 33.516968, 23.269438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129038, -0.585090, -0.800637,
		0.819265, 0.517797, -0.246355,
		0.558707, -0.624145, 0.546159,
		34.267868, 33.329723, 23.433285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308308, 33.626846, 22.550705>,  <33.876774, 33.766624, 23.050974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308308, 33.626846, 22.550705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401691, 33.355904, 22.829754>,  <34.457722, 33.193336, 22.997183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401691, 33.355904, 22.829754>,  <34.308308, 33.626846, 22.550705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401691, 33.355904, 22.829754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265243, -0.645878, -0.715882,
		0.935490, 0.352170, 0.028879,
		0.233460, -0.677361, 0.697623,
		34.471729, 33.152695, 23.039042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047989, 33.298222, 22.472561>,  <34.308308, 33.626846, 22.550705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047989, 33.298222, 22.472561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824184, 33.024017, 22.658907>,  <34.689903, 32.859493, 22.770714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824184, 33.024017, 22.658907>,  <35.047989, 33.298222, 22.472561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824184, 33.024017, 22.658907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104033, -0.615715, -0.781071,
		0.822271, -0.388549, 0.415812,
		-0.559507, -0.685510, 0.465863,
		34.656334, 32.818363, 22.798666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428715, 32.616810, 22.478422>,  <35.047989, 33.298222, 22.472561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428715, 32.616810, 22.478422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042015, 32.531536, 22.534903>,  <34.809994, 32.480370, 22.568790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042015, 32.531536, 22.534903>,  <35.428715, 32.616810, 22.478422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042015, 32.531536, 22.534903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034256, -0.655195, -0.754682,
		0.253404, -0.724755, 0.640716,
		-0.966754, -0.213188, 0.141202,
		34.751987, 32.467579, 22.577263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386791, 31.901134, 22.419245>,  <35.428715, 32.616810, 22.478422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386791, 31.901134, 22.419245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011906, 32.029819, 22.365374>,  <34.786976, 32.107029, 22.333050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011906, 32.029819, 22.365374>,  <35.386791, 31.901134, 22.419245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011906, 32.029819, 22.365374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090457, -0.597171, -0.796997,
		-0.336829, -0.734771, 0.588776,
		-0.937211, 0.321711, -0.134680,
		34.730743, 32.126331, 22.324970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.110603, 31.279499, 22.228830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827995, 31.541395, 22.121387>,  <34.658432, 31.698532, 22.056921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827995, 31.541395, 22.121387>,  <35.110603, 31.279499, 22.228830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827995, 31.541395, 22.121387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128033, -0.491544, -0.861389,
		-0.696019, -0.574195, 0.431112,
		-0.706517, 0.654740, -0.268609,
		34.616039, 31.737818, 22.040806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554932, 30.881721, 22.074476>,  <35.110603, 31.279499, 22.228830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554932, 30.881721, 22.074476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531300, 31.215479, 21.855278>,  <34.517120, 31.415733, 21.723759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531300, 31.215479, 21.855278>,  <34.554932, 30.881721, 22.074476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531300, 31.215479, 21.855278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033116, -0.550289, -0.834317,
		-0.997704, -0.031142, 0.060141,
		-0.059077, 0.834393, -0.547994,
		34.513577, 31.465797, 21.690880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881519, 30.818989, 21.817314>,  <34.554932, 30.881721, 22.074476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881519, 30.818989, 21.817314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087410, 31.060595, 21.573931>,  <34.210945, 31.205559, 21.427900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087410, 31.060595, 21.573931>,  <33.881519, 30.818989, 21.817314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087410, 31.060595, 21.573931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226017, -0.588991, -0.775891,
		-0.827026, 0.536893, -0.166652,
		0.514727, 0.604016, -0.608458,
		34.241829, 31.241798, 21.391394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470314, 30.808014, 21.221106>,  <33.881519, 30.818989, 21.817314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470314, 30.808014, 21.221106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803238, 30.985361, 21.088026>,  <34.002991, 31.091770, 21.008179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803238, 30.985361, 21.088026>,  <33.470314, 30.808014, 21.221106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803238, 30.985361, 21.088026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111663, -0.453791, -0.884084,
		-0.542952, 0.772979, -0.328185,
		0.832306, 0.443369, -0.332700,
		34.052929, 31.118372, 20.988216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242725, 31.108414, 20.578896>,  <33.470314, 30.808014, 21.221106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242725, 31.108414, 20.578896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640606, 31.067760, 20.572758>,  <33.879333, 31.043367, 20.569075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.640606, 31.067760, 20.572758>,  <33.242725, 31.108414, 20.578896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640606, 31.067760, 20.572758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067556, -0.533935, -0.842822,
		0.077466, 0.839395, -0.537973,
		0.994704, -0.101634, -0.015344,
		33.939018, 31.037270, 20.568155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459385, 31.327557, 19.843157>,  <33.242725, 31.108414, 20.578896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459385, 31.327557, 19.843157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771149, 31.128149, 19.994947>,  <33.958206, 31.008505, 20.086021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771149, 31.128149, 19.994947>,  <33.459385, 31.327557, 19.843157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771149, 31.128149, 19.994947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135193, -0.457598, -0.878821,
		0.611758, 0.736262, -0.289258,
		0.779407, -0.498520, 0.379477,
		34.004971, 30.978594, 20.108791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950447, 31.406927, 19.384634>,  <33.459385, 31.327557, 19.843157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950447, 31.406927, 19.384634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063847, 31.076321, 19.579159>,  <34.131886, 30.877956, 19.695873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063847, 31.076321, 19.579159>,  <33.950447, 31.406927, 19.384634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063847, 31.076321, 19.579159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048444, -0.494127, -0.868039,
		0.957747, 0.269649, -0.100047,
		0.283502, -0.826515, 0.486312,
		34.148899, 30.828365, 19.725052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360504, 31.113293, 18.905777>,  <33.950447, 31.406927, 19.384634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360504, 31.113293, 18.905777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263203, 30.817814, 19.157223>,  <34.204823, 30.640528, 19.308090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263203, 30.817814, 19.157223>,  <34.360504, 31.113293, 18.905777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263203, 30.817814, 19.157223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147729, -0.612305, -0.776697,
		0.958646, -0.281801, 0.039820,
		-0.243256, -0.738695, 0.628614,
		34.190228, 30.596205, 19.345806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830276, 30.518126, 18.822407>,  <34.360504, 31.113293, 18.905777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830276, 30.518126, 18.822407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469372, 30.403904, 18.951641>,  <34.252831, 30.335371, 19.029182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.469372, 30.403904, 18.951641>,  <34.830276, 30.518126, 18.822407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469372, 30.403904, 18.951641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098334, -0.593280, -0.798967,
		0.419827, -0.752648, 0.507215,
		-0.902261, -0.285552, 0.323086,
		34.198692, 30.318239, 19.048567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771839, 30.015699, 18.358208>,  <34.830276, 30.518126, 18.822407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771839, 30.015699, 18.358208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412548, 30.029819, 18.533449>,  <34.196972, 30.038292, 18.638594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412548, 30.029819, 18.533449>,  <34.771839, 30.015699, 18.358208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412548, 30.029819, 18.533449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391091, -0.519050, -0.760023,
		0.200569, -0.854015, 0.480033,
		-0.898232, 0.035300, 0.438103,
		34.143078, 30.040409, 18.664881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544647, 29.337507, 18.351625>,  <34.771839, 30.015699, 18.358208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544647, 29.337507, 18.351625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241486, 29.598091, 18.365376>,  <34.059589, 29.754440, 18.373627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.241486, 29.598091, 18.365376>,  <34.544647, 29.337507, 18.351625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241486, 29.598091, 18.365376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461499, -0.498174, -0.734059,
		-0.461077, -0.572217, 0.678215,
		-0.757909, 0.651453, 0.034381,
		34.014114, 29.793530, 18.375689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051033, 28.915005, 18.201830>,  <34.544647, 29.337507, 18.351625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051033, 28.915005, 18.201830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884056, 29.273674, 18.142879>,  <33.783871, 29.488876, 18.107510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884056, 29.273674, 18.142879>,  <34.051033, 28.915005, 18.201830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884056, 29.273674, 18.142879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561069, -0.381911, -0.734402,
		-0.714803, -0.223881, 0.662520,
		-0.417442, 0.896673, -0.147379,
		33.758823, 29.542675, 18.098665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308079, 28.823708, 18.225576>,  <34.051033, 28.915005, 18.201830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308079, 28.823708, 18.225576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414066, 29.147539, 18.016054>,  <33.477661, 29.341839, 17.890341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414066, 29.147539, 18.016054>,  <33.308079, 28.823708, 18.225576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414066, 29.147539, 18.016054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405388, -0.399355, -0.822299,
		-0.874900, 0.430231, 0.222375,
		0.264972, 0.809578, -0.523807,
		33.493557, 29.390413, 17.858912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757465, 28.958887, 17.745029>,  <33.308079, 28.823708, 18.225576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757465, 28.958887, 17.745029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.065510, 29.167643, 17.598301>,  <33.250336, 29.292896, 17.510263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.065510, 29.167643, 17.598301>,  <32.757465, 28.958887, 17.745029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065510, 29.167643, 17.598301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314525, -0.189630, -0.930115,
		-0.554975, 0.831670, 0.018110,
		0.770115, 0.521887, -0.366821,
		33.296543, 29.324209, 17.488255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531036, 29.133429, 17.091686>,  <32.757465, 28.958887, 17.745029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531036, 29.133429, 17.091686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918968, 29.228458, 17.069849>,  <33.151730, 29.285477, 17.056747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.918968, 29.228458, 17.069849>,  <32.531036, 29.133429, 17.091686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918968, 29.228458, 17.069849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013182, -0.172508, -0.984920,
		-0.243409, 0.955929, -0.164172,
		0.969834, 0.237574, -0.054591,
		33.209919, 29.299730, 17.053473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565765, 29.697327, 16.678738>,  <32.531036, 29.133429, 17.091686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565765, 29.697327, 16.678738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930248, 29.533546, 16.660662>,  <33.148937, 29.435278, 16.649817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930248, 29.533546, 16.660662>,  <32.565765, 29.697327, 16.678738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930248, 29.533546, 16.660662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067361, -0.039883, -0.996931,
		0.406394, 0.911459, -0.063923,
		0.911212, -0.409452, -0.045188,
		33.203613, 29.410711, 16.647104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858822, 30.010420, 15.963179>,  <32.565765, 29.697327, 16.678738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858822, 30.010420, 15.963179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051258, 29.672941, 16.058447>,  <33.166721, 29.470453, 16.115608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051258, 29.672941, 16.058447>,  <32.858822, 30.010420, 15.963179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051258, 29.672941, 16.058447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026553, -0.257527, -0.965906,
		0.876268, 0.471014, -0.101491,
		0.481092, -0.843698, 0.238170,
		33.195587, 29.419832, 16.129898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388149, 29.875174, 15.500190>,  <32.858822, 30.010420, 15.963179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388149, 29.875174, 15.500190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285965, 29.511478, 15.631657>,  <33.224655, 29.293261, 15.710537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285965, 29.511478, 15.631657>,  <33.388149, 29.875174, 15.500190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285965, 29.511478, 15.631657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151756, -0.298024, -0.942418,
		0.954835, -0.290628, -0.061849,
		-0.255461, -0.909240, 0.328668,
		33.209328, 29.238707, 15.730257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751957, 29.446352, 14.977917>,  <33.388149, 29.875174, 15.500190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751957, 29.446352, 14.977917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460815, 29.229168, 15.145452>,  <33.286129, 29.098858, 15.245975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.460815, 29.229168, 15.145452>,  <33.751957, 29.446352, 14.977917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460815, 29.229168, 15.145452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262409, -0.343767, -0.901646,
		0.633540, -0.766173, 0.107734,
		-0.727853, -0.542958, 0.418841,
		33.242458, 29.066280, 15.271105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808701, 28.837002, 14.659670>,  <33.751957, 29.446352, 14.977917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808701, 28.837002, 14.659670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447697, 28.820538, 14.831146>,  <33.231094, 28.810659, 14.934032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447697, 28.820538, 14.831146>,  <33.808701, 28.837002, 14.659670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447697, 28.820538, 14.831146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323085, -0.593470, -0.737163,
		0.284756, -0.803803, 0.522317,
		-0.902514, -0.041159, 0.428691,
		33.176941, 28.808189, 14.959753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596016, 28.215307, 14.485643>,  <33.808701, 28.837002, 14.659670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596016, 28.215307, 14.485643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242798, 28.364925, 14.599011>,  <33.030869, 28.454697, 14.667032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242798, 28.364925, 14.599011>,  <33.596016, 28.215307, 14.485643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242798, 28.364925, 14.599011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459938, -0.569802, -0.681016,
		-0.093236, -0.731722, 0.675196,
		-0.883042, 0.374044, 0.283421,
		32.977886, 28.477139, 14.684037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170078, 27.671049, 14.480564>,  <33.596016, 28.215307, 14.485643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170078, 27.671049, 14.480564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938560, 27.996023, 14.452454>,  <32.799648, 28.191008, 14.435588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938560, 27.996023, 14.452454>,  <33.170078, 27.671049, 14.480564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938560, 27.996023, 14.452454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546015, -0.450114, -0.706586,
		-0.605689, -0.370599, 0.704128,
		-0.578798, 0.812437, -0.070277,
		32.764919, 28.239754, 14.431371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457432, 27.486721, 14.583629>,  <33.170078, 27.671049, 14.480564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457432, 27.486721, 14.583629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494316, 27.807192, 14.347116>,  <32.516449, 27.999474, 14.205209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494316, 27.807192, 14.347116>,  <32.457432, 27.486721, 14.583629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494316, 27.807192, 14.347116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517214, -0.468882, -0.715989,
		-0.850874, 0.371843, 0.371142,
		0.092214, 0.801176, -0.591281,
		32.521980, 28.047544, 14.169732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847569, 27.626530, 14.190152>,  <32.457432, 27.486721, 14.583629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847569, 27.626530, 14.190152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.143383, 27.771456, 13.963238>,  <32.320873, 27.858412, 13.827089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.143383, 27.771456, 13.963238>,  <31.847569, 27.626530, 14.190152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143383, 27.771456, 13.963238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326648, -0.543718, -0.773093,
		-0.588547, 0.757032, -0.283749,
		0.739536, 0.362316, -0.567287,
		32.365242, 27.880150, 13.793052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850821, 27.010786, 14.666058>,  <31.847569, 27.626530, 14.190152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850821, 27.010786, 14.666058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531672, 26.822145, 14.816252>,  <31.340181, 26.708961, 14.906368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531672, 26.822145, 14.816252>,  <31.850821, 27.010786, 14.666058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531672, 26.822145, 14.816252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087718, 0.525420, 0.846310,
		-0.596411, 0.708184, -0.377850,
		-0.797872, -0.471604, 0.375486,
		31.292311, 26.680664, 14.928898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375483, 27.529789, 15.010695>,  <31.850821, 27.010786, 14.666058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375483, 27.529789, 15.010695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292606, 27.167900, 15.159582>,  <31.242880, 26.950766, 15.248914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292606, 27.167900, 15.159582>,  <31.375483, 27.529789, 15.010695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292606, 27.167900, 15.159582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081399, 0.363211, 0.928145,
		-0.974908, 0.222602, -0.001611,
		-0.207192, -0.904724, 0.372217,
		31.230450, 26.896482, 15.271247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868036, 27.624229, 15.558286>,  <31.375483, 27.529789, 15.010695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868036, 27.624229, 15.558286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011946, 27.267218, 15.667061>,  <31.098291, 27.053011, 15.732326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.011946, 27.267218, 15.667061>,  <30.868036, 27.624229, 15.558286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011946, 27.267218, 15.667061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110156, 0.330046, 0.937515,
		-0.926514, -0.307339, 0.217060,
		0.359775, -0.892531, 0.271937,
		31.119879, 26.999458, 15.748642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606071, 27.551750, 16.240833>,  <30.868036, 27.624229, 15.558286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606071, 27.551750, 16.240833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909317, 27.290901, 16.241419>,  <31.091265, 27.134392, 16.241770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.909317, 27.290901, 16.241419>,  <30.606071, 27.551750, 16.240833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909317, 27.290901, 16.241419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094894, 0.112537, 0.989106,
		-0.645181, -0.749716, 0.147198,
		0.758114, -0.652120, 0.001464,
		31.136751, 27.095264, 16.241858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487827, 27.116350, 16.863457>,  <30.606071, 27.551750, 16.240833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487827, 27.116350, 16.863457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872755, 27.063116, 16.768606>,  <31.103712, 27.031176, 16.711697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872755, 27.063116, 16.768606>,  <30.487827, 27.116350, 16.863457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872755, 27.063116, 16.768606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244858, 0.044857, 0.968521,
		-0.118261, -0.990089, 0.075754,
		0.962320, -0.133087, -0.237126,
		31.161451, 27.023190, 16.697468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731598, 26.762091, 17.503185>,  <30.487827, 27.116350, 16.863457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731598, 26.762091, 17.503185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066746, 26.880886, 17.319981>,  <31.267834, 26.952164, 17.210058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.066746, 26.880886, 17.319981>,  <30.731598, 26.762091, 17.503185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066746, 26.880886, 17.319981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411006, 0.208952, 0.887363,
		0.359238, -0.931739, 0.053010,
		0.837867, 0.296987, -0.458014,
		31.318106, 26.969982, 17.182577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312569, 26.323257, 17.766384>,  <30.731598, 26.762091, 17.503185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312569, 26.323257, 17.766384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458199, 26.662207, 17.611769>,  <31.545576, 26.865576, 17.518999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.458199, 26.662207, 17.611769>,  <31.312569, 26.323257, 17.766384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458199, 26.662207, 17.611769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319951, 0.275973, 0.906350,
		0.874689, -0.453651, -0.170642,
		0.364074, 0.847372, -0.386537,
		31.567421, 26.916418, 17.495808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867338, 26.477444, 18.314043>,  <31.312569, 26.323257, 17.766384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867338, 26.477444, 18.314043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778366, 26.814550, 18.117975>,  <31.724983, 27.016815, 18.000334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778366, 26.814550, 18.117975>,  <31.867338, 26.477444, 18.314043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778366, 26.814550, 18.117975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164663, 0.528016, 0.833118,
		0.960943, 0.104597, -0.256219,
		-0.222429, 0.842768, -0.490170,
		31.711637, 27.067381, 17.970924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347271, 26.968266, 18.477684>,  <31.867338, 26.477444, 18.314043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347271, 26.968266, 18.477684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045643, 27.195074, 18.345102>,  <31.864666, 27.331160, 18.265553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045643, 27.195074, 18.345102>,  <32.347271, 26.968266, 18.477684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045643, 27.195074, 18.345102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181593, 0.664979, 0.724449,
		0.631187, 0.486098, -0.604410,
		-0.754074, 0.567019, -0.331455,
		31.819420, 27.365179, 18.245667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705402, 27.551716, 18.179579>,  <32.347271, 26.968266, 18.477684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705402, 27.551716, 18.179579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326412, 27.636086, 18.275742>,  <32.099018, 27.686707, 18.333439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326412, 27.636086, 18.275742>,  <32.705402, 27.551716, 18.179579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326412, 27.636086, 18.275742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317535, 0.710099, 0.628435,
		-0.038161, 0.671766, -0.739780,
		-0.947478, 0.210924, 0.240407,
		32.042168, 27.699364, 18.347864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637413, 28.291351, 18.204193>,  <32.705402, 27.551716, 18.179579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637413, 28.291351, 18.204193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320240, 28.175566, 18.418659>,  <32.129936, 28.106094, 18.547338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.320240, 28.175566, 18.418659>,  <32.637413, 28.291351, 18.204193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320240, 28.175566, 18.418659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196703, 0.711227, 0.674881,
		-0.576688, 0.640599, -0.507014,
		-0.792930, -0.289465, 0.536164,
		32.082359, 28.088726, 18.579508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326698, 28.889942, 18.482471>,  <32.637413, 28.291351, 18.204193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326698, 28.889942, 18.482471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169365, 28.588636, 18.693329>,  <32.074966, 28.407852, 18.819843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169365, 28.588636, 18.693329>,  <32.326698, 28.889942, 18.482471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169365, 28.588636, 18.693329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194223, 0.492339, 0.848457,
		-0.898646, 0.436110, -0.047353,
		-0.393335, -0.753266, 0.527141,
		32.051365, 28.362656, 18.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893272, 29.170347, 18.914410>,  <32.326698, 28.889942, 18.482471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893272, 29.170347, 18.914410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954723, 28.812273, 19.081762>,  <31.991594, 28.597429, 19.182173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.954723, 28.812273, 19.081762>,  <31.893272, 29.170347, 18.914410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954723, 28.812273, 19.081762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187731, 0.442138, 0.877081,
		-0.970132, -0.056202, 0.235979,
		0.153629, -0.895185, 0.418381,
		32.000813, 28.543718, 19.207277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506529, 29.263552, 19.503181>,  <31.893272, 29.170347, 18.914410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506529, 29.263552, 19.503181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736431, 28.949202, 19.594448>,  <31.874372, 28.760592, 19.649208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736431, 28.949202, 19.594448>,  <31.506529, 29.263552, 19.503181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736431, 28.949202, 19.594448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104347, 0.346924, 0.932070,
		-0.811646, -0.511903, 0.281400,
		0.574754, -0.785875, 0.228164,
		31.908857, 28.713440, 19.662897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292906, 28.970743, 20.122498>,  <31.506529, 29.263552, 19.503181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292906, 28.970743, 20.122498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672367, 28.856455, 20.068203>,  <31.900043, 28.787882, 20.035627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.672367, 28.856455, 20.068203>,  <31.292906, 28.970743, 20.122498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672367, 28.856455, 20.068203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203777, 0.223803, 0.953093,
		-0.241939, -0.931814, 0.270535,
		0.948652, -0.285719, -0.135735,
		31.956963, 28.770739, 20.027483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394169, 28.545509, 20.650505>,  <31.292906, 28.970743, 20.122498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394169, 28.545509, 20.650505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746469, 28.688251, 20.525974>,  <31.957850, 28.773897, 20.451256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746469, 28.688251, 20.525974>,  <31.394169, 28.545509, 20.650505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746469, 28.688251, 20.525974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177167, 0.361377, 0.915433,
		0.439188, -0.861428, 0.255061,
		0.880753, 0.356859, -0.311329,
		32.010696, 28.795309, 20.432575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796940, 28.477530, 21.262245>,  <31.394169, 28.545509, 20.650505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796940, 28.477530, 21.262245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044361, 28.704838, 21.045189>,  <32.192814, 28.841223, 20.914955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044361, 28.704838, 21.045189>,  <31.796940, 28.477530, 21.262245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044361, 28.704838, 21.045189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303257, 0.464445, 0.832061,
		0.724862, -0.679236, 0.114954,
		0.618555, 0.568269, -0.542641,
		32.229927, 28.875319, 20.882397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552059, 28.395111, 21.533804>,  <31.796940, 28.477530, 21.262245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552059, 28.395111, 21.533804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.504986, 28.748751, 21.352907>,  <32.476742, 28.960934, 21.244370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.504986, 28.748751, 21.352907>,  <32.552059, 28.395111, 21.533804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504986, 28.748751, 21.352907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313624, 0.465185, 0.827794,
		0.942227, -0.044418, -0.332018,
		-0.117681, 0.884099, -0.452240,
		32.469681, 29.013981, 21.217236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179634, 28.748577, 21.629257>,  <32.552059, 28.395111, 21.533804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179634, 28.748577, 21.629257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899124, 29.028522, 21.574995>,  <32.730820, 29.196489, 21.542439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.899124, 29.028522, 21.574995>,  <33.179634, 28.748577, 21.629257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899124, 29.028522, 21.574995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187826, 0.364953, 0.911883,
		0.687702, 0.614002, -0.387385,
		-0.701275, 0.699865, -0.135653,
		32.688740, 29.238482, 21.534300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385769, 29.231258, 22.047421>,  <33.179634, 28.748577, 21.629257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385769, 29.231258, 22.047421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032379, 29.392031, 21.951147>,  <32.820347, 29.488493, 21.893383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032379, 29.392031, 21.951147>,  <33.385769, 29.231258, 22.047421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032379, 29.392031, 21.951147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090208, 0.650090, 0.754484,
		0.459716, 0.644854, -0.610594,
		-0.883472, 0.401929, -0.240686,
		32.767338, 29.512609, 21.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.506283, 33.836472, 23.887032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135056, 33.749039, 24.007633>,  <34.912319, 33.696579, 24.079994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.135056, 33.749039, 24.007633>,  <35.506283, 33.836472, 23.887032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135056, 33.749039, 24.007633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036231, 0.752788, 0.657266,
		-0.370634, 0.620913, -0.690722,
		-0.928072, -0.218580, 0.301505,
		34.856632, 33.683464, 24.098085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240395, 34.465263, 23.953350>,  <35.506283, 33.836472, 23.887032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240395, 34.465263, 23.953350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993637, 34.219929, 24.150635>,  <34.845581, 34.072727, 24.269005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993637, 34.219929, 24.150635>,  <35.240395, 34.465263, 23.953350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993637, 34.219929, 24.150635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061835, 0.662491, 0.746513,
		-0.784615, 0.430021, -0.446611,
		-0.616893, -0.613341, 0.493210,
		34.808571, 34.035927, 24.298597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586617, 34.810169, 24.029217>,  <35.240395, 34.465263, 23.953350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586617, 34.810169, 24.029217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594730, 34.558098, 24.339693>,  <34.599598, 34.406857, 24.525978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594730, 34.558098, 24.339693>,  <34.586617, 34.810169, 24.029217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594730, 34.558098, 24.339693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352394, 0.722021, 0.595403,
		-0.935632, -0.285599, -0.207427,
		0.020280, -0.630174, 0.776189,
		34.600815, 34.369045, 24.572550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985374, 35.050518, 24.413046>,  <34.586617, 34.810169, 24.029217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985374, 35.050518, 24.413046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.189869, 34.810368, 24.659035>,  <34.312565, 34.666279, 24.806627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.189869, 34.810368, 24.659035>,  <33.985374, 35.050518, 24.413046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189869, 34.810368, 24.659035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275858, 0.563057, 0.779018,
		-0.813965, -0.567908, 0.122239,
		0.511238, -0.600373, 0.614970,
		34.343239, 34.630257, 24.843525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572876, 34.847790, 24.901951>,  <33.985374, 35.050518, 24.413046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572876, 34.847790, 24.901951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923473, 34.763382, 25.075033>,  <34.133831, 34.712738, 25.178883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923473, 34.763382, 25.075033>,  <33.572876, 34.847790, 24.901951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923473, 34.763382, 25.075033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191829, 0.671285, 0.715945,
		-0.441548, -0.710525, 0.547895,
		0.876491, -0.211022, 0.432704,
		34.186420, 34.700077, 25.204844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499527, 34.781929, 25.717028>,  <33.572876, 34.847790, 24.901951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499527, 34.781929, 25.717028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.868118, 34.897060, 25.612696>,  <34.089272, 34.966141, 25.550097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.868118, 34.897060, 25.612696>,  <33.499527, 34.781929, 25.717028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868118, 34.897060, 25.612696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016648, 0.700142, 0.713809,
		0.388073, -0.653417, 0.649958,
		0.921478, 0.287830, -0.260828,
		34.144562, 34.983410, 25.534447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785267, 34.876503, 26.349091>,  <33.499527, 34.781929, 25.717028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785267, 34.876503, 26.349091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.020134, 35.062859, 26.084312>,  <34.161057, 35.174671, 25.925446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.020134, 35.062859, 26.084312>,  <33.785267, 34.876503, 26.349091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020134, 35.062859, 26.084312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087526, 0.776424, 0.624103,
		0.804722, -0.424389, 0.415110,
		0.587164, 0.465896, -0.661951,
		34.196285, 35.202625, 25.885729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314598, 35.125565, 26.770412>,  <33.785267, 34.876503, 26.349091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314598, 35.125565, 26.770412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318993, 35.336227, 26.430410>,  <34.321629, 35.462624, 26.226408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.318993, 35.336227, 26.430410>,  <34.314598, 35.125565, 26.770412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318993, 35.336227, 26.430410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212292, 0.829451, 0.516666,
		0.977145, -0.186127, -0.102690,
		0.010989, 0.526658, -0.850006,
		34.322289, 35.494225, 26.175409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895981, 35.661270, 26.898994>,  <34.314598, 35.125565, 26.770412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895981, 35.661270, 26.898994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.689465, 35.827202, 26.599298>,  <34.565556, 35.926762, 26.419481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.689465, 35.827202, 26.599298>,  <34.895981, 35.661270, 26.898994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689465, 35.827202, 26.599298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062988, 0.854094, 0.516291,
		0.854094, 0.313749, -0.414831,
		-0.516291, 0.414831, -0.749239,
		34.534576, 35.951653, 26.374527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235825, 36.365349, 26.685467>,  <34.895981, 35.661270, 26.898994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235825, 36.365349, 26.685467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.854088, 36.375336, 26.566404>,  <34.625046, 36.381329, 26.494967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.854088, 36.375336, 26.566404>,  <35.235825, 36.365349, 26.685467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854088, 36.375336, 26.566404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102089, 0.909231, 0.403580,
		0.280715, 0.415543, -0.865172,
		-0.954346, 0.024967, -0.297658,
		34.567783, 36.382824, 26.477108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103386, 36.947544, 26.201332>,  <35.235825, 36.365349, 26.685467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103386, 36.947544, 26.201332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741463, 36.865402, 26.350540>,  <34.524307, 36.816116, 26.440065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741463, 36.865402, 26.350540>,  <35.103386, 36.947544, 26.201332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741463, 36.865402, 26.350540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098116, 0.751906, 0.651928,
		-0.414354, 0.626471, -0.660185,
		-0.904811, -0.205354, 0.373022,
		34.470020, 36.803795, 26.462446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843113, 37.642788, 26.287844>,  <35.103386, 36.947544, 26.201332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843113, 37.642788, 26.287844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.632534, 37.381264, 26.505238>,  <34.506187, 37.224350, 26.635674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.632534, 37.381264, 26.505238>,  <34.843113, 37.642788, 26.287844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632534, 37.381264, 26.505238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000475, 0.639465, 0.768820,
		-0.850205, 0.404488, -0.336958,
		-0.526452, -0.653814, 0.543484,
		34.474598, 37.185120, 26.668283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440571, 38.085411, 26.715654>,  <34.843113, 37.642788, 26.287844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440571, 38.085411, 26.715654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409874, 37.724953, 26.886324>,  <34.391457, 37.508678, 26.988726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.409874, 37.724953, 26.886324>,  <34.440571, 38.085411, 26.715654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409874, 37.724953, 26.886324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026766, 0.429643, 0.902602,
		-0.996692, 0.057848, -0.057092,
		-0.076743, -0.901144, 0.426673,
		34.386852, 37.454609, 27.014326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834751, 38.011097, 27.102568>,  <34.440571, 38.085411, 26.715654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834751, 38.011097, 27.102568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110828, 37.764538, 27.254194>,  <34.276474, 37.616604, 27.345169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.110828, 37.764538, 27.254194>,  <33.834751, 38.011097, 27.102568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110828, 37.764538, 27.254194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186016, 0.355106, 0.916132,
		-0.699307, -0.702821, 0.130433,
		0.690194, -0.616395, 0.379064,
		34.317886, 37.579620, 27.367914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264816, 38.546688, 26.969149>,  <33.834751, 38.011097, 27.102568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264816, 38.546688, 26.969149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.964859, 38.805733, 26.915100>,  <32.784885, 38.961159, 26.882671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.964859, 38.805733, 26.915100>,  <33.264816, 38.546688, 26.969149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964859, 38.805733, 26.915100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161142, -0.376901, -0.912129,
		-0.641636, -0.662224, 0.386993,
		-0.749891, 0.647615, -0.135121,
		32.739891, 39.000019, 26.874563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676949, 38.173801, 26.692797>,  <33.264816, 38.546688, 26.969149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676949, 38.173801, 26.692797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.642365, 38.556385, 26.581287>,  <32.621613, 38.785934, 26.514381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.642365, 38.556385, 26.581287>,  <32.676949, 38.173801, 26.692797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642365, 38.556385, 26.581287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260130, -0.291788, -0.920430,
		-0.961695, -0.007064, 0.274031,
		-0.086461, 0.956457, -0.278774,
		32.616425, 38.843323, 26.497656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092480, 38.140724, 26.396103>,  <32.676949, 38.173801, 26.692797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092480, 38.140724, 26.396103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.230862, 38.493835, 26.268970>,  <32.313892, 38.705704, 26.192690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.230862, 38.493835, 26.268970>,  <32.092480, 38.140724, 26.396103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230862, 38.493835, 26.268970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300627, -0.216596, -0.928822,
		-0.888785, 0.416879, 0.190454,
		0.345955, 0.882779, -0.317832,
		32.334648, 38.758671, 26.173620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541080, 38.473019, 25.994905>,  <32.092480, 38.140724, 26.396103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541080, 38.473019, 25.994905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882254, 38.650936, 25.885607>,  <32.086956, 38.757687, 25.820028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882254, 38.650936, 25.885607>,  <31.541080, 38.473019, 25.994905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882254, 38.650936, 25.885607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184546, -0.232711, -0.954876,
		-0.488312, 0.864871, -0.116402,
		0.852933, 0.444796, -0.273244,
		32.138134, 38.784374, 25.803633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379269, 38.846828, 25.431719>,  <31.541080, 38.473019, 25.994905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379269, 38.846828, 25.431719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.775909, 38.817791, 25.388903>,  <32.013893, 38.800369, 25.363213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.775909, 38.817791, 25.388903>,  <31.379269, 38.846828, 25.431719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775909, 38.817791, 25.388903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126999, -0.389793, -0.912104,
		0.024492, 0.918037, -0.395739,
		0.991601, -0.072598, -0.107042,
		32.073391, 38.796013, 25.356791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433531, 39.084934, 24.781578>,  <31.379269, 38.846828, 25.431719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433531, 39.084934, 24.781578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.768646, 38.884640, 24.868635>,  <31.969715, 38.764462, 24.920870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.768646, 38.884640, 24.868635>,  <31.433531, 39.084934, 24.781578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768646, 38.884640, 24.868635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014475, -0.378109, -0.925648,
		0.545803, 0.778648, -0.309527,
		0.837789, -0.500741, 0.217644,
		32.019981, 38.734417, 24.933928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931362, 39.186401, 24.181328>,  <31.433531, 39.084934, 24.781578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931362, 39.186401, 24.181328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.100616, 38.867077, 24.352749>,  <32.202168, 38.675484, 24.455603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.100616, 38.867077, 24.352749>,  <31.931362, 39.186401, 24.181328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100616, 38.867077, 24.352749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154946, -0.529771, -0.833867,
		0.892719, 0.286437, -0.347860,
		0.423136, -0.798309, 0.428554,
		32.227558, 38.627583, 24.481316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577496, 38.868797, 23.813192>,  <31.931362, 39.186401, 24.181328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577496, 38.868797, 23.813192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.451344, 38.553509, 24.024567>,  <32.375652, 38.364338, 24.151392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.451344, 38.553509, 24.024567>,  <32.577496, 38.868797, 23.813192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451344, 38.553509, 24.024567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033135, -0.565663, -0.823970,
		0.948387, -0.242354, 0.204516,
		-0.315380, -0.788219, 0.528437,
		32.356731, 38.317043, 24.183098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938126, 38.290123, 23.496798>,  <32.577496, 38.868797, 23.813192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938126, 38.290123, 23.496798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640137, 38.120140, 23.702486>,  <32.461342, 38.018150, 23.825899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.640137, 38.120140, 23.702486>,  <32.938126, 38.290123, 23.496798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640137, 38.120140, 23.702486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046471, -0.735905, -0.675488,
		0.665475, -0.527116, 0.528480,
		-0.744972, -0.424961, 0.514222,
		32.416645, 37.992653, 23.856752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129955, 37.554897, 23.605654>,  <32.938126, 38.290123, 23.496798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129955, 37.554897, 23.605654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731297, 37.542973, 23.636143>,  <32.492104, 37.535816, 23.654436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.731297, 37.542973, 23.636143>,  <33.129955, 37.554897, 23.605654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731297, 37.542973, 23.636143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025361, -0.772969, -0.633936,
		0.077814, -0.633742, 0.769620,
		-0.996645, -0.029811, 0.076220,
		32.432304, 37.534031, 23.659008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899055, 36.887337, 23.750315>,  <33.129955, 37.554897, 23.605654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899055, 36.887337, 23.750315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.575474, 37.051083, 23.581545>,  <32.381325, 37.149330, 23.480284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.575474, 37.051083, 23.581545>,  <32.899055, 36.887337, 23.750315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575474, 37.051083, 23.581545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112873, -0.812510, -0.571915,
		-0.576937, -0.415028, 0.703488,
		-0.808952, 0.409363, -0.421922,
		32.332787, 37.173893, 23.454967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503212, 36.285431, 23.591515>,  <32.899055, 36.887337, 23.750315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503212, 36.285431, 23.591515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.336605, 36.579948, 23.378206>,  <32.236641, 36.756660, 23.250221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.336605, 36.579948, 23.378206>,  <32.503212, 36.285431, 23.591515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336605, 36.579948, 23.378206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250548, -0.656825, -0.711201,
		-0.873920, -0.162620, 0.458059,
		-0.416520, 0.736298, -0.533269,
		32.211651, 36.800838, 23.218225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845922, 36.005749, 23.299397>,  <32.503212, 36.285431, 23.591515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845922, 36.005749, 23.299397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.895067, 36.324112, 23.062269>,  <31.924555, 36.515129, 22.919992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.895067, 36.324112, 23.062269>,  <31.845922, 36.005749, 23.299397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895067, 36.324112, 23.062269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186354, -0.568217, -0.801500,
		-0.974770, 0.208949, 0.078508,
		0.122863, 0.795908, -0.592819,
		31.931927, 36.562885, 22.884424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276352, 36.038521, 22.927225>,  <31.845922, 36.005749, 23.299397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276352, 36.038521, 22.927225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.541664, 36.225517, 22.693470>,  <31.700851, 36.337715, 22.553217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.541664, 36.225517, 22.693470>,  <31.276352, 36.038521, 22.927225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541664, 36.225517, 22.693470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292669, -0.556650, -0.777487,
		-0.688769, 0.686724, -0.232394,
		0.663281, 0.467494, -0.584386,
		31.740648, 36.365765, 22.518154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559038, 36.376232, 23.145693>,  <31.276352, 36.038521, 22.927225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559038, 36.376232, 23.145693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.182066, 36.248638, 23.185831>,  <29.955883, 36.172081, 23.209913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.182066, 36.248638, 23.185831>,  <30.559038, 36.376232, 23.145693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182066, 36.248638, 23.185831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062947, 0.463935, 0.883630,
		-0.328420, 0.826445, -0.457306,
		-0.942432, -0.318987, 0.100344,
		29.899336, 36.152943, 23.215935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171190, 36.951511, 23.369505>,  <30.559038, 36.376232, 23.145693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171190, 36.951511, 23.369505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.972713, 36.619610, 23.471718>,  <29.853628, 36.420467, 23.533047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.972713, 36.619610, 23.471718>,  <30.171190, 36.951511, 23.369505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972713, 36.619610, 23.471718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036002, 0.313733, 0.948829,
		-0.867466, 0.461601, -0.185544,
		-0.496192, -0.829757, 0.255534,
		29.823856, 36.370682, 23.548378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659588, 37.202339, 23.835611>,  <30.171190, 36.951511, 23.369505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659588, 37.202339, 23.835611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723331, 36.816410, 23.919258>,  <29.761578, 36.584854, 23.969446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.723331, 36.816410, 23.919258>,  <29.659588, 37.202339, 23.835611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723331, 36.816410, 23.919258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094321, 0.225733, 0.969612,
		-0.982705, -0.134790, 0.126975,
		0.159357, -0.964819, 0.209116,
		29.771139, 36.526966, 23.981993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113279, 37.016541, 24.348381>,  <29.659588, 37.202339, 23.835611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113279, 37.016541, 24.348381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.437996, 36.788750, 24.400064>,  <29.632826, 36.652077, 24.431074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.437996, 36.788750, 24.400064>,  <29.113279, 37.016541, 24.348381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437996, 36.788750, 24.400064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099009, 0.083832, 0.991549,
		-0.575496, -0.817721, 0.011670,
		0.811789, -0.569477, 0.129207,
		29.681532, 36.617908, 24.438826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972605, 36.682606, 24.931004>,  <29.113279, 37.016541, 24.348381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972605, 36.682606, 24.931004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.366667, 36.618668, 24.905968>,  <29.603104, 36.580307, 24.890947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.366667, 36.618668, 24.905968>,  <28.972605, 36.682606, 24.931004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366667, 36.618668, 24.905968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074926, 0.072366, 0.994560,
		-0.154444, -0.984486, 0.083269,
		0.985157, -0.159843, -0.062587,
		29.662214, 36.570717, 24.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176279, 36.349308, 25.485353>,  <28.972605, 36.682606, 24.931004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176279, 36.349308, 25.485353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.515081, 36.528973, 25.371624>,  <29.718363, 36.636772, 25.303387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.515081, 36.528973, 25.371624>,  <29.176279, 36.349308, 25.485353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515081, 36.528973, 25.371624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237023, 0.159644, 0.958297,
		0.475818, -0.879074, 0.028758,
		0.847005, 0.449158, -0.284322,
		29.769182, 36.663719, 25.286327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756969, 36.142525, 25.907570>,  <29.176279, 36.349308, 25.485353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756969, 36.142525, 25.907570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.938538, 36.462112, 25.749783>,  <30.047480, 36.653866, 25.655111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.938538, 36.462112, 25.749783>,  <29.756969, 36.142525, 25.907570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938538, 36.462112, 25.749783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479396, 0.154188, 0.863948,
		0.751089, -0.581271, -0.313033,
		0.453922, 0.798968, -0.394467,
		30.074715, 36.701801, 25.631443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392467, 36.217781, 26.250010>,  <29.756969, 36.142525, 25.907570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392467, 36.217781, 26.250010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.358942, 36.584133, 26.092964>,  <30.338827, 36.803944, 25.998737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.358942, 36.584133, 26.092964>,  <30.392467, 36.217781, 26.250010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358942, 36.584133, 26.092964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205801, 0.401414, 0.892476,
		0.974998, -0.005997, -0.222133,
		-0.083815, 0.915877, -0.392612,
		30.333797, 36.858898, 25.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978548, 36.582150, 26.462358>,  <30.392467, 36.217781, 26.250010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978548, 36.582150, 26.462358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697908, 36.853928, 26.376463>,  <30.529524, 37.016994, 26.324924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.697908, 36.853928, 26.376463>,  <30.978548, 36.582150, 26.462358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697908, 36.853928, 26.376463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205704, 0.481649, 0.851880,
		0.682235, 0.553505, -0.477689,
		-0.701598, 0.679446, -0.214740,
		30.487429, 37.057762, 26.312040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348083, 37.270462, 26.696695>,  <30.978548, 36.582150, 26.462358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348083, 37.270462, 26.696695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.956226, 37.346748, 26.671619>,  <30.721111, 37.392521, 26.656574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.956226, 37.346748, 26.671619>,  <31.348083, 37.270462, 26.696695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956226, 37.346748, 26.671619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065590, 0.599198, 0.797910,
		0.189734, 0.777554, -0.599509,
		-0.979642, 0.190712, -0.062689,
		30.662334, 37.403961, 26.652813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231422, 37.964748, 26.755548>,  <31.348083, 37.270462, 26.696695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231422, 37.964748, 26.755548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.870382, 37.814400, 26.839487>,  <30.653759, 37.724190, 26.889851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.870382, 37.814400, 26.839487>,  <31.231422, 37.964748, 26.755548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870382, 37.814400, 26.839487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143937, 0.722922, 0.675770,
		-0.405705, 0.579745, -0.706611,
		-0.902599, -0.375871, 0.209846,
		30.599602, 37.701637, 26.902441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781456, 38.570736, 26.685629>,  <31.231422, 37.964748, 26.755548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781456, 38.570736, 26.685629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629871, 38.283741, 26.919416>,  <30.538921, 38.111546, 27.059689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629871, 38.283741, 26.919416>,  <30.781456, 38.570736, 26.685629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629871, 38.283741, 26.919416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153419, 0.671545, 0.724907,
		-0.912607, 0.185043, -0.364565,
		-0.378961, -0.717486, 0.584467,
		30.516184, 38.068497, 27.094757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.029776, 35.671257, 19.501413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939079, 35.339958, 19.706387>,  <28.884661, 35.141178, 19.829370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939079, 35.339958, 19.706387>,  <29.029776, 35.671257, 19.501413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939079, 35.339958, 19.706387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063368, 0.537567, 0.840837,
		-0.971891, 0.158182, -0.174375,
		-0.226743, -0.828251, 0.512433,
		28.871056, 35.091484, 19.860117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614119, 35.950100, 20.087532>,  <29.029776, 35.671257, 19.501413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614119, 35.950100, 20.087532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706516, 35.579273, 20.205647>,  <28.761955, 35.356777, 20.276514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706516, 35.579273, 20.205647>,  <28.614119, 35.950100, 20.087532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706516, 35.579273, 20.205647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014513, 0.300176, 0.953773,
		-0.972847, -0.224601, 0.055885,
		0.230993, -0.927065, 0.295285,
		28.775814, 35.301155, 20.294231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167519, 35.769836, 20.575792>,  <28.614119, 35.950100, 20.087532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167519, 35.769836, 20.575792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493467, 35.550045, 20.649609>,  <28.689035, 35.418171, 20.693899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493467, 35.550045, 20.649609>,  <28.167519, 35.769836, 20.575792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493467, 35.550045, 20.649609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037173, 0.367253, 0.929378,
		-0.578450, -0.750462, 0.319690,
		0.814870, -0.549483, 0.184541,
		28.737928, 35.385201, 20.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197330, 35.759594, 21.303877>,  <28.167519, 35.769836, 20.575792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197330, 35.759594, 21.303877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558695, 35.622387, 21.200966>,  <28.775513, 35.540062, 21.139219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558695, 35.622387, 21.200966>,  <28.197330, 35.759594, 21.303877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558695, 35.622387, 21.200966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323849, 0.152592, 0.933723,
		-0.281022, -0.926853, 0.248938,
		0.903409, -0.343015, -0.257278,
		28.829718, 35.519482, 21.123783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298660, 35.204205, 21.723122>,  <28.197330, 35.759594, 21.303877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298660, 35.204205, 21.723122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628489, 35.392010, 21.596857>,  <28.826385, 35.504692, 21.521097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628489, 35.392010, 21.596857>,  <28.298660, 35.204205, 21.723122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628489, 35.392010, 21.596857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282818, 0.141156, 0.948730,
		0.489996, -0.871571, -0.016392,
		0.824571, 0.469510, -0.315662,
		28.875860, 35.532864, 21.502159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808260, 34.890362, 22.171940>,  <28.298660, 35.204205, 21.723122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808260, 34.890362, 22.171940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022501, 35.189705, 22.015436>,  <29.151047, 35.369312, 21.921534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022501, 35.189705, 22.015436>,  <28.808260, 34.890362, 22.171940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022501, 35.189705, 22.015436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389732, 0.191970, 0.900698,
		0.749157, -0.634903, -0.188841,
		0.535604, 0.748362, -0.391258,
		29.183182, 35.414215, 21.898058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511900, 34.853687, 22.419880>,  <28.808260, 34.890362, 22.171940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511900, 34.853687, 22.419880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452843, 35.236877, 22.321512>,  <29.417408, 35.466793, 22.262491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452843, 35.236877, 22.321512>,  <29.511900, 34.853687, 22.419880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452843, 35.236877, 22.321512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526259, 0.286615, 0.800564,
		0.837408, -0.011220, -0.546462,
		-0.147642, 0.957980, -0.245919,
		29.408550, 35.524273, 22.247736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149706, 35.196671, 22.482109>,  <29.511900, 34.853687, 22.419880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149706, 35.196671, 22.482109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871704, 35.484268, 22.483501>,  <29.704903, 35.656826, 22.484337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871704, 35.484268, 22.483501>,  <30.149706, 35.196671, 22.482109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871704, 35.484268, 22.483501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361333, 0.345083, 0.866231,
		0.621619, 0.603290, -0.499631,
		-0.695003, 0.718999, 0.003479,
		29.663204, 35.699966, 22.484545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506037, 35.779957, 22.762749>,  <30.149706, 35.196671, 22.482109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506037, 35.779957, 22.762749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111776, 35.842705, 22.787691>,  <29.875221, 35.880352, 22.802656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111776, 35.842705, 22.787691>,  <30.506037, 35.779957, 22.762749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111776, 35.842705, 22.787691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124442, 0.425626, 0.896302,
		0.114060, 0.891199, -0.439039,
		-0.985649, 0.156867, 0.062355,
		29.816082, 35.889767, 22.806398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911629, 36.208176, 22.246504>,  <30.506037, 35.779957, 22.762749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911629, 36.208176, 22.246504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305902, 36.189793, 22.181616>,  <31.542467, 36.178761, 22.142683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305902, 36.189793, 22.181616>,  <30.911629, 36.208176, 22.246504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305902, 36.189793, 22.181616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164000, -0.484677, -0.859181,
		-0.039135, 0.873485, -0.485276,
		0.985684, -0.045961, -0.162219,
		31.601608, 36.176006, 22.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914284, 36.043533, 21.530802>,  <30.911629, 36.208176, 22.246504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914284, 36.043533, 21.530802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299374, 35.996677, 21.628321>,  <31.530428, 35.968563, 21.686832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299374, 35.996677, 21.628321>,  <30.914284, 36.043533, 21.530802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299374, 35.996677, 21.628321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181964, -0.386397, -0.904205,
		0.200122, 0.914863, -0.350679,
		0.962725, -0.117140, 0.243798,
		31.588192, 35.961536, 21.701460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323753, 36.352848, 20.909664>,  <30.914284, 36.043533, 21.530802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323753, 36.352848, 20.909664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537741, 36.068707, 21.092619>,  <31.666134, 35.898220, 21.202393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537741, 36.068707, 21.092619>,  <31.323753, 36.352848, 20.909664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537741, 36.068707, 21.092619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123112, -0.470050, -0.874012,
		0.835853, 0.523880, -0.164009,
		0.534970, -0.710354, 0.457389,
		31.698231, 35.855598, 21.229836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860840, 36.303135, 20.510336>,  <31.323753, 36.352848, 20.909664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860840, 36.303135, 20.510336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841438, 35.963097, 20.720091>,  <31.829798, 35.759075, 20.845943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841438, 35.963097, 20.720091>,  <31.860840, 36.303135, 20.510336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841438, 35.963097, 20.720091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192335, -0.523131, -0.830266,
		0.980130, 0.060587, 0.188877,
		-0.048504, -0.850096, 0.524389,
		31.826887, 35.708069, 20.877407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410397, 35.957970, 20.303097>,  <31.860840, 36.303135, 20.510336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410397, 35.957970, 20.303097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179153, 35.664989, 20.446936>,  <32.040405, 35.489201, 20.533239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179153, 35.664989, 20.446936>,  <32.410397, 35.957970, 20.303097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179153, 35.664989, 20.446936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212179, -0.560486, -0.800522,
		0.787889, -0.386491, 0.479432,
		-0.578110, -0.732448, 0.359596,
		32.005722, 35.445255, 20.554815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852768, 35.446510, 20.183294>,  <32.410397, 35.957970, 20.303097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852768, 35.446510, 20.183294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510807, 35.256439, 20.266581>,  <32.305630, 35.142395, 20.316553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510807, 35.256439, 20.266581>,  <32.852768, 35.446510, 20.183294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510807, 35.256439, 20.266581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193735, -0.664716, -0.721540,
		0.481265, -0.576505, 0.660323,
		-0.854898, -0.475179, 0.208215,
		32.254337, 35.113884, 20.329044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069855, 34.782368, 20.273453>,  <32.852768, 35.446510, 20.183294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069855, 34.782368, 20.273453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683094, 34.804924, 20.173918>,  <32.451038, 34.818459, 20.114197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683094, 34.804924, 20.173918>,  <33.069855, 34.782368, 20.273453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683094, 34.804924, 20.173918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189853, -0.492539, -0.849330,
		-0.170456, -0.868461, 0.465532,
		-0.966902, 0.056390, -0.248836,
		32.393024, 34.821842, 20.099266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893467, 34.172024, 20.089718>,  <33.069855, 34.782368, 20.273453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893467, 34.172024, 20.089718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586052, 34.363724, 19.920168>,  <32.401604, 34.478745, 19.818438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586052, 34.363724, 19.920168>,  <32.893467, 34.172024, 20.089718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586052, 34.363724, 19.920168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033831, -0.631138, -0.774932,
		-0.638935, -0.609889, 0.468826,
		-0.768517, 0.479270, -0.423889,
		32.355492, 34.507500, 19.793005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345226, 33.660889, 19.935608>,  <32.893467, 34.172024, 20.089718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345226, 33.660889, 19.935608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300541, 33.987000, 19.708330>,  <32.273731, 34.182667, 19.571964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300541, 33.987000, 19.708330>,  <32.345226, 33.660889, 19.935608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300541, 33.987000, 19.708330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064312, -0.564642, -0.822826,
		-0.991658, -0.128460, 0.010644,
		-0.111710, 0.815277, -0.568193,
		32.267029, 34.231583, 19.537872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738909, 33.472805, 19.456833>,  <32.345226, 33.660889, 19.935608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738909, 33.472805, 19.456833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942841, 33.778664, 19.299158>,  <32.065201, 33.962181, 19.204554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942841, 33.778664, 19.299158>,  <31.738909, 33.472805, 19.456833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942841, 33.778664, 19.299158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050178, -0.483863, -0.873704,
		-0.858810, 0.425662, -0.285057,
		0.509831, 0.764650, -0.394187,
		32.095791, 34.008060, 19.180902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501587, 33.662209, 18.824837>,  <31.738909, 33.472805, 19.456833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501587, 33.662209, 18.824837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854780, 33.847900, 18.797035>,  <32.066696, 33.959316, 18.780354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854780, 33.847900, 18.797035>,  <31.501587, 33.662209, 18.824837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854780, 33.847900, 18.797035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057092, -0.253184, -0.965732,
		-0.465918, 0.848758, -0.250061,
		0.882984, 0.464229, -0.069506,
		32.119675, 33.987167, 18.776184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447218, 33.983540, 18.237537>,  <31.501587, 33.662209, 18.824837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447218, 33.983540, 18.237537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839998, 33.948284, 18.304476>,  <32.075665, 33.927132, 18.344639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839998, 33.948284, 18.304476>,  <31.447218, 33.983540, 18.237537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839998, 33.948284, 18.304476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136531, -0.281978, -0.949657,
		0.130894, 0.955363, -0.264854,
		0.981950, -0.088143, 0.167346,
		32.134583, 33.921841, 18.354679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870991, 34.386654, 17.652153>,  <31.447218, 33.983540, 18.237537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870991, 34.386654, 17.652153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108253, 34.103455, 17.805470>,  <32.250610, 33.933537, 17.897459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108253, 34.103455, 17.805470>,  <31.870991, 34.386654, 17.652153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108253, 34.103455, 17.805470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153343, -0.368017, -0.917088,
		0.790350, 0.602749, -0.109725,
		0.593155, -0.707995, 0.383290,
		32.286201, 33.891056, 17.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434486, 34.324718, 17.197147>,  <31.870991, 34.386654, 17.652153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434486, 34.324718, 17.197147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448715, 33.969280, 17.380070>,  <32.457253, 33.756016, 17.489822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448715, 33.969280, 17.380070>,  <32.434486, 34.324718, 17.197147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448715, 33.969280, 17.380070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344826, -0.418579, -0.840171,
		0.937993, 0.187573, 0.291524,
		0.035568, -0.888599, 0.457304,
		32.459385, 33.702702, 17.517262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.238935, 27.902153, 21.831070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.045397, 28.198807, 21.645224>,  <29.929274, 28.376799, 21.533716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.045397, 28.198807, 21.645224>,  <30.238935, 27.902153, 21.831070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045397, 28.198807, 21.645224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329247, 0.646154, 0.688536,
		0.810856, 0.180174, -0.556821,
		-0.483848, 0.741635, -0.464616,
		29.900242, 28.421297, 21.505838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671158, 28.444071, 22.046659>,  <30.238935, 27.902153, 21.831070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671158, 28.444071, 22.046659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339888, 28.636536, 21.931692>,  <30.141125, 28.752014, 21.862711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339888, 28.636536, 21.931692>,  <30.671158, 28.444071, 22.046659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339888, 28.636536, 21.931692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133679, 0.667598, 0.732422,
		0.544294, 0.568152, -0.617210,
		-0.828175, 0.481161, -0.287419,
		30.091434, 28.780884, 21.845467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769163, 29.234718, 21.970856>,  <30.671158, 28.444071, 22.046659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769163, 29.234718, 21.970856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.378124, 29.219727, 22.053707>,  <30.143501, 29.210732, 22.103418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.378124, 29.219727, 22.053707>,  <30.769163, 29.234718, 21.970856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378124, 29.219727, 22.053707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132333, 0.655788, 0.743256,
		-0.163689, 0.754014, -0.636136,
		-0.977596, -0.037481, 0.207127,
		30.084845, 29.208483, 22.115845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685511, 29.850296, 22.345591>,  <30.769163, 29.234718, 21.970856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685511, 29.850296, 22.345591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.352036, 29.644814, 22.426653>,  <30.151951, 29.521524, 22.475290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.352036, 29.644814, 22.426653>,  <30.685511, 29.850296, 22.345591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352036, 29.644814, 22.426653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072785, 0.465982, 0.881796,
		-0.547419, 0.720392, -0.425873,
		-0.833688, -0.513708, 0.202654,
		30.101929, 29.490702, 22.487450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097668, 30.351978, 22.450121>,  <30.685511, 29.850296, 22.345591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097668, 30.351978, 22.450121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999197, 30.012182, 22.636782>,  <29.940115, 29.808306, 22.748779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999197, 30.012182, 22.636782>,  <30.097668, 30.351978, 22.450121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999197, 30.012182, 22.636782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250595, 0.520886, 0.816015,
		-0.936269, 0.083944, -0.341108,
		-0.246177, -0.849489, 0.466653,
		29.925344, 29.757336, 22.776777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520447, 30.520548, 22.724348>,  <30.097668, 30.351978, 22.450121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520447, 30.520548, 22.724348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.607706, 30.193846, 22.938011>,  <29.660061, 29.997824, 23.066208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.607706, 30.193846, 22.938011>,  <29.520447, 30.520548, 22.724348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607706, 30.193846, 22.938011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236554, 0.486762, 0.840895,
		-0.946813, -0.309795, -0.087021,
		0.218147, -0.816756, 0.534155,
		29.673151, 29.948818, 23.098257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855749, 30.335346, 23.202133>,  <29.520447, 30.520548, 22.724348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855749, 30.335346, 23.202133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.192068, 30.179342, 23.352308>,  <29.393860, 30.085739, 23.442413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.192068, 30.179342, 23.352308>,  <28.855749, 30.335346, 23.202133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192068, 30.179342, 23.352308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267178, 0.304211, 0.914369,
		-0.470828, -0.869106, 0.151576,
		0.840796, -0.390013, 0.375437,
		29.444307, 30.062338, 23.464939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781900, 30.304899, 23.878466>,  <28.855749, 30.335346, 23.202133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781900, 30.304899, 23.878466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.167450, 30.199997, 23.897095>,  <29.398779, 30.137056, 23.908272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.167450, 30.199997, 23.897095>,  <28.781900, 30.304899, 23.878466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167450, 30.199997, 23.897095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029186, 0.277791, 0.960198,
		-0.264754, -0.924151, 0.275410,
		0.963874, -0.262255, 0.046574,
		29.456612, 30.121321, 23.911066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921709, 29.842991, 24.420378>,  <28.781900, 30.304899, 23.878466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921709, 29.842991, 24.420378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.262312, 30.038567, 24.344616>,  <29.466675, 30.155912, 24.299158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.262312, 30.038567, 24.344616>,  <28.921709, 29.842991, 24.420378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262312, 30.038567, 24.344616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017749, 0.387895, 0.921533,
		0.524042, -0.781330, 0.338973,
		0.851507, 0.488939, -0.189406,
		29.517765, 30.185247, 24.287794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313995, 29.751406, 25.006966>,  <28.921709, 29.842991, 24.420378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313995, 29.751406, 25.006966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.521832, 30.049896, 24.840508>,  <29.646532, 30.228991, 24.740633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.521832, 30.049896, 24.840508>,  <29.313995, 29.751406, 25.006966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521832, 30.049896, 24.840508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090610, 0.436180, 0.895286,
		0.849599, -0.502886, 0.159018,
		0.519588, 0.746226, -0.416144,
		29.677708, 30.273764, 24.715664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049664, 29.830805, 25.369972>,  <29.313995, 29.751406, 25.006966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049664, 29.830805, 25.369972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.936897, 30.170118, 25.190668>,  <29.869238, 30.373707, 25.083086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.936897, 30.170118, 25.190668>,  <30.049664, 29.830805, 25.369972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936897, 30.170118, 25.190668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183415, 0.506242, 0.842661,
		0.941745, 0.155342, -0.298305,
		-0.281915, 0.848286, -0.448258,
		29.852324, 30.424604, 25.056190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593180, 30.405382, 25.312071>,  <30.049664, 29.830805, 25.369972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593180, 30.405382, 25.312071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.242931, 30.597151, 25.288603>,  <30.032782, 30.712212, 25.274523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.242931, 30.597151, 25.288603>,  <30.593180, 30.405382, 25.312071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242931, 30.597151, 25.288603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260863, 0.571645, 0.777928,
		0.406492, 0.665867, -0.625608,
		-0.875623, 0.479419, -0.058669,
		29.980244, 30.740976, 25.271002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846506, 31.021887, 25.378794>,  <30.593180, 30.405382, 25.312071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846506, 31.021887, 25.378794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451113, 31.053139, 25.430632>,  <30.213877, 31.071890, 25.461735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451113, 31.053139, 25.430632>,  <30.846506, 31.021887, 25.378794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451113, 31.053139, 25.430632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141646, 0.779078, 0.610716,
		-0.053251, 0.622040, -0.781173,
		-0.988484, 0.078129, 0.129596,
		30.154568, 31.076578, 25.469511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799770, 31.682840, 25.396488>,  <30.846506, 31.021887, 25.378794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799770, 31.682840, 25.396488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.475784, 31.555422, 25.593458>,  <30.281393, 31.478971, 25.711641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.475784, 31.555422, 25.593458>,  <30.799770, 31.682840, 25.396488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475784, 31.555422, 25.593458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065724, 0.785045, 0.615943,
		-0.582782, 0.531257, -0.614924,
		-0.809966, -0.318545, 0.492426,
		30.232794, 31.459858, 25.741186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253048, 32.155235, 25.014555>,  <30.799770, 31.682840, 25.396488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253048, 32.155235, 25.014555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632380, 32.096027, 25.126810>,  <31.859980, 32.060501, 25.194162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.632380, 32.096027, 25.126810>,  <31.253048, 32.155235, 25.014555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632380, 32.096027, 25.126810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202946, -0.396901, -0.895144,
		0.243888, 0.905847, -0.346353,
		0.948331, -0.148023, 0.280637,
		31.916880, 32.051620, 25.211000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628460, 32.528877, 24.522429>,  <31.253048, 32.155235, 25.014555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628460, 32.528877, 24.522429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.837784, 32.221859, 24.670496>,  <31.963377, 32.037647, 24.759336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.837784, 32.221859, 24.670496>,  <31.628460, 32.528877, 24.522429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837784, 32.221859, 24.670496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225089, -0.294462, -0.928777,
		0.821878, 0.569357, 0.018672,
		0.523307, -0.767545, 0.370168,
		31.994776, 31.991596, 24.781546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179802, 32.396172, 24.030884>,  <31.628460, 32.528877, 24.522429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179802, 32.396172, 24.030884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224167, 32.067154, 24.253994>,  <32.250786, 31.869743, 24.387861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.224167, 32.067154, 24.253994>,  <32.179802, 32.396172, 24.030884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224167, 32.067154, 24.253994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219259, -0.527159, -0.820993,
		0.969343, 0.213353, 0.121884,
		0.110909, -0.822547, 0.557777,
		32.257439, 31.820389, 24.421328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807106, 32.034569, 23.767456>,  <32.179802, 32.396172, 24.030884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807106, 32.034569, 23.767456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585701, 31.761906, 23.958857>,  <32.452858, 31.598309, 24.073698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.585701, 31.761906, 23.958857>,  <32.807106, 32.034569, 23.767456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585701, 31.761906, 23.958857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065178, -0.608237, -0.791075,
		0.830286, -0.406683, 0.381097,
		-0.553513, -0.681658, 0.478504,
		32.419647, 31.557409, 24.102407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175167, 31.351683, 23.799595>,  <32.807106, 32.034569, 23.767456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175167, 31.351683, 23.799595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793568, 31.240648, 23.844893>,  <32.564606, 31.174028, 23.872072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793568, 31.240648, 23.844893>,  <33.175167, 31.351683, 23.799595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793568, 31.240648, 23.844893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132201, -0.728546, -0.672119,
		0.269075, -0.626232, 0.731732,
		-0.954003, -0.277586, 0.113246,
		32.507366, 31.157372, 23.878866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260204, 30.659416, 23.559332>,  <33.175167, 31.351683, 23.799595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260204, 30.659416, 23.559332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.866444, 30.729176, 23.568666>,  <32.630188, 30.771032, 23.574266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.866444, 30.729176, 23.568666>,  <33.260204, 30.659416, 23.559332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866444, 30.729176, 23.568666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118340, -0.558070, -0.821312,
		-0.130213, -0.811260, 0.570001,
		-0.984399, 0.174400, 0.023337,
		32.571125, 30.781496, 23.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971985, 29.980368, 23.567633>,  <33.260204, 30.659416, 23.559332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971985, 29.980368, 23.567633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.719501, 30.254320, 23.422026>,  <32.568012, 30.418692, 23.334661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.719501, 30.254320, 23.422026>,  <32.971985, 29.980368, 23.567633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719501, 30.254320, 23.422026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064984, -0.514378, -0.855098,
		-0.772884, -0.516091, 0.369187,
		-0.631210, 0.684883, -0.364017,
		32.530140, 30.459785, 23.312820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585335, 29.503923, 23.108324>,  <32.971985, 29.980368, 23.567633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585335, 29.503923, 23.108324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487854, 29.876953, 23.001802>,  <32.429367, 30.100771, 22.937889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.487854, 29.876953, 23.001802>,  <32.585335, 29.503923, 23.108324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487854, 29.876953, 23.001802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253678, -0.326315, -0.910585,
		-0.936086, -0.154356, 0.316098,
		-0.243702, 0.932573, -0.266302,
		32.414742, 30.156725, 22.921911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957399, 29.302011, 22.823645>,  <32.585335, 29.503923, 23.108324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957399, 29.302011, 22.823645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.124184, 29.636892, 22.682089>,  <32.224255, 29.837820, 22.597155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.124184, 29.636892, 22.682089>,  <31.957399, 29.302011, 22.823645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124184, 29.636892, 22.682089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113705, -0.338246, -0.934163,
		-0.901783, 0.429750, -0.045843,
		0.416963, 0.837200, -0.353889,
		32.249271, 29.888052, 22.575922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551113, 29.418276, 22.207928>,  <31.957399, 29.302011, 22.823645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551113, 29.418276, 22.207928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885212, 29.631821, 22.155235>,  <32.085670, 29.759947, 22.123621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.885212, 29.631821, 22.155235>,  <31.551113, 29.418276, 22.207928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885212, 29.631821, 22.155235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139535, -0.437501, -0.888326,
		-0.531875, 0.723591, -0.439914,
		0.835248, 0.533862, -0.131730,
		32.135788, 29.791979, 22.115717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586071, 29.904251, 21.601364>,  <31.551113, 29.418276, 22.207928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586071, 29.904251, 21.601364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.960855, 29.800303, 21.694801>,  <32.185726, 29.737934, 21.750864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.960855, 29.800303, 21.694801>,  <31.586071, 29.904251, 21.601364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960855, 29.800303, 21.694801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130905, -0.358775, -0.924199,
		0.323980, 0.896520, -0.302141,
		0.936963, -0.259871, 0.233595,
		32.241943, 29.722342, 21.764879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959055, 30.188221, 21.125797>,  <31.586071, 29.904251, 21.601364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959055, 30.188221, 21.125797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.204002, 29.898376, 21.252251>,  <32.350971, 29.724470, 21.328123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.204002, 29.898376, 21.252251>,  <31.959055, 30.188221, 21.125797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204002, 29.898376, 21.252251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057359, -0.358106, -0.931917,
		0.788488, 0.588812, -0.177731,
		0.612370, -0.724611, 0.316136,
		32.387714, 29.680994, 21.347092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386063, 30.083929, 20.534279>,  <31.959055, 30.188221, 21.125797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386063, 30.083929, 20.534279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416176, 29.752108, 20.755611>,  <32.434246, 29.553015, 20.888411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416176, 29.752108, 20.755611>,  <32.386063, 30.083929, 20.534279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416176, 29.752108, 20.755611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078132, -0.548291, -0.832630,
		0.994096, 0.105919, 0.023535,
		0.075287, -0.829553, 0.553329,
		32.438763, 29.503242, 20.921610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921516, 29.748125, 20.203484>,  <32.386063, 30.083929, 20.534279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921516, 29.748125, 20.203484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698738, 29.483774, 20.404699>,  <32.565071, 29.325163, 20.525429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.698738, 29.483774, 20.404699>,  <32.921516, 29.748125, 20.203484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698738, 29.483774, 20.404699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068589, -0.567006, -0.820853,
		0.827712, -0.491673, 0.270463,
		-0.556945, -0.660879, 0.503041,
		32.531654, 29.285511, 20.555613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770676, 29.607637, 20.055979>,  <32.921516, 29.748125, 20.203484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770676, 29.607637, 20.055979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.905022, 29.908937, 19.829771>,  <33.985630, 30.089718, 19.694046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.905022, 29.908937, 19.829771>,  <33.770676, 29.607637, 20.055979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905022, 29.908937, 19.829771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419321, 0.418048, 0.805858,
		0.843426, -0.507791, -0.175447,
		0.335862, 0.753250, -0.565519,
		34.005779, 30.134912, 19.660116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528553, 29.727556, 20.332582>,  <33.770676, 29.607637, 20.055979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528553, 29.727556, 20.332582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395000, 30.061363, 20.157263>,  <34.314869, 30.261646, 20.052071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.395000, 30.061363, 20.157263>,  <34.528553, 29.727556, 20.332582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395000, 30.061363, 20.157263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377080, 0.544403, 0.749290,
		0.863906, 0.084899, -0.496446,
		-0.333881, 0.834516, -0.438299,
		34.294838, 30.311718, 20.025772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024158, 30.286566, 20.565466>,  <34.528553, 29.727556, 20.332582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024158, 30.286566, 20.565466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715519, 30.493553, 20.417488>,  <34.530334, 30.617746, 20.328701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.715519, 30.493553, 20.417488>,  <35.024158, 30.286566, 20.565466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715519, 30.493553, 20.417488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105690, 0.677783, 0.727626,
		0.627267, 0.522336, -0.577669,
		-0.771600, 0.517469, -0.369945,
		34.484039, 30.648794, 20.306505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237637, 30.945831, 20.559626>,  <35.024158, 30.286566, 20.565466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237637, 30.945831, 20.559626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838562, 30.971670, 20.551214>,  <34.599117, 30.987173, 20.546167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838562, 30.971670, 20.551214>,  <35.237637, 30.945831, 20.559626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838562, 30.971670, 20.551214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027846, 0.671181, 0.740770,
		0.061965, 0.738473, -0.671430,
		-0.997690, 0.064598, -0.021026,
		34.539253, 30.991049, 20.544907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138981, 31.632477, 20.576458>,  <35.237637, 30.945831, 20.559626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138981, 31.632477, 20.576458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798626, 31.462887, 20.700544>,  <34.594414, 31.361132, 20.774996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798626, 31.462887, 20.700544>,  <35.138981, 31.632477, 20.576458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798626, 31.462887, 20.700544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051241, 0.654659, 0.754186,
		-0.522841, 0.625833, -0.578767,
		-0.850889, -0.423976, 0.310214,
		34.543358, 31.335693, 20.793608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858356, 32.170227, 20.739231>,  <35.138981, 31.632477, 20.576458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858356, 32.170227, 20.739231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665840, 31.884180, 20.941996>,  <34.550331, 31.712551, 21.063654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.665840, 31.884180, 20.941996>,  <34.858356, 32.170227, 20.739231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665840, 31.884180, 20.941996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041588, 0.596276, 0.801702,
		-0.875574, 0.364771, -0.316722,
		-0.481291, -0.715121, 0.506913,
		34.521454, 31.669643, 21.094070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374401, 32.590164, 21.116253>,  <34.858356, 32.170227, 20.739231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374401, 32.590164, 21.116253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405834, 32.234905, 21.297371>,  <34.424694, 32.021751, 21.406042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405834, 32.234905, 21.297371>,  <34.374401, 32.590164, 21.116253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405834, 32.234905, 21.297371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045105, 0.450565, 0.891603,
		-0.995887, -0.090486, -0.004654,
		0.078581, -0.888146, 0.452793,
		34.429409, 31.968462, 21.433208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748428, 32.577999, 21.562658>,  <34.374401, 32.590164, 21.116253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748428, 32.577999, 21.562658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997425, 32.304340, 21.714682>,  <34.146824, 32.140144, 21.805897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997425, 32.304340, 21.714682>,  <33.748428, 32.577999, 21.562658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997425, 32.304340, 21.714682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012895, 0.476590, 0.879031,
		-0.782520, -0.552090, 0.287851,
		0.622491, -0.684148, 0.380060,
		34.184174, 32.099094, 21.828699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431499, 32.327240, 22.175596>,  <33.748428, 32.577999, 21.562658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431499, 32.327240, 22.175596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.828091, 32.287453, 22.209251>,  <34.066044, 32.263580, 22.229445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.828091, 32.287453, 22.209251>,  <33.431499, 32.327240, 22.175596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828091, 32.287453, 22.209251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030790, 0.448615, 0.893195,
		-0.126589, -0.888173, 0.441729,
		0.991477, -0.099468, 0.084137,
		34.125534, 32.257614, 22.234493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495914, 32.067047, 22.802395>,  <33.431499, 32.327240, 22.175596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495914, 32.067047, 22.802395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871162, 32.188683, 22.736099>,  <34.096310, 32.261662, 22.696321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871162, 32.188683, 22.736099>,  <33.495914, 32.067047, 22.802395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871162, 32.188683, 22.736099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021909, 0.529721, 0.847889,
		0.345625, -0.791788, 0.503603,
		0.938117, 0.304085, -0.165738,
		34.152599, 32.279907, 22.686378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906895, 31.973007, 23.432112>,  <33.495914, 32.067047, 22.802395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906895, 31.973007, 23.432112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.147572, 32.232159, 23.245256>,  <34.291977, 32.387650, 23.133144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.147572, 32.232159, 23.245256>,  <33.906895, 31.973007, 23.432112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147572, 32.232159, 23.245256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016426, 0.574690, 0.818206,
		0.798558, -0.499983, 0.335146,
		0.601694, 0.647879, -0.467136,
		34.328079, 32.426521, 23.105116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503090, 32.098118, 23.800638>,  <33.906895, 31.973007, 23.432112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503090, 32.098118, 23.800638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493038, 32.435699, 23.586309>,  <34.487007, 32.638248, 23.457712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.493038, 32.435699, 23.586309>,  <34.503090, 32.098118, 23.800638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493038, 32.435699, 23.586309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115894, 0.534834, 0.836971,
		0.992944, -0.041067, -0.111248,
		-0.025127, 0.843958, -0.535820,
		34.485500, 32.688889, 23.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041782, 32.498768, 24.061659>,  <34.503090, 32.098118, 23.800638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041782, 32.498768, 24.061659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807133, 32.764832, 23.876863>,  <34.666344, 32.924469, 23.765987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807133, 32.764832, 23.876863>,  <35.041782, 32.498768, 24.061659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807133, 32.764832, 23.876863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125810, 0.638376, 0.759374,
		0.800029, 0.387343, -0.458169,
		-0.586622, 0.665163, -0.461987,
		34.631145, 32.964382, 23.738268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408913, 33.148506, 24.089375>,  <35.041782, 32.498768, 24.061659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408913, 33.148506, 24.089375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029369, 33.258518, 24.027365>,  <34.801643, 33.324524, 23.990160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.029369, 33.258518, 24.027365>,  <35.408913, 33.148506, 24.089375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029369, 33.258518, 24.027365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110960, 0.750217, 0.651815,
		0.295568, 0.601277, -0.742365,
		-0.948856, 0.275029, -0.155022,
		34.744713, 33.341026, 23.980858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.012974, 33.931919, 16.842382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822109, 33.642868, 17.042433>,  <32.707592, 33.469437, 17.162462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.822109, 33.642868, 17.042433>,  <33.012974, 33.931919, 16.842382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822109, 33.642868, 17.042433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190448, -0.640592, -0.743889,
		0.857933, -0.259705, 0.443288,
		-0.477159, -0.722631, 0.500125,
		32.678963, 33.426079, 17.192471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440746, 33.324654, 16.746836>,  <33.012974, 33.931919, 16.842382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440746, 33.324654, 16.746836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078102, 33.194237, 16.853979>,  <32.860516, 33.115986, 16.918264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.078102, 33.194237, 16.853979>,  <33.440746, 33.324654, 16.746836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078102, 33.194237, 16.853979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027857, -0.679656, -0.733002,
		0.421042, -0.657088, 0.625268,
		-0.906613, -0.326043, 0.267859,
		32.806118, 33.096424, 16.934338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429775, 32.693367, 16.652342>,  <33.440746, 33.324654, 16.746836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429775, 32.693367, 16.652342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033524, 32.737503, 16.684521>,  <32.795773, 32.763985, 16.703829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033524, 32.737503, 16.684521>,  <33.429775, 32.693367, 16.652342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033524, 32.737503, 16.684521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136383, -0.770148, -0.623115,
		-0.006796, -0.628250, 0.777982,
		-0.990633, 0.110338, 0.080449,
		32.736332, 32.770603, 16.708656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131420, 32.060925, 16.789000>,  <33.429775, 32.693367, 16.652342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131420, 32.060925, 16.789000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847115, 32.260471, 16.590630>,  <32.676529, 32.380199, 16.471607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847115, 32.260471, 16.590630>,  <33.131420, 32.060925, 16.789000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847115, 32.260471, 16.590630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048055, -0.737802, -0.673305,
		-0.701778, -0.454735, 0.548382,
		-0.710773, 0.498863, -0.495921,
		32.633884, 32.410130, 16.441853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840023, 31.562668, 16.503466>,  <33.131420, 32.060925, 16.789000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840023, 31.562668, 16.503466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677456, 31.858709, 16.289148>,  <32.579918, 32.036335, 16.160557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677456, 31.858709, 16.289148>,  <32.840023, 31.562668, 16.503466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677456, 31.858709, 16.289148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156966, -0.634245, -0.757030,
		-0.900105, -0.223567, 0.373938,
		-0.406415, 0.740102, -0.535794,
		32.555531, 32.080742, 16.128410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184921, 31.470720, 16.400906>,  <32.840023, 31.562668, 16.503466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184921, 31.470720, 16.400906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259846, 31.715864, 16.093838>,  <32.304802, 31.862951, 15.909596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.259846, 31.715864, 16.093838>,  <32.184921, 31.470720, 16.400906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259846, 31.715864, 16.093838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222036, -0.734861, -0.640843,
		-0.956878, 0.290487, -0.001570,
		0.187310, 0.612860, -0.767670,
		32.316040, 31.899723, 15.863537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589693, 31.487671, 15.978645>,  <32.184921, 31.470720, 16.400906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589693, 31.487671, 15.978645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.890432, 31.608027, 15.743974>,  <32.070877, 31.680241, 15.603171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.890432, 31.608027, 15.743974>,  <31.589693, 31.487671, 15.978645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890432, 31.608027, 15.743974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347545, -0.575292, -0.740440,
		-0.560303, 0.760594, -0.327958,
		0.751847, 0.300890, -0.586679,
		32.115986, 31.698294, 15.567970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233364, 31.530777, 15.411440>,  <31.589693, 31.487671, 15.978645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233364, 31.530777, 15.411440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618685, 31.516056, 15.305082>,  <31.849876, 31.507223, 15.241267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618685, 31.516056, 15.305082>,  <31.233364, 31.530777, 15.411440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618685, 31.516056, 15.305082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259826, -0.376607, -0.889189,
		-0.067415, 0.925642, -0.372347,
		0.963299, -0.036801, -0.265895,
		31.907675, 31.505016, 15.225314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178133, 31.652493, 14.724511>,  <31.233364, 31.530777, 15.411440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178133, 31.652493, 14.724511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549549, 31.508837, 14.762103>,  <31.772398, 31.422644, 14.784658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.549549, 31.508837, 14.762103>,  <31.178133, 31.652493, 14.724511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549549, 31.508837, 14.762103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102898, -0.492226, -0.864364,
		0.356689, 0.792926, -0.494006,
		0.928539, -0.359141, 0.093981,
		31.828112, 31.401094, 14.790298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599258, 31.875963, 14.065989>,  <31.178133, 31.652493, 14.724511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599258, 31.875963, 14.065989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736219, 31.541811, 14.237990>,  <31.818396, 31.341320, 14.341191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736219, 31.541811, 14.237990>,  <31.599258, 31.875963, 14.065989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736219, 31.541811, 14.237990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034332, -0.446240, -0.894255,
		0.938927, 0.320956, -0.124113,
		0.342401, -0.835379, 0.430005,
		31.838940, 31.291197, 14.366992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226856, 31.693941, 13.656590>,  <31.599258, 31.875963, 14.065989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226856, 31.693941, 13.656590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130947, 31.371746, 13.873366>,  <32.073402, 31.178429, 14.003432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130947, 31.371746, 13.873366>,  <32.226856, 31.693941, 13.656590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130947, 31.371746, 13.873366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015917, -0.554887, -0.831774,
		0.970699, -0.208061, 0.120224,
		-0.239770, -0.805488, 0.541940,
		32.059017, 31.130100, 14.035949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671341, 31.109905, 13.477558>,  <32.226856, 31.693941, 13.656590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671341, 31.109905, 13.477558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338863, 30.947378, 13.629361>,  <32.139378, 30.849861, 13.720443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338863, 30.947378, 13.629361>,  <32.671341, 31.109905, 13.477558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338863, 30.947378, 13.629361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048524, -0.626965, -0.777535,
		0.553864, -0.664696, 0.501411,
		-0.831192, -0.406318, 0.379507,
		32.089504, 30.825483, 13.743214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711750, 30.344795, 13.422329>,  <32.671341, 31.109905, 13.477558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711750, 30.344795, 13.422329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321377, 30.410940, 13.479188>,  <32.087151, 30.450628, 13.513303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321377, 30.410940, 13.479188>,  <32.711750, 30.344795, 13.422329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321377, 30.410940, 13.479188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213664, -0.855417, -0.471815,
		0.043573, -0.490833, 0.870164,
		-0.975935, 0.165364, 0.142147,
		32.028595, 30.460550, 13.521832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421040, 29.770897, 13.622779>,  <32.711750, 30.344795, 13.422329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421040, 29.770897, 13.622779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096848, 29.948700, 13.470181>,  <31.902332, 30.055382, 13.378621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096848, 29.948700, 13.470181>,  <32.421040, 29.770897, 13.622779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096848, 29.948700, 13.470181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280212, -0.866129, -0.413886,
		-0.514401, -0.228545, 0.826534,
		-0.810477, 0.444508, -0.381496,
		31.853704, 30.082052, 13.355731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109253, 29.358471, 14.293707>,  <32.421040, 29.770897, 13.622779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109253, 29.358471, 14.293707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.299252, 29.009054, 14.336240>,  <32.413250, 28.799404, 14.361759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.299252, 29.009054, 14.336240>,  <32.109253, 29.358471, 14.293707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299252, 29.009054, 14.336240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442390, 0.341495, 0.829260,
		-0.760705, -0.346853, 0.548654,
		0.474994, -0.873541, 0.106333,
		32.441750, 28.746992, 14.368139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847349, 29.127464, 14.961221>,  <32.109253, 29.358471, 14.293707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847349, 29.127464, 14.961221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186455, 28.933926, 14.874330>,  <32.389919, 28.817802, 14.822195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186455, 28.933926, 14.874330>,  <31.847349, 29.127464, 14.961221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186455, 28.933926, 14.874330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423962, 0.372137, 0.825694,
		-0.318670, -0.792091, 0.520616,
		0.847765, -0.483845, -0.217228,
		32.440784, 28.788773, 14.809161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046631, 28.839022, 15.631018>,  <31.847349, 29.127464, 14.961221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046631, 28.839022, 15.631018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381649, 28.821682, 15.413160>,  <32.582661, 28.811277, 15.282446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381649, 28.821682, 15.413160>,  <32.046631, 28.839022, 15.631018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381649, 28.821682, 15.413160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538501, 0.234027, 0.809474,
		0.092368, -0.971263, 0.219354,
		0.837547, -0.043353, -0.544643,
		32.632912, 28.808676, 15.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393982, 28.236401, 15.818612>,  <32.046631, 28.839022, 15.631018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393982, 28.236401, 15.818612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646584, 28.505745, 15.664836>,  <32.798145, 28.667351, 15.572571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.646584, 28.505745, 15.664836>,  <32.393982, 28.236401, 15.818612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646584, 28.505745, 15.664836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440261, 0.096742, 0.892643,
		0.638260, -0.732959, -0.235361,
		0.631501, 0.673359, -0.384440,
		32.836033, 28.707752, 15.549504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002167, 28.067703, 16.185341>,  <32.393982, 28.236401, 15.818612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002167, 28.067703, 16.185341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034424, 28.443666, 16.052631>,  <33.053780, 28.669245, 15.973006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034424, 28.443666, 16.052631>,  <33.002167, 28.067703, 16.185341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034424, 28.443666, 16.052631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486266, 0.253460, 0.836243,
		0.870082, -0.228767, -0.436604,
		0.080643, 0.939906, -0.331773,
		33.058617, 28.725637, 15.953099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747967, 28.280460, 16.495373>,  <33.002167, 28.067703, 16.185341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747967, 28.280460, 16.495373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564827, 28.620941, 16.392744>,  <33.454941, 28.825230, 16.331167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564827, 28.620941, 16.392744>,  <33.747967, 28.280460, 16.495373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564827, 28.620941, 16.392744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400309, 0.455076, 0.795398,
		0.793803, 0.261466, -0.549101,
		-0.457852, 0.851200, -0.256573,
		33.427471, 28.876301, 16.315773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330029, 28.809715, 16.514650>,  <33.747967, 28.280460, 16.495373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330029, 28.809715, 16.514650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973194, 28.981638, 16.570431>,  <33.759094, 29.084791, 16.603899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973194, 28.981638, 16.570431>,  <34.330029, 28.809715, 16.514650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973194, 28.981638, 16.570431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344128, 0.446214, 0.826117,
		0.292846, 0.784957, -0.545971,
		-0.892086, 0.429809, 0.139453,
		33.705570, 29.110580, 16.612267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467564, 29.450930, 16.909369>,  <34.330029, 28.809715, 16.514650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467564, 29.450930, 16.909369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070946, 29.421179, 16.951900>,  <33.832973, 29.403328, 16.977419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070946, 29.421179, 16.951900>,  <34.467564, 29.450930, 16.909369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070946, 29.421179, 16.951900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048405, 0.548278, 0.834894,
		-0.120393, 0.832982, -0.540043,
		-0.991545, -0.074375, 0.106329,
		33.773483, 29.398867, 16.983799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197128, 30.118328, 16.940813>,  <34.467564, 29.450930, 16.909369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197128, 30.118328, 16.940813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950520, 29.859118, 17.119682>,  <33.802555, 29.703590, 17.227003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950520, 29.859118, 17.119682>,  <34.197128, 30.118328, 16.940813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950520, 29.859118, 17.119682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044559, 0.595761, 0.801925,
		-0.786076, 0.474479, -0.396175,
		-0.616522, -0.648027, 0.447171,
		33.765564, 29.664709, 17.253834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665386, 30.552477, 17.225779>,  <34.197128, 30.118328, 16.940813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665386, 30.552477, 17.225779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617756, 30.208607, 17.424486>,  <33.589176, 30.002285, 17.543711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617756, 30.208607, 17.424486>,  <33.665386, 30.552477, 17.225779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617756, 30.208607, 17.424486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096342, 0.487961, 0.867532,
		-0.988199, 0.151166, 0.024716,
		-0.119081, -0.859676, 0.496767,
		33.582031, 29.950705, 17.573517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203243, 30.703112, 17.797527>,  <33.665386, 30.552477, 17.225779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203243, 30.703112, 17.797527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399803, 30.364092, 17.877714>,  <33.517738, 30.160681, 17.925825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399803, 30.364092, 17.877714>,  <33.203243, 30.703112, 17.797527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399803, 30.364092, 17.877714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197045, 0.332398, 0.922326,
		-0.848349, -0.413733, 0.330346,
		0.491403, -0.847548, 0.200465,
		33.547226, 30.109827, 17.937853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848793, 30.427826, 18.367432>,  <33.203243, 30.703112, 17.797527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848793, 30.427826, 18.367432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.208347, 30.252697, 18.374470>,  <33.424080, 30.147619, 18.378693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.208347, 30.252697, 18.374470>,  <32.848793, 30.427826, 18.367432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208347, 30.252697, 18.374470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108848, 0.262015, 0.958906,
		-0.424440, -0.860035, 0.283179,
		0.898890, -0.437821, 0.017597,
		33.478016, 30.121351, 18.379749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913315, 30.244926, 19.055393>,  <32.848793, 30.427826, 18.367432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913315, 30.244926, 19.055393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289913, 30.179972, 18.937262>,  <33.515873, 30.140999, 18.866383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289913, 30.179972, 18.937262>,  <32.913315, 30.244926, 19.055393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289913, 30.179972, 18.937262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319909, 0.154836, 0.934710,
		-0.106059, -0.974503, 0.197726,
		0.941493, -0.162389, -0.295331,
		33.572361, 30.131254, 18.848661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137024, 29.805370, 19.519447>,  <32.913315, 30.244926, 19.055393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137024, 29.805370, 19.519447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450417, 29.995089, 19.358847>,  <33.638451, 30.108919, 19.262486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450417, 29.995089, 19.358847>,  <33.137024, 29.805370, 19.519447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450417, 29.995089, 19.358847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288846, 0.294113, 0.911079,
		0.550209, -0.829783, 0.093432,
		0.783478, 0.474297, -0.401504,
		33.685459, 30.137377, 19.238396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102818, 29.162506, 19.848083>,  <33.137024, 29.805370, 19.519447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102818, 29.162506, 19.848083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786068, 29.059067, 20.069378>,  <32.596020, 28.997004, 20.202154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786068, 29.059067, 20.069378>,  <33.102818, 29.162506, 19.848083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786068, 29.059067, 20.069378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319977, -0.595918, -0.736544,
		0.520152, -0.760269, 0.389143,
		-0.791869, -0.258598, 0.553236,
		32.548508, 28.981487, 20.235348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134914, 28.456474, 19.584936>,  <33.102818, 29.162506, 19.848083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134914, 28.456474, 19.584936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783184, 28.522079, 19.763773>,  <32.572147, 28.561443, 19.871075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783184, 28.522079, 19.763773>,  <33.134914, 28.456474, 19.584936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783184, 28.522079, 19.763773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446161, -0.612018, -0.652974,
		0.166533, -0.773650, 0.611337,
		-0.879322, 0.164013, 0.447093,
		32.519386, 28.571283, 19.897902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800903, 27.741325, 19.757854>,  <33.134914, 28.456474, 19.584936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800903, 27.741325, 19.757854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528679, 28.033358, 19.733118>,  <32.365345, 28.208576, 19.718277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528679, 28.033358, 19.733118>,  <32.800903, 27.741325, 19.757854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528679, 28.033358, 19.733118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571490, -0.581750, -0.578762,
		-0.458517, -0.358541, 0.813148,
		-0.680559, 0.730079, -0.061840,
		32.324512, 28.252382, 19.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160355, 27.459099, 19.849152>,  <32.800903, 27.741325, 19.757854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160355, 27.459099, 19.849152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.118889, 27.795635, 19.636965>,  <32.094009, 27.997557, 19.509653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.118889, 27.795635, 19.636965>,  <32.160355, 27.459099, 19.849152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118889, 27.795635, 19.636965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466648, -0.512138, -0.721078,
		-0.878347, 0.172794, 0.445700,
		-0.103662, 0.841342, -0.530469,
		32.087791, 28.048038, 19.477823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606247, 27.309044, 19.561172>,  <32.160355, 27.459099, 19.849152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606247, 27.309044, 19.561172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730335, 27.621229, 19.344049>,  <31.804789, 27.808540, 19.213776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730335, 27.621229, 19.344049>,  <31.606247, 27.309044, 19.561172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730335, 27.621229, 19.344049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413645, -0.403280, -0.816249,
		-0.855957, 0.477746, 0.197729,
		0.310220, 0.780464, -0.542808,
		31.823400, 27.855368, 19.181208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054722, 27.621094, 19.180954>,  <31.606247, 27.309044, 19.561172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054722, 27.621094, 19.180954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368214, 27.769526, 18.981730>,  <31.556309, 27.858585, 18.862194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368214, 27.769526, 18.981730>,  <31.054722, 27.621094, 19.180954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368214, 27.769526, 18.981730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368899, -0.367023, -0.853937,
		-0.499678, 0.852991, -0.150757,
		0.783732, 0.371079, -0.498061,
		31.603333, 27.880850, 18.832312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753832, 27.990120, 18.618021>,  <31.054722, 27.621094, 19.180954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753832, 27.990120, 18.618021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135620, 27.907326, 18.532093>,  <31.364693, 27.857649, 18.480537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135620, 27.907326, 18.532093>,  <30.753832, 27.990120, 18.618021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135620, 27.907326, 18.532093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275197, -0.333013, -0.901870,
		0.115135, 0.919924, -0.374812,
		0.954469, -0.206984, -0.214818,
		31.421961, 27.845230, 18.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174372, 28.472277, 18.436214>,  <30.753832, 27.990120, 18.618021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174372, 28.472277, 18.436214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876255, 28.238737, 18.565002>,  <29.697386, 28.098614, 18.642275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876255, 28.238737, 18.565002>,  <30.174372, 28.472277, 18.436214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876255, 28.238737, 18.565002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257384, 0.193530, 0.946731,
		-0.615058, 0.788459, 0.006037,
		-0.745290, -0.583848, 0.321969,
		29.652668, 28.063583, 18.661592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694050, 28.935907, 18.885853>,  <30.174372, 28.472277, 18.436214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694050, 28.935907, 18.885853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614918, 28.562481, 19.005398>,  <29.567438, 28.338425, 19.077126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.614918, 28.562481, 19.005398>,  <29.694050, 28.935907, 18.885853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614918, 28.562481, 19.005398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065141, 0.291695, 0.954291,
		-0.978069, 0.208256, 0.003107,
		-0.197830, -0.933565, 0.298864,
		29.555569, 28.282412, 19.095057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214605, 29.005892, 19.484604>,  <29.694050, 28.935907, 18.885853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214605, 29.005892, 19.484604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351711, 28.630354, 19.497765>,  <29.433975, 28.405031, 19.505661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.351711, 28.630354, 19.497765>,  <29.214605, 29.005892, 19.484604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351711, 28.630354, 19.497765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205454, 0.109091, 0.972567,
		-0.916680, -0.326601, 0.230282,
		0.342763, -0.938846, 0.032900,
		29.454540, 28.348700, 19.507635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774397, 28.726357, 20.026493>,  <29.214605, 29.005892, 19.484604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774397, 28.726357, 20.026493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.096521, 28.496656, 19.967554>,  <29.289797, 28.358837, 19.932190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.096521, 28.496656, 19.967554>,  <28.774397, 28.726357, 20.026493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096521, 28.496656, 19.967554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194242, 0.020752, 0.980734,
		-0.560128, -0.818417, 0.128255,
		0.805311, -0.574249, -0.147348,
		29.338116, 28.324381, 19.923349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668579, 28.204256, 20.518753>,  <28.774397, 28.726357, 20.026493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668579, 28.204256, 20.518753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.061228, 28.222183, 20.444551>,  <29.296818, 28.232939, 20.400030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.061228, 28.222183, 20.444551>,  <28.668579, 28.204256, 20.518753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061228, 28.222183, 20.444551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173889, 0.190460, 0.966172,
		0.078630, -0.980672, 0.179166,
		0.981621, 0.044815, -0.185504,
		29.355715, 28.235628, 20.388901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916822, 27.869013, 21.077967>,  <28.668579, 28.204256, 20.518753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916822, 27.869013, 21.077967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.246767, 28.049627, 20.941898>,  <29.444735, 28.157995, 20.860256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.246767, 28.049627, 20.941898>,  <28.916822, 27.869013, 21.077967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246767, 28.049627, 20.941898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242248, 0.261370, 0.934346,
		0.510802, -0.853112, 0.106210,
		0.824862, 0.451536, -0.340173,
		29.494226, 28.185087, 20.839846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495945, 27.626814, 21.511255>,  <28.916822, 27.869013, 21.077967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495945, 27.626814, 21.511255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602776, 27.969856, 21.335445>,  <29.666874, 28.175682, 21.229959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.602776, 27.969856, 21.335445>,  <29.495945, 27.626814, 21.511255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602776, 27.969856, 21.335445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248933, 0.379214, 0.891196,
		0.930968, -0.347431, -0.112206,
		0.267079, 0.857606, -0.439523,
		29.682899, 28.227139, 21.203588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.667118, 29.587452, 15.109627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997997, 29.811659, 15.093804>,  <30.196526, 29.946182, 15.084311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997997, 29.811659, 15.093804>,  <29.667118, 29.587452, 15.109627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997997, 29.811659, 15.093804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301937, 0.502756, 0.809982,
		0.473890, -0.658075, 0.585120,
		0.827201, 0.560512, -0.039554,
		30.246157, 29.979815, 15.081937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860277, 29.618683, 15.786130>,  <29.667118, 29.587452, 15.109627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860277, 29.618683, 15.786130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013737, 29.939257, 15.602602>,  <30.105812, 30.131601, 15.492485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013737, 29.939257, 15.602602>,  <29.860277, 29.618683, 15.786130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013737, 29.939257, 15.602602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250878, 0.568603, 0.783423,
		0.888749, -0.185450, 0.419205,
		0.383647, 0.801436, -0.458820,
		30.128830, 30.179688, 15.464956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174929, 29.984543, 16.292719>,  <29.860277, 29.618683, 15.786130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174929, 29.984543, 16.292719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115067, 30.248413, 15.998120>,  <30.079149, 30.406736, 15.821361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115067, 30.248413, 15.998120>,  <30.174929, 29.984543, 16.292719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115067, 30.248413, 15.998120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256380, 0.693517, 0.673277,
		0.954920, 0.289584, 0.065338,
		-0.149657, 0.659677, -0.736497,
		30.070169, 30.446316, 15.777171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439056, 30.603186, 16.543470>,  <30.174929, 29.984543, 16.292719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439056, 30.603186, 16.543470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221073, 30.768324, 16.251558>,  <30.090282, 30.867407, 16.076412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.221073, 30.768324, 16.251558>,  <30.439056, 30.603186, 16.543470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221073, 30.768324, 16.251558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257474, 0.745926, 0.614248,
		0.797951, 0.522640, -0.300202,
		-0.544959, 0.412846, -0.729779,
		30.057585, 30.892178, 16.032625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613554, 31.363037, 16.497154>,  <30.439056, 30.603186, 16.543470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613554, 31.363037, 16.497154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257626, 31.277935, 16.335686>,  <30.044067, 31.226873, 16.238804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257626, 31.277935, 16.335686>,  <30.613554, 31.363037, 16.497154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257626, 31.277935, 16.335686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429300, 0.690156, 0.582569,
		0.154651, 0.691679, -0.705453,
		-0.889823, -0.212756, -0.403672,
		29.990679, 31.214108, 16.214584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426409, 31.997389, 16.279293>,  <30.613554, 31.363037, 16.497154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426409, 31.997389, 16.279293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094013, 31.777361, 16.312483>,  <29.894577, 31.645344, 16.332397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094013, 31.777361, 16.312483>,  <30.426409, 31.997389, 16.279293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094013, 31.777361, 16.312483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408172, 0.704248, 0.580888,
		-0.377963, 0.448842, -0.809744,
		-0.830987, -0.550069, 0.082975,
		29.844717, 31.612341, 16.337376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823032, 32.389973, 16.005939>,  <30.426409, 31.997389, 16.279293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823032, 32.389973, 16.005939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682003, 32.129345, 16.274609>,  <29.597385, 31.972967, 16.435810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682003, 32.129345, 16.274609>,  <29.823032, 32.389973, 16.005939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682003, 32.129345, 16.274609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466193, 0.744653, 0.477657,
		-0.811392, -0.144721, -0.566303,
		-0.352572, -0.651573, 0.671673,
		29.576231, 31.933872, 16.476110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233885, 32.673386, 16.135962>,  <29.823032, 32.389973, 16.005939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233885, 32.673386, 16.135962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306593, 32.429295, 16.444397>,  <29.350218, 32.282841, 16.629457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306593, 32.429295, 16.444397>,  <29.233885, 32.673386, 16.135962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306593, 32.429295, 16.444397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448322, 0.646484, 0.617305,
		-0.875196, -0.457902, -0.156070,
		0.181768, -0.610232, 0.771088,
		29.361124, 32.246223, 16.675724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668396, 32.737137, 16.492542>,  <29.233885, 32.673386, 16.135962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668396, 32.737137, 16.492542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924549, 32.594807, 16.764805>,  <29.078241, 32.509407, 16.928164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924549, 32.594807, 16.764805>,  <28.668396, 32.737137, 16.492542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924549, 32.594807, 16.764805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481409, 0.504568, 0.716698,
		-0.598458, -0.786637, 0.151819,
		0.640385, -0.355827, 0.680658,
		29.116665, 32.488060, 16.969002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309193, 32.883461, 17.095221>,  <28.668396, 32.737137, 16.492542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309193, 32.883461, 17.095221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665070, 32.785145, 17.249121>,  <28.878597, 32.726154, 17.341461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665070, 32.785145, 17.249121>,  <28.309193, 32.883461, 17.095221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665070, 32.785145, 17.249121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261540, 0.416363, 0.870769,
		-0.374220, -0.875346, 0.306153,
		0.889695, -0.245788, 0.384749,
		28.931978, 32.711407, 17.364546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196096, 32.563198, 17.739706>,  <28.309193, 32.883461, 17.095221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196096, 32.563198, 17.739706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572466, 32.697922, 17.753710>,  <28.798286, 32.778755, 17.762112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572466, 32.697922, 17.753710>,  <28.196096, 32.563198, 17.739706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572466, 32.697922, 17.753710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218154, 0.523853, 0.823400,
		0.258989, -0.782392, 0.566381,
		0.940922, 0.336810, 0.035010,
		28.854742, 32.798965, 17.764214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490515, 32.383171, 18.389774>,  <28.196096, 32.563198, 17.739706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490515, 32.383171, 18.389774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674608, 32.702328, 18.234056>,  <28.785065, 32.893822, 18.140625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674608, 32.702328, 18.234056>,  <28.490515, 32.383171, 18.389774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674608, 32.702328, 18.234056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260425, 0.540537, 0.799999,
		0.848743, -0.266804, 0.456564,
		0.460232, 0.797895, -0.389295,
		28.812677, 32.941696, 18.117268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505337, 31.989700, 18.996557>,  <28.490515, 32.383171, 18.389774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505337, 31.989700, 18.996557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254835, 31.848898, 19.274807>,  <28.104534, 31.764416, 19.441757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254835, 31.848898, 19.274807>,  <28.505337, 31.989700, 18.996557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254835, 31.848898, 19.274807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009810, -0.895753, -0.444445,
		0.779556, -0.271512, 0.564423,
		-0.626255, -0.352007, 0.695626,
		28.066959, 31.743296, 19.483496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688549, 31.326981, 19.159121>,  <28.505337, 31.989700, 18.996557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688549, 31.326981, 19.159121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305243, 31.343815, 19.272228>,  <28.075258, 31.353916, 19.340094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305243, 31.343815, 19.272228>,  <28.688549, 31.326981, 19.159121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305243, 31.343815, 19.272228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141346, -0.929503, -0.340655,
		0.248497, -0.366406, 0.896658,
		-0.958264, 0.042087, 0.282769,
		28.017763, 31.356441, 19.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609081, 30.614697, 19.291016>,  <28.688549, 31.326981, 19.159121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609081, 30.614697, 19.291016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229342, 30.732138, 19.246233>,  <28.001497, 30.802603, 19.219364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229342, 30.732138, 19.246233>,  <28.609081, 30.614697, 19.291016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229342, 30.732138, 19.246233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180881, -0.801959, -0.569337,
		-0.256943, -0.520248, 0.814446,
		-0.949348, 0.293604, -0.111955,
		27.944536, 30.820219, 19.212646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145401, 29.998661, 19.440536>,  <28.609081, 30.614697, 19.291016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145401, 29.998661, 19.440536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939104, 30.257238, 19.215639>,  <27.815327, 30.412386, 19.080700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939104, 30.257238, 19.215639>,  <28.145401, 29.998661, 19.440536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939104, 30.257238, 19.215639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247196, -0.740629, -0.624790,
		-0.820308, -0.183245, 0.541771,
		-0.515741, 0.646444, -0.562246,
		27.784382, 30.451172, 19.046965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504744, 29.710485, 19.334610>,  <28.145401, 29.998661, 19.440536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504744, 29.710485, 19.334610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536564, 29.981396, 19.042044>,  <27.555656, 30.143942, 18.866505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536564, 29.981396, 19.042044>,  <27.504744, 29.710485, 19.334610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536564, 29.981396, 19.042044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316288, -0.678678, -0.662840,
		-0.945322, 0.284067, 0.160226,
		0.079549, 0.677275, -0.731417,
		27.560429, 30.184578, 18.822618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851257, 29.698662, 19.077316>,  <27.504744, 29.710485, 19.334610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851257, 29.698662, 19.077316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104425, 29.842466, 18.803043>,  <27.256327, 29.928749, 18.638479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104425, 29.842466, 18.803043>,  <26.851257, 29.698662, 19.077316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104425, 29.842466, 18.803043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482524, -0.509430, -0.712497,
		-0.605460, 0.781813, -0.148955,
		0.632922, 0.359514, -0.685682,
		27.294302, 29.950321, 18.597338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445244, 29.730051, 18.506256>,  <26.851257, 29.698662, 19.077316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445244, 29.730051, 18.506256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811365, 29.763454, 18.348652>,  <27.031038, 29.783497, 18.254089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811365, 29.763454, 18.348652>,  <26.445244, 29.730051, 18.506256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811365, 29.763454, 18.348652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306060, -0.491704, -0.815202,
		-0.261814, 0.866749, -0.424500,
		0.915303, 0.083509, -0.394013,
		27.085957, 29.788507, 18.230448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363771, 29.935230, 17.824465>,  <26.445244, 29.730051, 18.506256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363771, 29.935230, 17.824465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743210, 29.810259, 17.804247>,  <26.970873, 29.735275, 17.792116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743210, 29.810259, 17.804247>,  <26.363771, 29.935230, 17.824465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743210, 29.810259, 17.804247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160763, -0.338096, -0.927279,
		0.272619, 0.887739, -0.370943,
		0.948596, -0.312428, -0.050544,
		27.027788, 29.716530, 17.789083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665977, 30.234121, 17.305927>,  <26.363771, 29.935230, 17.824465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665977, 30.234121, 17.305927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920444, 29.926838, 17.334621>,  <27.073124, 29.742468, 17.351837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920444, 29.926838, 17.334621>,  <26.665977, 30.234121, 17.305927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920444, 29.926838, 17.334621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208943, -0.261033, -0.942446,
		0.742722, 0.584563, -0.326573,
		0.636166, -0.768211, 0.071734,
		27.111294, 29.696375, 17.356142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166319, 30.345974, 16.726042>,  <26.665977, 30.234121, 17.305927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166319, 30.345974, 16.726042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170216, 29.964952, 16.847725>,  <27.172554, 29.736340, 16.920734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170216, 29.964952, 16.847725>,  <27.166319, 30.345974, 16.726042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170216, 29.964952, 16.847725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083508, -0.303934, -0.949026,
		0.996460, -0.016160, -0.082506,
		0.009740, -0.952556, 0.304207,
		27.173138, 29.679186, 16.938988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689983, 30.056332, 16.305536>,  <27.166319, 30.345974, 16.726042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689983, 30.056332, 16.305536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455053, 29.759140, 16.433933>,  <27.314095, 29.580826, 16.510971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455053, 29.759140, 16.433933>,  <27.689983, 30.056332, 16.305536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455053, 29.759140, 16.433933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066715, -0.350809, -0.934068,
		0.806597, -0.570016, 0.156471,
		-0.587325, -0.742977, 0.320990,
		27.278856, 29.536247, 16.530230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022135, 29.408783, 16.029451>,  <27.689983, 30.056332, 16.305536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022135, 29.408783, 16.029451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627979, 29.364872, 16.081545>,  <27.391487, 29.338526, 16.112801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627979, 29.364872, 16.081545>,  <28.022135, 29.408783, 16.029451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627979, 29.364872, 16.081545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043866, -0.575252, -0.816799,
		0.164581, -0.810576, 0.562031,
		-0.985388, -0.109775, 0.130232,
		27.332363, 29.331940, 16.120615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832865, 28.782179, 15.789572>,  <28.022135, 29.408783, 16.029451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832865, 28.782179, 15.789572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461699, 28.923082, 15.838377>,  <27.238998, 29.007624, 15.867660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461699, 28.923082, 15.838377>,  <27.832865, 28.782179, 15.789572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461699, 28.923082, 15.838377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302191, -0.519107, -0.799505,
		-0.218293, -0.778745, 0.588136,
		-0.927917, 0.352256, 0.122013,
		27.183323, 29.028759, 15.874981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315186, 28.253410, 15.712235>,  <27.832865, 28.782179, 15.789572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315186, 28.253410, 15.712235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140057, 28.596769, 15.605307>,  <27.034979, 28.802786, 15.541149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140057, 28.596769, 15.605307>,  <27.315186, 28.253410, 15.712235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140057, 28.596769, 15.605307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264086, -0.407007, -0.874416,
		-0.859401, -0.312243, 0.404889,
		-0.437823, 0.858399, -0.267323,
		27.008709, 28.854290, 15.525110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922165, 28.183462, 16.207247>,  <27.315186, 28.253410, 15.712235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922165, 28.183462, 16.207247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269295, 27.991669, 16.155132>,  <28.477573, 27.876593, 16.123863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269295, 27.991669, 16.155132>,  <27.922165, 28.183462, 16.207247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269295, 27.991669, 16.155132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046778, -0.182210, 0.982146,
		-0.494662, -0.858427, -0.135697,
		0.867826, -0.479482, -0.130288,
		28.529642, 27.847824, 16.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967728, 27.523880, 16.636166>,  <27.922165, 28.183462, 16.207247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967728, 27.523880, 16.636166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350471, 27.598944, 16.547438>,  <28.580118, 27.643982, 16.494200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350471, 27.598944, 16.547438>,  <27.967728, 27.523880, 16.636166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350471, 27.598944, 16.547438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264504, -0.246658, 0.932307,
		0.120241, -0.950760, -0.285653,
		0.956859, 0.187658, -0.221822,
		28.637529, 27.655241, 16.480890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285145, 26.995024, 16.922560>,  <27.967728, 27.523880, 16.636166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285145, 26.995024, 16.922560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554741, 27.286345, 16.873058>,  <28.716499, 27.461138, 16.843357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.554741, 27.286345, 16.873058>,  <28.285145, 26.995024, 16.922560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554741, 27.286345, 16.873058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366097, -0.183783, 0.912248,
		0.641647, -0.660152, -0.390497,
		0.673990, 0.728302, -0.123756,
		28.756937, 27.504835, 16.835932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803188, 26.756779, 17.367598>,  <28.285145, 26.995024, 16.922560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803188, 26.756779, 17.367598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906858, 27.136240, 17.295063>,  <28.969061, 27.363916, 17.251541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906858, 27.136240, 17.295063>,  <28.803188, 26.756779, 17.367598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906858, 27.136240, 17.295063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439564, 0.051324, 0.896744,
		0.860006, -0.312125, -0.403692,
		0.259177, 0.948654, -0.181337,
		28.984612, 27.420835, 17.240662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520060, 26.858982, 17.515669>,  <28.803188, 26.756779, 17.367598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520060, 26.858982, 17.515669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367428, 27.226074, 17.559792>,  <29.275848, 27.446329, 17.586266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367428, 27.226074, 17.559792>,  <29.520060, 26.858982, 17.515669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367428, 27.226074, 17.559792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398405, 0.055611, 0.915522,
		0.834069, 0.393289, -0.386848,
		-0.381578, 0.917731, 0.110305,
		29.252954, 27.501394, 17.592882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083799, 27.366549, 17.611923>,  <29.520060, 26.858982, 17.515669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083799, 27.366549, 17.611923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746532, 27.521769, 17.760780>,  <29.544172, 27.614901, 17.850094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746532, 27.521769, 17.760780>,  <30.083799, 27.366549, 17.611923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746532, 27.521769, 17.760780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444164, 0.112703, 0.888829,
		0.302969, 0.914721, -0.267385,
		-0.843165, 0.388051, 0.372141,
		29.493584, 27.638184, 17.872423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297518, 27.846880, 18.066332>,  <30.083799, 27.366549, 17.611923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297518, 27.846880, 18.066332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915249, 27.829626, 18.182831>,  <29.685886, 27.819275, 18.252731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915249, 27.829626, 18.182831>,  <30.297518, 27.846880, 18.066332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915249, 27.829626, 18.182831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269240, 0.272279, 0.923782,
		-0.119146, 0.961251, -0.248597,
		-0.955674, -0.043132, 0.291249,
		29.628546, 27.816687, 18.270205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890930, 28.202600, 17.786037>,  <30.297518, 27.846880, 18.066332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890930, 28.202600, 17.786037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157442, 27.937845, 17.923429>,  <31.317348, 27.778992, 18.005865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.157442, 27.937845, 17.923429>,  <30.890930, 28.202600, 17.786037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157442, 27.937845, 17.923429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035339, -0.488122, -0.872060,
		0.744865, 0.568897, -0.348616,
		0.666279, -0.661886, 0.343480,
		31.357327, 27.739279, 18.026474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508785, 28.162354, 17.360628>,  <30.890930, 28.202600, 17.786037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508785, 28.162354, 17.360628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550760, 27.809278, 17.543867>,  <31.575945, 27.597433, 17.653811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.550760, 27.809278, 17.543867>,  <31.508785, 28.162354, 17.360628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550760, 27.809278, 17.543867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127045, -0.444965, -0.886491,
		0.986331, 0.151225, 0.065447,
		0.104938, -0.882687, 0.458095,
		31.582241, 27.544472, 17.681295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054249, 28.000139, 16.960249>,  <31.508785, 28.162354, 17.360628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054249, 28.000139, 16.960249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918306, 27.666544, 17.134129>,  <31.836740, 27.466387, 17.238457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918306, 27.666544, 17.134129>,  <32.054249, 28.000139, 16.960249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918306, 27.666544, 17.134129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279189, -0.351908, -0.893428,
		0.898081, -0.425001, -0.113242,
		-0.339857, -0.833987, 0.434698,
		31.816349, 27.416348, 17.264538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425503, 27.400927, 16.668800>,  <32.054249, 28.000139, 16.960249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425503, 27.400927, 16.668800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.074829, 27.275236, 16.814501>,  <31.864424, 27.199821, 16.901920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.074829, 27.275236, 16.814501>,  <32.425503, 27.400927, 16.668800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074829, 27.275236, 16.814501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097165, -0.625913, -0.773817,
		0.471144, -0.713788, 0.518198,
		-0.876688, -0.314229, 0.364251,
		31.811823, 27.180967, 16.923777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418800, 26.735861, 16.494576>,  <32.425503, 27.400927, 16.668800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418800, 26.735861, 16.494576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036243, 26.846111, 16.533245>,  <31.806709, 26.912262, 16.556448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036243, 26.846111, 16.533245>,  <32.418800, 26.735861, 16.494576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036243, 26.846111, 16.533245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221458, -0.468442, -0.855289,
		-0.190451, -0.839400, 0.509053,
		-0.956391, 0.275625, 0.096677,
		31.749327, 26.928799, 16.562248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131630, 26.289886, 16.055351>,  <32.418800, 26.735861, 16.494576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131630, 26.289886, 16.055351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802538, 26.499605, 16.143190>,  <31.605082, 26.625437, 16.195894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.802538, 26.499605, 16.143190>,  <32.131630, 26.289886, 16.055351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802538, 26.499605, 16.143190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390299, -0.240198, -0.888803,
		-0.413248, -0.816958, 0.402251,
		-0.822735, 0.524294, 0.219597,
		31.555717, 26.656895, 16.209070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572878, 25.814323, 16.014019>,  <32.131630, 26.289886, 16.055351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572878, 25.814323, 16.014019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445021, 26.183823, 15.929620>,  <31.368307, 26.405521, 15.878981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.445021, 26.183823, 15.929620>,  <31.572878, 25.814323, 16.014019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445021, 26.183823, 15.929620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406365, -0.334802, -0.850162,
		-0.855977, -0.186005, 0.482395,
		-0.319641, 0.923748, -0.210997,
		31.349129, 26.460947, 15.866321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827427, 25.706955, 15.675057>,  <31.572878, 25.814323, 16.014019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827427, 25.706955, 15.675057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.958847, 26.067514, 15.562247>,  <31.037699, 26.283850, 15.494561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.958847, 26.067514, 15.562247>,  <30.827427, 25.706955, 15.675057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958847, 26.067514, 15.562247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304759, -0.181451, -0.934985,
		-0.893966, 0.393142, 0.215093,
		0.328553, 0.901396, -0.282025,
		31.057413, 26.337933, 15.477640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177055, 26.043083, 15.200574>,  <30.827427, 25.706955, 15.675057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177055, 26.043083, 15.200574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515747, 26.245335, 15.134377>,  <30.718962, 26.366686, 15.094660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515747, 26.245335, 15.134377>,  <30.177055, 26.043083, 15.200574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515747, 26.245335, 15.134377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143154, -0.083058, -0.986209,
		-0.512403, 0.858743, 0.002055,
		0.846729, 0.505631, -0.165492,
		30.769766, 26.397024, 15.084730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.535330, 35.820171, 28.499125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872248, 35.850510, 28.285664>,  <32.074398, 35.868713, 28.157587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.872248, 35.850510, 28.285664>,  <31.535330, 35.820171, 28.499125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872248, 35.850510, 28.285664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255863, -0.815142, -0.519690,
		-0.474418, 0.574275, -0.667185,
		0.842295, 0.075842, -0.533654,
		32.124935, 35.873260, 28.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363298, 35.729103, 27.737110>,  <31.535330, 35.820171, 28.499125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363298, 35.729103, 27.737110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751818, 35.634483, 27.747097>,  <31.984930, 35.577709, 27.753090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751818, 35.634483, 27.747097>,  <31.363298, 35.729103, 27.737110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751818, 35.634483, 27.747097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166350, -0.750550, -0.639532,
		0.170023, 0.617023, -0.768359,
		0.971298, -0.236552, 0.024969,
		32.043205, 35.563519, 27.754587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468504, 35.472160, 27.125834>,  <31.363298, 35.729103, 27.737110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468504, 35.472160, 27.125834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792944, 35.337910, 27.317446>,  <31.987608, 35.257359, 27.432413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.792944, 35.337910, 27.317446>,  <31.468504, 35.472160, 27.125834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792944, 35.337910, 27.317446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017698, -0.804526, -0.593653,
		0.584641, 0.489989, -0.646611,
		0.811099, -0.335630, 0.479031,
		32.036274, 35.237221, 27.461155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881315, 35.293144, 26.617008>,  <31.468504, 35.472160, 27.125834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881315, 35.293144, 26.617008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001839, 35.086266, 26.937437>,  <32.074154, 34.962139, 27.129694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.001839, 35.086266, 26.937437>,  <31.881315, 35.293144, 26.617008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001839, 35.086266, 26.937437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072847, -0.825176, -0.560158,
		0.950740, 0.227136, -0.210956,
		0.301308, -0.517197, 0.801074,
		32.092232, 34.931107, 27.177759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301998, 34.915607, 26.365980>,  <31.881315, 35.293144, 26.617008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301998, 34.915607, 26.365980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216644, 34.727402, 26.708460>,  <32.165432, 34.614479, 26.913948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.216644, 34.727402, 26.708460>,  <32.301998, 34.915607, 26.365980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216644, 34.727402, 26.708460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175817, -0.880572, -0.440092,
		0.961018, 0.056626, 0.270626,
		-0.213385, -0.470517, 0.856201,
		32.152630, 34.586246, 26.965321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824951, 34.360783, 26.382915>,  <32.301998, 34.915607, 26.365980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824951, 34.360783, 26.382915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564507, 34.263050, 26.670347>,  <32.408241, 34.204411, 26.842806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.564507, 34.263050, 26.670347>,  <32.824951, 34.360783, 26.382915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564507, 34.263050, 26.670347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132964, -0.968844, -0.208952,
		0.747247, -0.040505, 0.663311,
		-0.651108, -0.244336, 0.718581,
		32.369175, 34.189751, 26.885921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131420, 33.786663, 26.769873>,  <32.824951, 34.360783, 26.382915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131420, 33.786663, 26.769873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731663, 33.787212, 26.783833>,  <32.491810, 33.787540, 26.792208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731663, 33.787212, 26.783833>,  <33.131420, 33.786663, 26.769873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731663, 33.787212, 26.783833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012510, -0.946987, -0.321028,
		0.032610, -0.321269, 0.946426,
		-0.999390, 0.001371, 0.034900,
		32.431847, 33.787624, 26.794302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959824, 33.172577, 27.128469>,  <33.131420, 33.786663, 26.769873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959824, 33.172577, 27.128469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641068, 33.310268, 26.929884>,  <32.449814, 33.392883, 26.810732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641068, 33.310268, 26.929884>,  <32.959824, 33.172577, 27.128469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641068, 33.310268, 26.929884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086907, -0.878558, -0.469662,
		-0.597844, -0.331121, 0.730028,
		-0.796887, 0.344229, -0.496464,
		32.402000, 33.413536, 26.780945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558517, 32.665039, 27.156158>,  <32.959824, 33.172577, 27.128469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558517, 32.665039, 27.156158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400692, 32.846786, 26.836693>,  <32.305996, 32.955837, 26.645014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400692, 32.846786, 26.836693>,  <32.558517, 32.665039, 27.156158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400692, 32.846786, 26.836693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354400, -0.877184, -0.323958,
		-0.847773, 0.155224, 0.507136,
		-0.394565, 0.454372, -0.798664,
		32.282322, 32.983097, 26.597094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115131, 32.167419, 26.859074>,  <32.558517, 32.665039, 27.156158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115131, 32.167419, 26.859074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146263, 32.450272, 26.577959>,  <32.164944, 32.619984, 26.409290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146263, 32.450272, 26.577959>,  <32.115131, 32.167419, 26.859074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146263, 32.450272, 26.577959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218083, -0.675779, -0.704104,
		-0.972822, 0.208068, 0.101616,
		0.077831, 0.707128, -0.702789,
		32.169613, 32.662411, 26.367123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606873, 31.938076, 26.467112>,  <32.115131, 32.167419, 26.859074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606873, 31.938076, 26.467112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864532, 32.166630, 26.263704>,  <32.019127, 32.303761, 26.141661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864532, 32.166630, 26.263704>,  <31.606873, 31.938076, 26.467112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864532, 32.166630, 26.263704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029864, -0.645524, -0.763156,
		-0.764316, 0.506773, -0.398750,
		0.644150, 0.571384, -0.508519,
		32.057777, 32.338043, 26.111149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229383, 32.066822, 25.840088>,  <31.606873, 31.938076, 26.467112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229383, 32.066822, 25.840088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614525, 32.138287, 25.759104>,  <31.845610, 32.181168, 25.710514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614525, 32.138287, 25.759104>,  <31.229383, 32.066822, 25.840088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614525, 32.138287, 25.759104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094767, -0.478503, -0.872957,
		-0.252844, 0.859717, -0.443798,
		0.962855, 0.178664, -0.202460,
		31.903381, 32.191887, 25.698366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583828, 32.329544, 25.725019>,  <31.229383, 32.066822, 25.840088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583828, 32.329544, 25.725019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348799, 32.053310, 25.893709>,  <30.207781, 31.887569, 25.994923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348799, 32.053310, 25.893709>,  <30.583828, 32.329544, 25.725019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348799, 32.053310, 25.893709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285265, 0.664504, 0.690694,
		-0.757221, 0.285528, -0.587443,
		-0.587571, -0.690585, 0.421726,
		30.172527, 31.846134, 26.020227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931377, 32.671436, 25.954281>,  <30.583828, 32.329544, 25.725019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931377, 32.671436, 25.954281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978138, 32.349503, 26.187033>,  <30.006195, 32.156342, 26.326683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978138, 32.349503, 26.187033>,  <29.931377, 32.671436, 25.954281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978138, 32.349503, 26.187033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083841, 0.575806, 0.813276,
		-0.989598, -0.143858, -0.000165,
		0.116901, -0.804830, 0.581878,
		30.013208, 32.108055, 26.361595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524036, 32.703968, 26.456387>,  <29.931377, 32.671436, 25.954281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524036, 32.703968, 26.456387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.775167, 32.458260, 26.647598>,  <29.925846, 32.310837, 26.762325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.775167, 32.458260, 26.647598>,  <29.524036, 32.703968, 26.456387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775167, 32.458260, 26.647598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119442, 0.530845, 0.839010,
		-0.769135, -0.583849, 0.259908,
		0.627825, -0.614268, 0.478027,
		29.963514, 32.273979, 26.791006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243168, 32.468983, 27.130556>,  <29.524036, 32.703968, 26.456387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243168, 32.468983, 27.130556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.636168, 32.404137, 27.167246>,  <29.871967, 32.365227, 27.189259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.636168, 32.404137, 27.167246>,  <29.243168, 32.468983, 27.130556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636168, 32.404137, 27.167246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012242, 0.435161, 0.900269,
		-0.185864, -0.885637, 0.425561,
		0.982499, -0.162118, 0.091723,
		29.930918, 32.355503, 27.194763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253622, 32.115765, 27.725025>,  <29.243168, 32.468983, 27.130556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253622, 32.115765, 27.725025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604752, 32.292778, 27.651722>,  <29.815430, 32.398987, 27.607740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.604752, 32.292778, 27.651722>,  <29.253622, 32.115765, 27.725025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604752, 32.292778, 27.651722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004501, 0.390205, 0.920717,
		0.478962, -0.807403, 0.344523,
		0.877824, 0.442539, -0.183260,
		29.868099, 32.425537, 27.596745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601894, 32.060799, 28.428493>,  <29.253622, 32.115765, 27.725025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601894, 32.060799, 28.428493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791895, 32.333103, 28.205448>,  <29.905895, 32.496487, 28.071621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791895, 32.333103, 28.205448>,  <29.601894, 32.060799, 28.428493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791895, 32.333103, 28.205448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066955, 0.603866, 0.794268,
		0.877435, -0.414612, 0.241255,
		0.474999, 0.680766, -0.557614,
		29.934395, 32.537334, 28.038164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139378, 32.234715, 28.800667>,  <29.601894, 32.060799, 28.428493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139378, 32.234715, 28.800667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.058865, 32.529030, 28.542025>,  <30.010557, 32.705620, 28.386839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.058865, 32.529030, 28.542025>,  <30.139378, 32.234715, 28.800667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058865, 32.529030, 28.542025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078672, 0.670125, 0.738067,
		0.976369, 0.097691, -0.192771,
		-0.201283, 0.735791, -0.646604,
		29.998480, 32.749767, 28.348043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663744, 32.771988, 29.003231>,  <30.139378, 32.234715, 28.800667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663744, 32.771988, 29.003231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388407, 32.984005, 28.805145>,  <30.223204, 33.111214, 28.686295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.388407, 32.984005, 28.805145>,  <30.663744, 32.771988, 29.003231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388407, 32.984005, 28.805145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234772, 0.808738, 0.539283,
		0.686341, 0.254950, -0.681129,
		-0.688344, 0.530042, -0.495215,
		30.181904, 33.143017, 28.656580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951000, 33.426006, 28.957039>,  <30.663744, 32.771988, 29.003231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951000, 33.426006, 28.957039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573935, 33.496037, 28.843388>,  <30.347694, 33.538055, 28.775196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.573935, 33.496037, 28.843388>,  <30.951000, 33.426006, 28.957039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573935, 33.496037, 28.843388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032791, 0.798646, 0.600907,
		0.332123, 0.575772, -0.747115,
		-0.942666, 0.175076, -0.284129,
		30.291134, 33.548561, 28.758148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870609, 34.078926, 28.821417>,  <30.951000, 33.426006, 28.957039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870609, 34.078926, 28.821417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477360, 34.019012, 28.863436>,  <30.241411, 33.983063, 28.888647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477360, 34.019012, 28.863436>,  <30.870609, 34.078926, 28.821417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477360, 34.019012, 28.863436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050596, 0.774390, 0.630682,
		-0.175814, 0.614723, -0.768899,
		-0.983122, -0.149786, 0.105046,
		30.182423, 33.974075, 28.894949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567787, 34.682049, 28.863516>,  <30.870609, 34.078926, 28.821417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567787, 34.682049, 28.863516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310621, 34.435581, 29.045502>,  <30.156321, 34.287701, 29.154694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310621, 34.435581, 29.045502>,  <30.567787, 34.682049, 28.863516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310621, 34.435581, 29.045502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022958, 0.609233, 0.792659,
		-0.765592, 0.499168, -0.405832,
		-0.642916, -0.616170, 0.454965,
		30.117746, 34.250729, 29.181992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003506, 35.106400, 29.194450>,  <30.567787, 34.682049, 28.863516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003506, 35.106400, 29.194450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980507, 34.768913, 29.407934>,  <29.966707, 34.566422, 29.536024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.980507, 34.768913, 29.407934>,  <30.003506, 35.106400, 29.194450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980507, 34.768913, 29.407934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191439, 0.533990, 0.823533,
		-0.979819, -0.054822, -0.192222,
		-0.057497, -0.843712, 0.533708,
		29.963257, 34.515800, 29.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408932, 35.166695, 29.667677>,  <30.003506, 35.106400, 29.194450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408932, 35.166695, 29.667677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623934, 34.879879, 29.845194>,  <29.752935, 34.707790, 29.951704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623934, 34.879879, 29.845194>,  <29.408932, 35.166695, 29.667677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623934, 34.879879, 29.845194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164578, 0.426960, 0.889168,
		-0.827046, -0.550969, 0.111484,
		0.537503, -0.717035, 0.443793,
		29.785185, 34.664768, 29.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052279, 34.978523, 30.256147>,  <29.408932, 35.166695, 29.667677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052279, 34.978523, 30.256147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425968, 34.847565, 30.312777>,  <29.650181, 34.768990, 30.346754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425968, 34.847565, 30.312777>,  <29.052279, 34.978523, 30.256147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425968, 34.847565, 30.312777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005312, 0.409633, 0.912235,
		-0.356652, -0.851478, 0.384427,
		0.934222, -0.327393, 0.141574,
		29.706234, 34.749348, 30.355249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815884, 35.571423, 29.855509>,  <29.052279, 34.978523, 30.256147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815884, 35.571423, 29.855509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.996677, 35.894569, 30.006805>,  <29.105154, 36.088455, 30.097584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.996677, 35.894569, 30.006805>,  <28.815884, 35.571423, 29.855509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996677, 35.894569, 30.006805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870274, 0.306294, 0.385756,
		0.195786, -0.503529, 0.841503,
		0.451987, 0.807863, 0.378240,
		29.132273, 36.136929, 30.120277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828127, 36.204075, 29.496922>,  <28.815884, 35.571423, 29.855509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828127, 36.204075, 29.496922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.733198, 36.543064, 29.306986>,  <28.676241, 36.746456, 29.193026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.733198, 36.543064, 29.306986>,  <28.828127, 36.204075, 29.496922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733198, 36.543064, 29.306986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372499, -0.530827, -0.761227,
		-0.897175, -0.003779, 0.441659,
		-0.237321, 0.847472, -0.474837,
		28.662003, 36.797306, 29.164536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085272, 36.142338, 29.261179>,  <28.828127, 36.204075, 29.496922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085272, 36.142338, 29.261179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.305935, 36.378887, 29.025909>,  <28.438332, 36.520817, 28.884748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.305935, 36.378887, 29.025909>,  <28.085272, 36.142338, 29.261179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305935, 36.378887, 29.025909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176384, -0.606518, -0.775258,
		-0.815207, 0.531421, -0.230280,
		0.551657, 0.591378, -0.588172,
		28.471432, 36.556301, 28.849457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608265, 36.524876, 28.770748>,  <28.085272, 36.142338, 29.261179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608265, 36.524876, 28.770748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980946, 36.485985, 28.630762>,  <28.204554, 36.462650, 28.546770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980946, 36.485985, 28.630762>,  <27.608265, 36.524876, 28.770748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980946, 36.485985, 28.630762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352796, -0.471410, -0.808275,
		-0.086392, 0.876539, -0.473515,
		0.931704, -0.097226, -0.349965,
		28.260456, 36.456818, 28.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526979, 36.701168, 28.043552>,  <27.608265, 36.524876, 28.770748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526979, 36.701168, 28.043552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.883675, 36.520149, 28.042477>,  <28.097692, 36.411537, 28.041832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.883675, 36.520149, 28.042477>,  <27.526979, 36.701168, 28.043552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883675, 36.520149, 28.042477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194158, -0.377212, -0.905547,
		0.408785, 0.808033, -0.424239,
		0.891739, -0.452543, -0.002687,
		28.151196, 36.384388, 28.041670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652632, 36.744904, 27.282776>,  <27.526979, 36.701168, 28.043552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652632, 36.744904, 27.282776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914108, 36.496468, 27.455721>,  <28.070993, 36.347404, 27.559488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.914108, 36.496468, 27.455721>,  <27.652632, 36.744904, 27.282776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914108, 36.496468, 27.455721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094423, -0.499926, -0.860905,
		0.750848, 0.603591, -0.268152,
		0.653691, -0.621089, 0.432361,
		28.110216, 36.310143, 27.585430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276747, 36.800869, 26.919477>,  <27.652632, 36.744904, 27.282776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276747, 36.800869, 26.919477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.233730, 36.437500, 27.081072>,  <28.207920, 36.219479, 27.178028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.233730, 36.437500, 27.081072>,  <28.276747, 36.800869, 26.919477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233730, 36.437500, 27.081072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085046, -0.413258, -0.906634,
		0.990557, -0.063142, 0.121699,
		-0.107539, -0.908422, 0.403986,
		28.201468, 36.164974, 27.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846678, 36.457741, 26.580416>,  <28.276747, 36.800869, 26.919477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846678, 36.457741, 26.580416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.607794, 36.180241, 26.741438>,  <28.464464, 36.013741, 26.838051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.607794, 36.180241, 26.741438>,  <28.846678, 36.457741, 26.580416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607794, 36.180241, 26.741438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149993, -0.589628, -0.793625,
		0.787937, -0.413579, 0.456188,
		-0.597208, -0.693752, 0.402556,
		28.428631, 35.972115, 26.862206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219341, 35.890659, 26.621675>,  <28.846678, 36.457741, 26.580416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219341, 35.890659, 26.621675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.846952, 35.747009, 26.595373>,  <28.623520, 35.660820, 26.579592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.846952, 35.747009, 26.595373>,  <29.219341, 35.890659, 26.621675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846952, 35.747009, 26.595373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298438, -0.644810, -0.703672,
		0.210304, -0.674723, 0.707475,
		-0.930971, -0.359122, -0.065757,
		28.567661, 35.639271, 26.575645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291048, 35.187862, 26.497454>,  <29.219341, 35.890659, 26.621675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291048, 35.187862, 26.497454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.920500, 35.269863, 26.371084>,  <28.698170, 35.319065, 26.295263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.920500, 35.269863, 26.371084>,  <29.291048, 35.187862, 26.497454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920500, 35.269863, 26.371084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134141, -0.604236, -0.785433,
		-0.351909, -0.769982, 0.532249,
		-0.926373, 0.205004, -0.315923,
		28.642588, 35.331364, 26.276308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009361, 34.463680, 26.183552>,  <29.291048, 35.187862, 26.497454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009361, 34.463680, 26.183552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.780849, 34.765247, 26.053785>,  <28.643742, 34.946186, 25.975925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.780849, 34.765247, 26.053785>,  <29.009361, 34.463680, 26.183552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780849, 34.765247, 26.053785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289258, -0.554845, -0.780049,
		-0.768093, -0.351788, 0.535049,
		-0.571281, 0.753918, -0.324415,
		28.609465, 34.991425, 25.956461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440348, 34.107750, 25.935188>,  <29.009361, 34.463680, 26.183552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440348, 34.107750, 25.935188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423382, 34.466881, 25.759867>,  <28.413202, 34.682358, 25.654675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423382, 34.466881, 25.759867>,  <28.440348, 34.107750, 25.935188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423382, 34.466881, 25.759867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267326, -0.432899, -0.860892,
		-0.962672, 0.080656, 0.258373,
		-0.042413, 0.897827, -0.438302,
		28.410658, 34.736229, 25.628376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779707, 34.152561, 25.619577>,  <28.440348, 34.107750, 25.935188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779707, 34.152561, 25.619577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.000261, 34.426746, 25.429371>,  <28.132595, 34.591259, 25.315247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.000261, 34.426746, 25.429371>,  <27.779707, 34.152561, 25.619577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000261, 34.426746, 25.429371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257152, -0.402589, -0.878518,
		-0.793628, 0.606683, -0.045714,
		0.551387, 0.685461, -0.475516,
		28.165678, 34.632385, 25.286716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303377, 34.449036, 25.078211>,  <27.779707, 34.152561, 25.619577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303377, 34.449036, 25.078211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.680487, 34.528011, 24.970732>,  <27.906752, 34.575397, 24.906244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.680487, 34.528011, 24.970732>,  <27.303377, 34.449036, 25.078211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680487, 34.528011, 24.970732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176884, -0.386962, -0.904971,
		-0.282653, 0.900710, -0.329893,
		0.942772, 0.197440, -0.268698,
		27.963318, 34.587242, 24.890123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213633, 34.716476, 24.420919>,  <27.303377, 34.449036, 25.078211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213633, 34.716476, 24.420919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.603199, 34.625740, 24.423271>,  <27.836939, 34.571297, 24.424683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.603199, 34.625740, 24.423271>,  <27.213633, 34.716476, 24.420919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603199, 34.625740, 24.423271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075277, -0.347409, -0.934687,
		0.214068, 0.909863, -0.355422,
		0.973914, -0.226842, 0.005877,
		27.895372, 34.557686, 24.425034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497175, 34.897972, 23.729879>,  <27.213633, 34.716476, 24.420919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497175, 34.897972, 23.729879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753624, 34.629021, 23.877861>,  <27.907494, 34.467651, 23.966650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.753624, 34.629021, 23.877861>,  <27.497175, 34.897972, 23.729879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753624, 34.629021, 23.877861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086229, -0.415901, -0.905313,
		0.762578, 0.612319, -0.208665,
		0.641124, -0.672378, 0.369956,
		27.945961, 34.427307, 23.988848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937096, 34.834747, 23.216185>,  <27.497175, 34.897972, 23.729879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937096, 34.834747, 23.216185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.039190, 34.506439, 23.420610>,  <28.100447, 34.309452, 23.543266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.039190, 34.506439, 23.420610>,  <27.937096, 34.834747, 23.216185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039190, 34.506439, 23.420610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190988, -0.475356, -0.858813,
		0.947828, 0.316808, 0.035430,
		0.255237, -0.820774, 0.511063,
		28.115761, 34.260208, 23.573929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616247, 34.609207, 22.988443>,  <27.937096, 34.834747, 23.216185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616247, 34.609207, 22.988443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.435984, 34.288399, 23.145241>,  <28.327826, 34.095913, 23.239319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.435984, 34.288399, 23.145241>,  <28.616247, 34.609207, 22.988443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435984, 34.288399, 23.145241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260014, -0.538005, -0.801838,
		0.853990, -0.259433, 0.450995,
		-0.450661, -0.802026, 0.391995,
		28.300785, 34.047791, 23.262838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038727, 34.020500, 22.750006>,  <28.616247, 34.609207, 22.988443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038727, 34.020500, 22.750006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.702099, 33.844971, 22.875990>,  <28.500122, 33.739655, 22.951580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.702099, 33.844971, 22.875990>,  <29.038727, 34.020500, 22.750006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702099, 33.844971, 22.875990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135555, -0.736015, -0.663255,
		0.522865, -0.515480, 0.678891,
		-0.841568, -0.438820, 0.314960,
		28.449629, 33.713326, 22.970478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155361, 33.293579, 22.651215>,  <29.038727, 34.020500, 22.750006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155361, 33.293579, 22.651215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.759075, 33.347561, 22.657736>,  <28.521303, 33.379951, 22.661650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.759075, 33.347561, 22.657736>,  <29.155361, 33.293579, 22.651215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759075, 33.347561, 22.657736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094148, -0.594672, -0.798437,
		-0.098059, -0.792560, 0.601858,
		-0.990717, 0.134957, 0.016305,
		28.461861, 33.388050, 22.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836870, 32.616623, 22.759195>,  <29.155361, 33.293579, 22.651215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836870, 32.616623, 22.759195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577564, 32.858246, 22.573782>,  <28.421980, 33.003220, 22.462534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.577564, 32.858246, 22.573782>,  <28.836870, 32.616623, 22.759195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577564, 32.858246, 22.573782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060480, -0.647707, -0.759485,
		-0.759010, -0.464312, 0.456419,
		-0.648264, 0.604061, -0.463535,
		28.383085, 33.039463, 22.434721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554775, 32.184143, 22.347408>,  <28.836870, 32.616623, 22.759195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554775, 32.184143, 22.347408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406031, 32.523720, 22.197203>,  <28.316784, 32.727467, 22.107080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.406031, 32.523720, 22.197203>,  <28.554775, 32.184143, 22.347408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406031, 32.523720, 22.197203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164935, -0.458508, -0.873251,
		-0.913518, -0.262793, 0.310523,
		-0.371861, 0.848947, -0.375512,
		28.294472, 32.778404, 22.084549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964796, 31.978785, 22.048195>,  <28.554775, 32.184143, 22.347408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964796, 31.978785, 22.048195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084663, 32.322308, 21.881992>,  <28.156584, 32.528423, 21.782270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.084663, 32.322308, 21.881992>,  <27.964796, 31.978785, 22.048195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084663, 32.322308, 21.881992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252254, -0.348696, -0.902651,
		-0.920090, 0.375310, 0.112145,
		0.299669, 0.858810, -0.415505,
		28.174564, 32.579952, 21.757341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497021, 31.982080, 21.518293>,  <27.964796, 31.978785, 22.048195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497021, 31.982080, 21.518293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.784502, 32.240093, 21.414444>,  <27.956991, 32.394901, 21.352135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.784502, 32.240093, 21.414444>,  <27.497021, 31.982080, 21.518293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784502, 32.240093, 21.414444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185493, -0.181990, -0.965646,
		-0.670120, 0.742169, -0.011148,
		0.718701, 0.645031, -0.259622,
		28.000113, 32.433601, 21.336557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236919, 32.488583, 21.050518>,  <27.497021, 31.982080, 21.518293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236919, 32.488583, 21.050518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630671, 32.463047, 20.984886>,  <27.866922, 32.447727, 20.945507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630671, 32.463047, 20.984886>,  <27.236919, 32.488583, 21.050518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630671, 32.463047, 20.984886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173912, -0.207425, -0.962668,
		0.027422, 0.976166, -0.215287,
		0.984379, -0.063839, -0.164079,
		27.925983, 32.443897, 20.935663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399715, 32.936478, 20.478144>,  <27.236919, 32.488583, 21.050518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399715, 32.936478, 20.478144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698221, 32.670994, 20.498461>,  <27.877325, 32.511703, 20.510651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698221, 32.670994, 20.498461>,  <27.399715, 32.936478, 20.478144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698221, 32.670994, 20.498461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096035, 0.031847, -0.994868,
		0.658684, 0.747314, 0.087506,
		0.746265, -0.663708, 0.050791,
		27.922100, 32.471882, 20.513699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765953, 32.914276, 19.826712>,  <27.399715, 32.936478, 20.478144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765953, 32.914276, 19.826712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.910713, 32.585075, 20.001842>,  <27.997568, 32.387554, 20.106920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.910713, 32.585075, 20.001842>,  <27.765953, 32.914276, 19.826712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910713, 32.585075, 20.001842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071752, -0.492861, -0.867145,
		0.929452, 0.282404, -0.237418,
		0.361899, -0.823004, 0.437828,
		28.019283, 32.338173, 20.133190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162979, 32.612984, 19.295246>,  <27.765953, 32.914276, 19.826712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162979, 32.612984, 19.295246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079391, 32.328419, 19.563639>,  <28.029240, 32.157681, 19.724674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079391, 32.328419, 19.563639>,  <28.162979, 32.612984, 19.295246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079391, 32.328419, 19.563639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217840, -0.635028, -0.741138,
		0.953351, -0.301042, -0.022274,
		-0.208969, -0.711416, 0.670983,
		28.016701, 32.114994, 19.764935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832285, 32.725704, 18.943508>,  <28.162979, 32.612984, 19.295246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832285, 32.725704, 18.943508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.870470, 33.046783, 18.708029>,  <28.893381, 33.239429, 18.566742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.870470, 33.046783, 18.708029>,  <28.832285, 32.725704, 18.943508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870470, 33.046783, 18.708029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052053, 0.586565, 0.808228,
		0.994071, -0.107798, 0.014212,
		0.095462, 0.802696, -0.588699,
		28.899109, 33.287594, 18.531420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300159, 33.146622, 19.318878>,  <28.832285, 32.725704, 18.943508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300159, 33.146622, 19.318878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.144615, 33.393166, 19.044975>,  <29.051289, 33.541092, 18.880634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.144615, 33.393166, 19.044975>,  <29.300159, 33.146622, 19.318878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144615, 33.393166, 19.044975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057573, 0.758056, 0.649643,
		0.919496, 0.213197, -0.330264,
		-0.388861, 0.616359, -0.684755,
		29.027958, 33.578072, 18.839548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778391, 33.666119, 19.262135>,  <29.300159, 33.146622, 19.318878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778391, 33.666119, 19.262135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409134, 33.792259, 19.174166>,  <29.187580, 33.867943, 19.121384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.409134, 33.792259, 19.174166>,  <29.778391, 33.666119, 19.262135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409134, 33.792259, 19.174166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100155, 0.749526, 0.654354,
		0.371188, 0.582034, -0.723502,
		-0.923140, 0.315351, -0.219921,
		29.132193, 33.886864, 19.108189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782240, 34.438152, 19.383268>,  <29.778391, 33.666119, 19.262135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782240, 34.438152, 19.383268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386112, 34.387665, 19.360180>,  <29.148436, 34.357372, 19.346327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.386112, 34.387665, 19.360180>,  <29.782240, 34.438152, 19.383268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386112, 34.387665, 19.360180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134945, 0.778397, 0.613096,
		-0.032454, 0.614952, -0.787897,
		-0.990321, -0.126221, -0.057722,
		29.089016, 34.349800, 19.342863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562635, 35.112034, 19.214455>,  <29.782240, 34.438152, 19.383268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562635, 35.112034, 19.214455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260099, 34.906593, 19.376520>,  <29.078577, 34.783329, 19.473759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.260099, 34.906593, 19.376520>,  <29.562635, 35.112034, 19.214455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260099, 34.906593, 19.376520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040250, 0.654712, 0.754806,
		-0.652937, 0.554584, -0.515859,
		-0.756342, -0.513604, 0.405164,
		29.033197, 34.752514, 19.498070>
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
