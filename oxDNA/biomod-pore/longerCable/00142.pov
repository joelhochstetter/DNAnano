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
	<24.326176, 34.820320, 35.533512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245998, 34.973484, 35.172802>,  <24.197891, 35.065384, 34.956375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245998, 34.973484, 35.172802>,  <24.326176, 34.820320, 35.533512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245998, 34.973484, 35.172802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377999, 0.818959, 0.431768,
		0.903847, 0.427416, -0.019416,
		-0.200445, 0.382913, -0.901776,
		24.185865, 35.088356, 34.902267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793228, 35.312748, 35.327732>,  <24.326176, 34.820320, 35.533512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793228, 35.312748, 35.327732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413755, 35.356049, 35.208881>,  <24.186071, 35.382030, 35.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413755, 35.356049, 35.208881>,  <24.793228, 35.312748, 35.327732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413755, 35.356049, 35.208881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075545, 0.834800, 0.545346,
		0.307080, 0.539806, -0.783780,
		-0.948681, 0.108254, -0.297130,
		24.129150, 35.388523, 35.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803419, 35.829670, 35.696575>,  <24.793228, 35.312748, 35.327732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803419, 35.829670, 35.696575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446249, 35.806042, 35.518051>,  <24.231947, 35.791866, 35.410938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446249, 35.806042, 35.518051>,  <24.803419, 35.829670, 35.696575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446249, 35.806042, 35.518051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255675, 0.882512, 0.394718,
		0.370558, 0.466565, -0.803121,
		-0.892926, -0.059072, -0.446311,
		24.178371, 35.788319, 35.384159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216757, 36.474529, 35.480618>,  <24.803419, 35.829670, 35.696575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216757, 36.474529, 35.480618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396360, 36.172157, 35.290058>,  <25.504124, 35.990734, 35.175724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396360, 36.172157, 35.290058>,  <25.216757, 36.474529, 35.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396360, 36.172157, 35.290058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129374, 0.472544, -0.871759,
		0.884111, 0.453062, 0.114379,
		0.449010, -0.755935, -0.476396,
		25.531063, 35.945377, 35.147141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675362, 36.807629, 35.034382>,  <25.216757, 36.474529, 35.480618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675362, 36.807629, 35.034382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630405, 36.439301, 34.885002>,  <25.603432, 36.218304, 34.795376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630405, 36.439301, 34.885002>,  <25.675362, 36.807629, 35.034382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630405, 36.439301, 34.885002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084464, 0.383319, -0.919746,
		0.990068, -0.071830, -0.120859,
		-0.112393, -0.920819, -0.373445,
		25.596687, 36.163055, 34.772968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106062, 36.746685, 34.576042>,  <25.675362, 36.807629, 35.034382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106062, 36.746685, 34.576042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818113, 36.488705, 34.473419>,  <25.645344, 36.333916, 34.411846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818113, 36.488705, 34.473419>,  <26.106062, 36.746685, 34.576042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818113, 36.488705, 34.473419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060702, 0.426706, -0.902351,
		0.691449, -0.634003, -0.346323,
		-0.719871, -0.644952, -0.256560,
		25.602152, 36.295219, 34.396450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309546, 36.388309, 33.900009>,  <26.106062, 36.746685, 34.576042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309546, 36.388309, 33.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911146, 36.386013, 33.935684>,  <25.672106, 36.384636, 33.957088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911146, 36.386013, 33.935684>,  <26.309546, 36.388309, 33.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911146, 36.386013, 33.935684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080975, 0.480245, -0.873389,
		-0.037821, -0.877116, -0.478788,
		-0.995998, -0.005738, 0.089187,
		25.612347, 36.384293, 33.962440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990835, 36.148930, 33.285023>,  <26.309546, 36.388309, 33.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990835, 36.148930, 33.285023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721813, 36.372097, 33.479504>,  <25.560400, 36.505997, 33.596191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721813, 36.372097, 33.479504>,  <25.990835, 36.148930, 33.285023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721813, 36.372097, 33.479504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053643, 0.618510, -0.783944,
		-0.738101, -0.553326, -0.386053,
		-0.672554, 0.557920, 0.486205,
		25.520046, 36.539474, 33.625366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586687, 36.441853, 32.673897>,  <25.990835, 36.148930, 33.285023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586687, 36.441853, 32.673897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481279, 36.651546, 32.997807>,  <25.418036, 36.777363, 33.192154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481279, 36.651546, 32.997807>,  <25.586687, 36.441853, 32.673897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481279, 36.651546, 32.997807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260177, 0.769712, -0.582967,
		-0.928906, -0.364307, -0.066438,
		-0.263517, 0.524236, 0.809775,
		25.402224, 36.808819, 33.240738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944527, 36.780525, 32.544842>,  <25.586687, 36.441853, 32.673897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944527, 36.780525, 32.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101952, 37.003876, 32.836960>,  <25.196407, 37.137886, 33.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101952, 37.003876, 32.836960>,  <24.944527, 36.780525, 32.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101952, 37.003876, 32.836960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276894, 0.829512, -0.485015,
		-0.876606, -0.011330, 0.481076,
		0.393564, 0.558374, 0.730292,
		25.220020, 37.171387, 33.056046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449398, 37.247002, 32.692715>,  <24.944527, 36.780525, 32.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449398, 37.247002, 32.692715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801388, 37.389072, 32.818882>,  <25.012583, 37.474316, 32.894585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801388, 37.389072, 32.818882>,  <24.449398, 37.247002, 32.692715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801388, 37.389072, 32.818882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110777, 0.799152, -0.590834,
		-0.461921, 0.484978, 0.742580,
		0.879976, 0.355180, 0.315421,
		25.065380, 37.495625, 32.913509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.378988, 37.978897, 33.014877>,  <24.449398, 37.247002, 32.692715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.378988, 37.978897, 33.014877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723776, 37.886593, 32.834320>,  <24.930649, 37.831211, 32.725986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723776, 37.886593, 32.834320>,  <24.378988, 37.978897, 33.014877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723776, 37.886593, 32.834320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235010, 0.607062, -0.759109,
		0.449198, 0.760411, 0.469037,
		0.861970, -0.230762, -0.451395,
		24.982367, 37.817364, 32.698902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227749, 38.390995, 32.313824>,  <24.378988, 37.978897, 33.014877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227749, 38.390995, 32.313824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412066, 38.735531, 32.399391>,  <24.522655, 38.942253, 32.450729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412066, 38.735531, 32.399391>,  <24.227749, 38.390995, 32.313824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412066, 38.735531, 32.399391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837631, -0.501738, 0.215949,
		0.293335, 0.079674, -0.952684,
		0.460792, 0.861342, 0.213915,
		24.550303, 38.993935, 32.463566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876629, 38.463715, 31.899202>,  <24.227749, 38.390995, 32.313824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876629, 38.463715, 31.899202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861708, 38.602978, 32.273880>,  <24.852755, 38.686535, 32.498688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861708, 38.602978, 32.273880>,  <24.876629, 38.463715, 31.899202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861708, 38.602978, 32.273880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757113, -0.601933, 0.253881,
		0.652218, 0.718654, -0.241140,
		-0.037303, 0.348156, 0.936694,
		24.850517, 38.707424, 32.554890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503187, 38.211014, 32.166142>,  <24.876629, 38.463715, 31.899202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503187, 38.211014, 32.166142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271160, 38.340874, 32.464973>,  <25.131945, 38.418789, 32.644272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271160, 38.340874, 32.464973>,  <25.503187, 38.211014, 32.166142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271160, 38.340874, 32.464973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390637, -0.693932, 0.604865,
		0.714789, 0.642699, 0.275708,
		-0.580068, 0.324649, 0.747077,
		25.097139, 38.438267, 32.689098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984138, 38.203152, 32.652164>,  <25.503187, 38.211014, 32.166142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984138, 38.203152, 32.652164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609934, 38.137146, 32.777122>,  <25.385410, 38.097542, 32.852097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609934, 38.137146, 32.777122>,  <25.984138, 38.203152, 32.652164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609934, 38.137146, 32.777122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321701, -0.763379, 0.560144,
		0.146041, 0.624518, 0.767235,
		-0.935511, -0.165016, 0.312393,
		25.329281, 38.087643, 32.870842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125994, 38.059246, 33.452526>,  <25.984138, 38.203152, 32.652164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125994, 38.059246, 33.452526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786356, 37.906807, 33.306213>,  <25.582573, 37.815342, 33.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786356, 37.906807, 33.306213>,  <26.125994, 38.059246, 33.452526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786356, 37.906807, 33.306213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115849, -0.809948, 0.574946,
		-0.515379, 0.445809, 0.731874,
		-0.849096, -0.381102, -0.365784,
		25.531628, 37.792477, 33.196480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742483, 37.911579, 33.944080>,  <26.125994, 38.059246, 33.452526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742483, 37.911579, 33.944080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561218, 37.686996, 33.667122>,  <25.452459, 37.552246, 33.500946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561218, 37.686996, 33.667122>,  <25.742483, 37.911579, 33.944080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561218, 37.686996, 33.667122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059764, -0.755840, 0.652023,
		-0.889423, 0.336851, 0.308961,
		-0.453160, -0.561460, -0.692393,
		25.425270, 37.518559, 33.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201176, 37.581894, 34.230854>,  <25.742483, 37.911579, 33.944080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201176, 37.581894, 34.230854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251509, 37.346668, 33.911270>,  <25.281710, 37.205532, 33.719521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251509, 37.346668, 33.911270>,  <25.201176, 37.581894, 34.230854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251509, 37.346668, 33.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151518, -0.807308, 0.570347,
		-0.980412, 0.049288, -0.190689,
		0.125834, -0.588068, -0.798963,
		25.289259, 37.170246, 33.671581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559011, 37.204338, 34.149418>,  <25.201176, 37.581894, 34.230854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559011, 37.204338, 34.149418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860151, 36.989300, 33.997517>,  <25.040834, 36.860279, 33.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860151, 36.989300, 33.997517>,  <24.559011, 37.204338, 34.149418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860151, 36.989300, 33.997517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225985, -0.753012, 0.617983,
		-0.618182, -0.379429, -0.688392,
		0.752849, -0.537593, -0.379753,
		25.086006, 36.828022, 33.883591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.364199, 36.879890, 33.542820>,  <24.559011, 37.204338, 34.149418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.364199, 36.879890, 33.542820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742086, 36.751347, 33.516804>,  <24.968819, 36.674221, 33.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742086, 36.751347, 33.516804>,  <24.364199, 36.879890, 33.542820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742086, 36.751347, 33.516804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069278, -0.389535, 0.918403,
		-0.320476, -0.863127, -0.390265,
		0.944720, -0.321363, -0.065041,
		25.025503, 36.654938, 33.497292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361923, 36.250313, 33.997276>,  <24.364199, 36.879890, 33.542820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361923, 36.250313, 33.997276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760284, 36.285973, 33.991203>,  <24.999302, 36.307369, 33.987560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760284, 36.285973, 33.991203>,  <24.361923, 36.250313, 33.997276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760284, 36.285973, 33.991203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070809, -0.664282, 0.744121,
		0.056250, -0.742147, -0.667872,
		0.995903, 0.089148, -0.015185,
		25.059055, 36.312717, 33.986649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629478, 35.470966, 34.213726>,  <24.361923, 36.250313, 33.997276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629478, 35.470966, 34.213726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924953, 35.735111, 34.267788>,  <25.102238, 35.893597, 34.300224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924953, 35.735111, 34.267788>,  <24.629478, 35.470966, 34.213726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924953, 35.735111, 34.267788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197472, -0.403724, 0.893315,
		0.644473, -0.633192, -0.428629,
		0.738687, 0.660360, 0.135151,
		25.146559, 35.933220, 34.308334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024794, 35.163738, 34.650799>,  <24.629478, 35.470966, 34.213726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024794, 35.163738, 34.650799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147488, 35.543293, 34.680531>,  <25.221104, 35.771027, 34.698372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147488, 35.543293, 34.680531>,  <25.024794, 35.163738, 34.650799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147488, 35.543293, 34.680531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333779, -0.180376, 0.925233,
		0.891350, -0.258991, -0.372046,
		0.306736, 0.948888, 0.074332,
		25.239508, 35.827961, 34.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494490, 35.027630, 34.118820>,  <25.024794, 35.163738, 34.650799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494490, 35.027630, 34.118820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521311, 35.371666, 34.321106>,  <25.537403, 35.578087, 34.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521311, 35.371666, 34.321106>,  <25.494490, 35.027630, 34.118820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521311, 35.371666, 34.321106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233455, -0.506310, 0.830150,
		0.970053, 0.062397, -0.234742,
		0.067053, 0.860091, 0.505715,
		25.541428, 35.629692, 34.472820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120495, 34.983974, 34.501572>,  <25.494490, 35.027630, 34.118820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120495, 34.983974, 34.501572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922350, 35.276619, 34.688919>,  <25.803463, 35.452206, 34.801327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922350, 35.276619, 34.688919>,  <26.120495, 34.983974, 34.501572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922350, 35.276619, 34.688919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248688, -0.397162, 0.883412,
		0.832329, 0.554084, 0.014796,
		-0.495361, 0.731610, 0.468364,
		25.773741, 35.496101, 34.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385761, 35.588585, 34.933304>,  <26.120495, 34.983974, 34.501572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385761, 35.588585, 34.933304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169104, 35.376785, 35.194454>,  <26.039108, 35.249706, 35.351143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169104, 35.376785, 35.194454>,  <26.385761, 35.588585, 34.933304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169104, 35.376785, 35.194454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109267, -0.814433, -0.569877,
		0.833475, -0.237333, 0.498991,
		-0.541646, -0.529501, 0.652877,
		26.006611, 35.217934, 35.390316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776506, 35.124290, 35.081001>,  <26.385761, 35.588585, 34.933304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776506, 35.124290, 35.081001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411287, 34.978268, 35.153744>,  <26.192156, 34.890652, 35.197388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411287, 34.978268, 35.153744>,  <26.776506, 35.124290, 35.081001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411287, 34.978268, 35.153744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155658, -0.724051, -0.671953,
		0.376978, -0.585219, 0.717919,
		-0.913049, -0.365061, 0.181857,
		26.137373, 34.868748, 35.208302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355511, 34.943401, 34.585670>,  <26.776506, 35.124290, 35.081001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355511, 34.943401, 34.585670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361940, 34.607353, 34.802536>,  <27.365797, 34.405724, 34.932655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361940, 34.607353, 34.802536>,  <27.355511, 34.943401, 34.585670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361940, 34.607353, 34.802536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538960, -0.449440, -0.712409,
		0.842178, 0.303656, 0.445566,
		0.016072, -0.840118, 0.542166,
		27.366762, 34.355316, 34.965187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134792, 34.749954, 34.890244>,  <27.355511, 34.943401, 34.585670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134792, 34.749954, 34.890244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911673, 34.423267, 34.831139>,  <27.777800, 34.227257, 34.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911673, 34.423267, 34.831139>,  <28.134792, 34.749954, 34.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911673, 34.423267, 34.831139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760144, -0.431230, -0.486026,
		0.333226, -0.383427, 0.861362,
		-0.557801, -0.816716, -0.147763,
		27.744331, 34.178253, 34.786808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386435, 34.078720, 35.142929>,  <28.134792, 34.749954, 34.890244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386435, 34.078720, 35.142929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154696, 33.972385, 34.834724>,  <28.015652, 33.908585, 34.649803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154696, 33.972385, 34.834724>,  <28.386435, 34.078720, 35.142929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154696, 33.972385, 34.834724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765150, -0.503157, -0.401719,
		-0.280895, -0.822291, 0.494910,
		-0.579347, -0.265840, -0.770510,
		27.980892, 33.892635, 34.603573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125891, 33.682865, 35.100368>,  <28.386435, 34.078720, 35.142929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125891, 33.682865, 35.100368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078569, 33.688396, 34.703217>,  <29.050177, 33.691715, 34.464924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078569, 33.688396, 34.703217>,  <29.125891, 33.682865, 35.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078569, 33.688396, 34.703217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715466, 0.694548, -0.075574,
		0.688559, -0.719313, -0.092062,
		-0.118303, 0.013830, -0.992881,
		29.043079, 33.692547, 34.405354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772943, 33.447647, 34.775887>,  <29.125891, 33.682865, 35.100368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772943, 33.447647, 34.775887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572929, 33.724552, 34.567760>,  <29.452921, 33.890697, 34.442886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572929, 33.724552, 34.567760>,  <29.772943, 33.447647, 34.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572929, 33.724552, 34.567760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852055, 0.500683, -0.152701,
		0.154804, -0.519695, -0.840210,
		-0.500037, 0.692267, -0.520316,
		29.422918, 33.932232, 34.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308386, 33.700500, 34.262924>,  <29.772943, 33.447647, 34.775887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308386, 33.700500, 34.262924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019529, 33.976452, 34.283264>,  <29.846216, 34.142021, 34.295467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019529, 33.976452, 34.283264>,  <30.308386, 33.700500, 34.262924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019529, 33.976452, 34.283264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683380, 0.722876, -0.102192,
		-0.107254, -0.039050, -0.993465,
		-0.722142, 0.689874, 0.050845,
		29.802887, 34.183414, 34.298519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995499, 34.177376, 34.113113>,  <30.308386, 33.700500, 34.262924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995499, 34.177376, 34.113113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324966, 33.969452, 34.022449>,  <31.522646, 33.844700, 33.968052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324966, 33.969452, 34.022449>,  <30.995499, 34.177376, 34.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324966, 33.969452, 34.022449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560004, 0.682685, 0.469399,
		-0.089262, -0.513558, 0.853399,
		0.823667, -0.519807, -0.226656,
		31.572067, 33.813511, 33.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168858, 33.762905, 33.482014>,  <30.995499, 34.177376, 34.113113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168858, 33.762905, 33.482014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910320, 34.005699, 33.297054>,  <30.755198, 34.151375, 33.186081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910320, 34.005699, 33.297054>,  <31.168858, 33.762905, 33.482014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910320, 34.005699, 33.297054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420876, -0.221876, -0.879565,
		-0.636477, -0.763112, -0.112057,
		-0.646344, 0.606985, -0.462394,
		30.716417, 34.187794, 33.158337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963737, 33.865734, 33.300220>,  <31.168858, 33.762905, 33.482014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963737, 33.865734, 33.300220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154980, 33.544125, 33.441624>,  <32.269726, 33.351158, 33.526466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154980, 33.544125, 33.441624>,  <31.963737, 33.865734, 33.300220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154980, 33.544125, 33.441624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861299, -0.508010, 0.009456,
		0.171981, -0.308994, -0.935385,
		0.478107, -0.804020, 0.353505,
		32.298412, 33.302917, 33.547676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841724, 33.307579, 32.865410>,  <31.963737, 33.865734, 33.300220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841724, 33.307579, 32.865410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965879, 33.123810, 33.198299>,  <32.040371, 33.013550, 33.398033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965879, 33.123810, 33.198299>,  <31.841724, 33.307579, 32.865410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965879, 33.123810, 33.198299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759612, -0.646217, -0.073432,
		0.571531, -0.609373, -0.549561,
		0.310389, -0.459422, 0.832220,
		32.058994, 32.985985, 33.447964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007053, 32.645939, 32.674236>,  <31.841724, 33.307579, 32.865410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007053, 32.645939, 32.674236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883343, 32.681992, 33.052914>,  <31.809116, 32.703625, 33.280121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883343, 32.681992, 33.052914>,  <32.007053, 32.645939, 32.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883343, 32.681992, 33.052914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642450, -0.753778, -0.138119,
		0.701146, -0.650919, 0.291032,
		-0.309278, 0.090132, 0.946691,
		31.790560, 32.709030, 33.336922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339104, 32.203506, 32.689899>,  <32.007053, 32.645939, 32.674236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339104, 32.203506, 32.689899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456223, 32.239758, 33.070648>,  <31.526493, 32.261509, 33.299099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456223, 32.239758, 33.070648>,  <31.339104, 32.203506, 32.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456223, 32.239758, 33.070648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632778, -0.727959, 0.263948,
		0.716842, -0.679605, -0.155799,
		0.292796, 0.090623, 0.951871,
		31.544062, 32.266945, 33.356209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749968, 32.575436, 33.062237>,  <31.339104, 32.203506, 32.689899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749968, 32.575436, 33.062237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811966, 32.255486, 33.294159>,  <30.849165, 32.063515, 33.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811966, 32.255486, 33.294159>,  <30.749968, 32.575436, 33.062237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811966, 32.255486, 33.294159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757186, 0.473151, 0.450329,
		-0.634544, 0.369222, 0.678991,
		0.154994, -0.799877, 0.579805,
		30.858463, 32.015522, 33.468102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622305, 32.739113, 33.819710>,  <30.749968, 32.575436, 33.062237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622305, 32.739113, 33.819710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896032, 32.465378, 33.718994>,  <31.060268, 32.301136, 33.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896032, 32.465378, 33.718994>,  <30.622305, 32.739113, 33.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896032, 32.465378, 33.718994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728599, 0.627866, 0.273729,
		-0.029231, -0.370772, 0.928264,
		0.684316, -0.684334, -0.251791,
		31.101328, 32.260078, 33.643456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940496, 32.598297, 34.494545>,  <30.622305, 32.739113, 33.819710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940496, 32.598297, 34.494545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169186, 32.522320, 34.175282>,  <31.306400, 32.476734, 33.983723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169186, 32.522320, 34.175282>,  <30.940496, 32.598297, 34.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169186, 32.522320, 34.175282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718699, 0.585181, 0.375546,
		0.395732, -0.788342, 0.471078,
		0.571724, -0.189948, -0.798155,
		31.340702, 32.465336, 33.935837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685902, 32.659073, 34.620518>,  <30.940496, 32.598297, 34.494545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685902, 32.659073, 34.620518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719126, 32.661911, 34.221909>,  <31.739059, 32.663612, 33.982742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719126, 32.661911, 34.221909>,  <31.685902, 32.659073, 34.620518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719126, 32.661911, 34.221909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848550, 0.523850, 0.074456,
		0.522555, -0.851781, 0.037492,
		0.083060, 0.007093, -0.996520,
		31.744043, 32.664040, 33.922955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403416, 32.449703, 34.575645>,  <31.685902, 32.659073, 34.620518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403416, 32.449703, 34.575645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301216, 32.631462, 34.234295>,  <32.239899, 32.740517, 34.029484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301216, 32.631462, 34.234295>,  <32.403416, 32.449703, 34.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301216, 32.631462, 34.234295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830412, 0.555166, 0.046986,
		0.495115, -0.696648, -0.519175,
		-0.255495, 0.454393, -0.853375,
		32.224567, 32.767780, 33.978283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941017, 32.351479, 34.124905>,  <32.403416, 32.449703, 34.575645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941017, 32.351479, 34.124905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737965, 32.659222, 33.969776>,  <32.616135, 32.843868, 33.876701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737965, 32.659222, 33.969776>,  <32.941017, 32.351479, 34.124905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737965, 32.659222, 33.969776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822391, 0.566884, 0.048132,
		0.256879, -0.294505, -0.920478,
		-0.507629, 0.769357, -0.387819,
		32.585674, 32.890030, 33.853432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129631, 32.667397, 33.410877>,  <32.941017, 32.351479, 34.124905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129631, 32.667397, 33.410877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992203, 32.935005, 33.674503>,  <32.909744, 33.095570, 33.832680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992203, 32.935005, 33.674503>,  <33.129631, 32.667397, 33.410877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992203, 32.935005, 33.674503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898478, 0.438397, 0.023363,
		-0.273303, 0.600184, -0.751721,
		-0.343574, 0.669020, 0.659067,
		32.889130, 33.135712, 33.872223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200230, 33.289726, 33.145729>,  <33.129631, 32.667397, 33.410877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200230, 33.289726, 33.145729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268162, 33.244320, 33.537292>,  <33.308922, 33.217075, 33.772232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268162, 33.244320, 33.537292>,  <33.200230, 33.289726, 33.145729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268162, 33.244320, 33.537292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926220, 0.357633, -0.119223,
		-0.336559, 0.926938, 0.165876,
		0.169835, -0.113512, 0.978913,
		33.319111, 33.210266, 33.830967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548298, 33.856873, 33.365814>,  <33.200230, 33.289726, 33.145729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548298, 33.856873, 33.365814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615402, 33.554989, 33.619514>,  <33.655666, 33.373859, 33.771736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615402, 33.554989, 33.619514>,  <33.548298, 33.856873, 33.365814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615402, 33.554989, 33.619514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971040, 0.237521, 0.025781,
		-0.170106, 0.611559, 0.772696,
		0.167765, -0.754705, 0.634252,
		33.665733, 33.328579, 33.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846737, 34.038242, 34.114067>,  <33.548298, 33.856873, 33.365814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846737, 34.038242, 34.114067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010391, 33.738129, 33.906342>,  <34.108585, 33.558060, 33.781708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010391, 33.738129, 33.906342>,  <33.846737, 34.038242, 34.114067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010391, 33.738129, 33.906342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900978, 0.422226, 0.099819,
		0.144374, -0.508728, 0.848736,
		0.409139, -0.750281, -0.519311,
		34.133133, 33.513046, 33.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428310, 33.766167, 34.543720>,  <33.846737, 34.038242, 34.114067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428310, 33.766167, 34.543720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504745, 33.675816, 34.161629>,  <34.550606, 33.621605, 33.932373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504745, 33.675816, 34.161629>,  <34.428310, 33.766167, 34.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504745, 33.675816, 34.161629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934056, 0.340965, 0.106222,
		0.301707, -0.912537, 0.276134,
		0.191083, -0.225876, -0.955231,
		34.562069, 33.608051, 33.875061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068771, 33.364086, 34.375202>,  <34.428310, 33.766167, 34.543720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068771, 33.364086, 34.375202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987125, 33.609863, 34.070362>,  <34.938137, 33.757328, 33.887459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987125, 33.609863, 34.070362>,  <35.068771, 33.364086, 34.375202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987125, 33.609863, 34.070362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950150, 0.311777, -0.003110,
		0.235695, -0.724746, -0.647450,
		-0.204114, 0.614442, -0.762102,
		34.925892, 33.794197, 33.841732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434902, 33.114220, 33.814861>,  <35.068771, 33.364086, 34.375202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434902, 33.114220, 33.814861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385117, 33.509415, 33.778233>,  <35.355244, 33.746532, 33.756256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385117, 33.509415, 33.778233>,  <35.434902, 33.114220, 33.814861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385117, 33.509415, 33.778233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982302, 0.109675, -0.151838,
		-0.139972, -0.108847, -0.984155,
		-0.124464, 0.987990, -0.091570,
		35.347778, 33.805813, 33.750763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840862, 32.569023, 34.295212>,  <35.434902, 33.114220, 33.814861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840862, 32.569023, 34.295212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228748, 32.659477, 34.332142>,  <36.461479, 32.713749, 34.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228748, 32.659477, 34.332142>,  <35.840862, 32.569023, 34.295212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228748, 32.659477, 34.332142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242732, 0.934295, 0.261102,
		-0.027212, -0.275603, 0.960886,
		0.969712, 0.226133, 0.092321,
		36.519661, 32.727318, 34.359837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981209, 32.733955, 34.969765>,  <35.840862, 32.569023, 34.295212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981209, 32.733955, 34.969765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174442, 32.923073, 34.674984>,  <36.290382, 33.036541, 34.498116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174442, 32.923073, 34.674984>,  <35.981209, 32.733955, 34.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174442, 32.923073, 34.674984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523059, 0.830817, 0.190139,
		0.702170, 0.293617, 0.648650,
		0.483082, 0.472792, -0.736954,
		36.319366, 33.064911, 34.453899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361671, 33.347744, 35.235394>,  <35.981209, 32.733955, 34.969765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361671, 33.347744, 35.235394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275005, 33.407810, 34.849541>,  <36.223007, 33.443851, 34.618031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275005, 33.407810, 34.849541>,  <36.361671, 33.347744, 35.235394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275005, 33.407810, 34.849541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606243, 0.753791, 0.253513,
		0.765197, 0.639726, -0.072283,
		-0.216665, 0.150166, -0.964628,
		36.210007, 33.452862, 34.560154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570129, 34.073341, 34.979416>,  <36.361671, 33.347744, 35.235394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570129, 34.073341, 34.979416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251389, 33.895603, 34.815674>,  <36.060143, 33.788960, 34.717426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251389, 33.895603, 34.815674>,  <36.570129, 34.073341, 34.979416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251389, 33.895603, 34.815674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549767, 0.814278, 0.186297,
		0.250550, 0.373504, -0.893152,
		-0.796857, -0.444349, -0.409357,
		36.012333, 33.762299, 34.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229317, 34.667294, 34.753746>,  <36.570129, 34.073341, 34.979416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229317, 34.667294, 34.753746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985355, 34.351906, 34.721901>,  <35.838978, 34.162674, 34.702793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985355, 34.351906, 34.721901>,  <36.229317, 34.667294, 34.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985355, 34.351906, 34.721901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792133, 0.609513, 0.031925,
		0.023353, 0.082534, -0.996315,
		-0.609901, -0.788469, -0.079612,
		35.802383, 34.115364, 34.698017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679352, 34.872471, 34.324173>,  <36.229317, 34.667294, 34.753746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679352, 34.872471, 34.324173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565140, 34.588188, 34.581348>,  <35.496613, 34.417618, 34.735653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565140, 34.588188, 34.581348>,  <35.679352, 34.872471, 34.324173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565140, 34.588188, 34.581348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860416, 0.485564, 0.154638,
		-0.422089, -0.509039, -0.750147,
		-0.285527, -0.710709, 0.642936,
		35.479481, 34.374977, 34.774231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031864, 35.064568, 33.872887>,  <35.679352, 34.872471, 34.324173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031864, 35.064568, 33.872887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214191, 35.139042, 33.524734>,  <35.323589, 35.183727, 33.315842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214191, 35.139042, 33.524734>,  <35.031864, 35.064568, 33.872887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214191, 35.139042, 33.524734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660924, -0.725773, 0.190874,
		-0.596160, -0.662259, -0.453878,
		0.455821, 0.186188, -0.870380,
		35.350937, 35.194897, 33.263618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179214, 34.427261, 33.635212>,  <35.031864, 35.064568, 33.872887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179214, 34.427261, 33.635212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443676, 34.675598, 33.466721>,  <35.602352, 34.824600, 33.365623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443676, 34.675598, 33.466721>,  <35.179214, 34.427261, 33.635212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443676, 34.675598, 33.466721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749843, -0.565404, 0.343590,
		-0.024849, -0.543021, -0.839351,
		0.661149, 0.620843, -0.421231,
		35.642021, 34.861851, 33.340351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148579, 34.538845, 32.920006>,  <35.179214, 34.427261, 33.635212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148579, 34.538845, 32.920006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243198, 34.201523, 33.113041>,  <35.299969, 33.999130, 33.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243198, 34.201523, 33.113041>,  <35.148579, 34.538845, 32.920006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243198, 34.201523, 33.113041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967439, -0.250454, 0.036542,
		0.090049, -0.475516, -0.875086,
		0.236545, -0.843302, 0.482585,
		35.314163, 33.948532, 33.257816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630489, 33.993050, 32.653160>,  <35.148579, 34.538845, 32.920006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630489, 33.993050, 32.653160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778431, 33.845093, 32.994072>,  <34.867195, 33.756317, 33.198620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778431, 33.845093, 32.994072>,  <34.630489, 33.993050, 32.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778431, 33.845093, 32.994072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899093, -0.373708, 0.227978,
		0.234176, -0.850599, -0.470790,
		0.369856, -0.369897, 0.852281,
		34.889389, 33.734123, 33.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608990, 33.211716, 32.659988>,  <34.630489, 33.993050, 32.653160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608990, 33.211716, 32.659988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606060, 33.342525, 33.037983>,  <34.604301, 33.421009, 33.264782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606060, 33.342525, 33.037983>,  <34.608990, 33.211716, 32.659988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606060, 33.342525, 33.037983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709506, -0.667632, 0.225541,
		0.704662, -0.668823, 0.236914,
		-0.007325, 0.327022, 0.944989,
		34.603863, 33.440632, 33.321480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622578, 32.533485, 33.063271>,  <34.608990, 33.211716, 32.659988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622578, 32.533485, 33.063271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473175, 32.856403, 33.246033>,  <34.383533, 33.050156, 33.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473175, 32.856403, 33.246033>,  <34.622578, 32.533485, 33.063271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473175, 32.856403, 33.246033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806199, -0.526144, 0.270584,
		0.458840, -0.267292, 0.847361,
		-0.373509, 0.807297, 0.456906,
		34.361122, 33.098591, 33.383106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912331, 32.259697, 32.369946>,  <34.622578, 32.533485, 33.063271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912331, 32.259697, 32.369946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594444, 32.016918, 32.372631>,  <34.403713, 31.871250, 32.374245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594444, 32.016918, 32.372631>,  <34.912331, 32.259697, 32.369946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594444, 32.016918, 32.372631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363827, -0.485182, -0.795128,
		0.485860, -0.629455, 0.606405,
		-0.794714, -0.606947, 0.006717,
		34.356030, 31.834833, 32.374645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207989, 31.616480, 32.348194>,  <34.912331, 32.259697, 32.369946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207989, 31.616480, 32.348194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846348, 31.677851, 32.188667>,  <34.629364, 31.714674, 32.092953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846348, 31.677851, 32.188667>,  <35.207989, 31.616480, 32.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846348, 31.677851, 32.188667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323220, -0.364933, -0.873128,
		-0.279502, -0.918305, 0.280348,
		-0.904106, 0.153427, -0.398814,
		34.575115, 31.723879, 32.069023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912090, 31.021915, 32.082314>,  <35.207989, 31.616480, 32.348194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912090, 31.021915, 32.082314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772144, 31.331877, 31.871746>,  <34.688175, 31.517855, 31.745405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772144, 31.331877, 31.871746>,  <34.912090, 31.021915, 32.082314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772144, 31.331877, 31.871746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312750, -0.433074, -0.845361,
		-0.883051, -0.460402, -0.090832,
		-0.349869, 0.774904, -0.526417,
		34.667183, 31.564348, 31.713821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415359, 30.826387, 31.615866>,  <34.912090, 31.021915, 32.082314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415359, 30.826387, 31.615866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511803, 31.171740, 31.438580>,  <34.569668, 31.378952, 31.332209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511803, 31.171740, 31.438580>,  <34.415359, 30.826387, 31.615866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511803, 31.171740, 31.438580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035918, -0.464314, -0.884942,
		-0.969834, 0.197446, -0.142960,
		0.241106, 0.863382, -0.443215,
		34.584133, 31.430754, 31.305614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987274, 30.892025, 31.059139>,  <34.415359, 30.826387, 31.615866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987274, 30.892025, 31.059139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285221, 31.144665, 30.973118>,  <34.463989, 31.296249, 30.921505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285221, 31.144665, 30.973118>,  <33.987274, 30.892025, 31.059139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285221, 31.144665, 30.973118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104425, -0.207988, -0.972541,
		-0.658986, 0.746875, -0.088970,
		0.744871, 0.631600, -0.215054,
		34.508682, 31.334145, 30.908602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721767, 31.248142, 30.479317>,  <33.987274, 30.892025, 31.059139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721767, 31.248142, 30.479317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118855, 31.295048, 30.468338>,  <34.357109, 31.323191, 30.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118855, 31.295048, 30.468338>,  <33.721767, 31.248142, 30.479317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118855, 31.295048, 30.468338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016535, -0.093021, -0.995527,
		-0.119294, 0.988734, -0.090405,
		0.992721, 0.117266, -0.027446,
		34.416672, 31.330227, 30.460104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824993, 31.795189, 30.050825>,  <33.721767, 31.248142, 30.479317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824993, 31.795189, 30.050825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156357, 31.571602, 30.065205>,  <34.355175, 31.437450, 30.073832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156357, 31.571602, 30.065205>,  <33.824993, 31.795189, 30.050825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156357, 31.571602, 30.065205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008958, -0.050948, -0.998661,
		0.560050, 0.827624, -0.037199,
		0.828411, -0.558967, 0.035947,
		34.404881, 31.403912, 30.075989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269127, 32.115437, 29.525095>,  <33.824993, 31.795189, 30.050825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269127, 32.115437, 29.525095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437588, 31.761885, 29.606466>,  <34.538666, 31.549753, 29.655289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437588, 31.761885, 29.606466>,  <34.269127, 32.115437, 29.525095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437588, 31.761885, 29.606466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221210, -0.117417, -0.968132,
		0.879598, 0.452736, 0.146072,
		0.421157, -0.883880, 0.203430,
		34.563934, 31.496721, 29.667496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974575, 32.235168, 29.355745>,  <34.269127, 32.115437, 29.525095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974575, 32.235168, 29.355745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875866, 31.850590, 29.307222>,  <34.816643, 31.619841, 29.278109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875866, 31.850590, 29.307222>,  <34.974575, 32.235168, 29.355745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875866, 31.850590, 29.307222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226376, 0.064524, -0.971900,
		0.942262, -0.267298, 0.201727,
		-0.246771, -0.961451, -0.121308,
		34.801834, 31.562155, 29.270830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413864, 31.980343, 28.797550>,  <34.974575, 32.235168, 29.355745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413864, 31.980343, 28.797550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115295, 31.714783, 28.815866>,  <34.936153, 31.555447, 28.826857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115295, 31.714783, 28.815866>,  <35.413864, 31.980343, 28.797550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115295, 31.714783, 28.815866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097092, -0.176715, -0.979461,
		0.658356, -0.726643, 0.196362,
		-0.746419, -0.663899, 0.045790,
		34.891369, 31.515614, 28.829603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672840, 31.494907, 28.430862>,  <35.413864, 31.980343, 28.797550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672840, 31.494907, 28.430862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284603, 31.405073, 28.465544>,  <35.051662, 31.351173, 28.486353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284603, 31.405073, 28.465544>,  <35.672840, 31.494907, 28.430862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284603, 31.405073, 28.465544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047949, -0.172591, -0.983826,
		0.235914, -0.959049, 0.156747,
		-0.970590, -0.224583, 0.086702,
		34.993427, 31.337698, 28.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533657, 30.820602, 28.132103>,  <35.672840, 31.494907, 28.430862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533657, 30.820602, 28.132103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190189, 31.025051, 28.116898>,  <34.984108, 31.147720, 28.107775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190189, 31.025051, 28.116898>,  <35.533657, 30.820602, 28.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190189, 31.025051, 28.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019323, -0.106400, -0.994135,
		-0.512168, -0.852897, 0.101239,
		-0.858668, 0.511121, -0.038014,
		34.932590, 31.178387, 28.105494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074593, 30.450029, 27.759386>,  <35.533657, 30.820602, 28.132103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074593, 30.450029, 27.759386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904354, 30.810787, 27.729849>,  <34.802212, 31.027243, 27.712126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904354, 30.810787, 27.729849>,  <35.074593, 30.450029, 27.759386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904354, 30.810787, 27.729849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215799, -0.180405, -0.959627,
		-0.878804, -0.392481, 0.271408,
		-0.425599, 0.901894, -0.073844,
		34.776676, 31.081356, 27.707695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559059, 30.371063, 27.154797>,  <35.074593, 30.450029, 27.759386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559059, 30.371063, 27.154797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614029, 30.760727, 27.226494>,  <34.647011, 30.994526, 27.269512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614029, 30.760727, 27.226494>,  <34.559059, 30.371063, 27.154797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614029, 30.760727, 27.226494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280446, 0.211823, -0.936206,
		-0.949981, 0.078392, 0.302309,
		0.137427, 0.974159, 0.179243,
		34.655258, 31.052975, 27.280268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083290, 30.590630, 26.804081>,  <34.559059, 30.371063, 27.154797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083290, 30.590630, 26.804081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332462, 30.897230, 26.866602>,  <34.481968, 31.081190, 26.904114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332462, 30.897230, 26.866602>,  <34.083290, 30.590630, 26.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332462, 30.897230, 26.866602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073402, 0.256196, -0.963834,
		-0.778824, 0.588930, 0.215856,
		0.622932, 0.766502, 0.156302,
		34.519341, 31.127180, 26.913492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748432, 31.180164, 26.483620>,  <34.083290, 30.590630, 26.804081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748432, 31.180164, 26.483620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131573, 31.286907, 26.526140>,  <34.361458, 31.350952, 26.551653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131573, 31.286907, 26.526140>,  <33.748432, 31.180164, 26.483620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131573, 31.286907, 26.526140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041945, 0.496042, -0.867285,
		-0.284171, 0.826275, 0.486330,
		0.957856, 0.266856, 0.106303,
		34.418930, 31.366964, 26.558031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710899, 31.976656, 26.461578>,  <33.748432, 31.180164, 26.483620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710899, 31.976656, 26.461578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082230, 31.845798, 26.390942>,  <34.305027, 31.767284, 26.348558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082230, 31.845798, 26.390942>,  <33.710899, 31.976656, 26.461578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082230, 31.845798, 26.390942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055093, 0.348710, -0.935610,
		0.367658, 0.878282, 0.305694,
		0.928328, -0.327143, -0.176593,
		34.360729, 31.747656, 26.337963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124035, 32.576942, 26.431011>,  <33.710899, 31.976656, 26.461578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124035, 32.576942, 26.431011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345394, 32.309326, 26.232561>,  <34.478210, 32.148758, 26.113491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345394, 32.309326, 26.232561>,  <34.124035, 32.576942, 26.431011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345394, 32.309326, 26.232561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086741, 0.546115, -0.833207,
		0.828389, 0.504128, 0.244185,
		0.553396, -0.669039, -0.496124,
		34.511414, 32.108616, 26.083723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704216, 32.934906, 26.094919>,  <34.124035, 32.576942, 26.431011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704216, 32.934906, 26.094919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611988, 32.597054, 25.901655>,  <34.556652, 32.394344, 25.785698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611988, 32.597054, 25.901655>,  <34.704216, 32.934906, 26.094919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611988, 32.597054, 25.901655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168184, 0.523656, -0.835163,
		0.958412, -0.111301, -0.262791,
		-0.230567, -0.844628, -0.483159,
		34.542816, 32.343666, 25.756708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049191, 33.032459, 25.545696>,  <34.704216, 32.934906, 26.094919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049191, 33.032459, 25.545696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801243, 32.731888, 25.455254>,  <34.652473, 32.551544, 25.400988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801243, 32.731888, 25.455254>,  <35.049191, 33.032459, 25.545696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801243, 32.731888, 25.455254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169919, 0.409835, -0.896194,
		0.766090, -0.517101, -0.381725,
		-0.619867, -0.751427, -0.226105,
		34.615284, 32.506458, 25.387423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177521, 32.932941, 24.871778>,  <35.049191, 33.032459, 25.545696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177521, 32.932941, 24.871778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830746, 32.741936, 24.928905>,  <34.622681, 32.627335, 24.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830746, 32.741936, 24.928905>,  <35.177521, 32.932941, 24.871778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830746, 32.741936, 24.928905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273392, 0.216013, -0.937334,
		0.416736, -0.851659, -0.317818,
		-0.866942, -0.477509, 0.142816,
		34.570663, 32.598682, 24.971750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135265, 32.417736, 24.330435>,  <35.177521, 32.932941, 24.871778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135265, 32.417736, 24.330435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769794, 32.514957, 24.460739>,  <34.550514, 32.573292, 24.538921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769794, 32.514957, 24.460739>,  <35.135265, 32.417736, 24.330435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769794, 32.514957, 24.460739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249750, 0.296583, -0.921772,
		-0.320659, -0.923559, -0.210277,
		-0.913675, 0.243058, 0.325761,
		34.495693, 32.587875, 24.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654221, 32.008541, 23.981644>,  <35.135265, 32.417736, 24.330435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654221, 32.008541, 23.981644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443707, 32.331669, 24.087812>,  <34.317398, 32.525547, 24.151514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443707, 32.331669, 24.087812>,  <34.654221, 32.008541, 23.981644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443707, 32.331669, 24.087812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174731, 0.202743, -0.963517,
		-0.832160, -0.553464, 0.034450,
		-0.526287, 0.807820, 0.265422,
		34.285820, 32.574017, 24.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065472, 31.895592, 23.470032>,  <34.654221, 32.008541, 23.981644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065472, 31.895592, 23.470032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021816, 32.257645, 23.634386>,  <33.995625, 32.474876, 23.732998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021816, 32.257645, 23.634386>,  <34.065472, 31.895592, 23.470032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021816, 32.257645, 23.634386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363841, 0.348293, -0.863893,
		-0.925045, -0.243779, 0.291312,
		-0.109137, 0.905132, 0.410884,
		33.989075, 32.529182, 23.757650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442947, 32.017975, 23.398415>,  <34.065472, 31.895592, 23.470032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442947, 32.017975, 23.398415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618725, 32.376171, 23.426649>,  <33.724194, 32.591087, 23.443590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618725, 32.376171, 23.426649>,  <33.442947, 32.017975, 23.398415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618725, 32.376171, 23.426649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312382, 0.226025, -0.922675,
		-0.842203, 0.383415, 0.379062,
		0.439445, 0.895492, 0.070587,
		33.750557, 32.644817, 23.447824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992249, 32.522274, 23.235079>,  <33.442947, 32.017975, 23.398415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992249, 32.522274, 23.235079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319061, 32.746742, 23.182098>,  <33.515148, 32.881424, 23.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319061, 32.746742, 23.182098>,  <32.992249, 32.522274, 23.235079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319061, 32.746742, 23.182098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343738, 0.289626, -0.893286,
		-0.462928, 0.775371, 0.429530,
		0.817032, 0.561174, -0.132449,
		33.564171, 32.915092, 23.142365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789043, 33.154175, 22.998363>,  <32.992249, 32.522274, 23.235079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789043, 33.154175, 22.998363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170769, 33.092094, 22.896233>,  <33.399803, 33.054848, 22.834953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170769, 33.092094, 22.896233>,  <32.789043, 33.154175, 22.998363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170769, 33.092094, 22.896233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224302, 0.192440, -0.955330,
		0.197399, 0.968959, 0.148838,
		0.954318, -0.155196, -0.255327,
		33.457066, 33.045536, 22.819635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840534, 33.647659, 22.544956>,  <32.789043, 33.154175, 22.998363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840534, 33.647659, 22.544956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164051, 33.422546, 22.476688>,  <33.358162, 33.287479, 22.435728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164051, 33.422546, 22.476688>,  <32.840534, 33.647659, 22.544956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164051, 33.422546, 22.476688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015546, 0.269646, -0.962834,
		0.587884, 0.781390, 0.209339,
		0.808796, -0.562780, -0.170668,
		33.406689, 33.253712, 22.425488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381443, 34.059971, 22.186176>,  <32.840534, 33.647659, 22.544956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381443, 34.059971, 22.186176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434933, 33.673016, 22.100132>,  <33.467026, 33.440842, 22.048506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434933, 33.673016, 22.100132>,  <33.381443, 34.059971, 22.186176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434933, 33.673016, 22.100132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222246, 0.182258, -0.957804,
		0.965776, 0.175891, -0.190626,
		0.133726, -0.967390, -0.215111,
		33.475052, 33.382797, 22.035599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914062, 34.195290, 21.564589>,  <33.381443, 34.059971, 22.186176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914062, 34.195290, 21.564589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816418, 33.807453, 21.557653>,  <33.757832, 33.574749, 21.553493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816418, 33.807453, 21.557653>,  <33.914062, 34.195290, 21.564589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816418, 33.807453, 21.557653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110887, -0.010148, -0.993781,
		0.963387, -0.244513, 0.109993,
		-0.244109, -0.969593, -0.017337,
		33.743187, 33.516575, 21.552452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351921, 33.910080, 21.167576>,  <33.914062, 34.195290, 21.564589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351921, 33.910080, 21.167576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056580, 33.640354, 21.162951>,  <33.879375, 33.478519, 21.160175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056580, 33.640354, 21.162951>,  <34.351921, 33.910080, 21.167576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056580, 33.640354, 21.162951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025576, -0.010862, -0.999614,
		0.673930, -0.738363, 0.025266,
		-0.738352, -0.674316, -0.011564,
		33.835075, 33.438061, 21.159481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558109, 33.371521, 20.698362>,  <34.351921, 33.910080, 21.167576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558109, 33.371521, 20.698362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159180, 33.345669, 20.712017>,  <33.919823, 33.330158, 20.720209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159180, 33.345669, 20.712017>,  <34.558109, 33.371521, 20.698362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159180, 33.345669, 20.712017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023884, -0.153227, -0.987902,
		0.069076, -0.986075, 0.151273,
		-0.997325, -0.064628, 0.034136,
		33.859982, 33.326283, 20.722258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326557, 32.787205, 20.304134>,  <34.558109, 33.371521, 20.698362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326557, 32.787205, 20.304134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008247, 33.027374, 20.335699>,  <33.817261, 33.171478, 20.354637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008247, 33.027374, 20.335699>,  <34.326557, 32.787205, 20.304134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008247, 33.027374, 20.335699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105063, -0.008552, -0.994429,
		-0.596406, -0.799634, 0.069888,
		-0.795777, 0.600426, 0.078911,
		33.769516, 33.207500, 20.359373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009296, 32.578693, 19.748922>,  <34.326557, 32.787205, 20.304134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009296, 32.578693, 19.748922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827499, 32.927723, 19.820534>,  <33.718422, 33.137142, 19.863501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827499, 32.927723, 19.820534>,  <34.009296, 32.578693, 19.748922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827499, 32.927723, 19.820534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104283, 0.147483, -0.983552,
		-0.884626, -0.465685, 0.023965,
		-0.454491, 0.872574, 0.179030,
		33.691151, 33.189495, 19.874243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366589, 32.570175, 19.396681>,  <34.009296, 32.578693, 19.748922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366589, 32.570175, 19.396681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470913, 32.949112, 19.470997>,  <33.533508, 33.176476, 19.515587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470913, 32.949112, 19.470997>,  <33.366589, 32.570175, 19.396681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470913, 32.949112, 19.470997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173319, 0.235274, -0.956351,
		-0.949705, 0.217223, 0.225554,
		0.260809, 0.947344, 0.185792,
		33.549156, 33.233315, 19.526735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851540, 32.984531, 19.122805>,  <33.366589, 32.570175, 19.396681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851540, 32.984531, 19.122805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150352, 33.249016, 19.150379>,  <33.329639, 33.407707, 19.166924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150352, 33.249016, 19.150379>,  <32.851540, 32.984531, 19.122805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150352, 33.249016, 19.150379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247740, 0.373114, -0.894098,
		-0.616906, 0.650839, 0.442534,
		0.747029, 0.661207, 0.068937,
		33.374462, 33.447376, 19.171061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594620, 33.521858, 18.805727>,  <32.851540, 32.984531, 19.122805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594620, 33.521858, 18.805727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970829, 33.654964, 18.833113>,  <33.196552, 33.734829, 18.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970829, 33.654964, 18.833113>,  <32.594620, 33.521858, 18.805727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970829, 33.654964, 18.833113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117283, 0.507151, -0.853840,
		-0.318854, 0.795023, 0.516014,
		0.940519, 0.332770, 0.068465,
		33.252983, 33.754795, 18.853653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682232, 34.309879, 18.779951>,  <32.594620, 33.521858, 18.805727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682232, 34.309879, 18.779951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021969, 34.158329, 18.632946>,  <33.225811, 34.067398, 18.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021969, 34.158329, 18.632946>,  <32.682232, 34.309879, 18.779951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021969, 34.158329, 18.632946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102607, 0.564468, -0.819053,
		0.517772, 0.733366, 0.440552,
		0.849343, -0.378879, -0.367515,
		33.276772, 34.044666, 18.522692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845039, 34.841156, 18.258547>,  <32.682232, 34.309879, 18.779951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845039, 34.841156, 18.258547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086277, 34.531990, 18.179665>,  <33.231018, 34.346493, 18.132336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086277, 34.531990, 18.179665>,  <32.845039, 34.841156, 18.258547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086277, 34.531990, 18.179665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040959, 0.276904, -0.960024,
		0.796621, 0.570904, 0.198655,
		0.603090, -0.772912, -0.197204,
		33.267204, 34.300117, 18.120504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470776, 35.117825, 18.036785>,  <32.845039, 34.841156, 18.258547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470776, 35.117825, 18.036785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416939, 34.745495, 17.900875>,  <33.384636, 34.522095, 17.819328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416939, 34.745495, 17.900875>,  <33.470776, 35.117825, 18.036785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416939, 34.745495, 17.900875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267526, 0.296028, -0.916950,
		0.954105, -0.214309, 0.209179,
		-0.134588, -0.930827, -0.339775,
		33.376564, 34.466248, 17.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905773, 35.068981, 17.482241>,  <33.470776, 35.117825, 18.036785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905773, 35.068981, 17.482241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634613, 34.786865, 17.399286>,  <33.471916, 34.617596, 17.349514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634613, 34.786865, 17.399286>,  <33.905773, 35.068981, 17.482241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634613, 34.786865, 17.399286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020744, 0.263636, -0.964399,
		0.734860, -0.658070, -0.164089,
		-0.677902, -0.705294, -0.207386,
		33.431244, 34.575275, 17.337070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154263, 34.796429, 16.913666>,  <33.905773, 35.068981, 17.482241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154263, 34.796429, 16.913666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764496, 34.710030, 16.888845>,  <33.530636, 34.658188, 16.873953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764496, 34.710030, 16.888845>,  <34.154263, 34.796429, 16.913666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764496, 34.710030, 16.888845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045582, 0.460321, -0.886582,
		0.220067, -0.861074, -0.458391,
		-0.974419, -0.216002, -0.062052,
		33.472172, 34.645229, 16.870230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065174, 34.419250, 16.327263>,  <34.154263, 34.796429, 16.913666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065174, 34.419250, 16.327263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702835, 34.562279, 16.418112>,  <33.485432, 34.648098, 16.472622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702835, 34.562279, 16.418112>,  <34.065174, 34.419250, 16.327263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702835, 34.562279, 16.418112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056661, 0.429072, -0.901491,
		-0.419801, -0.829481, -0.368413,
		-0.905846, 0.357573, 0.227124,
		33.431080, 34.669552, 16.486250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783409, 34.407467, 15.709726>,  <34.065174, 34.419250, 16.327263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783409, 34.407467, 15.709726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526604, 34.637108, 15.912989>,  <33.372520, 34.774891, 16.034946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526604, 34.637108, 15.912989>,  <33.783409, 34.407467, 15.709726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526604, 34.637108, 15.912989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216234, 0.500296, -0.838419,
		-0.735566, -0.648160, -0.197058,
		-0.642017, 0.574101, 0.508155,
		33.334000, 34.809338, 16.065435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255436, 34.416695, 15.285522>,  <33.783409, 34.407467, 15.709726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255436, 34.416695, 15.285522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193890, 34.731331, 15.524718>,  <33.156963, 34.920113, 15.668237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193890, 34.731331, 15.524718>,  <33.255436, 34.416695, 15.285522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193890, 34.731331, 15.524718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405245, 0.501723, -0.764232,
		-0.901167, -0.359922, 0.241566,
		-0.153865, 0.786594, 0.597993,
		33.147732, 34.967308, 15.704116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625015, 34.658211, 15.252405>,  <33.255436, 34.416695, 15.285522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625015, 34.658211, 15.252405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835312, 34.982098, 15.356671>,  <32.961491, 35.176430, 15.419231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835312, 34.982098, 15.356671>,  <32.625015, 34.658211, 15.252405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835312, 34.982098, 15.356671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490030, 0.538775, -0.685268,
		-0.695315, 0.232542, 0.680045,
		0.525745, 0.809720, 0.260665,
		32.993034, 35.225014, 15.434871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171654, 35.257942, 15.287907>,  <32.625015, 34.658211, 15.252405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171654, 35.257942, 15.287907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532986, 35.414047, 15.216693>,  <32.749783, 35.507710, 15.173965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532986, 35.414047, 15.216693>,  <32.171654, 35.257942, 15.287907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532986, 35.414047, 15.216693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375336, 0.518187, -0.768508,
		-0.207667, 0.761036, 0.614572,
		0.903326, 0.390265, -0.178034,
		32.803982, 35.531128, 15.163282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049671, 35.959572, 15.180250>,  <32.171654, 35.257942, 15.287907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049671, 35.959572, 15.180250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371452, 35.839596, 14.975159>,  <32.564522, 35.767609, 14.852103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371452, 35.839596, 14.975159>,  <32.049671, 35.959572, 15.180250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371452, 35.839596, 14.975159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352284, 0.454084, -0.818354,
		0.478283, 0.838953, 0.259623,
		0.804451, -0.299944, -0.512730,
		32.612789, 35.749611, 14.821340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248924, 36.582436, 14.808589>,  <32.049671, 35.959572, 15.180250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248924, 36.582436, 14.808589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358936, 36.248077, 14.618581>,  <32.424942, 36.047462, 14.504576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358936, 36.248077, 14.618581>,  <32.248924, 36.582436, 14.808589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358936, 36.248077, 14.618581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455391, 0.321876, -0.830069,
		0.846746, 0.444611, -0.292133,
		0.275027, -0.835893, -0.475019,
		32.441444, 35.997311, 14.476075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752808, 36.720680, 14.183353>,  <32.248924, 36.582436, 14.808589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752808, 36.720680, 14.183353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513641, 36.407139, 14.116343>,  <32.370140, 36.219013, 14.076138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513641, 36.407139, 14.116343>,  <32.752808, 36.720680, 14.183353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513641, 36.407139, 14.116343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230286, 0.368172, -0.900787,
		0.767766, -0.500016, -0.400647,
		-0.597916, -0.783858, -0.167524,
		32.334267, 36.171982, 14.066087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763138, 37.530273, 14.340507>,  <32.752808, 36.720680, 14.183353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763138, 37.530273, 14.340507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042759, 37.815819, 14.357114>,  <33.210533, 37.987144, 14.367079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042759, 37.815819, 14.357114>,  <32.763138, 37.530273, 14.340507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042759, 37.815819, 14.357114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141005, -0.194537, 0.970708,
		0.701029, -0.672722, -0.236650,
		0.699053, 0.713863, 0.041519,
		33.252476, 38.029976, 14.369570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287872, 37.383457, 14.804916>,  <32.763138, 37.530273, 14.340507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287872, 37.383457, 14.804916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284882, 37.783432, 14.801720>,  <33.283089, 38.023418, 14.799802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284882, 37.783432, 14.801720>,  <33.287872, 37.383457, 14.804916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284882, 37.783432, 14.801720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186025, 0.009243, 0.982502,
		0.982517, 0.005859, -0.186083,
		-0.007476, 0.999940, -0.007992,
		33.282639, 38.083412, 14.799322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957741, 37.617516, 15.180982>,  <33.287872, 37.383457, 14.804916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957741, 37.617516, 15.180982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637077, 37.856220, 15.194963>,  <33.444679, 37.999443, 15.203353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637077, 37.856220, 15.194963>,  <33.957741, 37.617516, 15.180982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637077, 37.856220, 15.194963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099150, 0.075073, 0.992236,
		0.589506, 0.798898, -0.119352,
		-0.801656, 0.596763, 0.034955,
		33.396580, 38.035248, 15.205450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226757, 38.176517, 15.693735>,  <33.957741, 37.617516, 15.180982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226757, 38.176517, 15.693735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831184, 38.117210, 15.691220>,  <33.593842, 38.081627, 15.689712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831184, 38.117210, 15.691220>,  <34.226757, 38.176517, 15.693735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831184, 38.117210, 15.691220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004024, -0.069140, 0.997599,
		-0.148344, 0.986528, 0.068971,
		-0.988928, -0.148266, -0.006287,
		33.534508, 38.072731, 15.689334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120853, 38.332241, 16.312841>,  <34.226757, 38.176517, 15.693735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120853, 38.332241, 16.312841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771450, 38.162762, 16.216955>,  <33.561810, 38.061073, 16.159424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771450, 38.162762, 16.216955>,  <34.120853, 38.332241, 16.312841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771450, 38.162762, 16.216955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208904, -0.118524, 0.970727,
		-0.439711, 0.898014, 0.015019,
		-0.873507, -0.423701, -0.239715,
		33.509399, 38.035652, 16.145041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403652, 38.709015, 16.444717>,  <34.120853, 38.332241, 16.312841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403652, 38.709015, 16.444717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414154, 38.310539, 16.477991>,  <33.420456, 38.071453, 16.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414154, 38.310539, 16.477991>,  <33.403652, 38.709015, 16.444717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414154, 38.310539, 16.477991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369498, 0.067652, 0.926766,
		-0.928861, -0.055066, -0.366313,
		0.026252, -0.996188, 0.083186,
		33.422031, 38.011684, 16.502947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849403, 38.411972, 16.972174>,  <33.403652, 38.709015, 16.444717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849403, 38.411972, 16.972174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034447, 38.059238, 16.935589>,  <33.145473, 37.847599, 16.913639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034447, 38.059238, 16.935589>,  <32.849403, 38.411972, 16.972174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034447, 38.059238, 16.935589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157197, -0.183114, 0.970442,
		-0.872517, -0.434553, -0.223331,
		0.462604, -0.881834, -0.091460,
		33.173229, 37.794689, 16.908152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418758, 37.797886, 17.202044>,  <32.849403, 38.411972, 16.972174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418758, 37.797886, 17.202044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806171, 37.703449, 17.233543>,  <33.038620, 37.646786, 17.252443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806171, 37.703449, 17.233543>,  <32.418758, 37.797886, 17.202044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806171, 37.703449, 17.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118533, -0.159342, 0.980082,
		-0.218847, -0.958576, -0.182314,
		0.968533, -0.236098, 0.078751,
		33.096733, 37.632622, 17.257170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453255, 37.204327, 17.613321>,  <32.418758, 37.797886, 17.202044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453255, 37.204327, 17.613321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833355, 37.322277, 17.653444>,  <33.061417, 37.393047, 17.677519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833355, 37.322277, 17.653444>,  <32.453255, 37.204327, 17.613321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833355, 37.322277, 17.653444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, -0.347596, 0.937602,
		0.311345, -0.890070, -0.332927,
		0.950255, 0.294878, 0.100310,
		33.118431, 37.410740, 17.683537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694965, 36.671383, 18.021431>,  <32.453255, 37.204327, 17.613321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694965, 36.671383, 18.021431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976727, 36.953621, 18.052307>,  <33.145782, 37.122963, 18.070833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976727, 36.953621, 18.052307>,  <32.694965, 36.671383, 18.021431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976727, 36.953621, 18.052307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112215, -0.218081, 0.969458,
		0.700877, -0.674224, -0.232794,
		0.704400, 0.705594, 0.077189,
		33.188046, 37.165298, 18.075464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259682, 36.348980, 18.303564>,  <32.694965, 36.671383, 18.021431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259682, 36.348980, 18.303564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279850, 36.743137, 18.368629>,  <33.291950, 36.979633, 18.407669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279850, 36.743137, 18.368629>,  <33.259682, 36.348980, 18.303564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279850, 36.743137, 18.368629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042808, -0.164852, 0.985389,
		0.997810, -0.042717, -0.050494,
		0.050417, 0.985393, 0.162662,
		33.294975, 37.038754, 18.417429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946445, 36.469994, 18.587240>,  <33.259682, 36.348980, 18.303564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946445, 36.469994, 18.587240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718864, 36.782372, 18.690327>,  <33.582317, 36.969799, 18.752178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718864, 36.782372, 18.690327>,  <33.946445, 36.469994, 18.587240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718864, 36.782372, 18.690327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138869, -0.217643, 0.966099,
		0.810563, 0.585449, 0.015378,
		-0.568949, 0.780949, 0.257714,
		33.548180, 37.016655, 18.767641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399498, 36.885593, 18.855213>,  <33.946445, 36.469994, 18.587240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399498, 36.885593, 18.855213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031307, 36.966225, 18.989136>,  <33.810394, 37.014603, 19.069489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031307, 36.966225, 18.989136>,  <34.399498, 36.885593, 18.855213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031307, 36.966225, 18.989136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304597, -0.166686, 0.937782,
		0.244842, 0.965185, 0.092031,
		-0.920474, 0.201576, 0.334805,
		33.755165, 37.026699, 19.089577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478592, 37.309307, 19.476074>,  <34.399498, 36.885593, 18.855213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478592, 37.309307, 19.476074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095406, 37.204250, 19.522249>,  <33.865494, 37.141216, 19.549955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095406, 37.204250, 19.522249>,  <34.478592, 37.309307, 19.476074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095406, 37.204250, 19.522249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171069, -0.199918, 0.964763,
		-0.230309, 0.943955, 0.236444,
		-0.957963, -0.262642, 0.115439,
		33.808018, 37.125458, 19.556881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115910, 37.803448, 20.060627>,  <34.478592, 37.309307, 19.476074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115910, 37.803448, 20.060627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938885, 37.451988, 19.988935>,  <33.832668, 37.241112, 19.945921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938885, 37.451988, 19.988935>,  <34.115910, 37.803448, 20.060627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938885, 37.451988, 19.988935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024710, -0.211739, 0.977014,
		-0.896398, 0.427960, 0.115419,
		-0.442561, -0.878645, -0.179227,
		33.806118, 37.188396, 19.935167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791126, 37.701054, 20.722977>,  <34.115910, 37.803448, 20.060627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791126, 37.701054, 20.722977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731384, 37.347324, 20.546041>,  <33.695538, 37.135086, 20.439880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731384, 37.347324, 20.546041>,  <33.791126, 37.701054, 20.722977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731384, 37.347324, 20.546041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139346, -0.424067, 0.894846,
		-0.978916, 0.195287, -0.059890,
		-0.149355, -0.884324, -0.442338,
		33.686577, 37.082027, 20.413340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170902, 37.453487, 21.099270>,  <33.791126, 37.701054, 20.722977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170902, 37.453487, 21.099270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359108, 37.144882, 20.927977>,  <33.472031, 36.959717, 20.825201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359108, 37.144882, 20.927977>,  <33.170902, 37.453487, 21.099270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359108, 37.144882, 20.927977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083866, -0.522212, 0.848682,
		-0.878399, -0.363400, -0.310410,
		0.470511, -0.771515, -0.428233,
		33.500263, 36.913429, 20.799507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731564, 36.962242, 21.292755>,  <33.170902, 37.453487, 21.099270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731564, 36.962242, 21.292755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097187, 36.818485, 21.217571>,  <33.316563, 36.732231, 21.172461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097187, 36.818485, 21.217571>,  <32.731564, 36.962242, 21.292755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097187, 36.818485, 21.217571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008530, -0.446304, 0.894841,
		-0.405481, -0.819545, -0.404884,
		0.914064, -0.359387, -0.187958,
		33.371407, 36.710667, 21.161182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681950, 36.365269, 21.539347>,  <32.731564, 36.962242, 21.292755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681950, 36.365269, 21.539347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064323, 36.481174, 21.520508>,  <33.293747, 36.550720, 21.509205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064323, 36.481174, 21.520508>,  <32.681950, 36.365269, 21.539347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064323, 36.481174, 21.520508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162836, -0.389877, 0.906356,
		0.244271, -0.874088, -0.419883,
		0.955937, 0.289769, -0.047098,
		33.351105, 36.568104, 21.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104210, 35.757793, 21.731213>,  <32.681950, 36.365269, 21.539347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104210, 35.757793, 21.731213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325428, 36.087784, 21.777769>,  <33.458160, 36.285778, 21.805704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325428, 36.087784, 21.777769>,  <33.104210, 35.757793, 21.731213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325428, 36.087784, 21.777769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301173, -0.328214, 0.895305,
		0.776811, -0.460090, -0.429979,
		0.553046, 0.824980, 0.116393,
		33.491341, 36.335278, 21.812687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729034, 35.489479, 21.995113>,  <33.104210, 35.757793, 21.731213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729034, 35.489479, 21.995113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 35.883354, 22.064777>,  <33.724251, 36.119678, 22.106575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726044, 35.883354, 22.064777>,  <33.729034, 35.489479, 21.995113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726044, 35.883354, 22.064777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458791, -0.151372, 0.875555,
		0.888513, 0.086450, -0.450635,
		-0.007478, 0.984689, 0.174158,
		33.723801, 36.178761, 22.117025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234753, 35.524487, 22.492319>,  <33.729034, 35.489479, 21.995113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234753, 35.524487, 22.492319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030170, 35.867611, 22.512632>,  <33.907421, 36.073486, 22.524820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030170, 35.867611, 22.512632>,  <34.234753, 35.524487, 22.492319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030170, 35.867611, 22.512632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171909, 0.044240, 0.984119,
		0.841937, 0.512066, -0.170091,
		-0.511458, 0.857806, 0.050782,
		33.876732, 36.124954, 22.527866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682369, 35.951283, 22.863768>,  <34.234753, 35.524487, 22.492319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682369, 35.951283, 22.863768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327034, 36.130493, 22.904024>,  <34.113834, 36.238018, 22.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327034, 36.130493, 22.904024>,  <34.682369, 35.951283, 22.863768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327034, 36.130493, 22.904024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114879, 0.004641, 0.993369,
		0.444587, 0.894009, -0.055591,
		-0.888338, 0.448025, 0.100640,
		34.060532, 36.264900, 22.934216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757366, 36.435863, 23.355009>,  <34.682369, 35.951283, 22.863768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757366, 36.435863, 23.355009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362980, 36.369797, 23.345282>,  <34.126347, 36.330158, 23.339445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362980, 36.369797, 23.345282>,  <34.757366, 36.435863, 23.355009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362980, 36.369797, 23.345282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008716, -0.094535, 0.995483,
		-0.166719, 0.981725, 0.091768,
		-0.985966, -0.165166, -0.024318,
		34.067188, 36.320248, 23.337986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538467, 36.835571, 23.876509>,  <34.757366, 36.435863, 23.355009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538467, 36.835571, 23.876509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253700, 36.561577, 23.814581>,  <34.082840, 36.397179, 23.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253700, 36.561577, 23.814581>,  <34.538467, 36.835571, 23.876509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253700, 36.561577, 23.814581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070661, -0.149466, 0.986239,
		-0.698702, 0.713058, 0.058005,
		-0.711915, -0.684988, -0.154818,
		34.040127, 36.356079, 23.768135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118053, 36.836800, 24.471487>,  <34.538467, 36.835571, 23.876509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118053, 36.836800, 24.471487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014011, 36.477123, 24.330750>,  <33.951588, 36.261314, 24.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014011, 36.477123, 24.330750>,  <34.118053, 36.836800, 24.471487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014011, 36.477123, 24.330750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064131, -0.347493, 0.935487,
		-0.963449, 0.265886, 0.032717,
		-0.260102, -0.899196, -0.351844,
		33.935982, 36.207363, 24.225197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465000, 36.603081, 24.789469>,  <34.118053, 36.836800, 24.471487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465000, 36.603081, 24.789469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685444, 36.286560, 24.683552>,  <33.817711, 36.096649, 24.620001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685444, 36.286560, 24.683552>,  <33.465000, 36.603081, 24.789469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685444, 36.286560, 24.683552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128592, -0.233003, 0.963937,
		-0.824463, -0.565288, -0.026655,
		0.551112, -0.791302, -0.264794,
		33.850777, 36.049168, 24.604115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205982, 36.078335, 25.171024>,  <33.465000, 36.603081, 24.789469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205982, 36.078335, 25.171024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548203, 35.907578, 25.053865>,  <33.753536, 35.805122, 24.983570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548203, 35.907578, 25.053865>,  <33.205982, 36.078335, 25.171024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548203, 35.907578, 25.053865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086705, -0.439610, 0.893994,
		-0.510402, -0.790255, -0.339096,
		0.855553, -0.426895, -0.292897,
		33.804871, 35.779510, 24.965996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124737, 35.366734, 25.284735>,  <33.205982, 36.078335, 25.171024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124737, 35.366734, 25.284735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506462, 35.485695, 25.296305>,  <33.735497, 35.557072, 25.303246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506462, 35.485695, 25.296305>,  <33.124737, 35.366734, 25.284735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506462, 35.485695, 25.296305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125739, -0.487504, 0.864020,
		0.271061, -0.820909, -0.502627,
		0.954314, 0.297401, 0.028923,
		33.792755, 35.574917, 25.304981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358650, 34.802666, 25.540327>,  <33.124737, 35.366734, 25.284735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358650, 34.802666, 25.540327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 35.044491, 25.580183>,  <33.864441, 35.189587, 25.604097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 35.044491, 25.580183>,  <33.358650, 34.802666, 25.540327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674770, 35.044491, 25.580183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180852, -0.385536, 0.904796,
		0.585421, -0.697040, -0.414026,
		0.790301, 0.604563, 0.099640,
		33.911861, 35.225861, 25.610075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960052, 34.330666, 25.741575>,  <33.358650, 34.802666, 25.540327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960052, 34.330666, 25.741575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076416, 34.700233, 25.840971>,  <34.146233, 34.921974, 25.900608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076416, 34.700233, 25.840971>,  <33.960052, 34.330666, 25.741575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076416, 34.700233, 25.840971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228013, -0.319189, 0.919852,
		0.929183, -0.210935, -0.303520,
		0.290909, 0.923918, 0.248489,
		34.163689, 34.977409, 25.915518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556240, 34.245476, 26.178225>,  <33.960052, 34.330666, 25.741575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556240, 34.245476, 26.178225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413891, 34.608795, 26.266186>,  <34.328484, 34.826786, 26.318962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413891, 34.608795, 26.266186>,  <34.556240, 34.245476, 26.178225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413891, 34.608795, 26.266186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104189, -0.195278, 0.975198,
		0.928709, 0.369955, -0.025140,
		-0.355870, 0.908295, 0.219902,
		34.307129, 34.881283, 26.332157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031345, 34.580368, 26.690063>,  <34.556240, 34.245476, 26.178225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031345, 34.580368, 26.690063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700581, 34.799099, 26.742531>,  <34.502121, 34.930336, 26.774012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700581, 34.799099, 26.742531>,  <35.031345, 34.580368, 26.690063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700581, 34.799099, 26.742531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063357, -0.141172, 0.987956,
		0.558756, 0.825259, 0.082091,
		-0.826908, 0.546826, 0.131167,
		34.452507, 34.963146, 26.781881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170227, 35.172459, 27.215780>,  <35.031345, 34.580368, 26.690063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170227, 35.172459, 27.215780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778488, 35.091640, 27.212910>,  <34.543446, 35.043148, 27.211187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778488, 35.091640, 27.212910>,  <35.170227, 35.172459, 27.215780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778488, 35.091640, 27.212910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021753, -0.140592, 0.989829,
		-0.200998, 0.969233, 0.142084,
		-0.979350, -0.202044, -0.007175,
		34.484684, 35.031029, 27.210758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959812, 35.330132, 27.927990>,  <35.170227, 35.172459, 27.215780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959812, 35.330132, 27.927990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643326, 35.135300, 27.780079>,  <34.453434, 35.018402, 27.691332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643326, 35.135300, 27.780079>,  <34.959812, 35.330132, 27.927990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643326, 35.135300, 27.780079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360198, -0.117475, 0.925450,
		-0.494208, 0.865421, -0.082498,
		-0.791212, -0.487080, -0.369780,
		34.405964, 34.989174, 27.669146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382687, 35.640591, 28.244228>,  <34.959812, 35.330132, 27.927990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382687, 35.640591, 28.244228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260445, 35.286762, 28.103296>,  <34.187099, 35.074463, 28.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260445, 35.286762, 28.103296>,  <34.382687, 35.640591, 28.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260445, 35.286762, 28.103296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450825, -0.191498, 0.871829,
		-0.838666, 0.425276, -0.340264,
		-0.305608, -0.884573, -0.352328,
		34.168762, 35.021389, 27.997599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552910, 35.613098, 28.328779>,  <34.382687, 35.640591, 28.244228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552910, 35.613098, 28.328779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701271, 35.241631, 28.329964>,  <33.790287, 35.018749, 28.330673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701271, 35.241631, 28.329964>,  <33.552910, 35.613098, 28.328779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701271, 35.241631, 28.329964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531883, -0.209816, 0.820413,
		-0.761269, -0.305869, -0.571763,
		0.370904, -0.928666, 0.002960,
		33.812542, 34.963032, 28.330853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975327, 35.137367, 28.746513>,  <33.552910, 35.613098, 28.328779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975327, 35.137367, 28.746513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295166, 34.898930, 28.717375>,  <33.487072, 34.755867, 28.699892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295166, 34.898930, 28.717375>,  <32.975327, 35.137367, 28.746513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295166, 34.898930, 28.717375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263092, -0.456763, 0.849794,
		-0.539833, -0.660331, -0.522057,
		0.799602, -0.596096, -0.072848,
		33.535046, 34.720100, 28.695520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695259, 34.456833, 28.874638>,  <32.975327, 35.137367, 28.746513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695259, 34.456833, 28.874638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079971, 34.404099, 28.970642>,  <33.310799, 34.372459, 29.028244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079971, 34.404099, 28.970642>,  <32.695259, 34.456833, 28.874638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079971, 34.404099, 28.970642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266540, -0.249775, 0.930897,
		-0.062772, -0.959288, -0.275366,
		0.961778, -0.131831, 0.240010,
		33.368504, 34.364548, 29.042645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687160, 33.801056, 29.168322>,  <32.695259, 34.456833, 28.874638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687160, 33.801056, 29.168322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021229, 33.989162, 29.282396>,  <33.221672, 34.102028, 29.350842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021229, 33.989162, 29.282396>,  <32.687160, 33.801056, 29.168322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021229, 33.989162, 29.282396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026731, -0.483216, 0.875093,
		0.549335, -0.738479, -0.390999,
		0.835175, 0.470267, 0.285187,
		33.271782, 34.130241, 29.367952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193619, 33.293076, 29.443314>,  <32.687160, 33.801056, 29.168322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193619, 33.293076, 29.443314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339478, 33.643291, 29.570101>,  <33.426991, 33.853420, 29.646173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339478, 33.643291, 29.570101>,  <33.193619, 33.293076, 29.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339478, 33.643291, 29.570101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296105, -0.431768, 0.851997,
		0.882812, -0.216819, -0.416693,
		0.364644, 0.875537, 0.316969,
		33.448872, 33.905952, 29.665192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923214, 33.144684, 29.741182>,  <33.193619, 33.293076, 29.443314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923214, 33.144684, 29.741182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801815, 33.485699, 29.911394>,  <33.728973, 33.690308, 30.013521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801815, 33.485699, 29.911394>,  <33.923214, 33.144684, 29.741182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801815, 33.485699, 29.911394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351114, -0.315102, 0.881720,
		0.885781, 0.417010, -0.203703,
		-0.303499, 0.852533, 0.425529,
		33.710766, 33.741459, 30.039053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434383, 33.342129, 30.181189>,  <33.923214, 33.144684, 29.741182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434383, 33.342129, 30.181189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141136, 33.574360, 30.322868>,  <33.965187, 33.713699, 30.407877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141136, 33.574360, 30.322868>,  <34.434383, 33.342129, 30.181189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141136, 33.574360, 30.322868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311177, -0.176738, 0.933773,
		0.604732, 0.794788, -0.051094,
		-0.733122, 0.580582, 0.354199,
		33.921200, 33.748535, 30.429129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697720, 33.807941, 30.733826>,  <34.434383, 33.342129, 30.181189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697720, 33.807941, 30.733826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306103, 33.781876, 30.811008>,  <34.071133, 33.766235, 30.857319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306103, 33.781876, 30.811008>,  <34.697720, 33.807941, 30.733826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306103, 33.781876, 30.811008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200564, -0.143813, 0.969067,
		-0.035398, 0.987457, 0.153869,
		-0.979041, -0.065164, 0.192958,
		34.012390, 33.762325, 30.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105232, 34.404133, 30.667974>,  <34.697720, 33.807941, 30.733826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105232, 34.404133, 30.667974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486786, 34.303265, 30.602850>,  <35.715717, 34.242744, 30.563776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486786, 34.303265, 30.602850>,  <35.105232, 34.404133, 30.667974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486786, 34.303265, 30.602850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079637, 0.310352, -0.947280,
		0.289408, 0.916564, 0.275959,
		0.953887, -0.252174, -0.162811,
		35.772953, 34.227612, 30.554007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344234, 34.926300, 30.154493>,  <35.105232, 34.404133, 30.667974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344234, 34.926300, 30.154493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679016, 34.707638, 30.164946>,  <35.879883, 34.576443, 30.171217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679016, 34.707638, 30.164946>,  <35.344234, 34.926300, 30.154493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679016, 34.707638, 30.164946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232504, 0.311942, -0.921213,
		0.495433, 0.777086, 0.388179,
		0.836952, -0.546653, 0.026129,
		35.930103, 34.543640, 30.172785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951439, 35.408798, 30.072044>,  <35.344234, 34.926300, 30.154493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951439, 35.408798, 30.072044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056950, 35.040043, 29.958521>,  <36.120255, 34.818790, 29.890408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056950, 35.040043, 29.958521>,  <35.951439, 35.408798, 30.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056950, 35.040043, 29.958521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296077, 0.357407, -0.885776,
		0.918020, 0.149616, 0.367225,
		0.263775, -0.921887, -0.283808,
		36.136082, 34.763477, 29.873379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615841, 35.508675, 29.739775>,  <35.951439, 35.408798, 30.072044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615841, 35.508675, 29.739775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490799, 35.159550, 29.589855>,  <36.415775, 34.950073, 29.499903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490799, 35.159550, 29.589855>,  <36.615841, 35.508675, 29.739775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490799, 35.159550, 29.589855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189683, 0.329268, -0.924988,
		0.930752, -0.360249, 0.062627,
		-0.312605, -0.872813, -0.374800,
		36.397018, 34.897705, 29.477415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071766, 35.325817, 29.294231>,  <36.615841, 35.508675, 29.739775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071766, 35.325817, 29.294231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768368, 35.097794, 29.167917>,  <36.586327, 34.960979, 29.092129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768368, 35.097794, 29.167917>,  <37.071766, 35.325817, 29.294231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768368, 35.097794, 29.167917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159085, 0.307940, -0.938011,
		0.631960, -0.761715, -0.142884,
		-0.758498, -0.570055, -0.315783,
		36.540817, 34.926777, 29.073183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296513, 34.853180, 28.841293>,  <37.071766, 35.325817, 29.294231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296513, 34.853180, 28.841293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909733, 34.886364, 28.744850>,  <36.677666, 34.906273, 28.686985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909733, 34.886364, 28.744850>,  <37.296513, 34.853180, 28.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909733, 34.886364, 28.744850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254780, 0.351640, -0.900798,
		0.010056, -0.932452, -0.361153,
		-0.966947, 0.082956, -0.241106,
		36.619648, 34.911251, 28.672518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306347, 34.685936, 28.145933>,  <37.296513, 34.853180, 28.841293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306347, 34.685936, 28.145933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941860, 34.843559, 28.193935>,  <36.723167, 34.938133, 28.222736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941860, 34.843559, 28.193935>,  <37.306347, 34.685936, 28.145933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941860, 34.843559, 28.193935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073078, 0.441349, -0.894355,
		-0.405390, -0.806183, -0.430962,
		-0.911218, 0.394056, 0.120005,
		36.668495, 34.961777, 28.229937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956955, 34.581024, 27.526365>,  <37.306347, 34.685936, 28.145933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956955, 34.581024, 27.526365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775143, 34.889908, 27.703945>,  <36.666054, 35.075237, 27.810493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775143, 34.889908, 27.703945>,  <36.956955, 34.581024, 27.526365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775143, 34.889908, 27.703945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002278, 0.499418, -0.866358,
		-0.890727, -0.392778, -0.228761,
		-0.454534, 0.772210, 0.443950,
		36.638783, 35.121571, 27.837130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523663, 34.681770, 27.029291>,  <36.956955, 34.581024, 27.526365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523663, 34.681770, 27.029291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540039, 35.019463, 27.243057>,  <36.549866, 35.222076, 27.371317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540039, 35.019463, 27.243057>,  <36.523663, 34.681770, 27.029291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540039, 35.019463, 27.243057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093271, 0.529297, -0.843294,
		-0.994799, 0.084373, -0.057070,
		0.040944, 0.844231, 0.534414,
		36.552322, 35.272732, 27.403381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237068, 35.194328, 26.502577>,  <36.523663, 34.681770, 27.029291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237068, 35.194328, 26.502577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402634, 35.415531, 26.791813>,  <36.501972, 35.548252, 26.965355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402634, 35.415531, 26.791813>,  <36.237068, 35.194328, 26.502577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402634, 35.415531, 26.791813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141700, 0.745508, -0.651259,
		-0.899220, 0.372028, 0.230216,
		0.413915, 0.553003, 0.723092,
		36.526810, 35.581432, 27.008741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044342, 35.827873, 26.329535>,  <36.237068, 35.194328, 26.502577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044342, 35.827873, 26.329535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358608, 35.886749, 26.569891>,  <36.547169, 35.922073, 26.714104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358608, 35.886749, 26.569891>,  <36.044342, 35.827873, 26.329535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358608, 35.886749, 26.569891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383455, 0.646350, -0.659692,
		-0.485483, 0.748710, 0.451374,
		0.785664, 0.147188, 0.600889,
		36.594307, 35.930904, 26.750158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092056, 36.462490, 26.428242>,  <36.044342, 35.827873, 26.329535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092056, 36.462490, 26.428242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463367, 36.328690, 26.493240>,  <36.686153, 36.248409, 26.532240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463367, 36.328690, 26.493240>,  <36.092056, 36.462490, 26.428242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463367, 36.328690, 26.493240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343170, 0.602145, -0.720872,
		0.143283, 0.724936, 0.673749,
		0.928280, -0.334499, 0.162499,
		36.741852, 36.228340, 26.541990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460262, 37.112320, 26.688963>,  <36.092056, 36.462490, 26.428242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460262, 37.112320, 26.688963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685833, 36.845715, 26.493929>,  <36.821175, 36.685753, 26.376907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685833, 36.845715, 26.493929>,  <36.460262, 37.112320, 26.688963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685833, 36.845715, 26.493929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216646, 0.689149, -0.691476,
		0.796898, 0.284310, 0.533030,
		0.563930, -0.666515, -0.487587,
		36.855011, 36.645760, 26.347652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928883, 37.480721, 26.147093>,  <36.460262, 37.112320, 26.688963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928883, 37.480721, 26.147093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969990, 37.106003, 26.013317>,  <36.994652, 36.881172, 25.933052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969990, 37.106003, 26.013317>,  <36.928883, 37.480721, 26.147093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969990, 37.106003, 26.013317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181004, 0.348219, -0.919773,
		0.978099, 0.033984, 0.205348,
		0.102764, -0.936797, -0.334441,
		37.000820, 36.824963, 25.912985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399593, 37.569275, 25.652922>,  <36.928883, 37.480721, 26.147093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399593, 37.569275, 25.652922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244820, 37.208439, 25.576492>,  <37.151955, 36.991936, 25.530634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244820, 37.208439, 25.576492>,  <37.399593, 37.569275, 25.652922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244820, 37.208439, 25.576492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017019, 0.214166, -0.976649,
		0.921950, -0.374647, -0.098221,
		-0.386934, -0.902094, -0.191074,
		37.128738, 36.937809, 25.519171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699280, 37.334999, 24.963118>,  <37.399593, 37.569275, 25.652922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699280, 37.334999, 24.963118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350109, 37.144127, 25.003700>,  <37.140606, 37.029602, 25.028049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350109, 37.144127, 25.003700>,  <37.699280, 37.334999, 24.963118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350109, 37.144127, 25.003700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121328, 0.010916, -0.992553,
		0.472519, -0.878737, -0.067424,
		-0.872929, -0.477181, 0.101458,
		37.088230, 37.000973, 25.034138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746304, 36.955025, 24.354101>,  <37.699280, 37.334999, 24.963118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746304, 36.955025, 24.354101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359097, 36.909187, 24.443373>,  <37.126774, 36.881683, 24.496935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359097, 36.909187, 24.443373>,  <37.746304, 36.955025, 24.354101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359097, 36.909187, 24.443373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203290, -0.163006, -0.965454,
		0.147014, -0.979948, 0.134497,
		-0.968019, -0.114594, 0.223178,
		37.068691, 36.874809, 24.510326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452759, 36.454014, 23.963301>,  <37.746304, 36.955025, 24.354101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452759, 36.454014, 23.963301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101192, 36.607315, 24.076874>,  <36.890251, 36.699295, 24.145018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101192, 36.607315, 24.076874>,  <37.452759, 36.454014, 23.963301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101192, 36.607315, 24.076874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240041, 0.158995, -0.957654,
		-0.412169, -0.909855, -0.047747,
		-0.878918, 0.383254, 0.283935,
		36.837517, 36.722290, 24.162054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957340, 36.096020, 23.601862>,  <37.452759, 36.454014, 23.963301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957340, 36.096020, 23.601862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813412, 36.456310, 23.699203>,  <36.727055, 36.672485, 23.757608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813412, 36.456310, 23.699203>,  <36.957340, 36.096020, 23.601862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813412, 36.456310, 23.699203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268256, 0.149940, -0.951607,
		-0.893628, -0.407686, 0.187675,
		-0.359817, 0.900728, 0.243355,
		36.705467, 36.726528, 23.772209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329357, 36.064568, 23.242437>,  <36.957340, 36.096020, 23.601862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329357, 36.064568, 23.242437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391388, 36.447372, 23.340475>,  <36.428608, 36.677055, 23.399298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391388, 36.447372, 23.340475>,  <36.329357, 36.064568, 23.242437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391388, 36.447372, 23.340475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316033, 0.283118, -0.905520,
		-0.935988, 0.062969, 0.346354,
		0.155079, 0.957016, 0.245095,
		36.437912, 36.734478, 23.414003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703159, 36.379917, 23.027336>,  <36.329357, 36.064568, 23.242437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703159, 36.379917, 23.027336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988548, 36.659134, 23.051647>,  <36.159782, 36.826664, 23.066235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988548, 36.659134, 23.051647>,  <35.703159, 36.379917, 23.027336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988548, 36.659134, 23.051647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367839, 0.446973, -0.815420,
		-0.596361, 0.559426, 0.575671,
		0.713476, 0.698039, 0.060779,
		36.202591, 36.868546, 23.069881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334713, 37.012741, 22.987097>,  <35.703159, 36.379917, 23.027336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334713, 37.012741, 22.987097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717884, 37.059471, 22.882231>,  <35.947784, 37.087509, 22.819311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717884, 37.059471, 22.882231>,  <35.334713, 37.012741, 22.987097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717884, 37.059471, 22.882231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286491, 0.444495, -0.848733,
		0.017379, 0.888131, 0.459262,
		0.957925, 0.116824, -0.262166,
		36.005260, 37.094517, 22.803581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425320, 37.716457, 22.545378>,  <35.334713, 37.012741, 22.987097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425320, 37.716457, 22.545378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741287, 37.489826, 22.451559>,  <35.930870, 37.353848, 22.395267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741287, 37.489826, 22.451559>,  <35.425320, 37.716457, 22.545378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741287, 37.489826, 22.451559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033984, 0.341451, -0.939285,
		0.612265, 0.749932, 0.250465,
		0.789921, -0.566580, -0.234545,
		35.978264, 37.319851, 22.381195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815552, 38.132156, 22.025517>,  <35.425320, 37.716457, 22.545378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815552, 38.132156, 22.025517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923691, 37.748878, 21.988049>,  <35.988575, 37.518913, 21.965569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923691, 37.748878, 21.988049>,  <35.815552, 38.132156, 22.025517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923691, 37.748878, 21.988049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013827, 0.093419, -0.995531,
		0.962662, 0.270439, 0.012007,
		0.270352, -0.958194, -0.093670,
		36.004795, 37.461422, 21.959948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327431, 38.157627, 21.503353>,  <35.815552, 38.132156, 22.025517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327431, 38.157627, 21.503353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224701, 37.771069, 21.507524>,  <36.163063, 37.539131, 21.510027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224701, 37.771069, 21.507524>,  <36.327431, 38.157627, 21.503353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224701, 37.771069, 21.507524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042737, 0.000575, -0.999086,
		0.965512, -0.257039, -0.041449,
		-0.256828, -0.966401, 0.010430,
		36.147652, 37.481148, 21.510653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706558, 37.928963, 20.930620>,  <36.327431, 38.157627, 21.503353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706558, 37.928963, 20.930620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426388, 37.646355, 20.971100>,  <36.258286, 37.476791, 20.995388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426388, 37.646355, 20.971100>,  <36.706558, 37.928963, 20.930620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426388, 37.646355, 20.971100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058412, -0.084568, -0.994704,
		0.711332, -0.702627, 0.017964,
		-0.700425, -0.706516, 0.101198,
		36.216259, 37.434399, 21.001459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918274, 37.428116, 20.501463>,  <36.706558, 37.928963, 20.930620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918274, 37.428116, 20.501463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535706, 37.340839, 20.579079>,  <36.306164, 37.288475, 20.625648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535706, 37.340839, 20.579079>,  <36.918274, 37.428116, 20.501463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535706, 37.340839, 20.579079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146198, -0.217408, -0.965070,
		0.252754, -0.951382, 0.176035,
		-0.956422, -0.218189, 0.194041,
		36.248779, 37.275383, 20.637291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830742, 36.646862, 20.496275>,  <36.918274, 37.428116, 20.501463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830742, 36.646862, 20.496275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474609, 36.798737, 20.395756>,  <36.260929, 36.889862, 20.335445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474609, 36.798737, 20.395756>,  <36.830742, 36.646862, 20.496275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474609, 36.798737, 20.395756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046881, -0.472538, -0.880062,
		-0.452891, -0.795329, 0.402916,
		-0.890333, 0.379683, -0.251294,
		36.207512, 36.912643, 20.320368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441807, 36.116016, 20.203381>,  <36.830742, 36.646862, 20.496275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441807, 36.116016, 20.203381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265099, 36.449463, 20.070759>,  <36.159073, 36.649529, 19.991186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265099, 36.449463, 20.070759>,  <36.441807, 36.116016, 20.203381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265099, 36.449463, 20.070759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203848, -0.453179, -0.867799,
		-0.873664, -0.315777, 0.370130,
		-0.441766, 0.833614, -0.331555,
		36.132568, 36.699547, 19.971292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856354, 35.874920, 19.920462>,  <36.441807, 36.116016, 20.203381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856354, 35.874920, 19.920462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907043, 36.236473, 19.757034>,  <35.937458, 36.453407, 19.658978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907043, 36.236473, 19.757034>,  <35.856354, 35.874920, 19.920462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907043, 36.236473, 19.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087006, -0.400175, -0.912300,
		-0.988115, 0.151157, 0.027932,
		0.126723, 0.903887, -0.408570,
		35.945061, 36.507641, 19.634462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321053, 35.906002, 19.368441>,  <35.856354, 35.874920, 19.920462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321053, 35.906002, 19.368441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574593, 36.191628, 19.249550>,  <35.726719, 36.363003, 19.178215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574593, 36.191628, 19.249550>,  <35.321053, 35.906002, 19.368441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574593, 36.191628, 19.249550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125449, -0.284288, -0.950496,
		-0.763212, 0.639762, -0.090618,
		0.633853, 0.714063, -0.297229,
		35.764748, 36.405846, 19.160381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011784, 36.243931, 18.821350>,  <35.321053, 35.906002, 19.368441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011784, 36.243931, 18.821350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381233, 36.387074, 18.766426>,  <35.602901, 36.472961, 18.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381233, 36.387074, 18.766426>,  <35.011784, 36.243931, 18.821350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381233, 36.387074, 18.766426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025255, -0.414273, -0.909802,
		-0.382467, 0.836847, -0.391670,
		0.923624, 0.357861, -0.137311,
		35.658321, 36.494431, 18.725233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037918, 36.425610, 18.039265>,  <35.011784, 36.243931, 18.821350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037918, 36.425610, 18.039265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420044, 36.402187, 18.155153>,  <35.649319, 36.388134, 18.224688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420044, 36.402187, 18.155153>,  <35.037918, 36.425610, 18.039265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420044, 36.402187, 18.155153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212149, -0.546691, -0.810013,
		0.205816, 0.835285, -0.509842,
		0.955318, -0.058551, 0.289723,
		35.706638, 36.384621, 18.242071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390285, 36.735714, 17.529861>,  <35.037918, 36.425610, 18.039265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390285, 36.735714, 17.529861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649532, 36.479012, 17.693857>,  <35.805080, 36.324989, 17.792255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649532, 36.479012, 17.693857>,  <35.390285, 36.735714, 17.529861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649532, 36.479012, 17.693857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152978, -0.417680, -0.895623,
		0.746019, 0.643187, -0.172530,
		0.648115, -0.641759, 0.409991,
		35.843967, 36.286484, 17.816854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981972, 36.754749, 17.098978>,  <35.390285, 36.735714, 17.529861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981972, 36.754749, 17.098978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994617, 36.401905, 17.286970>,  <36.002205, 36.190197, 17.399765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994617, 36.401905, 17.286970>,  <35.981972, 36.754749, 17.098978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994617, 36.401905, 17.286970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000577, -0.470232, -0.882543,
		0.999500, 0.027631, -0.015376,
		0.031616, -0.882111, 0.469981,
		36.004101, 36.137272, 17.427965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518688, 36.452461, 16.808022>,  <35.981972, 36.754749, 17.098978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518688, 36.452461, 16.808022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294090, 36.162243, 16.967171>,  <36.159332, 35.988113, 17.062660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294090, 36.162243, 16.967171>,  <36.518688, 36.452461, 16.808022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294090, 36.162243, 16.967171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004458, -0.483472, -0.875348,
		0.827466, -0.489733, 0.274703,
		-0.561498, -0.725546, 0.397873,
		36.125641, 35.944580, 17.086533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835384, 35.704693, 16.526201>,  <36.518688, 36.452461, 16.808022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835384, 35.704693, 16.526201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448975, 35.701885, 16.629538>,  <36.217129, 35.700203, 16.691540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448975, 35.701885, 16.629538>,  <36.835384, 35.704693, 16.526201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448975, 35.701885, 16.629538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244693, -0.296790, -0.923061,
		0.083148, -0.954917, 0.284991,
		-0.966029, -0.007016, 0.258339,
		36.159164, 35.699780, 16.707039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412498, 35.486782, 16.144878>,  <36.835384, 35.704693, 16.526201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412498, 35.486782, 16.144878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649513, 35.178185, 16.052195>,  <37.791721, 34.993027, 15.996584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649513, 35.178185, 16.052195>,  <37.412498, 35.486782, 16.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649513, 35.178185, 16.052195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164677, -0.165556, 0.972354,
		-0.788529, -0.614315, 0.028950,
		0.592539, -0.771497, -0.231710,
		37.827274, 34.946735, 15.982681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220524, 34.896019, 16.506880>,  <37.412498, 35.486782, 16.144878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220524, 34.896019, 16.506880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614384, 34.884975, 16.437948>,  <37.850700, 34.878349, 16.396589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614384, 34.884975, 16.437948>,  <37.220524, 34.896019, 16.506880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614384, 34.884975, 16.437948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165607, -0.163844, 0.972486,
		-0.055082, -0.986100, -0.156758,
		0.984652, -0.027606, -0.172330,
		37.909779, 34.876694, 16.386250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536430, 34.351086, 16.826458>,  <37.220524, 34.896019, 16.506880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536430, 34.351086, 16.826458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838135, 34.607983, 16.771896>,  <38.019157, 34.762123, 16.739159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838135, 34.607983, 16.771896>,  <37.536430, 34.351086, 16.826458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838135, 34.607983, 16.771896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138627, 0.047291, 0.989215,
		0.641769, -0.765039, -0.053363,
		0.754264, 0.642245, -0.136406,
		38.064415, 34.800655, 16.730974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046017, 34.132694, 17.330959>,  <37.536430, 34.351086, 16.826458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046017, 34.132694, 17.330959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155293, 34.499409, 17.214428>,  <38.220856, 34.719437, 17.144510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155293, 34.499409, 17.214428>,  <38.046017, 34.132694, 17.330959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155293, 34.499409, 17.214428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307833, 0.203606, 0.929400,
		0.911377, -0.343579, -0.226595,
		0.273186, 0.916787, -0.291327,
		38.237247, 34.774445, 17.127029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637779, 34.308712, 17.761805>,  <38.046017, 34.132694, 17.330959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637779, 34.308712, 17.761805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558865, 34.670860, 17.611397>,  <38.511517, 34.888149, 17.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558865, 34.670860, 17.611397>,  <38.637779, 34.308712, 17.761805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558865, 34.670860, 17.611397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223944, 0.415034, 0.881814,
		0.954426, 0.089760, -0.284631,
		-0.197283, 0.905367, -0.376018,
		38.499680, 34.942471, 17.498590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210094, 34.624809, 17.886580>,  <38.637779, 34.308712, 17.761805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210094, 34.624809, 17.886580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921638, 34.896946, 17.834295>,  <38.748566, 35.060230, 17.802925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921638, 34.896946, 17.834295>,  <39.210094, 34.624809, 17.886580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921638, 34.896946, 17.834295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168872, 0.355607, 0.919253,
		0.671892, 0.640838, -0.371334,
		-0.721141, 0.680346, -0.130710,
		38.705296, 35.101051, 17.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510132, 35.230282, 18.169262>,  <39.210094, 34.624809, 17.886580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510132, 35.230282, 18.169262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115082, 35.291142, 18.154018>,  <38.878052, 35.327660, 18.144873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115082, 35.291142, 18.154018>,  <39.510132, 35.230282, 18.169262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115082, 35.291142, 18.154018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035544, 0.453726, 0.890432,
		0.152772, 0.878056, -0.453518,
		-0.987622, 0.152153, -0.038107,
		38.818794, 35.336788, 18.142586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429520, 35.967762, 18.241079>,  <39.510132, 35.230282, 18.169262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429520, 35.967762, 18.241079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082397, 35.793293, 18.336304>,  <38.874123, 35.688614, 18.393438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082397, 35.793293, 18.336304>,  <39.429520, 35.967762, 18.241079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082397, 35.793293, 18.336304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114670, 0.290372, 0.950018,
		-0.483494, 0.851728, -0.201971,
		-0.867804, -0.436168, 0.238061,
		38.822056, 35.662441, 18.407722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094349, 36.462727, 18.682392>,  <39.429520, 35.967762, 18.241079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094349, 36.462727, 18.682392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929253, 36.104298, 18.747742>,  <38.830196, 35.889240, 18.786951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929253, 36.104298, 18.747742>,  <39.094349, 36.462727, 18.682392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929253, 36.104298, 18.747742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114671, 0.126820, 0.985275,
		-0.903602, 0.425397, 0.050410,
		-0.412740, -0.896077, 0.163376,
		38.805431, 35.835476, 18.796755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750404, 36.666130, 19.267466>,  <39.094349, 36.462727, 18.682392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750404, 36.666130, 19.267466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752495, 36.266212, 19.259653>,  <38.753750, 36.026260, 19.254965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752495, 36.266212, 19.259653>,  <38.750404, 36.666130, 19.267466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752495, 36.266212, 19.259653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153286, -0.020103, 0.987977,
		-0.988168, -0.002169, -0.153360,
		0.005226, -0.999796, -0.019533,
		38.754063, 35.966274, 19.253794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222782, 36.383560, 19.683788>,  <38.750404, 36.666130, 19.267466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222782, 36.383560, 19.683788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488640, 36.085537, 19.661358>,  <38.648155, 35.906723, 19.647900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488640, 36.085537, 19.661358>,  <38.222782, 36.383560, 19.683788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488640, 36.085537, 19.661358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116340, 0.029063, 0.992784,
		-0.738051, -0.666367, 0.105996,
		0.664639, -0.745057, -0.056075,
		38.688030, 35.862019, 19.644535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022552, 36.023861, 20.197683>,  <38.222782, 36.383560, 19.683788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022552, 36.023861, 20.197683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384392, 35.861599, 20.145315>,  <38.601498, 35.764240, 20.113894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384392, 35.861599, 20.145315>,  <38.022552, 36.023861, 20.197683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384392, 35.861599, 20.145315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095903, -0.105579, 0.989775,
		-0.415332, -0.907907, -0.056604,
		0.904601, -0.405657, -0.130921,
		38.655773, 35.739902, 20.106039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018471, 35.446827, 20.595871>,  <38.022552, 36.023861, 20.197683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018471, 35.446827, 20.595871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405819, 35.539520, 20.558857>,  <38.638226, 35.595135, 20.536648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405819, 35.539520, 20.558857>,  <38.018471, 35.446827, 20.595871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405819, 35.539520, 20.558857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111239, -0.068955, 0.991399,
		0.223359, -0.970333, -0.092552,
		0.968368, 0.231733, -0.092537,
		38.696331, 35.609039, 20.531096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399570, 35.007561, 21.199211>,  <38.018471, 35.446827, 20.595871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399570, 35.007561, 21.199211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638439, 35.300510, 21.068363>,  <38.781761, 35.476280, 20.989855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638439, 35.300510, 21.068363>,  <38.399570, 35.007561, 21.199211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638439, 35.300510, 21.068363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322839, 0.153874, 0.933862,
		0.734275, -0.663284, -0.144550,
		0.597173, 0.732377, -0.327120,
		38.817593, 35.520222, 20.970226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117886, 34.798798, 21.321381>,  <38.399570, 35.007561, 21.199211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117886, 34.798798, 21.321381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078583, 35.196060, 21.296114>,  <39.055000, 35.434418, 21.280954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078583, 35.196060, 21.296114>,  <39.117886, 34.798798, 21.321381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078583, 35.196060, 21.296114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189916, 0.081020, 0.978452,
		0.976871, 0.084142, -0.196576,
		-0.098256, 0.993155, -0.063167,
		39.049107, 35.494007, 21.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610001, 35.102707, 21.870268>,  <39.117886, 34.798798, 21.321381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610001, 35.102707, 21.870268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369118, 35.408665, 21.778797>,  <39.224590, 35.592239, 21.723915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369118, 35.408665, 21.778797>,  <39.610001, 35.102707, 21.870268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369118, 35.408665, 21.778797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181611, 0.410181, 0.893739,
		0.777411, 0.496683, -0.385925,
		-0.602204, 0.764891, -0.228676,
		39.188457, 35.638130, 21.710194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022083, 35.737400, 22.125463>,  <39.610001, 35.102707, 21.870268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022083, 35.737400, 22.125463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633614, 35.831348, 22.109224>,  <39.400532, 35.887718, 22.099482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633614, 35.831348, 22.109224>,  <40.022083, 35.737400, 22.125463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633614, 35.831348, 22.109224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070148, 0.444415, 0.893070,
		0.227802, 0.864482, -0.448082,
		-0.971177, 0.234875, -0.040597,
		39.342262, 35.901810, 22.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023045, 36.348896, 22.551277>,  <40.022083, 35.737400, 22.125463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023045, 36.348896, 22.551277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630093, 36.276928, 22.531040>,  <39.394321, 36.233749, 22.518898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630093, 36.276928, 22.531040>,  <40.023045, 36.348896, 22.551277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630093, 36.276928, 22.531040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088320, 0.208337, 0.974061,
		-0.164709, 0.961367, -0.220556,
		-0.982380, -0.179916, -0.050593,
		39.335377, 36.222954, 22.515862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776184, 36.911789, 22.891787>,  <40.023045, 36.348896, 22.551277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776184, 36.911789, 22.891787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521629, 36.603378, 22.901005>,  <39.368896, 36.418331, 22.906536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521629, 36.603378, 22.901005>,  <39.776184, 36.911789, 22.891787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521629, 36.603378, 22.901005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052316, -0.013332, 0.998542,
		-0.769598, 0.636660, 0.048822,
		-0.636382, -0.771029, 0.023047,
		39.330715, 36.372070, 22.907919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209976, 37.220306, 23.230185>,  <39.776184, 36.911789, 22.891787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209976, 37.220306, 23.230185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208809, 36.822136, 23.268387>,  <39.208107, 36.583233, 23.291309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208809, 36.822136, 23.268387>,  <39.209976, 37.220306, 23.230185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208809, 36.822136, 23.268387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168425, 0.094634, 0.981161,
		-0.985710, -0.013219, -0.167931,
		-0.002922, -0.995424, 0.095508,
		39.207932, 36.523510, 23.297039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897980, 37.142349, 23.810417>,  <39.209976, 37.220306, 23.230185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897980, 37.142349, 23.810417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001842, 36.757286, 23.779804>,  <39.064159, 36.526245, 23.761436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001842, 36.757286, 23.779804>,  <38.897980, 37.142349, 23.810417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001842, 36.757286, 23.779804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169642, -0.123489, 0.977738,
		-0.950683, -0.240896, -0.195373,
		0.259660, -0.962663, -0.076532,
		39.079742, 36.468487, 23.756845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361877, 36.665047, 24.063025>,  <38.897980, 37.142349, 23.810417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361877, 36.665047, 24.063025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707806, 36.465687, 24.087311>,  <38.915363, 36.346073, 24.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707806, 36.465687, 24.087311>,  <38.361877, 36.665047, 24.063025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707806, 36.465687, 24.087311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188342, -0.209932, 0.959404,
		-0.465419, -0.841147, -0.275422,
		0.864820, -0.498398, 0.060717,
		38.967251, 36.316166, 24.105526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178223, 35.994331, 24.439548>,  <38.361877, 36.665047, 24.063025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178223, 35.994331, 24.439548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576996, 36.020626, 24.456539>,  <38.816261, 36.036404, 24.466734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576996, 36.020626, 24.456539>,  <38.178223, 35.994331, 24.439548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576996, 36.020626, 24.456539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034343, -0.120284, 0.992145,
		0.070329, -0.990561, -0.117657,
		0.996933, 0.065736, 0.042478,
		38.876076, 36.040348, 24.469282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496037, 35.287197, 24.700121>,  <38.178223, 35.994331, 24.439548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496037, 35.287197, 24.700121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753090, 35.583649, 24.777836>,  <38.907322, 35.761520, 24.824465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753090, 35.583649, 24.777836>,  <38.496037, 35.287197, 24.700121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753090, 35.583649, 24.777836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015741, -0.266297, 0.963762,
		0.766012, -0.616287, -0.182797,
		0.642633, 0.741131, 0.194286,
		38.945881, 35.805988, 24.836123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010311, 35.000214, 25.088106>,  <38.496037, 35.287197, 24.700121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010311, 35.000214, 25.088106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036690, 35.388599, 25.180090>,  <39.052517, 35.621632, 25.235281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036690, 35.388599, 25.180090>,  <39.010311, 35.000214, 25.088106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036690, 35.388599, 25.180090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031323, -0.232362, 0.972125,
		0.997331, -0.056903, -0.045737,
		0.065944, 0.970963, 0.229960,
		39.056473, 35.679890, 25.249079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470287, 34.967533, 25.669235>,  <39.010311, 35.000214, 25.088106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470287, 34.967533, 25.669235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283436, 35.319328, 25.705633>,  <39.171326, 35.530407, 25.727472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283436, 35.319328, 25.705633>,  <39.470287, 34.967533, 25.669235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283436, 35.319328, 25.705633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072051, -0.140438, 0.987464,
		0.881246, 0.454721, 0.128972,
		-0.467133, 0.879492, 0.090997,
		39.143295, 35.583176, 25.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815559, 35.229580, 26.178341>,  <39.470287, 34.967533, 25.669235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815559, 35.229580, 26.178341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483208, 35.450764, 26.153412>,  <39.283798, 35.583473, 26.138454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483208, 35.450764, 26.153412>,  <39.815559, 35.229580, 26.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483208, 35.450764, 26.153412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014912, 0.089834, 0.995845,
		0.556258, 0.828353, -0.066396,
		-0.830876, 0.552957, -0.062323,
		39.233944, 35.616650, 26.134714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964100, 35.793526, 26.607901>,  <39.815559, 35.229580, 26.178341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964100, 35.793526, 26.607901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569336, 35.733017, 26.585535>,  <39.332478, 35.696712, 26.572115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569336, 35.733017, 26.585535>,  <39.964100, 35.793526, 26.607901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569336, 35.733017, 26.585535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056937, 0.002440, 0.998375,
		-0.150887, 0.988490, -0.011021,
		-0.986910, -0.151269, -0.055913,
		39.273262, 35.687637, 26.568762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673458, 36.194382, 27.070450>,  <39.964100, 35.793526, 26.607901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673458, 36.194382, 27.070450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418289, 35.896824, 26.990776>,  <39.265190, 35.718288, 26.942972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418289, 35.896824, 26.990776>,  <39.673458, 36.194382, 27.070450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418289, 35.896824, 26.990776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208752, -0.081925, 0.974531,
		-0.741269, 0.663253, -0.103029,
		-0.637920, -0.743898, -0.199184,
		39.226913, 35.673656, 26.931021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066761, 36.346870, 27.450382>,  <39.673458, 36.194382, 27.070450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066761, 36.346870, 27.450382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998737, 35.966911, 27.345480>,  <38.957924, 35.738937, 27.282539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998737, 35.966911, 27.345480>,  <39.066761, 36.346870, 27.450382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998737, 35.966911, 27.345480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230766, -0.220343, 0.947732,
		-0.958033, 0.221691, -0.181733,
		-0.170060, -0.949896, -0.262255,
		38.947720, 35.681942, 27.266804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568802, 36.170403, 27.859667>,  <39.066761, 36.346870, 27.450382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568802, 36.170403, 27.859667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738338, 35.820641, 27.765200>,  <38.840061, 35.610783, 27.708519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738338, 35.820641, 27.765200>,  <38.568802, 36.170403, 27.859667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738338, 35.820641, 27.765200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218549, -0.351773, 0.910215,
		-0.878976, -0.334169, -0.340195,
		0.423837, -0.874406, -0.236167,
		38.865490, 35.558319, 27.694349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110184, 35.633698, 28.104795>,  <38.568802, 36.170403, 27.859667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110184, 35.633698, 28.104795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470661, 35.467384, 28.055849>,  <38.686947, 35.367596, 28.026482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470661, 35.467384, 28.055849>,  <38.110184, 35.633698, 28.104795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470661, 35.467384, 28.055849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065034, -0.408862, 0.910276,
		-0.428515, -0.812374, -0.395503,
		0.901191, -0.415788, -0.122371,
		38.741020, 35.342651, 28.019138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982758, 34.946846, 28.540255>,  <38.110184, 35.633698, 28.104795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982758, 34.946846, 28.540255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373390, 34.992493, 28.467310>,  <38.607769, 35.019882, 28.423544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373390, 34.992493, 28.467310>,  <37.982758, 34.946846, 28.540255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373390, 34.992493, 28.467310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214932, -0.481548, 0.849656,
		0.009147, -0.868958, -0.494801,
		0.976586, 0.114121, -0.182362,
		38.666367, 35.026730, 28.412601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276844, 34.420288, 28.804502>,  <37.982758, 34.946846, 28.540255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276844, 34.420288, 28.804502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597153, 34.659664, 28.814585>,  <38.789337, 34.803291, 28.820635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597153, 34.659664, 28.814585>,  <38.276844, 34.420288, 28.804502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597153, 34.659664, 28.814585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247750, -0.369238, 0.895703,
		0.545333, -0.711006, -0.443938,
		0.800769, 0.598442, 0.025206,
		38.837383, 34.839195, 28.822145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901630, 34.004879, 28.952684>,  <38.276844, 34.420288, 28.804502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901630, 34.004879, 28.952684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968155, 34.385654, 29.055563>,  <39.008068, 34.614120, 29.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968155, 34.385654, 29.055563>,  <38.901630, 34.004879, 28.952684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968155, 34.385654, 29.055563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209838, -0.289021, 0.934042,
		0.963488, -0.101370, -0.247820,
		0.166310, 0.951941, 0.257197,
		39.018047, 34.671238, 29.132723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544537, 33.994370, 29.411051>,  <38.901630, 34.004879, 28.952684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544537, 33.994370, 29.411051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356171, 34.342861, 29.466463>,  <39.243153, 34.551956, 29.499710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356171, 34.342861, 29.466463>,  <39.544537, 33.994370, 29.411051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356171, 34.342861, 29.466463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253028, -0.017040, 0.967309,
		0.845112, 0.490573, -0.212422,
		-0.470915, 0.871234, 0.138530,
		39.214897, 34.604233, 29.508022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944107, 34.346054, 29.878656>,  <39.544537, 33.994370, 29.411051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944107, 34.346054, 29.878656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595406, 34.541161, 29.897108>,  <39.386185, 34.658222, 29.908180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595406, 34.541161, 29.897108>,  <39.944107, 34.346054, 29.878656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595406, 34.541161, 29.897108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086292, 0.060175, 0.994451,
		0.482279, 0.870900, -0.094548,
		-0.871757, 0.487762, 0.046130,
		39.333878, 34.687489, 29.910948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063644, 34.834198, 30.351274>,  <39.944107, 34.346054, 29.878656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063644, 34.834198, 30.351274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667381, 34.784546, 30.328705>,  <39.429623, 34.754757, 30.315163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667381, 34.784546, 30.328705>,  <40.063644, 34.834198, 30.351274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667381, 34.784546, 30.328705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051154, -0.045244, 0.997665,
		-0.126390, 0.991234, 0.038472,
		-0.990661, -0.124127, -0.056424,
		39.370182, 34.747307, 30.311777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746651, 35.364323, 30.877373>,  <40.063644, 34.834198, 30.351274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746651, 35.364323, 30.877373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477093, 35.073658, 30.823967>,  <39.315357, 34.899258, 30.791924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477093, 35.073658, 30.823967>,  <39.746651, 35.364323, 30.877373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477093, 35.073658, 30.823967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038552, -0.215049, 0.975842,
		-0.737818, 0.652471, 0.172935,
		-0.673898, -0.726661, -0.133513,
		39.274925, 34.855659, 30.783913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312279, 35.454639, 31.349480>,  <39.746651, 35.364323, 30.877373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312279, 35.454639, 31.349480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216431, 35.074795, 31.268665>,  <39.158924, 34.846886, 31.220177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216431, 35.074795, 31.268665>,  <39.312279, 35.454639, 31.349480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216431, 35.074795, 31.268665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327410, -0.274945, 0.903996,
		-0.913995, 0.150465, 0.376794,
		-0.239618, -0.949613, -0.202034,
		39.144547, 34.789909, 31.208055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109516, 35.268196, 31.958353>,  <39.312279, 35.454639, 31.349480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109516, 35.268196, 31.958353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162922, 34.914402, 31.779533>,  <39.194965, 34.702126, 31.672241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162922, 34.914402, 31.779533>,  <39.109516, 35.268196, 31.958353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162922, 34.914402, 31.779533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343457, -0.381839, 0.858042,
		-0.929630, -0.268100, 0.252804,
		0.133511, -0.884489, -0.447049,
		39.202976, 34.649055, 31.645418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707016, 34.766281, 32.277420>,  <39.109516, 35.268196, 31.958353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707016, 34.766281, 32.277420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013275, 34.573505, 32.106998>,  <39.197029, 34.457840, 32.004745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013275, 34.573505, 32.106998>,  <38.707016, 34.766281, 32.277420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013275, 34.573505, 32.106998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269308, -0.361337, 0.892698,
		-0.584173, -0.798231, -0.146867,
		0.765647, -0.481937, -0.426053,
		39.242970, 34.428925, 31.979183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597355, 34.131508, 32.398708>,  <38.707016, 34.766281, 32.277420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597355, 34.131508, 32.398708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993572, 34.134033, 32.343887>,  <39.231304, 34.135548, 32.310993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993572, 34.134033, 32.343887>,  <38.597355, 34.131508, 32.398708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993572, 34.134033, 32.343887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129717, -0.368441, 0.920557,
		-0.044681, -0.929630, -0.365777,
		0.990544, 0.006316, -0.137051,
		39.290737, 34.135929, 32.302773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951672, 33.410995, 32.656269>,  <38.597355, 34.131508, 32.398708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951672, 33.410995, 32.656269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219204, 33.707973, 32.671471>,  <39.379723, 33.886162, 32.680592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219204, 33.707973, 32.671471>,  <38.951672, 33.410995, 32.656269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219204, 33.707973, 32.671471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216524, -0.243453, 0.945435,
		0.711185, -0.624106, -0.323586,
		0.668830, 0.742443, 0.038007,
		39.419853, 33.930706, 32.682873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578747, 33.068470, 32.921154>,  <38.951672, 33.410995, 32.656269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578747, 33.068470, 32.921154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656425, 33.457233, 32.974358>,  <39.703033, 33.690491, 33.006279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656425, 33.457233, 32.974358>,  <39.578747, 33.068470, 32.921154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656425, 33.457233, 32.974358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361618, -0.196963, 0.911284,
		0.911878, -0.128868, -0.389707,
		0.194194, 0.971905, 0.133005,
		39.714684, 33.748806, 33.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274918, 33.062473, 33.267117>,  <39.578747, 33.068470, 32.921154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274918, 33.062473, 33.267117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125126, 33.426136, 33.340000>,  <40.035252, 33.644333, 33.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125126, 33.426136, 33.340000>,  <40.274918, 33.062473, 33.267117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125126, 33.426136, 33.340000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107503, -0.152613, 0.982421,
		0.920982, 0.387485, -0.040587,
		-0.374479, 0.909156, 0.182210,
		40.012783, 33.698883, 33.394665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662235, 33.245823, 33.815639>,  <40.274918, 33.062473, 33.267117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662235, 33.245823, 33.815639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354496, 33.501213, 33.824173>,  <40.169853, 33.654446, 33.829292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354496, 33.501213, 33.824173>,  <40.662235, 33.245823, 33.815639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354496, 33.501213, 33.824173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043436, 0.018960, 0.998876,
		0.637351, 0.769411, -0.042320,
		-0.769349, 0.638473, 0.021335,
		40.123692, 33.692757, 33.830574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827343, 33.881119, 34.323494>,  <40.662235, 33.245823, 33.815639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827343, 33.881119, 34.323494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431751, 33.845314, 34.276318>,  <40.194397, 33.823830, 34.248013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431751, 33.845314, 34.276318>,  <40.827343, 33.881119, 34.323494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431751, 33.845314, 34.276318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099451, -0.188520, 0.977021,
		-0.109691, 0.977981, 0.177540,
		-0.988978, -0.089514, -0.117940,
		40.135059, 33.818459, 34.240936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514034, 34.288906, 34.914055>,  <40.827343, 33.881119, 34.323494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514034, 34.288906, 34.914055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214691, 34.040653, 34.820435>,  <40.035084, 33.891701, 34.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214691, 34.040653, 34.820435>,  <40.514034, 34.288906, 34.914055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214691, 34.040653, 34.820435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171034, -0.160370, 0.972126,
		-0.640866, 0.767527, 0.013865,
		-0.748357, -0.620631, -0.234049,
		39.990185, 33.854465, 34.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815796, 34.592564, 35.345169>,  <40.514034, 34.288906, 34.914055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815796, 34.592564, 35.345169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798183, 34.205067, 35.247520>,  <39.787617, 33.972569, 35.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798183, 34.205067, 35.247520>,  <39.815796, 34.592564, 35.345169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798183, 34.205067, 35.247520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402221, -0.206492, 0.891952,
		-0.914483, 0.137466, -0.380557,
		-0.044031, -0.968744, -0.244126,
		39.784973, 33.914444, 35.174282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213142, 34.385071, 35.641647>,  <39.815796, 34.592564, 35.345169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213142, 34.385071, 35.641647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437275, 34.058083, 35.588306>,  <39.571754, 33.861889, 35.556301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437275, 34.058083, 35.588306>,  <39.213142, 34.385071, 35.641647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437275, 34.058083, 35.588306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231703, -0.309275, 0.922314,
		-0.795202, -0.485900, -0.362704,
		0.560327, -0.817466, -0.133352,
		39.605373, 33.812843, 35.548302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803116, 33.835224, 35.843571>,  <39.213142, 34.385071, 35.641647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803116, 33.835224, 35.843571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175961, 33.720898, 35.932545>,  <39.399666, 33.652302, 35.985928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175961, 33.720898, 35.932545>,  <38.803116, 33.835224, 35.843571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175961, 33.720898, 35.932545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315110, -0.337248, 0.887113,
		-0.178537, -0.896979, -0.404417,
		0.932110, -0.285819, 0.222436,
		39.455593, 33.635151, 35.999275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758549, 33.613445, 36.550259>,  <38.803116, 33.835224, 35.843571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758549, 33.613445, 36.550259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134922, 33.501133, 36.474556>,  <39.360744, 33.433746, 36.429134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134922, 33.501133, 36.474556>,  <38.758549, 33.613445, 36.550259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134922, 33.501133, 36.474556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143923, -0.174284, 0.974121,
		-0.306496, -0.943816, -0.123578,
		0.940928, -0.280779, -0.189254,
		39.417202, 33.416901, 36.417778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933559, 33.045837, 36.975918>,  <38.758549, 33.613445, 36.550259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933559, 33.045837, 36.975918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270508, 33.231728, 36.866779>,  <39.472675, 33.343262, 36.801296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270508, 33.231728, 36.866779>,  <38.933559, 33.045837, 36.975918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270508, 33.231728, 36.866779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283695, 0.048064, 0.957709,
		0.458185, -0.884150, -0.091353,
		0.842368, 0.464725, -0.272851,
		39.523220, 33.371143, 36.784924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474762, 32.649864, 37.313137>,  <38.933559, 33.045837, 36.975918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474762, 32.649864, 37.313137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570335, 33.028297, 37.225647>,  <39.627678, 33.255356, 37.173153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570335, 33.028297, 37.225647>,  <39.474762, 32.649864, 37.313137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570335, 33.028297, 37.225647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290790, 0.145201, 0.945705,
		0.926473, -0.289566, -0.240417,
		0.238935, 0.946080, -0.218728,
		39.642017, 33.312122, 37.160030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029705, 32.845722, 37.775341>,  <39.474762, 32.649864, 37.313137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029705, 32.845722, 37.775341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907265, 33.210392, 37.665684>,  <39.833801, 33.429192, 37.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907265, 33.210392, 37.665684>,  <40.029705, 32.845722, 37.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907265, 33.210392, 37.665684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261432, 0.357394, 0.896617,
		0.915398, 0.202789, -0.347740,
		-0.306104, 0.911672, -0.274143,
		39.815434, 33.483894, 37.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513248, 33.247944, 38.077209>,  <40.029705, 32.845722, 37.775341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513248, 33.247944, 38.077209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207664, 33.480843, 37.965954>,  <40.024315, 33.620583, 37.899200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207664, 33.480843, 37.965954>,  <40.513248, 33.247944, 38.077209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207664, 33.480843, 37.965954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117794, 0.549639, 0.827056,
		0.634426, 0.599071, -0.488485,
		-0.763955, 0.582247, -0.278138,
		39.978477, 33.655518, 37.882511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805069, 33.938477, 37.988476>,  <40.513248, 33.247944, 38.077209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805069, 33.938477, 37.988476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417774, 33.910027, 38.084358>,  <40.185398, 33.892956, 38.141888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417774, 33.910027, 38.084358>,  <40.805069, 33.938477, 37.988476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417774, 33.910027, 38.084358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199947, 0.355385, 0.913084,
		-0.150135, 0.932010, -0.329874,
		-0.968236, -0.071129, 0.239709,
		40.127304, 33.888687, 38.156269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789829, 34.483479, 38.529221>,  <40.805069, 33.938477, 37.988476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789829, 34.483479, 38.529221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466194, 34.250774, 38.562515>,  <40.272011, 34.111153, 38.582493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466194, 34.250774, 38.562515>,  <40.789829, 34.483479, 38.529221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466194, 34.250774, 38.562515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033395, 0.186921, 0.981807,
		-0.586734, 0.791591, -0.170664,
		-0.809090, -0.581759, 0.083237,
		40.223469, 34.076248, 38.587486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288723, 34.854481, 38.928196>,  <40.789829, 34.483479, 38.529221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288723, 34.854481, 38.928196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231380, 34.459503, 38.954731>,  <40.196976, 34.222515, 38.970650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231380, 34.459503, 38.954731>,  <40.288723, 34.854481, 38.928196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231380, 34.459503, 38.954731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053621, 0.059177, 0.996806,
		-0.988217, 0.146455, 0.044464,
		-0.143356, -0.987446, 0.066333,
		40.188374, 34.163269, 38.974632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693874, 34.618778, 39.367466>,  <40.288723, 34.854481, 38.928196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693874, 34.618778, 39.367466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988609, 34.348408, 39.372997>,  <40.165451, 34.186184, 39.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988609, 34.348408, 39.372997>,  <39.693874, 34.618778, 39.367466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988609, 34.348408, 39.372997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084111, -0.071353, 0.993898,
		-0.670819, -0.733504, -0.109429,
		0.736836, -0.675930, 0.013831,
		40.209660, 34.145630, 39.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443905, 34.156715, 39.895473>,  <39.693874, 34.618778, 39.367466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443905, 34.156715, 39.895473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839756, 34.167255, 39.838997>,  <40.077267, 34.173580, 39.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839756, 34.167255, 39.838997>,  <39.443905, 34.156715, 39.895473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839756, 34.167255, 39.838997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143627, -0.176211, 0.973818,
		0.000782, -0.984000, -0.178169,
		0.989631, 0.026351, -0.141191,
		40.136646, 34.175159, 39.796638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589973, 34.872414, 40.272961>,  <39.443905, 34.156715, 39.895473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589973, 34.872414, 40.272961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816502, 34.644413, 40.511082>,  <39.952419, 34.507614, 40.653954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816502, 34.644413, 40.511082>,  <39.589973, 34.872414, 40.272961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816502, 34.644413, 40.511082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144757, -0.642271, -0.752684,
		0.811375, 0.512432, -0.281218,
		0.566318, -0.570001, 0.595301,
		39.986397, 34.473412, 40.689671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277599, 34.838577, 40.106609>,  <39.589973, 34.872414, 40.272961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277599, 34.838577, 40.106609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149883, 34.498119, 40.273273>,  <40.073254, 34.293846, 40.373272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149883, 34.498119, 40.273273>,  <40.277599, 34.838577, 40.106609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149883, 34.498119, 40.273273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274911, -0.503961, -0.818808,
		0.906906, -0.146889, 0.394897,
		-0.319287, -0.851144, 0.416664,
		40.054096, 34.242775, 40.398273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794601, 34.351215, 39.988380>,  <40.277599, 34.838577, 40.106609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794601, 34.351215, 39.988380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449707, 34.161938, 40.060654>,  <40.242771, 34.048370, 40.104019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449707, 34.161938, 40.060654>,  <40.794601, 34.351215, 39.988380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449707, 34.161938, 40.060654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096399, -0.503507, -0.858597,
		0.497257, -0.722891, 0.479754,
		-0.862231, -0.473191, 0.180686,
		40.191036, 34.019981, 40.114861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874199, 33.724358, 39.755192>,  <40.794601, 34.351215, 39.988380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874199, 33.724358, 39.755192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476917, 33.767788, 39.772003>,  <40.238548, 33.793846, 39.782089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476917, 33.767788, 39.772003>,  <40.874199, 33.724358, 39.755192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476917, 33.767788, 39.772003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073776, -0.307667, -0.948629,
		-0.090062, -0.945279, 0.313585,
		-0.993200, 0.108571, 0.042030,
		40.178959, 33.800358, 39.784611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622406, 33.167847, 39.390919>,  <40.874199, 33.724358, 39.755192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622406, 33.167847, 39.390919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315151, 33.423386, 39.408047>,  <40.130798, 33.576710, 39.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315151, 33.423386, 39.408047>,  <40.622406, 33.167847, 39.390919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315151, 33.423386, 39.408047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144333, -0.107606, -0.983661,
		-0.623806, -0.761767, 0.174864,
		-0.768137, 0.638852, 0.042823,
		40.084709, 33.615040, 39.420895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833652, 32.929642, 39.158279>,  <40.622406, 33.167847, 39.390919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833652, 32.929642, 39.158279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939220, 33.306385, 39.075089>,  <40.002560, 33.532429, 39.025173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939220, 33.306385, 39.075089>,  <39.833652, 32.929642, 39.158279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939220, 33.306385, 39.075089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294550, -0.126627, -0.947210,
		-0.918471, 0.311244, 0.244004,
		0.263916, 0.941856, -0.207981,
		40.018394, 33.588943, 39.012695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260754, 33.271706, 38.717438>,  <39.833652, 32.929642, 39.158279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260754, 33.271706, 38.717438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535938, 33.557663, 38.667416>,  <39.701050, 33.729237, 38.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535938, 33.557663, 38.667416>,  <39.260754, 33.271706, 38.717438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535938, 33.557663, 38.667416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267946, 0.090049, -0.959216,
		-0.674477, 0.693409, 0.253503,
		0.687957, 0.714895, -0.125060,
		39.742325, 33.772133, 38.629898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874920, 33.741787, 38.250687>,  <39.260754, 33.271706, 38.717438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874920, 33.741787, 38.250687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260223, 33.848869, 38.242107>,  <39.491405, 33.913120, 38.236961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260223, 33.848869, 38.242107>,  <38.874920, 33.741787, 38.250687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260223, 33.848869, 38.242107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042517, 0.073166, -0.996413,
		-0.265178, 0.960718, 0.081860,
		0.963262, 0.267707, -0.021445,
		39.549202, 33.929180, 38.235676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883327, 34.302208, 37.808937>,  <38.874920, 33.741787, 38.250687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883327, 34.302208, 37.808937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235729, 34.114513, 37.833088>,  <39.447170, 34.001896, 37.847580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235729, 34.114513, 37.833088>,  <38.883327, 34.302208, 37.808937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235729, 34.114513, 37.833088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043920, -0.208190, -0.977102,
		0.471058, 0.858183, -0.204025,
		0.881008, -0.469232, 0.060378,
		39.500031, 33.973743, 37.851200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221085, 34.592373, 37.359322>,  <38.883327, 34.302208, 37.808937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221085, 34.592373, 37.359322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431107, 34.256657, 37.415756>,  <39.557121, 34.055225, 37.449619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431107, 34.256657, 37.415756>,  <39.221085, 34.592373, 37.359322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431107, 34.256657, 37.415756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119642, -0.091344, -0.988606,
		0.842615, 0.535955, 0.052453,
		0.525057, -0.839290, 0.141090,
		39.588623, 34.004871, 37.458084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748146, 34.604286, 36.860752>,  <39.221085, 34.592373, 37.359322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748146, 34.604286, 36.860752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745106, 34.216846, 36.960159>,  <39.743282, 33.984383, 37.019806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745106, 34.216846, 36.960159>,  <39.748146, 34.604286, 36.860752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745106, 34.216846, 36.960159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172234, -0.246082, -0.953823,
		0.985027, 0.035552, 0.168696,
		-0.007603, -0.968597, 0.248521,
		39.742825, 33.926266, 37.034714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390400, 34.238068, 36.591568>,  <39.748146, 34.604286, 36.860752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390400, 34.238068, 36.591568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097210, 33.971493, 36.646137>,  <39.921295, 33.811546, 36.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097210, 33.971493, 36.646137>,  <40.390400, 34.238068, 36.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097210, 33.971493, 36.646137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196254, -0.399184, -0.895620,
		0.651335, -0.629691, 0.423382,
		-0.732972, -0.666439, 0.136423,
		39.877319, 33.771561, 36.687065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644642, 33.559582, 36.235424>,  <40.390400, 34.238068, 36.591568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644642, 33.559582, 36.235424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245411, 33.566593, 36.259186>,  <40.005871, 33.570801, 36.273441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245411, 33.566593, 36.259186>,  <40.644642, 33.559582, 36.235424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245411, 33.566593, 36.259186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061864, -0.328555, -0.942456,
		0.002996, -0.944322, 0.329009,
		-0.998080, 0.017530, 0.059404,
		39.945988, 33.571854, 36.277008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392628, 32.853695, 36.091858>,  <40.644642, 33.559582, 36.235424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392628, 32.853695, 36.091858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104324, 33.119698, 36.013611>,  <39.931343, 33.279301, 35.966663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104324, 33.119698, 36.013611>,  <40.392628, 32.853695, 36.091858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104324, 33.119698, 36.013611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036931, -0.244961, -0.968829,
		-0.692198, -0.705520, 0.151999,
		-0.720762, 0.665008, -0.195617,
		39.888096, 33.319199, 35.954926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962456, 32.545498, 35.574757>,  <40.392628, 32.853695, 36.091858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962456, 32.545498, 35.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870426, 32.932724, 35.534920>,  <39.815208, 33.165058, 35.511017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870426, 32.932724, 35.534920>,  <39.962456, 32.545498, 35.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870426, 32.932724, 35.534920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134716, -0.133039, -0.981912,
		-0.963803, -0.212497, 0.161023,
		-0.230076, 0.968063, -0.099597,
		39.801403, 33.223145, 35.505039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563313, 32.582729, 34.977562>,  <39.962456, 32.545498, 35.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563313, 32.582729, 34.977562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622589, 32.975616, 35.023666>,  <39.658154, 33.211349, 35.051331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622589, 32.975616, 35.023666>,  <39.563313, 32.582729, 34.977562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622589, 32.975616, 35.023666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094524, 0.130085, -0.986987,
		-0.984432, 0.135364, 0.112121,
		0.148188, 0.982219, 0.115265,
		39.667046, 33.270283, 35.058247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063847, 33.038994, 34.600739>,  <39.563313, 32.582729, 34.977562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063847, 33.038994, 34.600739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399651, 33.256329, 34.599476>,  <39.601131, 33.386730, 34.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399651, 33.256329, 34.599476>,  <39.063847, 33.038994, 34.600739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399651, 33.256329, 34.599476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131278, 0.197184, -0.971537,
		-0.527252, 0.816027, 0.236865,
		0.839507, 0.543340, -0.003161,
		39.651505, 33.419331, 34.598526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386951, 33.365952, 34.654072>,  <39.063847, 33.038994, 34.600739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386951, 33.365952, 34.654072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202152, 33.019653, 34.731052>,  <38.091274, 32.811874, 34.777241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202152, 33.019653, 34.731052>,  <38.386951, 33.365952, 34.654072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202152, 33.019653, 34.731052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667051, 0.482208, 0.567906,
		-0.584466, 0.133996, -0.800278,
		-0.461998, -0.865748, 0.192452,
		38.063553, 32.759930, 34.788788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876369, 33.673527, 34.184990>,  <38.386951, 33.365952, 34.654072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876369, 33.673527, 34.184990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273243, 33.722759, 34.193184>,  <39.511368, 33.752296, 34.198101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273243, 33.722759, 34.193184>,  <38.876369, 33.673527, 34.184990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273243, 33.722759, 34.193184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044041, 0.499053, -0.865452,
		-0.116739, 0.857787, 0.500574,
		0.992186, 0.123077, 0.020481,
		39.570900, 33.759682, 34.199329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993538, 34.293468, 33.756550>,  <38.876369, 33.673527, 34.184990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993538, 34.293468, 33.756550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365047, 34.157787, 33.816303>,  <39.587955, 34.076378, 33.852154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365047, 34.157787, 33.816303>,  <38.993538, 34.293468, 33.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365047, 34.157787, 33.816303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240931, 0.246275, -0.938776,
		0.281650, 0.907903, 0.310460,
		0.928776, -0.339206, 0.149379,
		39.643681, 34.056026, 33.861118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459198, 34.803211, 33.586250>,  <38.993538, 34.293468, 33.756550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459198, 34.803211, 33.586250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663891, 34.463943, 33.531494>,  <39.786705, 34.260384, 33.498638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663891, 34.463943, 33.531494>,  <39.459198, 34.803211, 33.586250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663891, 34.463943, 33.531494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219243, 0.282978, -0.933732,
		0.830703, 0.447804, 0.330763,
		0.511728, -0.848172, -0.136893,
		39.817410, 34.209492, 33.490425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939983, 34.972393, 33.101044>,  <39.459198, 34.803211, 33.586250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939983, 34.972393, 33.101044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883743, 34.577427, 33.072086>,  <39.849998, 34.340446, 33.054714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883743, 34.577427, 33.072086>,  <39.939983, 34.972393, 33.101044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883743, 34.577427, 33.072086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224840, 0.039362, -0.973600,
		0.964199, -0.153163, 0.216477,
		-0.140599, -0.987417, -0.072390,
		39.841564, 34.281200, 33.050369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476357, 34.680721, 32.707600>,  <39.939983, 34.972393, 33.101044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476357, 34.680721, 32.707600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154736, 34.443844, 32.686382>,  <39.961765, 34.301720, 32.673653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154736, 34.443844, 32.686382>,  <40.476357, 34.680721, 32.707600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154736, 34.443844, 32.686382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137837, -0.098879, -0.985507,
		0.578365, -0.799707, 0.161129,
		-0.804049, -0.592192, -0.053041,
		39.913521, 34.266186, 32.670471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550732, 34.179363, 32.087448>,  <40.476357, 34.680721, 32.707600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550732, 34.179363, 32.087448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154545, 34.177170, 32.142506>,  <39.916832, 34.175854, 32.175541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154545, 34.177170, 32.142506>,  <40.550732, 34.179363, 32.087448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154545, 34.177170, 32.142506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136410, 0.178071, -0.974517,
		-0.019171, -0.984002, -0.177121,
		-0.990467, -0.005479, 0.137642,
		39.857407, 34.175526, 32.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190308, 33.690144, 31.502378>,  <40.550732, 34.179363, 32.087448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190308, 33.690144, 31.502378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936466, 33.951481, 31.667507>,  <39.784161, 34.108284, 31.766584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936466, 33.951481, 31.667507>,  <40.190308, 33.690144, 31.502378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936466, 33.951481, 31.667507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330734, 0.253195, -0.909125,
		-0.698496, -0.713466, 0.055406,
		-0.634601, 0.653345, 0.412823,
		39.746086, 34.147484, 31.791353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607559, 33.662971, 30.774094>,  <40.190308, 33.690144, 31.502378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607559, 33.662971, 30.774094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907246, 33.902821, 30.661572>,  <41.087055, 34.046730, 30.594059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907246, 33.902821, 30.661572>,  <40.607559, 33.662971, 30.774094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907246, 33.902821, 30.661572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515729, -0.794639, -0.320268,
		-0.415576, 0.094872, -0.904597,
		0.749213, 0.599623, -0.281305,
		41.132011, 34.082706, 30.577181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896076, 33.503300, 30.087782>,  <40.607559, 33.662971, 30.774094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896076, 33.503300, 30.087782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178303, 33.666687, 30.319414>,  <41.347637, 33.764721, 30.458393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178303, 33.666687, 30.319414>,  <40.896076, 33.503300, 30.087782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178303, 33.666687, 30.319414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645614, -0.707429, -0.287623,
		0.292172, 0.576797, -0.762851,
		0.705563, 0.408472, 0.579079,
		41.389973, 33.789230, 30.493137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557674, 33.505394, 29.826078>,  <40.896076, 33.503300, 30.087782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557674, 33.505394, 29.826078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593655, 33.477932, 30.223509>,  <41.615242, 33.461456, 30.461967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593655, 33.477932, 30.223509>,  <41.557674, 33.505394, 29.826078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593655, 33.477932, 30.223509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513407, -0.851657, -0.105326,
		0.853418, 0.519583, -0.041359,
		0.089949, -0.068653, 0.993577,
		41.620640, 33.457336, 30.521582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316929, 33.365543, 29.977571>,  <41.557674, 33.505394, 29.826078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316929, 33.365543, 29.977571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076977, 33.241501, 30.272591>,  <41.933006, 33.167076, 30.449602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076977, 33.241501, 30.272591>,  <42.316929, 33.365543, 29.977571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076977, 33.241501, 30.272591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462136, -0.886804, 0.003013,
		0.653126, 0.342655, 0.675288,
		-0.599881, -0.310107, 0.737548,
		41.897011, 33.148468, 30.493855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652493, 33.128876, 30.509251>,  <42.316929, 33.365543, 29.977571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652493, 33.128876, 30.509251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292786, 32.955853, 30.483261>,  <42.076962, 32.852039, 30.467667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292786, 32.955853, 30.483261>,  <42.652493, 33.128876, 30.509251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292786, 32.955853, 30.483261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437371, -0.887323, -0.146168,
		0.005572, -0.159861, 0.987124,
		-0.899264, -0.432554, -0.064974,
		42.023006, 32.826088, 30.463768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870411, 32.523975, 30.155161>,  <42.652493, 33.128876, 30.509251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870411, 32.523975, 30.155161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079639, 32.856056, 30.232267>,  <43.205177, 33.055305, 30.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079639, 32.856056, 30.232267>,  <42.870411, 32.523975, 30.155161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079639, 32.856056, 30.232267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003389, -0.224146, 0.974550,
		0.852283, -0.510411, -0.114431,
		0.523070, 0.830205, 0.192765,
		43.236561, 33.105118, 30.290096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487354, 32.433994, 30.551399>,  <42.870411, 32.523975, 30.155161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487354, 32.433994, 30.551399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332455, 32.792076, 30.639631>,  <43.239517, 33.006924, 30.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332455, 32.792076, 30.639631>,  <43.487354, 32.433994, 30.551399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332455, 32.792076, 30.639631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220716, -0.142276, 0.964905,
		0.895168, 0.422339, -0.142490,
		-0.387244, 0.895202, 0.220578,
		43.216282, 33.060638, 30.705805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032299, 32.797455, 30.850534>,  <43.487354, 32.433994, 30.551399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032299, 32.797455, 30.850534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688942, 32.946655, 30.991405>,  <43.482925, 33.036175, 31.075928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688942, 32.946655, 30.991405>,  <44.032299, 32.797455, 30.850534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688942, 32.946655, 30.991405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317229, -0.153545, 0.935836,
		0.403141, 0.915039, 0.013476,
		-0.858396, 0.372999, 0.352177,
		43.431423, 33.058556, 31.097059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159275, 33.368084, 31.321974>,  <44.032299, 32.797455, 30.850534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159275, 33.368084, 31.321974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830082, 33.160126, 31.413540>,  <43.632565, 33.035351, 31.468479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830082, 33.160126, 31.413540>,  <44.159275, 33.368084, 31.321974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830082, 33.160126, 31.413540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428988, -0.304639, 0.850391,
		-0.372381, 0.798060, 0.473744,
		-0.822983, -0.519900, 0.228917,
		43.583187, 33.004154, 31.482214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945324, 33.367668, 31.476812>,  <44.159275, 33.368084, 31.321974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945324, 33.367668, 31.476812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239994, 33.565308, 31.661499>,  <45.416794, 33.683891, 31.772310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239994, 33.565308, 31.661499>,  <44.945324, 33.367668, 31.476812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239994, 33.565308, 31.661499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539847, 0.018474, 0.841560,
		0.407286, -0.869208, 0.280348,
		0.736670, 0.494101, 0.461716,
		45.460995, 33.713539, 31.800014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293259, 32.991001, 32.075283>,  <44.945324, 33.367668, 31.476812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293259, 32.991001, 32.075283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292194, 33.386131, 32.137497>,  <45.291557, 33.623211, 32.174824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292194, 33.386131, 32.137497>,  <45.293259, 32.991001, 32.075283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292194, 33.386131, 32.137497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616302, -0.124104, 0.777669,
		0.787505, -0.093786, 0.609130,
		-0.002661, 0.987827, 0.155533,
		45.291397, 33.682480, 32.184158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659336, 33.177532, 32.715519>,  <45.293259, 32.991001, 32.075283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659336, 33.177532, 32.715519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363380, 33.413700, 32.586544>,  <45.185806, 33.555401, 32.509159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363380, 33.413700, 32.586544>,  <45.659336, 33.177532, 32.715519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363380, 33.413700, 32.586544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508864, -0.177684, 0.842310,
		0.440025, 0.787294, 0.431911,
		-0.739889, 0.590421, -0.322440,
		45.141415, 33.590828, 32.489811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564445, 33.783123, 33.161549>,  <45.659336, 33.177532, 32.715519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564445, 33.783123, 33.161549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223217, 33.665867, 32.988884>,  <45.018478, 33.595512, 32.885284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223217, 33.665867, 32.988884>,  <45.564445, 33.783123, 33.161549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223217, 33.665867, 32.988884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483679, 0.133913, 0.864940,
		-0.195746, 0.946644, -0.256024,
		-0.853076, -0.293142, -0.431659,
		44.967293, 33.577923, 32.859386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072483, 34.146530, 33.472485>,  <45.564445, 33.783123, 33.161549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072483, 34.146530, 33.472485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837879, 33.897671, 33.265049>,  <44.697117, 33.748356, 33.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837879, 33.897671, 33.265049>,  <45.072483, 34.146530, 33.472485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837879, 33.897671, 33.265049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751442, 0.179073, 0.635034,
		-0.302220, 0.762145, -0.572537,
		-0.586514, -0.622148, -0.518588,
		44.661926, 33.711025, 33.109474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692963, 34.533031, 34.077465>,  <45.072483, 34.146530, 33.472485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692963, 34.533031, 34.077465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705330, 34.136028, 34.030182>,  <44.712749, 33.897827, 34.001812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705330, 34.136028, 34.030182>,  <44.692963, 34.533031, 34.077465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705330, 34.136028, 34.030182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045848, 0.116733, -0.992105,
		0.998470, 0.036098, -0.041894,
		0.030923, -0.992507, -0.118210,
		44.714607, 33.838276, 33.994720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803722, 34.935215, 34.713955>,  <44.692963, 34.533031, 34.077465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803722, 34.935215, 34.713955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007290, 34.794353, 35.028149>,  <45.129429, 34.709835, 35.216667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007290, 34.794353, 35.028149>,  <44.803722, 34.935215, 34.713955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007290, 34.794353, 35.028149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776462, 0.581736, -0.242259,
		-0.371634, 0.733191, 0.569490,
		0.508915, -0.352156, 0.785488,
		45.159966, 34.688705, 35.263794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218094, 35.452389, 34.852905>,  <44.803722, 34.935215, 34.713955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218094, 35.452389, 34.852905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389759, 35.108803, 34.964615>,  <45.492760, 34.902649, 35.031639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389759, 35.108803, 34.964615>,  <45.218094, 35.452389, 34.852905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389759, 35.108803, 34.964615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874069, 0.317033, -0.368094,
		0.227644, 0.402073, 0.886857,
		0.429164, -0.858969, 0.279269,
		45.518509, 34.851112, 35.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651718, 35.685223, 35.371754>,  <45.218094, 35.452389, 34.852905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651718, 35.685223, 35.371754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790253, 35.388016, 35.142677>,  <45.873375, 35.209690, 35.005234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790253, 35.388016, 35.142677>,  <45.651718, 35.685223, 35.371754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790253, 35.388016, 35.142677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574323, 0.650634, -0.496819,
		0.741755, -0.156839, 0.652074,
		0.346341, -0.743019, -0.572688,
		45.894154, 35.165112, 34.970871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359501, 35.686707, 35.439617>,  <45.651718, 35.685223, 35.371754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359501, 35.686707, 35.439617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230011, 35.561687, 35.082401>,  <46.152317, 35.486675, 34.868073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230011, 35.561687, 35.082401>,  <46.359501, 35.686707, 35.439617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230011, 35.561687, 35.082401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534073, 0.718751, -0.445154,
		0.781003, -0.621055, -0.065756,
		-0.323727, -0.312548, -0.893036,
		46.132893, 35.467922, 34.814491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867645, 35.538097, 34.935921>,  <46.359501, 35.686707, 35.439617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867645, 35.538097, 34.935921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551098, 35.668236, 34.728889>,  <46.361172, 35.746319, 34.604671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.551098, 35.668236, 34.728889>,  <46.867645, 35.538097, 34.935921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.551098, 35.668236, 34.728889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587705, 0.638017, -0.497531,
		0.168355, -0.697914, -0.696113,
		-0.791365, 0.325348, -0.517581,
		46.313690, 35.765839, 34.573616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.529629, 35.092613, 34.864876>,  <46.867645, 35.538097, 34.935921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.529629, 35.092613, 34.864876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917019, 35.185753, 34.900280>,  <48.149452, 35.241638, 34.921520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.917019, 35.185753, 34.900280>,  <47.529629, 35.092613, 34.864876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.917019, 35.185753, 34.900280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239702, -0.774429, -0.585494,
		-0.067789, 0.588253, -0.805831,
		0.968477, 0.232849, 0.088507,
		48.207561, 35.255608, 34.926834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.012993, 31.511297, 22.141466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633270, 31.455883, 22.254335>,  <37.405437, 31.422634, 22.322058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633270, 31.455883, 22.254335>,  <38.012993, 31.511297, 22.141466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633270, 31.455883, 22.254335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305184, -0.191016, 0.932939,
		-0.075344, 0.971762, 0.223611,
		-0.949308, -0.138533, 0.282174,
		37.348476, 31.414324, 22.338987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859268, 31.907131, 22.843349>,  <38.012993, 31.511297, 22.141466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859268, 31.907131, 22.843349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540249, 31.668293, 22.808945>,  <37.348839, 31.524990, 22.788301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540249, 31.668293, 22.808945>,  <37.859268, 31.907131, 22.843349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540249, 31.668293, 22.808945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011776, -0.127145, 0.991814,
		-0.603143, 0.792030, 0.094373,
		-0.797546, -0.597094, -0.086014,
		37.300983, 31.489164, 22.783140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463402, 32.032211, 23.419104>,  <37.859268, 31.907131, 22.843349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463402, 32.032211, 23.419104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314117, 31.677383, 23.310419>,  <37.224548, 31.464487, 23.245209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314117, 31.677383, 23.310419>,  <37.463402, 32.032211, 23.419104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314117, 31.677383, 23.310419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121417, -0.243654, 0.962232,
		-0.919767, 0.392106, -0.016771,
		-0.373211, -0.887066, -0.271713,
		37.202152, 31.411264, 23.228905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781425, 31.966690, 23.553259>,  <37.463402, 32.032211, 23.419104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781425, 31.966690, 23.553259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886845, 31.581446, 23.531515>,  <36.950096, 31.350298, 23.518469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886845, 31.581446, 23.531515>,  <36.781425, 31.966690, 23.553259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886845, 31.581446, 23.531515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213840, -0.113278, 0.970279,
		-0.940646, -0.244093, -0.235807,
		0.263550, -0.963113, -0.054358,
		36.965908, 31.292511, 23.515207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191994, 31.550829, 23.902731>,  <36.781425, 31.966690, 23.553259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191994, 31.550829, 23.902731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536804, 31.348228, 23.910435>,  <36.743690, 31.226669, 23.915056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536804, 31.348228, 23.910435>,  <36.191994, 31.550829, 23.902731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536804, 31.348228, 23.910435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128923, -0.182353, 0.974744,
		-0.490197, -0.842736, -0.222492,
		0.862024, -0.506501, 0.019259,
		36.795410, 31.196278, 23.916212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011124, 30.869862, 24.178347>,  <36.191994, 31.550829, 23.902731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011124, 30.869862, 24.178347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406799, 30.892548, 24.232450>,  <36.644203, 30.906158, 24.264914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.406799, 30.892548, 24.232450>,  <36.011124, 30.869862, 24.178347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406799, 30.892548, 24.232450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110750, -0.315770, 0.942350,
		0.096156, -0.947139, -0.306074,
		0.989186, 0.056715, 0.135259,
		36.703556, 30.909561, 24.273027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282639, 30.242821, 24.617817>,  <36.011124, 30.869862, 24.178347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282639, 30.242821, 24.617817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578594, 30.509850, 24.651083>,  <36.756168, 30.670067, 24.671043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578594, 30.509850, 24.651083>,  <36.282639, 30.242821, 24.617817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578594, 30.509850, 24.651083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029500, -0.155701, 0.987363,
		0.672084, -0.728084, -0.134895,
		0.739887, 0.667571, 0.083166,
		36.800560, 30.710121, 24.676033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679291, 29.988522, 25.207256>,  <36.282639, 30.242821, 24.617817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679291, 29.988522, 25.207256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813469, 30.364912, 25.189171>,  <36.893974, 30.590746, 25.178320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.813469, 30.364912, 25.189171>,  <36.679291, 29.988522, 25.207256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813469, 30.364912, 25.189171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290595, -0.057700, 0.955105,
		0.896120, -0.333524, -0.292797,
		0.335445, 0.940974, -0.045215,
		36.914101, 30.647203, 25.175606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137775, 30.001371, 25.792257>,  <36.679291, 29.988522, 25.207256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137775, 30.001371, 25.792257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072403, 30.388849, 25.717505>,  <37.033180, 30.621336, 25.672653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072403, 30.388849, 25.717505>,  <37.137775, 30.001371, 25.792257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072403, 30.388849, 25.717505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091772, 0.203535, 0.974757,
		0.982277, 0.142155, -0.122163,
		-0.163431, 0.968693, -0.186882,
		37.023373, 30.679457, 25.661440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720257, 30.390875, 25.980747>,  <37.137775, 30.001371, 25.792257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720257, 30.390875, 25.980747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402634, 30.633509, 25.996374>,  <37.212059, 30.779089, 26.005751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402634, 30.633509, 25.996374>,  <37.720257, 30.390875, 25.980747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402634, 30.633509, 25.996374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244092, 0.259353, 0.934428,
		0.556676, 0.751527, -0.354004,
		-0.794060, 0.606583, 0.039066,
		37.164417, 30.815483, 26.008095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992462, 30.949142, 26.234179>,  <37.720257, 30.390875, 25.980747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992462, 30.949142, 26.234179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602402, 30.988148, 26.313755>,  <37.368366, 31.011551, 26.361502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602402, 30.988148, 26.313755>,  <37.992462, 30.949142, 26.234179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602402, 30.988148, 26.313755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214437, 0.189605, 0.958158,
		0.055714, 0.977006, -0.205804,
		-0.975148, 0.097515, 0.198942,
		37.309856, 31.017403, 26.373438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800194, 31.552546, 26.545790>,  <37.992462, 30.949142, 26.234179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800194, 31.552546, 26.545790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496552, 31.320559, 26.664045>,  <37.314365, 31.181366, 26.734999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.496552, 31.320559, 26.664045>,  <37.800194, 31.552546, 26.545790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496552, 31.320559, 26.664045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215676, 0.204434, 0.954825,
		-0.614206, 0.788572, -0.030101,
		-0.759101, -0.579967, 0.295641,
		37.268822, 31.146568, 26.752737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466724, 31.960817, 27.028028>,  <37.800194, 31.552546, 26.545790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466724, 31.960817, 27.028028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360981, 31.585674, 27.117954>,  <37.297535, 31.360588, 27.171909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360981, 31.585674, 27.117954>,  <37.466724, 31.960817, 27.028028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360981, 31.585674, 27.117954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137505, 0.194075, 0.971302,
		-0.954572, 0.287683, 0.077655,
		-0.264356, -0.937856, 0.224816,
		37.281673, 31.304317, 27.185400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076035, 32.026817, 27.600527>,  <37.466724, 31.960817, 27.028028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076035, 32.026817, 27.600527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153885, 31.634672, 27.613235>,  <37.200596, 31.399385, 27.620861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153885, 31.634672, 27.613235>,  <37.076035, 32.026817, 27.600527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153885, 31.634672, 27.613235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151214, 0.061991, 0.986556,
		-0.969151, -0.187209, 0.160310,
		0.194630, -0.980362, 0.031769,
		37.212273, 31.340563, 27.622766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552921, 31.663797, 28.083450>,  <37.076035, 32.026817, 27.600527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552921, 31.663797, 28.083450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884205, 31.444378, 28.037552>,  <37.082973, 31.312727, 28.010014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884205, 31.444378, 28.037552>,  <36.552921, 31.663797, 28.083450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884205, 31.444378, 28.037552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071123, -0.100212, 0.992421,
		-0.555890, -0.830091, -0.043982,
		0.828207, -0.548549, -0.114745,
		37.132668, 31.279814, 28.003128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451702, 31.051424, 28.584606>,  <36.552921, 31.663797, 28.083450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451702, 31.051424, 28.584606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846016, 31.055647, 28.517540>,  <37.082603, 31.058180, 28.477301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846016, 31.055647, 28.517540>,  <36.451702, 31.051424, 28.584606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846016, 31.055647, 28.517540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164057, -0.275424, 0.947221,
		-0.036178, -0.961265, -0.273242,
		0.985787, 0.010558, -0.167666,
		37.141750, 31.058815, 28.467239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723072, 30.503611, 29.002972>,  <36.451702, 31.051424, 28.584606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723072, 30.503611, 29.002972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039600, 30.740326, 28.941526>,  <37.229519, 30.882355, 28.904659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039600, 30.740326, 28.941526>,  <36.723072, 30.503611, 29.002972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039600, 30.740326, 28.941526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323764, -0.192467, 0.926355,
		0.518641, -0.782779, -0.343903,
		0.791321, 0.591789, -0.153615,
		37.276997, 30.917862, 28.895441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140575, 30.364981, 29.566151>,  <36.723072, 30.503611, 29.002972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140575, 30.364981, 29.566151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376865, 30.646709, 29.408686>,  <37.518639, 30.815746, 29.314207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376865, 30.646709, 29.408686>,  <37.140575, 30.364981, 29.566151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376865, 30.646709, 29.408686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618510, -0.081959, 0.781491,
		0.518157, -0.705133, -0.484046,
		0.590726, 0.704323, -0.393664,
		37.554085, 30.858006, 29.290586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873184, 30.211754, 29.511446>,  <37.140575, 30.364981, 29.566151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873184, 30.211754, 29.511446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860161, 30.608431, 29.561228>,  <37.852345, 30.846437, 29.591097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860161, 30.608431, 29.561228>,  <37.873184, 30.211754, 29.511446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860161, 30.608431, 29.561228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487606, -0.092933, 0.868104,
		0.872456, 0.088951, -0.480528,
		-0.032562, 0.991691, 0.124453,
		37.850391, 30.905939, 29.598564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550285, 30.388166, 29.888632>,  <37.873184, 30.211754, 29.511446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550285, 30.388166, 29.888632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277790, 30.676401, 29.940268>,  <38.114292, 30.849342, 29.971249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277790, 30.676401, 29.940268>,  <38.550285, 30.388166, 29.888632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277790, 30.676401, 29.940268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451404, 0.274666, 0.848995,
		0.576320, 0.636641, -0.512390,
		-0.681241, 0.720588, 0.129087,
		38.073418, 30.892578, 29.978994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928734, 31.065039, 29.943037>,  <38.550285, 30.388166, 29.888632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928734, 31.065039, 29.943037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572868, 31.112604, 30.119381>,  <38.359348, 31.141144, 30.225187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572868, 31.112604, 30.119381>,  <38.928734, 31.065039, 29.943037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572868, 31.112604, 30.119381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451833, 0.368668, 0.812361,
		-0.065929, 0.921923, -0.381721,
		-0.889663, 0.118915, 0.440862,
		38.305969, 31.148279, 30.251640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963043, 31.688515, 30.202717>,  <38.928734, 31.065039, 29.943037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963043, 31.688515, 30.202717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667210, 31.515787, 30.409229>,  <38.489708, 31.412151, 30.533136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667210, 31.515787, 30.409229>,  <38.963043, 31.688515, 30.202717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667210, 31.515787, 30.409229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323692, 0.444332, 0.835340,
		-0.590114, 0.784922, -0.188846,
		-0.739587, -0.431817, 0.516280,
		38.445335, 31.386242, 30.564114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103149, 32.395000, 30.055540>,  <38.963043, 31.688515, 30.202717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103149, 32.395000, 30.055540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492985, 32.424072, 30.140295>,  <39.726887, 32.441517, 30.191149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492985, 32.424072, 30.140295>,  <39.103149, 32.395000, 30.055540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492985, 32.424072, 30.140295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203288, 0.110335, -0.972882,
		-0.094089, 0.991233, 0.092756,
		0.974588, 0.072682, 0.211887,
		39.785362, 32.445877, 30.203861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315178, 32.940266, 29.696999>,  <39.103149, 32.395000, 30.055540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315178, 32.940266, 29.696999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653522, 32.734013, 29.751600>,  <39.856529, 32.610260, 29.784361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653522, 32.734013, 29.751600>,  <39.315178, 32.940266, 29.696999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653522, 32.734013, 29.751600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299894, 0.248102, -0.921145,
		0.441109, 0.820100, 0.364497,
		0.845864, -0.515636, 0.136504,
		39.907280, 32.579323, 29.792551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869019, 33.286888, 29.459633>,  <39.315178, 32.940266, 29.696999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869019, 33.286888, 29.459633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021317, 32.917068, 29.453470>,  <40.112694, 32.695175, 29.449774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021317, 32.917068, 29.453470>,  <39.869019, 33.286888, 29.459633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021317, 32.917068, 29.453470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360492, 0.163757, -0.918275,
		0.851516, 0.344075, 0.395644,
		0.380745, -0.924552, -0.015405,
		40.135540, 32.639702, 29.448849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597889, 33.322666, 29.147972>,  <39.869019, 33.286888, 29.459633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597889, 33.322666, 29.147972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483280, 32.941051, 29.112854>,  <40.414513, 32.712082, 29.091784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483280, 32.941051, 29.112854>,  <40.597889, 33.322666, 29.147972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483280, 32.941051, 29.112854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310405, -0.005746, -0.950587,
		0.906395, -0.299620, 0.297785,
		-0.286526, -0.954042, -0.087795,
		40.397324, 32.654839, 29.086515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107834, 32.978943, 28.718998>,  <40.597889, 33.322666, 29.147972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107834, 32.978943, 28.718998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766171, 32.775314, 28.676538>,  <40.561172, 32.653137, 28.651062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.766171, 32.775314, 28.676538>,  <41.107834, 32.978943, 28.718998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766171, 32.775314, 28.676538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090471, 0.055537, -0.994349,
		0.512089, -0.858931, -0.001381,
		-0.854154, -0.509071, -0.106149,
		40.509926, 32.622593, 28.644693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311470, 32.339241, 28.416731>,  <41.107834, 32.978943, 28.718998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311470, 32.339241, 28.416731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920059, 32.381817, 28.346127>,  <40.685211, 32.407360, 28.303764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.920059, 32.381817, 28.346127>,  <41.311470, 32.339241, 28.416731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920059, 32.381817, 28.346127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171656, -0.053248, -0.983717,
		-0.114105, -0.992893, 0.033834,
		-0.978526, 0.106439, -0.176511,
		40.626503, 32.413746, 28.293173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242371, 31.912182, 27.945423>,  <41.311470, 32.339241, 28.416731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242371, 31.912182, 27.945423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912205, 32.137138, 27.925793>,  <40.714104, 32.272114, 27.914015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912205, 32.137138, 27.925793>,  <41.242371, 31.912182, 27.945423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912205, 32.137138, 27.925793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024513, -0.122553, -0.992159,
		-0.563995, -0.817739, 0.114942,
		-0.825414, 0.562391, -0.049074,
		40.664581, 32.305855, 27.911070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863544, 31.566223, 27.459734>,  <41.242371, 31.912182, 27.945423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863544, 31.566223, 27.459734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703300, 31.932585, 27.469801>,  <40.607155, 32.152401, 27.475842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703300, 31.932585, 27.469801>,  <40.863544, 31.566223, 27.459734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703300, 31.932585, 27.469801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241452, -0.079031, -0.967189,
		-0.883863, -0.393541, 0.252807,
		-0.400608, 0.915903, 0.025169,
		40.583118, 32.207355, 27.477352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143021, 31.646988, 27.283142>,  <40.863544, 31.566223, 27.459734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143021, 31.646988, 27.283142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263050, 32.014568, 27.180782>,  <40.335068, 32.235115, 27.119368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.263050, 32.014568, 27.180782>,  <40.143021, 31.646988, 27.283142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263050, 32.014568, 27.180782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391258, -0.126089, -0.911602,
		-0.869984, 0.373670, 0.321711,
		0.300074, 0.918952, -0.255897,
		40.353073, 32.290253, 27.104013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629646, 31.851488, 26.819376>,  <40.143021, 31.646988, 27.283142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629646, 31.851488, 26.819376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897488, 32.142864, 26.761404>,  <40.058193, 32.317688, 26.726620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897488, 32.142864, 26.761404>,  <39.629646, 31.851488, 26.819376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897488, 32.142864, 26.761404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295682, 0.082444, -0.951722,
		-0.681324, 0.680131, 0.270591,
		0.669605, 0.728440, -0.144932,
		40.098370, 32.361397, 26.717924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332088, 32.429111, 26.392437>,  <39.629646, 31.851488, 26.819376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332088, 32.429111, 26.392437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726826, 32.459671, 26.335434>,  <39.963669, 32.478004, 26.301231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726826, 32.459671, 26.335434>,  <39.332088, 32.429111, 26.392437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726826, 32.459671, 26.335434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144965, 0.027584, -0.989052,
		-0.071630, 0.996696, 0.038296,
		0.986841, 0.076397, -0.142510,
		40.022877, 32.482590, 26.292681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409157, 32.989090, 25.955404>,  <39.332088, 32.429111, 26.392437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409157, 32.989090, 25.955404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756001, 32.791965, 25.926399>,  <39.964108, 32.673691, 25.908997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756001, 32.791965, 25.926399>,  <39.409157, 32.989090, 25.955404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756001, 32.791965, 25.926399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124779, -0.073964, -0.989424,
		0.482233, 0.866988, -0.125627,
		0.867111, -0.492809, -0.072514,
		40.016132, 32.644123, 25.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939720, 33.446529, 25.496082>,  <39.409157, 32.989090, 25.955404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939720, 33.446529, 25.496082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029610, 33.056759, 25.495394>,  <40.083542, 32.822899, 25.494982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.029610, 33.056759, 25.495394>,  <39.939720, 33.446529, 25.496082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029610, 33.056759, 25.495394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096922, -0.020595, -0.995079,
		0.969591, 0.223781, -0.099071,
		0.224720, -0.974422, -0.001720,
		40.097027, 32.764431, 25.494877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452946, 33.399120, 25.015953>,  <39.939720, 33.446529, 25.496082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452946, 33.399120, 25.015953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296600, 33.033436, 25.058756>,  <40.202793, 32.814026, 25.084438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.296600, 33.033436, 25.058756>,  <40.452946, 33.399120, 25.015953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296600, 33.033436, 25.058756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136198, -0.057533, -0.989010,
		0.910316, -0.401143, -0.102025,
		-0.390865, -0.914207, 0.107008,
		40.179340, 32.759174, 25.090858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723030, 32.993584, 24.535250>,  <40.452946, 33.399120, 25.015953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723030, 32.993584, 24.535250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384335, 32.798958, 24.621309>,  <40.181118, 32.682182, 24.672945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384335, 32.798958, 24.621309>,  <40.723030, 32.993584, 24.535250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384335, 32.798958, 24.621309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169292, -0.136959, -0.976003,
		0.504358, -0.862841, 0.033596,
		-0.846737, -0.486567, 0.215149,
		40.130314, 32.652988, 24.685854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874722, 32.460941, 24.160378>,  <40.723030, 32.993584, 24.535250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874722, 32.460941, 24.160378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477509, 32.475445, 24.205235>,  <40.239182, 32.484146, 24.232149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477509, 32.475445, 24.205235>,  <40.874722, 32.460941, 24.160378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477509, 32.475445, 24.205235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117186, -0.405233, -0.906672,
		0.012566, -0.913494, 0.406658,
		-0.993030, 0.036261, 0.112141,
		40.179600, 32.486324, 24.238876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536999, 31.825953, 23.951941>,  <40.874722, 32.460941, 24.160378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536999, 31.825953, 23.951941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226109, 32.076828, 23.931719>,  <40.039574, 32.227352, 23.919586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.226109, 32.076828, 23.931719>,  <40.536999, 31.825953, 23.951941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226109, 32.076828, 23.931719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245397, -0.376122, -0.893484,
		-0.579398, -0.682032, 0.446241,
		-0.777225, 0.627188, -0.050556,
		39.992939, 32.264984, 23.916552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017216, 31.448526, 23.692135>,  <40.536999, 31.825953, 23.951941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017216, 31.448526, 23.692135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916756, 31.829168, 23.621284>,  <39.856480, 32.057552, 23.578773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916756, 31.829168, 23.621284>,  <40.017216, 31.448526, 23.692135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916756, 31.829168, 23.621284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194129, -0.228793, -0.953922,
		-0.948282, -0.205190, 0.242195,
		-0.251148, 0.951604, -0.177127,
		39.841412, 32.114651, 23.568146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.315487, 31.435949, 23.367252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482899, 31.786657, 23.272509>,  <39.583347, 31.997082, 23.215662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482899, 31.786657, 23.272509>,  <39.315487, 31.435949, 23.367252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482899, 31.786657, 23.272509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000922, -0.260392, -0.965503,
		-0.908201, 0.404313, -0.108174,
		0.418533, 0.876771, -0.236861,
		39.608459, 32.049690, 23.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743839, 31.780972, 22.992361>,  <39.315487, 31.435949, 23.367252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743839, 31.780972, 22.992361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084915, 31.966446, 22.896099>,  <39.289562, 32.077732, 22.838341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084915, 31.966446, 22.896099>,  <38.743839, 31.780972, 22.992361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084915, 31.966446, 22.896099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216646, -0.105325, -0.970552,
		-0.475380, 0.879716, 0.010647,
		0.852689, 0.463688, -0.240656,
		39.340721, 32.105553, 22.823902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472912, 32.340641, 22.545820>,  <38.743839, 31.780972, 22.992361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472912, 32.340641, 22.545820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866337, 32.286694, 22.497805>,  <39.102394, 32.254326, 22.468996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866337, 32.286694, 22.497805>,  <38.472912, 32.340641, 22.545820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866337, 32.286694, 22.497805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111855, 0.066734, -0.991481,
		0.141734, 0.988613, 0.050551,
		0.983565, -0.134872, -0.120039,
		39.161407, 32.246231, 22.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673153, 32.754093, 22.101057>,  <38.472912, 32.340641, 22.545820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673153, 32.754093, 22.101057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967388, 32.487625, 22.051870>,  <39.143929, 32.327744, 22.022358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967388, 32.487625, 22.051870>,  <38.673153, 32.754093, 22.101057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967388, 32.487625, 22.051870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124118, 0.045915, -0.991205,
		0.665959, 0.744384, -0.048909,
		0.735591, -0.666172, -0.122969,
		39.188065, 32.287773, 22.014980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152683, 33.094231, 21.692556>,  <38.673153, 32.754093, 22.101057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152683, 33.094231, 21.692556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205654, 32.699978, 21.650620>,  <39.237438, 32.463425, 21.625458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205654, 32.699978, 21.650620>,  <39.152683, 33.094231, 21.692556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205654, 32.699978, 21.650620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004655, 0.105154, -0.994445,
		0.991182, 0.132179, 0.009337,
		0.132426, -0.985632, -0.104842,
		39.245380, 32.404289, 21.619167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534458, 33.114861, 21.116381>,  <39.152683, 33.094231, 21.692556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534458, 33.114861, 21.116381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390598, 32.745670, 21.171175>,  <39.304283, 32.524155, 21.204052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.390598, 32.745670, 21.171175>,  <39.534458, 33.114861, 21.116381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390598, 32.745670, 21.171175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068469, -0.172520, -0.982624,
		0.930571, -0.344024, 0.125243,
		-0.359653, -0.922976, 0.136988,
		39.282703, 32.468777, 21.212271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748459, 32.826103, 20.523392>,  <39.534458, 33.114861, 21.116381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748459, 32.826103, 20.523392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483902, 32.556057, 20.654099>,  <39.325169, 32.394028, 20.732523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483902, 32.556057, 20.654099>,  <39.748459, 32.826103, 20.523392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483902, 32.556057, 20.654099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297426, -0.163875, -0.940576,
		0.688547, -0.719280, -0.092411,
		-0.661394, -0.675116, 0.326768,
		39.285484, 32.353523, 20.752129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728550, 32.350895, 19.979462>,  <39.748459, 32.826103, 20.523392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728550, 32.350895, 19.979462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408485, 32.233925, 20.188931>,  <39.216446, 32.163742, 20.314611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408485, 32.233925, 20.188931>,  <39.728550, 32.350895, 19.979462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408485, 32.233925, 20.188931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453487, -0.276464, -0.847300,
		0.392547, -0.915454, 0.088606,
		-0.800160, -0.292424, 0.523671,
		39.168438, 32.146198, 20.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751305, 31.602715, 20.010305>,  <39.728550, 32.350895, 19.979462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751305, 31.602715, 20.010305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385601, 31.763628, 20.029512>,  <39.166180, 31.860176, 20.041037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385601, 31.763628, 20.029512>,  <39.751305, 31.602715, 20.010305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385601, 31.763628, 20.029512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209328, -0.367573, -0.906130,
		-0.346856, -0.838492, 0.420264,
		-0.914261, 0.402270, 0.048024,
		39.111324, 31.884314, 20.043917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241791, 31.125525, 19.903637>,  <39.751305, 31.602715, 20.010305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241791, 31.125525, 19.903637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019550, 31.444761, 19.810379>,  <38.886208, 31.636303, 19.754425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.019550, 31.444761, 19.810379>,  <39.241791, 31.125525, 19.903637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019550, 31.444761, 19.810379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205535, -0.403539, -0.891578,
		-0.805645, -0.447442, 0.388242,
		-0.555601, 0.798093, -0.233144,
		38.852871, 31.684189, 19.740437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664356, 30.841839, 19.497440>,  <39.241791, 31.125525, 19.903637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664356, 30.841839, 19.497440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647038, 31.235388, 19.428022>,  <38.636646, 31.471518, 19.386372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647038, 31.235388, 19.428022>,  <38.664356, 30.841839, 19.497440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647038, 31.235388, 19.428022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451477, -0.174229, -0.875107,
		-0.891232, 0.040462, 0.451740,
		-0.043297, 0.983873, -0.173546,
		38.634048, 31.530550, 19.375959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019451, 31.044889, 19.273041>,  <38.664356, 30.841839, 19.497440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019451, 31.044889, 19.273041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258232, 31.319250, 19.106575>,  <38.401501, 31.483866, 19.006695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258232, 31.319250, 19.106575>,  <38.019451, 31.044889, 19.273041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258232, 31.319250, 19.106575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526186, -0.056853, -0.848467,
		-0.605624, 0.725472, 0.326972,
		0.596949, 0.685900, -0.416165,
		38.437317, 31.525021, 18.981726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680767, 31.222656, 18.763758>,  <38.019451, 31.044889, 19.273041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680767, 31.222656, 18.763758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012386, 31.420706, 18.659807>,  <38.211357, 31.539536, 18.597437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012386, 31.420706, 18.659807>,  <37.680767, 31.222656, 18.763758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012386, 31.420706, 18.659807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288409, -0.019545, -0.957308,
		-0.479067, 0.868602, 0.126596,
		0.829045, 0.495126, -0.259876,
		38.261101, 31.569244, 18.581844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435223, 31.873644, 18.443979>,  <37.680767, 31.222656, 18.763758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435223, 31.873644, 18.443979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803967, 31.774366, 18.324936>,  <38.025211, 31.714800, 18.253510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803967, 31.774366, 18.324936>,  <37.435223, 31.873644, 18.443979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803967, 31.774366, 18.324936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256921, 0.183492, -0.948853,
		0.290110, 0.951173, 0.105388,
		0.921861, -0.248195, -0.297609,
		38.080524, 31.699907, 18.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624157, 32.412106, 18.100149>,  <37.435223, 31.873644, 18.443979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624157, 32.412106, 18.100149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881371, 32.145847, 17.948664>,  <38.035698, 31.986092, 17.857773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881371, 32.145847, 17.948664>,  <37.624157, 32.412106, 18.100149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881371, 32.145847, 17.948664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316807, 0.219006, -0.922859,
		0.697238, 0.713409, -0.070053,
		0.643034, -0.665646, -0.378713,
		38.074280, 31.946154, 17.835051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120777, 32.819107, 17.650246>,  <37.624157, 32.412106, 18.100149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120777, 32.819107, 17.650246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108158, 32.433922, 17.543131>,  <38.100586, 32.202812, 17.478863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108158, 32.433922, 17.543131>,  <38.120777, 32.819107, 17.650246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108158, 32.433922, 17.543131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078289, 0.269478, -0.959819,
		0.996431, -0.009314, -0.083890,
		-0.031547, -0.962961, -0.267788,
		38.098694, 32.145035, 17.462795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710239, 32.781113, 17.168552>,  <38.120777, 32.819107, 17.650246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710239, 32.781113, 17.168552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467545, 32.469803, 17.103859>,  <38.321930, 32.283016, 17.065042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467545, 32.469803, 17.103859>,  <38.710239, 32.781113, 17.168552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467545, 32.469803, 17.103859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112271, 0.285326, -0.951832,
		0.786937, -0.559350, -0.260495,
		-0.606734, -0.778277, -0.161735,
		38.285526, 32.236320, 17.055338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922863, 32.530540, 16.513424>,  <38.710239, 32.781113, 17.168552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922863, 32.530540, 16.513424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563938, 32.367382, 16.580896>,  <38.348583, 32.269485, 16.621380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563938, 32.367382, 16.580896>,  <38.922863, 32.530540, 16.513424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563938, 32.367382, 16.580896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365091, 0.471075, -0.802992,
		0.248077, -0.782118, -0.571620,
		-0.897310, -0.407897, 0.168682,
		38.294746, 32.245014, 16.631500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882519, 32.043186, 15.973169>,  <38.922863, 32.530540, 16.513424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882519, 32.043186, 15.973169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507565, 32.098331, 16.101110>,  <38.282593, 32.131420, 16.177876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507565, 32.098331, 16.101110>,  <38.882519, 32.043186, 15.973169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507565, 32.098331, 16.101110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284636, 0.226044, -0.931604,
		-0.200734, -0.964312, -0.172649,
		-0.937384, 0.137863, 0.319853,
		38.226349, 32.139690, 16.197065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560749, 31.782677, 15.457382>,  <38.882519, 32.043186, 15.973169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560749, 31.782677, 15.457382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268787, 32.002876, 15.619461>,  <38.093609, 32.134995, 15.716708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268787, 32.002876, 15.619461>,  <38.560749, 31.782677, 15.457382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268787, 32.002876, 15.619461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248124, 0.338970, -0.907487,
		-0.636921, -0.762922, -0.110825,
		-0.729908, 0.550499, 0.405197,
		38.049816, 32.168026, 15.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924011, 31.711748, 15.033969>,  <38.560749, 31.782677, 15.457382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924011, 31.711748, 15.033969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909245, 32.057911, 15.233853>,  <37.900383, 32.265610, 15.353784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909245, 32.057911, 15.233853>,  <37.924011, 31.711748, 15.033969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909245, 32.057911, 15.233853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333275, 0.460760, -0.822574,
		-0.942106, -0.196911, 0.271407,
		-0.036921, 0.865405, 0.499710,
		37.898167, 32.317532, 15.383766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192562, 32.060623, 14.777631>,  <37.924011, 31.711748, 15.033969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192562, 32.060623, 14.777631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452568, 32.324802, 14.927979>,  <37.608574, 32.483311, 15.018188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452568, 32.324802, 14.927979>,  <37.192562, 32.060623, 14.777631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452568, 32.324802, 14.927979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298929, 0.676972, -0.672570,
		-0.698654, 0.324824, 0.637473,
		0.650018, 0.660453, 0.375870,
		37.647575, 32.522938, 15.040739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539539, 32.263748, 15.181939>,  <37.192562, 32.060623, 14.777631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539539, 32.263748, 15.181939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782673, 32.498436, 14.967910>,  <36.928551, 32.639248, 14.839492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782673, 32.498436, 14.967910>,  <36.539539, 32.263748, 15.181939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782673, 32.498436, 14.967910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603506, -0.096594, -0.791486,
		-0.516064, 0.804009, 0.295375,
		0.607831, 0.586718, -0.535073,
		36.965023, 32.674450, 14.807388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033607, 32.698696, 14.883082>,  <36.539539, 32.263748, 15.181939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033607, 32.698696, 14.883082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281982, 32.754734, 14.574587>,  <36.431007, 32.788357, 14.389490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281982, 32.754734, 14.574587>,  <36.033607, 32.698696, 14.883082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281982, 32.754734, 14.574587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739466, -0.221717, -0.635634,
		-0.260044, 0.964995, -0.034079,
		0.620940, 0.140092, -0.771238,
		36.468266, 32.796761, 14.343216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076851, 33.422112, 15.144461>,  <36.033607, 32.698696, 14.883082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076851, 33.422112, 15.144461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705605, 33.287560, 15.080657>,  <35.482857, 33.206829, 15.042375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705605, 33.287560, 15.080657>,  <36.076851, 33.422112, 15.144461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705605, 33.287560, 15.080657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135853, -0.092889, 0.986365,
		-0.346611, 0.937134, 0.040514,
		-0.928119, -0.336381, -0.159509,
		35.427170, 33.186646, 15.032804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691586, 33.786095, 15.540978>,  <36.076851, 33.422112, 15.144461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691586, 33.786095, 15.540978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482475, 33.453087, 15.467628>,  <35.357010, 33.253284, 15.423618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.482475, 33.453087, 15.467628>,  <35.691586, 33.786095, 15.540978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482475, 33.453087, 15.467628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181987, -0.101161, 0.978083,
		-0.832820, 0.544687, -0.098623,
		-0.522772, -0.832516, -0.183375,
		35.325645, 33.203331, 15.412616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216602, 33.927547, 15.938602>,  <35.691586, 33.786095, 15.540978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216602, 33.927547, 15.938602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221725, 33.536774, 15.853346>,  <35.224800, 33.302307, 15.802192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.221725, 33.536774, 15.853346>,  <35.216602, 33.927547, 15.938602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221725, 33.536774, 15.853346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236333, -0.210079, 0.948691,
		-0.971588, 0.038218, -0.233574,
		0.012812, -0.976937, -0.213142,
		35.225571, 33.243694, 15.789403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622116, 33.674465, 16.199791>,  <35.216602, 33.927547, 15.938602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622116, 33.674465, 16.199791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856750, 33.351887, 16.169973>,  <34.997532, 33.158340, 16.152082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856750, 33.351887, 16.169973>,  <34.622116, 33.674465, 16.199791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856750, 33.351887, 16.169973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169359, -0.212152, 0.962450,
		-0.791982, -0.551934, -0.261025,
		0.586585, -0.806450, -0.074546,
		35.032726, 33.109951, 16.147610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488499, 33.301357, 16.773270>,  <34.622116, 33.674465, 16.199791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488499, 33.301357, 16.773270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840969, 33.147537, 16.663254>,  <35.052452, 33.055244, 16.597244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840969, 33.147537, 16.663254>,  <34.488499, 33.301357, 16.773270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840969, 33.147537, 16.663254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222399, -0.176208, 0.958900,
		-0.417210, -0.906130, -0.069747,
		0.881178, -0.384551, -0.275038,
		35.105324, 33.032173, 16.580742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545116, 32.609577, 16.920410>,  <34.488499, 33.301357, 16.773270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545116, 32.609577, 16.920410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926270, 32.730324, 16.908470>,  <35.154961, 32.802773, 16.901306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926270, 32.730324, 16.908470>,  <34.545116, 32.609577, 16.920410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926270, 32.730324, 16.908470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111513, -0.257080, 0.959935,
		0.282102, -0.918033, -0.278630,
		0.952882, 0.301870, -0.029850,
		35.212135, 32.820885, 16.899515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957493, 32.081223, 17.224894>,  <34.545116, 32.609577, 16.920410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957493, 32.081223, 17.224894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204674, 32.394463, 17.252884>,  <35.352982, 32.582405, 17.269678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204674, 32.394463, 17.252884>,  <34.957493, 32.081223, 17.224894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204674, 32.394463, 17.252884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173102, -0.222333, 0.959481,
		0.766927, -0.580796, -0.272946,
		0.617948, 0.783099, 0.069976,
		35.390057, 32.629391, 17.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568527, 31.909130, 17.605618>,  <34.957493, 32.081223, 17.224894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568527, 31.909130, 17.605618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620075, 32.304996, 17.630770>,  <35.651005, 32.542515, 17.645861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620075, 32.304996, 17.630770>,  <35.568527, 31.909130, 17.605618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620075, 32.304996, 17.630770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341924, -0.103867, 0.933970,
		0.930849, -0.098862, -0.351776,
		0.128872, 0.989666, 0.062881,
		35.658737, 32.601894, 17.649633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253284, 32.034386, 17.947962>,  <35.568527, 31.909130, 17.605618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253284, 32.034386, 17.947962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029720, 32.360203, 18.010103>,  <35.895584, 32.555695, 18.047388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029720, 32.360203, 18.010103>,  <36.253284, 32.034386, 17.947962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029720, 32.360203, 18.010103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282812, 0.011126, 0.959111,
		0.779512, 0.579991, -0.236582,
		-0.558908, 0.814547, 0.155355,
		35.862049, 32.604568, 18.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585140, 32.424526, 18.394295>,  <36.253284, 32.034386, 17.947962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585140, 32.424526, 18.394295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220078, 32.576729, 18.453979>,  <36.001038, 32.668053, 18.489790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220078, 32.576729, 18.453979>,  <36.585140, 32.424526, 18.394295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220078, 32.576729, 18.453979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169856, 0.021055, 0.985244,
		0.371752, 0.924538, -0.083848,
		-0.912661, 0.380508, 0.149211,
		35.946278, 32.690880, 18.498743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641693, 33.020180, 18.887707>,  <36.585140, 32.424526, 18.394295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641693, 33.020180, 18.887707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261757, 32.896763, 18.908161>,  <36.033794, 32.822712, 18.920433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261757, 32.896763, 18.908161>,  <36.641693, 33.020180, 18.887707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261757, 32.896763, 18.908161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064572, -0.033495, 0.997351,
		-0.306010, 0.950621, 0.051738,
		-0.949836, -0.308540, 0.051134,
		35.976807, 32.804199, 18.923502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409904, 33.290268, 19.468693>,  <36.641693, 33.020180, 18.887707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409904, 33.290268, 19.468693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123775, 33.016018, 19.414688>,  <35.952099, 32.851467, 19.382286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.123775, 33.016018, 19.414688>,  <36.409904, 33.290268, 19.468693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123775, 33.016018, 19.414688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150408, -0.037612, 0.987908,
		-0.682415, 0.726980, -0.076219,
		-0.715323, -0.685628, -0.135011,
		35.909180, 32.810329, 19.374186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938782, 33.424629, 19.979523>,  <36.409904, 33.290268, 19.468693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938782, 33.424629, 19.979523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883507, 33.041046, 19.880491>,  <35.850342, 32.810894, 19.821072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883507, 33.041046, 19.880491>,  <35.938782, 33.424629, 19.979523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883507, 33.041046, 19.880491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156064, -0.267939, 0.950712,
		-0.978032, 0.092741, 0.186687,
		-0.138191, -0.958962, -0.247580,
		35.842049, 32.753357, 19.806217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598331, 33.183582, 20.539959>,  <35.938782, 33.424629, 19.979523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598331, 33.183582, 20.539959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727455, 32.860596, 20.342459>,  <35.804928, 32.666801, 20.223959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.727455, 32.860596, 20.342459>,  <35.598331, 33.183582, 20.539959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727455, 32.860596, 20.342459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221238, -0.442850, 0.868871,
		-0.920244, -0.389716, 0.035687,
		0.322809, -0.807469, -0.493750,
		35.824299, 32.618355, 20.194334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407986, 32.715324, 21.033464>,  <35.598331, 33.183582, 20.539959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407986, 32.715324, 21.033464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684566, 32.551098, 20.795700>,  <35.850517, 32.452560, 20.653042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684566, 32.551098, 20.795700>,  <35.407986, 32.715324, 21.033464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684566, 32.551098, 20.795700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407159, -0.458191, 0.790116,
		-0.596751, -0.788348, -0.149651,
		0.691455, -0.410571, -0.594409,
		35.892002, 32.427925, 20.617378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458073, 32.034691, 21.161867>,  <35.407986, 32.715324, 21.033464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458073, 32.034691, 21.161867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816235, 32.089363, 20.992367>,  <36.031132, 32.122166, 20.890667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816235, 32.089363, 20.992367>,  <35.458073, 32.034691, 21.161867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816235, 32.089363, 20.992367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434980, -0.471754, 0.766968,
		-0.095074, -0.871072, -0.481866,
		0.895407, 0.136683, -0.423751,
		36.084858, 32.130367, 20.865242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708286, 31.476168, 21.256485>,  <35.458073, 32.034691, 21.161867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708286, 31.476168, 21.256485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036804, 31.697712, 21.201757>,  <36.233913, 31.830639, 21.168921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036804, 31.697712, 21.201757>,  <35.708286, 31.476168, 21.256485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036804, 31.697712, 21.201757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477708, -0.536522, 0.695657,
		0.311889, -0.636698, -0.705224,
		0.821292, 0.553859, -0.136820,
		36.283192, 31.863869, 21.160711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309772, 30.982496, 21.254095>,  <35.708286, 31.476168, 21.256485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309772, 30.982496, 21.254095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505615, 31.324438, 21.322809>,  <36.623119, 31.529604, 21.364037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505615, 31.324438, 21.322809>,  <36.309772, 30.982496, 21.254095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505615, 31.324438, 21.322809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497556, -0.435696, 0.750071,
		0.716047, -0.281768, -0.638658,
		0.489607, 0.854854, 0.171783,
		36.652496, 31.580894, 21.374344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080364, 30.833500, 21.231165>,  <36.309772, 30.982496, 21.254095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080364, 30.833500, 21.231165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996964, 31.168896, 21.432547>,  <36.946922, 31.370132, 21.553375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996964, 31.168896, 21.432547>,  <37.080364, 30.833500, 21.231165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996964, 31.168896, 21.432547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402610, -0.395541, 0.825502,
		0.891310, 0.374812, -0.255113,
		-0.208500, 0.838489, 0.503453,
		36.934414, 31.420443, 21.583582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755165, 31.138758, 21.589752>,  <37.080364, 30.833500, 21.231165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755165, 31.138758, 21.589752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433483, 31.262476, 21.792768>,  <37.240475, 31.336706, 21.914577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433483, 31.262476, 21.792768>,  <37.755165, 31.138758, 21.589752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433483, 31.262476, 21.792768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445843, -0.250776, 0.859264,
		0.393044, 0.917305, 0.063778,
		-0.804202, 0.309294, 0.507540,
		37.192223, 31.355265, 21.945030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.134377, 31.880283, 25.901566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.814507, 32.119347, 25.878510>,  <40.622585, 32.262787, 25.864676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.814507, 32.119347, 25.878510>,  <41.134377, 31.880283, 25.901566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814507, 32.119347, 25.878510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160298, 0.305015, 0.938760,
		0.578640, 0.741463, -0.339717,
		-0.799675, 0.597660, -0.057639,
		40.574604, 32.298645, 25.861217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290260, 32.526901, 26.219814>,  <41.134377, 31.880283, 25.901566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290260, 32.526901, 26.219814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892174, 32.553936, 26.248035>,  <40.653320, 32.570156, 26.264967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.892174, 32.553936, 26.248035>,  <41.290260, 32.526901, 26.219814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892174, 32.553936, 26.248035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087969, 0.305678, 0.948062,
		0.042514, 0.949733, -0.310161,
		-0.995216, 0.067591, 0.070552,
		40.593609, 32.574215, 26.269201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135429, 33.161140, 26.482536>,  <41.290260, 32.526901, 26.219814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135429, 33.161140, 26.482536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813011, 32.935394, 26.553850>,  <40.619560, 32.799946, 26.596640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.813011, 32.935394, 26.553850>,  <41.135429, 33.161140, 26.482536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813011, 32.935394, 26.553850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024725, 0.268861, 0.962862,
		-0.591342, 0.780515, -0.202759,
		-0.806042, -0.564367, 0.178287,
		40.571198, 32.766083, 26.607336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795815, 33.478756, 27.120588>,  <41.135429, 33.161140, 26.482536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795815, 33.478756, 27.120588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.644157, 33.110313, 27.085228>,  <40.553165, 32.889248, 27.064011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.644157, 33.110313, 27.085228>,  <40.795815, 33.478756, 27.120588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644157, 33.110313, 27.085228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191741, -0.015259, 0.981327,
		-0.905256, 0.389010, -0.170829,
		-0.379140, -0.921107, -0.088402,
		40.530415, 32.833981, 27.058708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116325, 33.450821, 27.445086>,  <40.795815, 33.478756, 27.120588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116325, 33.450821, 27.445086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267872, 33.080719, 27.452654>,  <40.358799, 32.858658, 27.457195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.267872, 33.080719, 27.452654>,  <40.116325, 33.450821, 27.445086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267872, 33.080719, 27.452654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242661, -0.079594, 0.966841,
		-0.893070, -0.370897, -0.254680,
		0.378869, -0.925257, 0.018919,
		40.381531, 32.803143, 27.458330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659184, 33.136879, 27.874594>,  <40.116325, 33.450821, 27.445086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659184, 33.136879, 27.874594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958912, 32.872253, 27.862930>,  <40.138748, 32.713478, 27.855932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.958912, 32.872253, 27.862930>,  <39.659184, 33.136879, 27.874594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958912, 32.872253, 27.862930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284188, -0.361034, 0.888196,
		-0.598129, -0.657254, -0.458539,
		0.749319, -0.661567, -0.029161,
		40.183708, 32.673782, 27.854181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376125, 32.505489, 28.101944>,  <39.659184, 33.136879, 27.874594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376125, 32.505489, 28.101944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.771381, 32.474827, 28.155165>,  <40.008533, 32.456429, 28.187098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.771381, 32.474827, 28.155165>,  <39.376125, 32.505489, 28.101944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771381, 32.474827, 28.155165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149725, -0.288604, 0.945669,
		-0.034092, -0.954375, -0.296659,
		0.988140, -0.076657, 0.133054,
		40.067822, 32.451828, 28.195082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416187, 31.959942, 28.518677>,  <39.376125, 32.505489, 28.101944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416187, 31.959942, 28.518677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773884, 32.135822, 28.552130>,  <39.988503, 32.241352, 28.572201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.773884, 32.135822, 28.552130>,  <39.416187, 31.959942, 28.518677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773884, 32.135822, 28.552130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020651, -0.146119, 0.989051,
		0.447108, -0.886178, -0.121585,
		0.894241, 0.439702, 0.083631,
		40.042156, 32.267735, 28.577219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905674, 31.433903, 28.923485>,  <39.416187, 31.959942, 28.518677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905674, 31.433903, 28.923485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033840, 31.810011, 28.969496>,  <40.110741, 32.035675, 28.997103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033840, 31.810011, 28.969496>,  <39.905674, 31.433903, 28.923485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033840, 31.810011, 28.969496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076454, -0.146702, 0.986222,
		0.944188, -0.307203, -0.118892,
		0.320412, 0.940269, 0.115027,
		40.129963, 32.092091, 29.004004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485172, 31.384026, 29.468199>,  <39.905674, 31.433903, 28.923485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485172, 31.384026, 29.468199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.376305, 31.768784, 29.457760>,  <40.310982, 31.999638, 29.451496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.376305, 31.768784, 29.457760>,  <40.485172, 31.384026, 29.468199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376305, 31.768784, 29.457760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005462, 0.025579, 0.999658,
		0.962233, 0.272223, -0.001708,
		-0.272173, 0.961894, -0.026099,
		40.294651, 32.057350, 29.449930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895920, 31.674006, 29.960985>,  <40.485172, 31.384026, 29.468199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895920, 31.674006, 29.960985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610760, 31.949720, 29.909363>,  <40.439663, 32.115150, 29.878389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.610760, 31.949720, 29.909363>,  <40.895920, 31.674006, 29.960985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610760, 31.949720, 29.909363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042937, 0.140786, 0.989109,
		0.699948, 0.710678, -0.070771,
		-0.712902, 0.689286, -0.129058,
		40.396889, 32.156506, 29.870646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946846, 32.363819, 30.209482>,  <40.895920, 31.674006, 29.960985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946846, 32.363819, 30.209482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553043, 32.296627, 30.229572>,  <40.316761, 32.256313, 30.241627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.553043, 32.296627, 30.229572>,  <40.946846, 32.363819, 30.209482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553043, 32.296627, 30.229572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026750, 0.139187, 0.989905,
		-0.173271, 0.975915, -0.132538,
		-0.984511, -0.167976, 0.050223,
		40.257690, 32.246235, 30.244638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515839, 32.979641, 30.539082>,  <40.946846, 32.363819, 30.209482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515839, 32.979641, 30.539082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370342, 32.610477, 30.589565>,  <40.283047, 32.388977, 30.619856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370342, 32.610477, 30.589565>,  <40.515839, 32.979641, 30.539082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370342, 32.610477, 30.589565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270627, 0.024945, 0.962361,
		-0.891323, 0.384203, 0.240692,
		-0.363738, -0.922912, 0.126209,
		40.261223, 32.333603, 30.627428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961647, 32.878456, 31.076620>,  <40.515839, 32.979641, 30.539082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961647, 32.878456, 31.076620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208065, 32.565117, 31.043507>,  <40.355915, 32.377113, 31.023640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.208065, 32.565117, 31.043507>,  <39.961647, 32.878456, 31.076620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208065, 32.565117, 31.043507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239895, 0.086476, 0.966940,
		-0.750294, -0.615536, 0.241195,
		0.616044, -0.783350, -0.082782,
		40.392879, 32.330112, 31.018673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523788, 33.454990, 31.213913>,  <39.961647, 32.878456, 31.076620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523788, 33.454990, 31.213913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420834, 33.823807, 31.329561>,  <39.359062, 34.045097, 31.398951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420834, 33.823807, 31.329561>,  <39.523788, 33.454990, 31.213913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420834, 33.823807, 31.329561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384708, 0.176693, -0.905968,
		-0.886427, -0.344411, 0.309239,
		-0.257385, 0.922042, 0.289123,
		39.343616, 34.100418, 31.416298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898853, 33.575047, 30.880581>,  <39.523788, 33.454990, 31.213913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898853, 33.575047, 30.880581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007351, 33.943916, 30.990868>,  <39.072449, 34.165237, 31.057039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007351, 33.943916, 30.990868>,  <38.898853, 33.575047, 30.880581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007351, 33.943916, 30.990868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405876, 0.369328, -0.835980,
		-0.872751, 0.114844, 0.474465,
		0.271240, 0.922176, 0.275719,
		39.088722, 34.220570, 31.073584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413177, 33.912827, 30.485800>,  <38.898853, 33.575047, 30.880581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413177, 33.912827, 30.485800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686718, 34.187004, 30.585810>,  <38.850842, 34.351509, 30.645815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686718, 34.187004, 30.585810>,  <38.413177, 33.912827, 30.485800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686718, 34.187004, 30.585810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184361, 0.493891, -0.849754,
		-0.705945, 0.535011, 0.464117,
		0.683851, 0.685445, 0.250025,
		38.891872, 34.392639, 30.660818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096470, 34.604649, 30.347294>,  <38.413177, 33.912827, 30.485800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096470, 34.604649, 30.347294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493595, 34.652405, 30.343973>,  <38.731869, 34.681061, 30.341980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493595, 34.652405, 30.343973>,  <38.096470, 34.604649, 30.347294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493595, 34.652405, 30.343973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063866, 0.469840, -0.880438,
		-0.101219, 0.874640, 0.474089,
		0.992812, 0.119395, -0.008303,
		38.791439, 34.688225, 30.341482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332432, 35.357422, 30.254988>,  <38.096470, 34.604649, 30.347294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332432, 35.357422, 30.254988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624229, 35.115696, 30.126839>,  <38.799309, 34.970661, 30.049950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624229, 35.115696, 30.126839>,  <38.332432, 35.357422, 30.254988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624229, 35.115696, 30.126839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014975, 0.482388, -0.875830,
		0.683823, 0.634115, 0.360949,
		0.729494, -0.604318, -0.320372,
		38.843079, 34.934402, 30.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550980, 35.740696, 29.658606>,  <38.332432, 35.357422, 30.254988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550980, 35.740696, 29.658606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753380, 35.396862, 29.630127>,  <38.874821, 35.190559, 29.613039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.753380, 35.396862, 29.630127>,  <38.550980, 35.740696, 29.658606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753380, 35.396862, 29.630127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199069, 0.196700, -0.960042,
		0.839246, 0.471611, 0.270648,
		0.506003, -0.859589, -0.071197,
		38.905182, 35.138985, 29.608768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289841, 35.919743, 29.341843>,  <38.550980, 35.740696, 29.658606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289841, 35.919743, 29.341843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178967, 35.539322, 29.287182>,  <39.112442, 35.311069, 29.254385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178967, 35.539322, 29.287182>,  <39.289841, 35.919743, 29.341843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178967, 35.539322, 29.287182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126142, 0.104971, -0.986443,
		0.952501, -0.290662, 0.090871,
		-0.277182, -0.951050, -0.136650,
		39.095810, 35.254005, 29.246187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795391, 35.717251, 28.849480>,  <39.289841, 35.919743, 29.341843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795391, 35.717251, 28.849480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496021, 35.452347, 28.835220>,  <39.316399, 35.293404, 28.826664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.496021, 35.452347, 28.835220>,  <39.795391, 35.717251, 28.849480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496021, 35.452347, 28.835220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005454, 0.059894, -0.998190,
		0.663198, -0.746874, -0.048438,
		-0.748424, -0.662262, -0.035648,
		39.271496, 35.253670, 28.824526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896713, 35.362442, 28.272329>,  <39.795391, 35.717251, 28.849480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896713, 35.362442, 28.272329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523026, 35.234829, 28.336145>,  <39.298813, 35.158260, 28.374435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523026, 35.234829, 28.336145>,  <39.896713, 35.362442, 28.272329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523026, 35.234829, 28.336145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158166, -0.030388, -0.986945,
		0.319720, -0.947255, -0.022072,
		-0.934218, -0.319037, 0.159539,
		39.242760, 35.139118, 28.384007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882019, 34.750927, 27.873075>,  <39.896713, 35.362442, 28.272329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882019, 34.750927, 27.873075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521004, 34.916611, 27.920147>,  <39.304394, 35.016022, 27.948389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521004, 34.916611, 27.920147>,  <39.882019, 34.750927, 27.873075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521004, 34.916611, 27.920147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038615, 0.194332, -0.980175,
		-0.428870, -0.889192, -0.159398,
		-0.902540, 0.414213, 0.117679,
		39.250240, 35.040874, 27.955450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390182, 34.369564, 27.465433>,  <39.882019, 34.750927, 27.873075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390182, 34.369564, 27.465433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222443, 34.729362, 27.514513>,  <39.121799, 34.945240, 27.543961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222443, 34.729362, 27.514513>,  <39.390182, 34.369564, 27.465433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222443, 34.729362, 27.514513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032623, 0.150004, -0.988147,
		-0.907236, -0.410380, -0.092249,
		-0.419354, 0.899492, 0.122701,
		39.096638, 34.999210, 27.551323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844151, 34.395260, 27.000357>,  <39.390182, 34.369564, 27.465433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844151, 34.395260, 27.000357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890865, 34.787197, 27.065184>,  <38.918896, 35.022358, 27.104080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890865, 34.787197, 27.065184>,  <38.844151, 34.395260, 27.000357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890865, 34.787197, 27.065184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089751, 0.152106, -0.984281,
		-0.989093, 0.129499, -0.070177,
		0.116789, 0.979844, 0.162070,
		38.925903, 35.081150, 27.113804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340977, 34.756496, 26.646507>,  <38.844151, 34.395260, 27.000357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340977, 34.756496, 26.646507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627167, 35.024048, 26.727203>,  <38.798882, 35.184578, 26.775621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.627167, 35.024048, 26.727203>,  <38.340977, 34.756496, 26.646507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627167, 35.024048, 26.727203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028128, 0.316109, -0.948306,
		-0.698075, 0.672811, 0.244981,
		0.715471, 0.668880, 0.201743,
		38.841808, 35.224712, 26.787725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025234, 35.333431, 26.358044>,  <38.340977, 34.756496, 26.646507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025234, 35.333431, 26.358044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401691, 35.460888, 26.403170>,  <38.627563, 35.537361, 26.430246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401691, 35.460888, 26.403170>,  <38.025234, 35.333431, 26.358044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401691, 35.460888, 26.403170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088630, 0.554697, -0.827318,
		-0.326195, 0.768622, 0.550288,
		0.941138, 0.318639, 0.112816,
		38.684032, 35.556480, 26.437014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981594, 35.942596, 26.759226>,  <38.025234, 35.333431, 26.358044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981594, 35.942596, 26.759226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591415, 36.013580, 26.707064>,  <37.357307, 36.056171, 26.675766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591415, 36.013580, 26.707064>,  <37.981594, 35.942596, 26.759226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591415, 36.013580, 26.707064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184686, -0.336656, 0.923338,
		0.119958, 0.924754, 0.361166,
		-0.975449, 0.177464, -0.130404,
		37.298782, 36.066818, 26.667942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730511, 36.039104, 27.382671>,  <37.981594, 35.942596, 26.759226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730511, 36.039104, 27.382671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377182, 36.005314, 27.198235>,  <37.165184, 35.985039, 27.087572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377182, 36.005314, 27.198235>,  <37.730511, 36.039104, 27.382671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377182, 36.005314, 27.198235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399125, -0.380343, 0.834289,
		-0.245850, 0.920980, 0.302249,
		-0.883322, -0.084475, -0.461093,
		37.112186, 35.979973, 27.059906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252274, 36.277733, 27.892008>,  <37.730511, 36.039104, 27.382671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252274, 36.277733, 27.892008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 36.084816, 27.653835>,  <36.841049, 35.969067, 27.510931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 36.084816, 27.653835>,  <37.252274, 36.277733, 27.892008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995258, 36.084816, 27.653835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450663, -0.390605, 0.802702,
		-0.619712, 0.784109, 0.033631,
		-0.642542, -0.482287, -0.595431,
		36.802494, 35.940128, 27.475206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634224, 36.384159, 28.238199>,  <37.252274, 36.277733, 27.892008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634224, 36.384159, 28.238199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588379, 36.079945, 27.982559>,  <36.560871, 35.897415, 27.829174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588379, 36.079945, 27.982559>,  <36.634224, 36.384159, 28.238199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588379, 36.079945, 27.982559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338373, -0.574984, 0.744914,
		-0.934006, 0.301630, -0.191445,
		-0.114611, -0.760535, -0.639102,
		36.553997, 35.851784, 27.790829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024857, 36.104904, 28.403294>,  <36.634224, 36.384159, 28.238199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024857, 36.104904, 28.403294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207165, 35.807255, 28.207928>,  <36.316551, 35.628666, 28.090708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207165, 35.807255, 28.207928>,  <36.024857, 36.104904, 28.403294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207165, 35.807255, 28.207928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318461, -0.648721, 0.691190,
		-0.831178, -0.159483, -0.532643,
		0.455770, -0.744128, -0.488413,
		36.343895, 35.584015, 28.061403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482517, 35.559673, 28.459332>,  <36.024857, 36.104904, 28.403294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482517, 35.559673, 28.459332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833324, 35.396595, 28.357649>,  <36.043808, 35.298748, 28.296638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833324, 35.396595, 28.357649>,  <35.482517, 35.559673, 28.459332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833324, 35.396595, 28.357649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186235, -0.776203, 0.602350,
		-0.442892, -0.480931, -0.756672,
		0.877019, -0.407695, -0.254208,
		36.096432, 35.274288, 28.281385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354347, 34.866154, 28.366920>,  <35.482517, 35.559673, 28.459332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354347, 34.866154, 28.366920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738876, 34.858768, 28.476839>,  <35.969593, 34.854340, 28.542789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.738876, 34.858768, 28.476839>,  <35.354347, 34.866154, 28.366920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738876, 34.858768, 28.476839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231750, -0.593334, 0.770874,
		0.148815, -0.804744, -0.574665,
		0.961325, -0.018461, 0.274797,
		36.027275, 34.853230, 28.559278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504559, 34.232937, 28.726217>,  <35.354347, 34.866154, 28.366920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504559, 34.232937, 28.726217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823704, 34.445965, 28.839199>,  <36.015190, 34.573780, 28.906988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823704, 34.445965, 28.839199>,  <35.504559, 34.232937, 28.726217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823704, 34.445965, 28.839199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064488, -0.390453, 0.918361,
		0.599377, -0.750943, -0.277184,
		0.797865, 0.532570, 0.282456,
		36.063065, 34.605736, 28.923935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993919, 33.740726, 29.031847>,  <35.504559, 34.232937, 28.726217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993919, 33.740726, 29.031847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.080437, 34.108616, 29.162893>,  <36.132347, 34.329350, 29.241520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.080437, 34.108616, 29.162893>,  <35.993919, 33.740726, 29.031847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080437, 34.108616, 29.162893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132993, -0.360185, 0.923352,
		0.967227, -0.156148, -0.200223,
		0.216297, 0.919720, 0.327614,
		36.145325, 34.384533, 29.261177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623783, 33.640526, 29.449619>,  <35.993919, 33.740726, 29.031847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623783, 33.640526, 29.449619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437653, 33.967239, 29.586048>,  <36.325974, 34.163269, 29.667906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.437653, 33.967239, 29.586048>,  <36.623783, 33.640526, 29.449619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437653, 33.967239, 29.586048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204020, -0.275983, 0.939260,
		0.861304, 0.506650, -0.038218,
		-0.465329, 0.816786, 0.341072,
		36.298054, 34.212276, 29.688370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881145, 33.685211, 30.123316>,  <36.623783, 33.640526, 29.449619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881145, 33.685211, 30.123316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.590836, 33.960297, 30.130329>,  <36.416649, 34.125347, 30.134537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.590836, 33.960297, 30.130329>,  <36.881145, 33.685211, 30.123316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590836, 33.960297, 30.130329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004732, -0.030479, 0.999524,
		0.687920, 0.725343, 0.025375,
		-0.725771, 0.687713, 0.017535,
		36.373104, 34.166611, 30.135590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130287, 34.142391, 30.637728>,  <36.881145, 33.685211, 30.123316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130287, 34.142391, 30.637728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734806, 34.116970, 30.583426>,  <36.497517, 34.101719, 30.550844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734806, 34.116970, 30.583426>,  <37.130287, 34.142391, 30.637728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734806, 34.116970, 30.583426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126193, -0.135866, 0.982657,
		-0.080896, 0.988687, 0.126311,
		-0.988702, -0.063553, -0.135757,
		36.438194, 34.097904, 30.542698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.165051, 37.723381, 23.156252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856491, 37.470558, 23.126738>,  <36.671356, 37.318863, 23.109030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856491, 37.470558, 23.126738>,  <37.165051, 37.723381, 23.156252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856491, 37.470558, 23.126738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144960, -0.287438, 0.946766,
		-0.619621, 0.719638, 0.313353,
		-0.771399, -0.632060, -0.073784,
		36.625072, 37.280941, 23.104603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758900, 37.997993, 23.775457>,  <37.165051, 37.723381, 23.156252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758900, 37.997993, 23.775457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656139, 37.631744, 23.651760>,  <36.594482, 37.411995, 23.577541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656139, 37.631744, 23.651760>,  <36.758900, 37.997993, 23.775457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656139, 37.631744, 23.651760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099694, -0.343383, 0.933890,
		-0.961281, 0.209092, 0.179499,
		-0.256905, -0.915625, -0.309242,
		36.579067, 37.357056, 23.558987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071037, 37.791706, 23.993067>,  <36.758900, 37.997993, 23.775457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071037, 37.791706, 23.993067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288998, 37.461380, 23.934958>,  <36.419773, 37.263184, 23.900093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288998, 37.461380, 23.934958>,  <36.071037, 37.791706, 23.993067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288998, 37.461380, 23.934958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033411, -0.151730, 0.987857,
		-0.837834, -0.543139, -0.055087,
		0.544902, -0.825820, -0.145271,
		36.452469, 37.213634, 23.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819267, 37.453854, 24.478605>,  <36.071037, 37.791706, 23.993067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819267, 37.453854, 24.478605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136131, 37.228081, 24.385746>,  <36.326252, 37.092617, 24.330030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136131, 37.228081, 24.385746>,  <35.819267, 37.453854, 24.478605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136131, 37.228081, 24.385746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074412, -0.288215, 0.954670,
		-0.605759, -0.773527, -0.186313,
		0.792161, -0.564436, -0.232148,
		36.373779, 37.058750, 24.316101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785824, 36.842979, 24.864923>,  <35.819267, 37.453854, 24.478605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785824, 36.842979, 24.864923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174416, 36.845898, 24.770113>,  <36.407570, 36.847649, 24.713226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174416, 36.845898, 24.770113>,  <35.785824, 36.842979, 24.864923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174416, 36.845898, 24.770113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230789, -0.258795, 0.937956,
		-0.054500, -0.965905, -0.253096,
		0.971476, 0.007293, -0.237025,
		36.465858, 36.848083, 24.699005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011967, 36.307316, 25.239727>,  <35.785824, 36.842979, 24.864923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011967, 36.307316, 25.239727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345051, 36.513065, 25.157734>,  <36.544899, 36.636517, 25.108538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345051, 36.513065, 25.157734>,  <36.011967, 36.307316, 25.239727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345051, 36.513065, 25.157734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308858, -0.124229, 0.942960,
		0.459570, -0.848521, -0.262314,
		0.832708, 0.514374, -0.204980,
		36.594864, 36.667377, 25.096239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496128, 35.841702, 25.294062>,  <36.011967, 36.307316, 25.239727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496128, 35.841702, 25.294062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664368, 36.199196, 25.356466>,  <36.765312, 36.413692, 25.393909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664368, 36.199196, 25.356466>,  <36.496128, 35.841702, 25.294062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664368, 36.199196, 25.356466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422573, -0.345157, 0.838032,
		0.802825, -0.286550, -0.522840,
		0.420600, 0.893731, 0.156013,
		36.790546, 36.467316, 25.403271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113701, 35.629410, 25.418467>,  <36.496128, 35.841702, 25.294062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113701, 35.629410, 25.418467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054668, 35.989956, 25.581322>,  <37.019249, 36.206284, 25.679035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054668, 35.989956, 25.581322>,  <37.113701, 35.629410, 25.418467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054668, 35.989956, 25.581322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284451, -0.355573, 0.890312,
		0.947263, 0.247207, -0.203917,
		-0.147584, 0.901364, 0.407139,
		37.010395, 36.260365, 25.703463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703049, 35.833344, 25.818714>,  <37.113701, 35.629410, 25.418467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703049, 35.833344, 25.818714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409775, 36.039501, 25.996170>,  <37.233810, 36.163197, 26.102644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409775, 36.039501, 25.996170>,  <37.703049, 35.833344, 25.818714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409775, 36.039501, 25.996170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270960, -0.376950, 0.885714,
		0.623719, 0.769598, 0.136723,
		-0.733182, 0.515391, 0.443641,
		37.189819, 36.194118, 26.129263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142033, 36.281021, 26.071510>,  <37.703049, 35.833344, 25.818714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142033, 36.281021, 26.071510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477261, 36.063110, 26.083162>,  <38.678398, 35.932362, 26.090153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477261, 36.063110, 26.083162>,  <38.142033, 36.281021, 26.071510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477261, 36.063110, 26.083162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266584, 0.362349, -0.893105,
		0.475989, 0.756253, 0.448905,
		0.838074, -0.544779, 0.029130,
		38.728683, 35.899677, 26.091902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645931, 36.741577, 25.811224>,  <38.142033, 36.281021, 26.071510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645931, 36.741577, 25.811224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818233, 36.381344, 25.787937>,  <38.921616, 36.165203, 25.773964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818233, 36.381344, 25.787937>,  <38.645931, 36.741577, 25.811224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818233, 36.381344, 25.787937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288931, 0.198738, -0.936495,
		0.854966, 0.386581, 0.345815,
		0.430757, -0.900588, -0.058219,
		38.947460, 36.111168, 25.770472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261959, 36.879768, 25.621996>,  <38.645931, 36.741577, 25.811224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261959, 36.879768, 25.621996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212582, 36.501942, 25.500299>,  <39.182953, 36.275246, 25.427282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212582, 36.501942, 25.500299>,  <39.261959, 36.879768, 25.621996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212582, 36.501942, 25.500299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380620, 0.238069, -0.893561,
		0.916455, -0.226107, 0.330131,
		-0.123447, -0.944563, -0.304240,
		39.175549, 36.218575, 25.409027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775230, 36.742466, 25.115225>,  <39.261959, 36.879768, 25.621996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775230, 36.742466, 25.115225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525345, 36.440781, 25.034334>,  <39.375412, 36.259769, 24.985800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525345, 36.440781, 25.034334>,  <39.775230, 36.742466, 25.115225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525345, 36.440781, 25.034334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233003, 0.067128, -0.970156,
		0.745278, -0.653192, 0.133798,
		-0.624716, -0.754211, -0.202225,
		39.337929, 36.214516, 24.973667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189243, 36.162811, 24.702850>,  <39.775230, 36.742466, 25.115225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189243, 36.162811, 24.702850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797237, 36.170044, 24.623610>,  <39.562035, 36.174385, 24.576065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797237, 36.170044, 24.623610>,  <40.189243, 36.162811, 24.702850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797237, 36.170044, 24.623610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192443, -0.165987, -0.967168,
		-0.050368, -0.985962, 0.159191,
		-0.980015, 0.018079, -0.198102,
		39.503235, 36.175468, 24.564178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052250, 35.618610, 24.139019>,  <40.189243, 36.162811, 24.702850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052250, 35.618610, 24.139019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715038, 35.832985, 24.120813>,  <39.512711, 35.961609, 24.109890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715038, 35.832985, 24.120813>,  <40.052250, 35.618610, 24.139019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715038, 35.832985, 24.120813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124569, 0.112228, -0.985844,
		-0.523245, -0.836764, -0.161373,
		-0.843028, 0.535940, -0.045512,
		39.462132, 35.993767, 24.107161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692448, 35.356808, 23.590738>,  <40.052250, 35.618610, 24.139019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692448, 35.356808, 23.590738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466965, 35.681477, 23.651958>,  <39.331673, 35.876278, 23.688690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466965, 35.681477, 23.651958>,  <39.692448, 35.356808, 23.590738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466965, 35.681477, 23.651958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195681, 0.048786, -0.979453,
		-0.802457, -0.582079, 0.131327,
		-0.563712, 0.811668, 0.153051,
		39.297852, 35.924976, 23.697874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036972, 35.225952, 23.255629>,  <39.692448, 35.356808, 23.590738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036972, 35.225952, 23.255629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087273, 35.621780, 23.283758>,  <39.117455, 35.859276, 23.300636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087273, 35.621780, 23.283758>,  <39.036972, 35.225952, 23.255629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087273, 35.621780, 23.283758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202926, 0.095045, -0.974570,
		-0.971085, 0.108286, 0.212761,
		0.125754, 0.989566, 0.070322,
		39.125000, 35.918652, 23.304855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403980, 35.487759, 23.038240>,  <39.036972, 35.225952, 23.255629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403980, 35.487759, 23.038240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 35.768864, 22.994980>,  <38.854000, 35.937527, 22.969025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 35.768864, 22.994980>,  <38.403980, 35.487759, 23.038240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685242, 35.768864, 22.994980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260718, 0.113320, -0.958741,
		-0.661515, 0.702338, 0.262905,
		0.703153, 0.702766, -0.108149,
		38.896187, 35.979694, 22.962536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094395, 35.952957, 22.633450>,  <38.403980, 35.487759, 23.038240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094395, 35.952957, 22.633450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479332, 36.034515, 22.561537>,  <38.710293, 36.083450, 22.518389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479332, 36.034515, 22.561537>,  <38.094395, 35.952957, 22.633450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479332, 36.034515, 22.561537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196389, 0.064197, -0.978422,
		-0.187951, 0.976886, 0.101822,
		0.962344, 0.203892, -0.179784,
		38.768036, 36.095684, 22.507601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098793, 36.226082, 21.997768>,  <38.094395, 35.952957, 22.633450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098793, 36.226082, 21.997768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490597, 36.152660, 22.030922>,  <38.725677, 36.108608, 22.050814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490597, 36.152660, 22.030922>,  <38.098793, 36.226082, 21.997768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490597, 36.152660, 22.030922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067311, -0.089526, -0.993707,
		0.189815, 0.978925, -0.075336,
		0.979510, -0.183550, 0.082886,
		38.784451, 36.097595, 22.055788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378883, 36.622086, 21.471151>,  <38.098793, 36.226082, 21.997768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378883, 36.622086, 21.471151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640953, 36.332272, 21.556747>,  <38.798195, 36.158382, 21.608105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640953, 36.332272, 21.556747>,  <38.378883, 36.622086, 21.471151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640953, 36.332272, 21.556747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167753, -0.136661, -0.976311,
		0.736619, 0.675550, 0.032007,
		0.655173, -0.724539, 0.213992,
		38.837505, 36.114910, 21.620945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985344, 36.769135, 21.132839>,  <38.378883, 36.622086, 21.471151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985344, 36.769135, 21.132839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998585, 36.374592, 21.197340>,  <39.006531, 36.137867, 21.236040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998585, 36.374592, 21.197340>,  <38.985344, 36.769135, 21.132839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998585, 36.374592, 21.197340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125746, -0.155946, -0.979729,
		0.991510, 0.052711, 0.118868,
		0.033106, -0.986358, 0.161250,
		39.008518, 36.078686, 21.245714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608303, 36.551876, 20.778868>,  <38.985344, 36.769135, 21.132839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608303, 36.551876, 20.778868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367775, 36.233742, 20.809496>,  <39.223457, 36.042862, 20.827873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367775, 36.233742, 20.809496>,  <39.608303, 36.551876, 20.778868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367775, 36.233742, 20.809496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255589, -0.282261, -0.924663,
		0.757028, -0.536445, 0.373007,
		-0.601317, -0.795333, 0.076570,
		39.187378, 35.995140, 20.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.322914, 32.152565, 21.422373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437481, 32.534485, 21.454191>,  <33.506222, 32.763638, 21.473282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437481, 32.534485, 21.454191>,  <33.322914, 32.152565, 21.422373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437481, 32.534485, 21.454191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006810, -0.080996, 0.996691,
		0.958081, -0.286011, -0.016696,
		0.286416, 0.954797, 0.079548,
		33.523407, 32.820923, 21.478056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950050, 32.192070, 21.905207>,  <33.322914, 32.152565, 21.422373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950050, 32.192070, 21.905207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799995, 32.562843, 21.908646>,  <33.709961, 32.785305, 21.910709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799995, 32.562843, 21.908646>,  <33.950050, 32.192070, 21.905207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799995, 32.562843, 21.908646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212704, 0.077048, 0.974074,
		0.902236, 0.367240, -0.226065,
		-0.375137, 0.926930, 0.008598,
		33.687454, 32.840923, 21.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499092, 32.684181, 22.183941>,  <33.950050, 32.192070, 21.905207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499092, 32.684181, 22.183941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136547, 32.837318, 22.255417>,  <33.919018, 32.929199, 22.298302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136547, 32.837318, 22.255417>,  <34.499092, 32.684181, 22.183941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136547, 32.837318, 22.255417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253553, 0.154588, 0.954889,
		0.337948, 0.910788, -0.237184,
		-0.906367, 0.382842, 0.178691,
		33.864635, 32.952171, 22.309025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714375, 33.201267, 22.583319>,  <34.499092, 32.684181, 22.183941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714375, 33.201267, 22.583319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323761, 33.138451, 22.642263>,  <34.089394, 33.100761, 22.677631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.323761, 33.138451, 22.642263>,  <34.714375, 33.201267, 22.583319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323761, 33.138451, 22.642263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129858, 0.116487, 0.984666,
		-0.171797, 0.980698, -0.093361,
		-0.976536, -0.157039, 0.147364,
		34.030800, 33.091339, 22.686472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703873, 33.507446, 23.199785>,  <34.714375, 33.201267, 22.583319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703873, 33.507446, 23.199785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342312, 33.339397, 23.167643>,  <34.125374, 33.238567, 23.148357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342312, 33.339397, 23.167643>,  <34.703873, 33.507446, 23.199785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342312, 33.339397, 23.167643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094254, 0.012385, 0.995471,
		-0.417227, 0.907382, -0.050793,
		-0.903902, -0.420125, -0.080357,
		34.071140, 33.213360, 23.143536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230591, 33.886314, 23.701607>,  <34.703873, 33.507446, 23.199785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230591, 33.886314, 23.701607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076790, 33.525112, 23.624947>,  <33.984509, 33.308392, 23.578951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.076790, 33.525112, 23.624947>,  <34.230591, 33.886314, 23.701607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076790, 33.525112, 23.624947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087722, -0.242413, 0.966199,
		-0.918945, 0.354699, 0.172423,
		-0.384507, -0.903009, -0.191649,
		33.961437, 33.254208, 23.567451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903564, 33.700314, 24.299925>,  <34.230591, 33.886314, 23.701607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903564, 33.700314, 24.299925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.917336, 33.339500, 24.127811>,  <33.925598, 33.123013, 24.024544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.917336, 33.339500, 24.127811>,  <33.903564, 33.700314, 24.299925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917336, 33.339500, 24.127811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125122, -0.423262, 0.897326,
		-0.991544, -0.084733, 0.098291,
		0.034430, -0.902036, -0.430285,
		33.927666, 33.068890, 23.998726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458714, 33.390800, 24.715973>,  <33.903564, 33.700314, 24.299925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458714, 33.390800, 24.715973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724941, 33.150124, 24.539347>,  <33.884678, 33.005718, 24.433371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724941, 33.150124, 24.539347>,  <33.458714, 33.390800, 24.715973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724941, 33.150124, 24.539347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127017, -0.491694, 0.861454,
		-0.735445, -0.629447, -0.250833,
		0.665573, -0.601692, -0.441565,
		33.924614, 32.969616, 24.406878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266056, 32.753384, 24.895172>,  <33.458714, 33.390800, 24.715973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266056, 32.753384, 24.895172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654255, 32.707527, 24.810326>,  <33.887173, 32.680016, 24.759417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.654255, 32.707527, 24.810326>,  <33.266056, 32.753384, 24.895172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654255, 32.707527, 24.810326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110203, -0.571576, 0.813115,
		-0.214456, -0.812502, -0.542079,
		0.970497, -0.114639, -0.212118,
		33.945404, 32.673134, 24.746691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421246, 32.188042, 25.248188>,  <33.266056, 32.753384, 24.895172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421246, 32.188042, 25.248188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792442, 32.285919, 25.135790>,  <34.015160, 32.344646, 25.068352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792442, 32.285919, 25.135790>,  <33.421246, 32.188042, 25.248188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792442, 32.285919, 25.135790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368948, -0.498091, 0.784719,
		0.052051, -0.831885, -0.552502,
		0.927992, 0.244690, -0.280996,
		34.070839, 32.359325, 25.051491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796986, 31.535721, 25.054649>,  <33.421246, 32.188042, 25.248188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796986, 31.535721, 25.054649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032284, 31.844322, 25.151604>,  <34.173462, 32.029484, 25.209776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.032284, 31.844322, 25.151604>,  <33.796986, 31.535721, 25.054649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032284, 31.844322, 25.151604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495340, -0.580672, 0.646110,
		0.639221, -0.260009, -0.723735,
		0.588247, 0.771502, 0.242385,
		34.208759, 32.075771, 25.224319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497967, 31.161669, 25.227621>,  <33.796986, 31.535721, 25.054649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497967, 31.161669, 25.227621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.468426, 31.523378, 25.395826>,  <34.450699, 31.740404, 25.496750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.468426, 31.523378, 25.395826>,  <34.497967, 31.161669, 25.227621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468426, 31.523378, 25.395826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426501, -0.352517, 0.832964,
		0.901467, 0.240867, -0.359640,
		-0.073854, 0.904276, 0.420512,
		34.446270, 31.794661, 25.521980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114201, 31.146725, 25.493681>,  <34.497967, 31.161669, 25.227621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114201, 31.146725, 25.493681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910110, 31.428946, 25.690403>,  <34.787659, 31.598278, 25.808435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910110, 31.428946, 25.690403>,  <35.114201, 31.146725, 25.493681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910110, 31.428946, 25.690403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364356, -0.340658, 0.866716,
		0.779050, 0.621409, -0.083261,
		-0.510221, 0.705552, 0.491804,
		34.757046, 31.640612, 25.837944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549244, 31.310637, 26.046314>,  <35.114201, 31.146725, 25.493681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549244, 31.310637, 26.046314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192089, 31.463980, 26.140787>,  <34.977795, 31.555986, 26.197472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192089, 31.463980, 26.140787>,  <35.549244, 31.310637, 26.046314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192089, 31.463980, 26.140787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186587, -0.162364, 0.968929,
		0.409794, 0.909216, 0.073444,
		-0.892891, 0.383358, 0.236184,
		34.924221, 31.578987, 26.211641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267723, 31.640121, 25.903515>,  <35.549244, 31.310637, 26.046314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267723, 31.640121, 25.903515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646603, 31.511887, 25.905815>,  <36.873932, 31.434946, 25.907194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646603, 31.511887, 25.905815>,  <36.267723, 31.640121, 25.903515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646603, 31.511887, 25.905815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062826, -0.203146, -0.977131,
		0.314422, 0.925179, -0.212561,
		0.947202, -0.320585, 0.005748,
		36.930763, 31.415710, 25.907539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632481, 31.853411, 25.404955>,  <36.267723, 31.640121, 25.903515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632481, 31.853411, 25.404955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847485, 31.520241, 25.457598>,  <36.976486, 31.320339, 25.489183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847485, 31.520241, 25.457598>,  <36.632481, 31.853411, 25.404955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847485, 31.520241, 25.457598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159510, -0.052820, -0.985782,
		0.828033, 0.550862, 0.104468,
		0.537511, -0.832924, 0.131605,
		37.008739, 31.270363, 25.497080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288528, 31.883842, 25.070908>,  <36.632481, 31.853411, 25.404955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288528, 31.883842, 25.070908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183239, 31.498447, 25.090513>,  <37.120064, 31.267210, 25.102276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183239, 31.498447, 25.090513>,  <37.288528, 31.883842, 25.070908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183239, 31.498447, 25.090513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276286, -0.123964, -0.953047,
		0.924326, -0.237323, 0.298828,
		-0.263224, -0.963489, 0.049015,
		37.104271, 31.209400, 25.105217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828186, 31.440441, 24.819145>,  <37.288528, 31.883842, 25.070908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828186, 31.440441, 24.819145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508324, 31.206184, 24.766119>,  <37.316406, 31.065630, 24.734303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508324, 31.206184, 24.766119>,  <37.828186, 31.440441, 24.819145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508324, 31.206184, 24.766119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190034, -0.037407, -0.981065,
		0.569593, -0.809707, 0.141205,
		-0.799656, -0.585642, -0.132565,
		37.268425, 31.030493, 24.726349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974930, 30.861906, 24.405146>,  <37.828186, 31.440441, 24.819145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974930, 30.861906, 24.405146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579613, 30.908201, 24.365372>,  <37.342422, 30.935978, 24.341507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579613, 30.908201, 24.365372>,  <37.974930, 30.861906, 24.405146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579613, 30.908201, 24.365372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095387, -0.040004, -0.994636,
		-0.119096, -0.992474, 0.028495,
		-0.988290, 0.115739, -0.099433,
		37.283127, 30.942923, 24.335543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781937, 30.314756, 23.874546>,  <37.974930, 30.861906, 24.405146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781937, 30.314756, 23.874546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506386, 30.604660, 23.879805>,  <37.341057, 30.778603, 23.882959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506386, 30.604660, 23.879805>,  <37.781937, 30.314756, 23.874546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506386, 30.604660, 23.879805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035257, -0.015387, -0.999260,
		-0.724021, -0.688830, 0.036153,
		-0.688877, 0.724759, 0.013145,
		37.299725, 30.822088, 23.883749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378448, 30.053566, 23.422859>,  <37.781937, 30.314756, 23.874546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378448, 30.053566, 23.422859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264122, 30.436474, 23.440481>,  <37.195526, 30.666220, 23.451056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264122, 30.436474, 23.440481>,  <37.378448, 30.053566, 23.422859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264122, 30.436474, 23.440481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030316, 0.036919, -0.998858,
		-0.957805, -0.286826, 0.018469,
		-0.285817, 0.957271, 0.044056,
		37.178375, 30.723656, 23.453697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825253, 30.239162, 22.846802>,  <37.378448, 30.053566, 23.422859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825253, 30.239162, 22.846802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915630, 30.600914, 22.991602>,  <36.969856, 30.817965, 23.078482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915630, 30.600914, 22.991602>,  <36.825253, 30.239162, 22.846802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915630, 30.600914, 22.991602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164737, 0.401734, -0.900817,
		-0.960110, 0.143900, 0.239755,
		0.225945, 0.904380, 0.362003,
		36.983414, 30.872229, 23.100203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333702, 30.692072, 22.521322>,  <36.825253, 30.239162, 22.846802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333702, 30.692072, 22.521322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637054, 30.923326, 22.641729>,  <36.819065, 31.062078, 22.713974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.637054, 30.923326, 22.641729>,  <36.333702, 30.692072, 22.521322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637054, 30.923326, 22.641729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081477, 0.542281, -0.836237,
		-0.646695, 0.609663, 0.458363,
		0.758385, 0.578137, 0.301017,
		36.864571, 31.096767, 22.732035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096500, 31.363834, 22.631197>,  <36.333702, 30.692072, 22.521322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096500, 31.363834, 22.631197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487881, 31.391817, 22.553495>,  <36.722710, 31.408606, 22.506874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.487881, 31.391817, 22.553495>,  <36.096500, 31.363834, 22.631197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487881, 31.391817, 22.553495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201959, 0.519781, -0.830085,
		0.042899, 0.851431, 0.522710,
		0.978454, 0.069956, -0.194252,
		36.781418, 31.412804, 22.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153206, 32.008987, 22.436304>,  <36.096500, 31.363834, 22.631197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153206, 32.008987, 22.436304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.469479, 31.807638, 22.296909>,  <36.659241, 31.686829, 22.213272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.469479, 31.807638, 22.296909>,  <36.153206, 32.008987, 22.436304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469479, 31.807638, 22.296909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137264, 0.408967, -0.902167,
		0.596645, 0.761159, 0.254267,
		0.790679, -0.503372, -0.348488,
		36.706684, 31.656626, 22.192364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611794, 32.582119, 22.210226>,  <36.153206, 32.008987, 22.436304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611794, 32.582119, 22.210226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709801, 32.231777, 22.043924>,  <36.768604, 32.021572, 21.944143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709801, 32.231777, 22.043924>,  <36.611794, 32.582119, 22.210226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709801, 32.231777, 22.043924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059267, 0.414494, -0.908120,
		0.967706, 0.247143, 0.049648,
		0.245014, -0.875851, -0.415756,
		36.783306, 31.969023, 21.919197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199745, 32.725365, 21.649893>,  <36.611794, 32.582119, 22.210226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199745, 32.725365, 21.649893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011196, 32.381306, 21.571970>,  <36.898067, 32.174870, 21.525215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011196, 32.381306, 21.571970>,  <37.199745, 32.725365, 21.649893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011196, 32.381306, 21.571970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260336, 0.346752, -0.901104,
		0.842633, -0.374042, -0.387378,
		-0.471375, -0.860149, -0.194808,
		36.869785, 32.123260, 21.513527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368542, 32.560047, 20.961689>,  <37.199745, 32.725365, 21.649893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368542, 32.560047, 20.961689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041557, 32.343307, 21.039825>,  <36.845367, 32.213264, 21.086706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041557, 32.343307, 21.039825>,  <37.368542, 32.560047, 20.961689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041557, 32.343307, 21.039825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314236, 0.135324, -0.939651,
		0.482712, -0.829512, -0.280890,
		-0.817463, -0.541846, 0.195340,
		36.796318, 32.180756, 21.098427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998989, 32.076519, 20.798399>,  <37.368542, 32.560047, 20.961689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998989, 32.076519, 20.798399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376892, 32.092602, 20.668280>,  <38.603634, 32.102253, 20.590208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376892, 32.092602, 20.668280>,  <37.998989, 32.076519, 20.798399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376892, 32.092602, 20.668280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325538, 0.000571, 0.945529,
		0.038205, -0.999191, -0.012550,
		0.944757, 0.040210, -0.325297,
		38.660320, 32.104664, 20.570690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401970, 31.522610, 21.131424>,  <37.998989, 32.076519, 20.798399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401970, 31.522610, 21.131424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688671, 31.775795, 21.014376>,  <38.860691, 31.927706, 20.944147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.688671, 31.775795, 21.014376>,  <38.401970, 31.522610, 21.131424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688671, 31.775795, 21.014376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386945, -0.011914, 0.922026,
		0.580121, -0.774091, -0.253461,
		0.716752, 0.632962, -0.292619,
		38.903698, 31.965683, 20.926590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947567, 31.175566, 21.294394>,  <38.401970, 31.522610, 21.131424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947567, 31.175566, 21.294394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076233, 31.552448, 21.256912>,  <39.153431, 31.778578, 21.234425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076233, 31.552448, 21.256912>,  <38.947567, 31.175566, 21.294394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076233, 31.552448, 21.256912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423397, -0.054613, 0.904297,
		0.846917, -0.330551, -0.416494,
		0.321662, 0.942207, -0.093702,
		39.172733, 31.835110, 21.228802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619976, 31.177448, 21.546820>,  <38.947567, 31.175566, 21.294394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619976, 31.177448, 21.546820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529690, 31.567030, 21.555408>,  <39.475517, 31.800779, 21.560562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529690, 31.567030, 21.555408>,  <39.619976, 31.177448, 21.546820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529690, 31.567030, 21.555408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295894, 0.047541, 0.954037,
		0.928169, 0.221699, -0.298919,
		-0.225720, 0.973955, 0.021473,
		39.461975, 31.859217, 21.561850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230083, 31.489447, 21.810806>,  <39.619976, 31.177448, 21.546820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230083, 31.489447, 21.810806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919865, 31.732153, 21.880501>,  <39.733734, 31.877777, 21.922318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919865, 31.732153, 21.880501>,  <40.230083, 31.489447, 21.810806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919865, 31.732153, 21.880501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311550, 0.127829, 0.941593,
		0.549054, 0.784535, -0.288175,
		-0.775549, 0.606766, 0.174237,
		39.687199, 31.914183, 21.932772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433620, 32.071487, 22.221518>,  <40.230083, 31.489447, 21.810806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433620, 32.071487, 22.221518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050838, 32.148251, 22.308617>,  <39.821171, 32.194309, 22.360876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050838, 32.148251, 22.308617>,  <40.433620, 32.071487, 22.221518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050838, 32.148251, 22.308617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274393, 0.353622, 0.894237,
		0.094613, 0.915490, -0.391058,
		-0.956952, 0.191910, 0.217747,
		39.763752, 32.205822, 22.373941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361694, 32.845921, 22.507830>,  <40.433620, 32.071487, 22.221518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361694, 32.845921, 22.507830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056423, 32.607327, 22.607246>,  <39.873260, 32.464172, 22.666897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056423, 32.607327, 22.607246>,  <40.361694, 32.845921, 22.507830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056423, 32.607327, 22.607246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032496, 0.348713, 0.936666,
		-0.645375, 0.722917, -0.246746,
		-0.763175, -0.596482, 0.248542,
		39.827469, 32.428383, 22.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023315, 33.237587, 22.963604>,  <40.361694, 32.845921, 22.507830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023315, 33.237587, 22.963604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.882118, 32.868587, 23.026066>,  <39.797401, 32.647186, 23.063543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.882118, 32.868587, 23.026066>,  <40.023315, 33.237587, 22.963604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882118, 32.868587, 23.026066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128467, 0.213107, 0.968546,
		-0.926765, 0.321827, -0.193736,
		-0.352991, -0.922503, 0.156156,
		39.776222, 32.591835, 23.072912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502968, 33.381626, 23.431801>,  <40.023315, 33.237587, 22.963604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502968, 33.381626, 23.431801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602261, 32.995884, 23.468466>,  <39.661839, 32.764439, 23.490465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602261, 32.995884, 23.468466>,  <39.502968, 33.381626, 23.431801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602261, 32.995884, 23.468466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233199, 0.032350, 0.971891,
		-0.940212, -0.262631, -0.216855,
		0.248234, -0.964354, 0.091661,
		39.676731, 32.706577, 23.495964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926228, 32.947166, 23.837023>,  <39.502968, 33.381626, 23.431801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926228, 32.947166, 23.837023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267326, 32.742249, 23.877777>,  <39.471985, 32.619297, 23.902229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267326, 32.742249, 23.877777>,  <38.926228, 32.947166, 23.837023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267326, 32.742249, 23.877777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187965, -0.118987, 0.974942,
		-0.487331, -0.850529, -0.197758,
		0.852747, -0.512291, 0.101883,
		39.523151, 32.588562, 23.908342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803719, 32.417263, 24.406918>,  <38.926228, 32.947166, 23.837023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803719, 32.417263, 24.406918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201756, 32.424973, 24.368076>,  <39.440578, 32.429600, 24.344772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201756, 32.424973, 24.368076>,  <38.803719, 32.417263, 24.406918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201756, 32.424973, 24.368076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098336, -0.079353, 0.991985,
		0.011417, -0.996660, -0.080858,
		0.995088, 0.019276, -0.097101,
		39.500282, 32.430756, 24.338945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084545, 31.950502, 25.001059>,  <38.803719, 32.417263, 24.406918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084545, 31.950502, 25.001059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404476, 32.167263, 24.897818>,  <39.596436, 32.297318, 24.835873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404476, 32.167263, 24.897818>,  <39.084545, 31.950502, 25.001059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404476, 32.167263, 24.897818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341740, -0.057625, 0.938026,
		0.493444, -0.838465, -0.231279,
		0.799829, 0.541901, -0.258102,
		39.644424, 32.329834, 24.820387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733337, 31.505863, 25.156042>,  <39.084545, 31.950502, 25.001059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733337, 31.505863, 25.156042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844013, 31.890247, 25.156355>,  <39.910419, 32.120876, 25.156544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844013, 31.890247, 25.156355>,  <39.733337, 31.505863, 25.156042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844013, 31.890247, 25.156355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445358, -0.128955, 0.886017,
		0.851527, -0.244805, -0.463652,
		0.276692, 0.960958, 0.000783,
		39.927021, 32.178535, 25.156590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496723, 31.557226, 25.297197>,  <39.733337, 31.505863, 25.156042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496723, 31.557226, 25.297197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.374798, 31.926064, 25.392557>,  <40.301643, 32.147366, 25.449774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.374798, 31.926064, 25.392557>,  <40.496723, 31.557226, 25.297197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374798, 31.926064, 25.392557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607465, -0.004563, 0.794333,
		0.733537, 0.386942, -0.558748,
		-0.304811, 0.922093, 0.238401,
		40.283356, 32.202690, 25.464077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.927067, 35.961296, 20.300131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552818, 35.841740, 20.375259>,  <39.328270, 35.770004, 20.420338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552818, 35.841740, 20.375259>,  <39.927067, 35.961296, 20.300131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552818, 35.841740, 20.375259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103159, -0.277339, -0.955218,
		0.337599, -0.913097, 0.228650,
		-0.935620, -0.298893, 0.187824,
		39.272133, 35.752071, 20.431606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838665, 35.266815, 20.050125>,  <39.927067, 35.961296, 20.300131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838665, 35.266815, 20.050125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475037, 35.433403, 20.054901>,  <39.256859, 35.533356, 20.057768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475037, 35.433403, 20.054901>,  <39.838665, 35.266815, 20.050125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475037, 35.433403, 20.054901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169384, -0.343247, -0.923845,
		-0.380654, -0.841864, 0.382580,
		-0.909072, 0.416469, 0.011940,
		39.202316, 35.558342, 20.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534676, 34.898815, 19.611790>,  <39.838665, 35.266815, 20.050125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534676, 34.898815, 19.611790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263645, 35.191547, 19.640953>,  <39.101028, 35.367188, 19.658451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263645, 35.191547, 19.640953>,  <39.534676, 34.898815, 19.611790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263645, 35.191547, 19.640953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324486, -0.208512, -0.922622,
		-0.660001, -0.648804, 0.378751,
		-0.677575, 0.731831, 0.072909,
		39.060371, 35.411095, 19.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946239, 34.678280, 19.263153>,  <39.534676, 34.898815, 19.611790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946239, 34.678280, 19.263153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863781, 35.069618, 19.255701>,  <38.814304, 35.304420, 19.251230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.863781, 35.069618, 19.255701>,  <38.946239, 34.678280, 19.263153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863781, 35.069618, 19.255701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503357, -0.122352, -0.855372,
		-0.839127, -0.166958, 0.517678,
		-0.206151, 0.978343, -0.018629,
		38.801937, 35.363121, 19.250113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263714, 34.709442, 19.028223>,  <38.946239, 34.678280, 19.263153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263714, 34.709442, 19.028223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392006, 35.082298, 18.961002>,  <38.468983, 35.306011, 18.920670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392006, 35.082298, 18.961002>,  <38.263714, 34.709442, 19.028223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392006, 35.082298, 18.961002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465237, 0.000493, -0.885186,
		-0.825036, 0.362093, 0.433825,
		0.320733, 0.932142, -0.168053,
		38.488228, 35.361942, 18.910587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728306, 34.992558, 18.600006>,  <38.263714, 34.709442, 19.028223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728306, 34.992558, 18.600006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043190, 35.234165, 18.550259>,  <38.232121, 35.379128, 18.520411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.043190, 35.234165, 18.550259>,  <37.728306, 34.992558, 18.600006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043190, 35.234165, 18.550259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223025, 0.090824, -0.970572,
		-0.574947, 0.791779, 0.206208,
		0.787208, 0.604017, -0.124368,
		38.279354, 35.415371, 18.512949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551929, 35.599033, 18.312119>,  <37.728306, 34.992558, 18.600006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551929, 35.599033, 18.312119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932392, 35.525280, 18.213085>,  <38.160671, 35.481026, 18.153666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932392, 35.525280, 18.213085>,  <37.551929, 35.599033, 18.312119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932392, 35.525280, 18.213085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249497, 0.013117, -0.968287,
		0.181786, 0.982766, -0.033527,
		0.951160, -0.184386, -0.247581,
		38.217739, 35.469963, 18.138811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770336, 35.986626, 17.635626>,  <37.551929, 35.599033, 18.312119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770336, 35.986626, 17.635626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052826, 35.708641, 17.689692>,  <38.222321, 35.541851, 17.722132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052826, 35.708641, 17.689692>,  <37.770336, 35.986626, 17.635626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052826, 35.708641, 17.689692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051646, -0.240977, -0.969156,
		0.706101, 0.677462, -0.206076,
		0.706225, -0.694965, 0.135165,
		38.264694, 35.500153, 17.730242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269363, 36.142632, 17.123508>,  <37.770336, 35.986626, 17.635626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269363, 36.142632, 17.123508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301254, 35.759357, 17.233435>,  <38.320389, 35.529392, 17.299391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301254, 35.759357, 17.233435>,  <38.269363, 36.142632, 17.123508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301254, 35.759357, 17.233435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046131, -0.278942, -0.959199,
		0.995749, 0.063799, -0.066442,
		0.079729, -0.958186, 0.274813,
		38.325172, 35.471901, 17.315878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665985, 35.922173, 16.656822>,  <38.269363, 36.142632, 17.123508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665985, 35.922173, 16.656822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527157, 35.582779, 16.816628>,  <38.443859, 35.379143, 16.912510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527157, 35.582779, 16.816628>,  <38.665985, 35.922173, 16.656822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527157, 35.582779, 16.816628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074591, -0.449617, -0.890101,
		0.934866, -0.279132, 0.219340,
		-0.347075, -0.848486, 0.399512,
		38.423035, 35.328232, 16.936481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163239, 35.476654, 16.441290>,  <38.665985, 35.922173, 16.656822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163239, 35.476654, 16.441290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838184, 35.263775, 16.536272>,  <38.643150, 35.136047, 16.593262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838184, 35.263775, 16.536272>,  <39.163239, 35.476654, 16.441290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838184, 35.263775, 16.536272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009827, -0.394892, -0.918675,
		0.582687, -0.748883, 0.315674,
		-0.812637, -0.532198, 0.237458,
		38.594395, 35.104115, 16.607510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217327, 34.838066, 16.097891>,  <39.163239, 35.476654, 16.441290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217327, 34.838066, 16.097891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.828777, 34.900806, 16.169256>,  <38.595646, 34.938450, 16.212076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.828777, 34.900806, 16.169256>,  <39.217327, 34.838066, 16.097891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828777, 34.900806, 16.169256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216293, -0.273386, -0.937271,
		-0.098234, -0.949030, 0.299486,
		-0.971374, 0.156848, 0.178413,
		38.537365, 34.947861, 16.222780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817051, 34.352306, 15.760774>,  <39.217327, 34.838066, 16.097891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817051, 34.352306, 15.760774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.568794, 34.659660, 15.823245>,  <38.419838, 34.844070, 15.860727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.568794, 34.659660, 15.823245>,  <38.817051, 34.352306, 15.760774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568794, 34.659660, 15.823245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271841, -0.024034, -0.962042,
		-0.735461, -0.639541, 0.223794,
		-0.620644, 0.768381, 0.156177,
		38.382603, 34.890175, 15.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266689, 34.078503, 15.667337>,  <38.817051, 34.352306, 15.760774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266689, 34.078503, 15.667337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246876, 34.474010, 15.610950>,  <38.234989, 34.711315, 15.577117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.246876, 34.474010, 15.610950>,  <38.266689, 34.078503, 15.667337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246876, 34.474010, 15.610950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226857, -0.148593, -0.962526,
		-0.972668, -0.015698, 0.231670,
		-0.049534, 0.988774, -0.140971,
		38.232014, 34.770641, 15.568658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355534, 33.463764, 15.600999>,  <38.266689, 34.078503, 15.667337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355534, 33.463764, 15.600999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121288, 33.185211, 15.435059>,  <37.980740, 33.018078, 15.335494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121288, 33.185211, 15.435059>,  <38.355534, 33.463764, 15.600999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121288, 33.185211, 15.435059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090653, -0.452313, 0.887240,
		-0.805503, 0.557190, 0.201752,
		-0.585616, -0.696385, -0.414851,
		37.945602, 32.976295, 15.310603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766392, 33.417152, 16.044416>,  <38.355534, 33.463764, 15.600999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766392, 33.417152, 16.044416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821571, 33.071091, 15.851551>,  <37.854679, 32.863453, 15.735832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821571, 33.071091, 15.851551>,  <37.766392, 33.417152, 16.044416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821571, 33.071091, 15.851551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032511, -0.490510, 0.870829,
		-0.989905, -0.104455, -0.095793,
		0.137950, -0.865153, -0.482162,
		37.862957, 32.811546, 15.706903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362366, 33.057266, 16.417751>,  <37.766392, 33.417152, 16.044416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362366, 33.057266, 16.417751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548973, 32.769001, 16.212612>,  <37.660938, 32.596043, 16.089529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548973, 32.769001, 16.212612>,  <37.362366, 33.057266, 16.417751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548973, 32.769001, 16.212612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017335, -0.587144, 0.809297,
		-0.884344, -0.368658, -0.286404,
		0.466514, -0.720662, -0.512847,
		37.688927, 32.552803, 16.058758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016220, 32.456196, 16.572565>,  <37.362366, 33.057266, 16.417751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016220, 32.456196, 16.572565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378464, 32.340862, 16.448153>,  <37.595810, 32.271660, 16.373505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378464, 32.340862, 16.448153>,  <37.016220, 32.456196, 16.572565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378464, 32.340862, 16.448153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105352, -0.557441, 0.823505,
		-0.410828, -0.778538, -0.474445,
		0.905605, -0.288335, -0.311033,
		37.650146, 32.254360, 16.354843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093307, 31.730968, 16.725794>,  <37.016220, 32.456196, 16.572565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093307, 31.730968, 16.725794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468838, 31.864775, 16.693041>,  <37.694157, 31.945059, 16.673389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468838, 31.864775, 16.693041>,  <37.093307, 31.730968, 16.725794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468838, 31.864775, 16.693041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223076, -0.409528, 0.884604,
		0.262381, -0.848755, -0.459098,
		0.938825, 0.334517, -0.081884,
		37.750484, 31.965130, 16.668476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482525, 31.185438, 17.028049>,  <37.093307, 31.730968, 16.725794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482525, 31.185438, 17.028049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728539, 31.500242, 17.008652>,  <37.876144, 31.689125, 16.997013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.728539, 31.500242, 17.008652>,  <37.482525, 31.185438, 17.028049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728539, 31.500242, 17.008652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394272, -0.253689, 0.883285,
		0.682852, -0.562367, -0.466323,
		0.615031, 0.787010, -0.048494,
		37.913048, 31.736345, 16.994104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176868, 30.924433, 17.133732>,  <37.482525, 31.185438, 17.028049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176868, 30.924433, 17.133732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107586, 31.304558, 17.237196>,  <38.066017, 31.532633, 17.299274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107586, 31.304558, 17.237196>,  <38.176868, 30.924433, 17.133732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107586, 31.304558, 17.237196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327129, -0.192207, 0.925226,
		0.928970, 0.244872, -0.277583,
		-0.173209, 0.950313, 0.258659,
		38.055622, 31.589651, 17.314795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887520, 31.089104, 17.309916>,  <38.176868, 30.924433, 17.133732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887520, 31.089104, 17.309916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648201, 31.353415, 17.491205>,  <38.504608, 31.512001, 17.599979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648201, 31.353415, 17.491205>,  <38.887520, 31.089104, 17.309916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648201, 31.353415, 17.491205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516250, -0.114695, 0.848723,
		0.612800, 0.741766, -0.272505,
		-0.598299, 0.660779, 0.453222,
		38.468712, 31.551647, 17.627172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280609, 31.319511, 17.873455>,  <38.887520, 31.089104, 17.309916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280609, 31.319511, 17.873455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911709, 31.442757, 17.966854>,  <38.690369, 31.516705, 18.022894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.911709, 31.442757, 17.966854>,  <39.280609, 31.319511, 17.873455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911709, 31.442757, 17.966854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262752, 0.056525, 0.963206,
		0.283579, 0.949669, -0.133088,
		-0.922250, 0.308114, 0.233498,
		38.635033, 31.535191, 18.036903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393543, 32.031242, 18.221495>,  <39.280609, 31.319511, 17.873455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393543, 32.031242, 18.221495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030987, 31.906843, 18.335855>,  <38.813454, 31.832203, 18.404472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.030987, 31.906843, 18.335855>,  <39.393543, 32.031242, 18.221495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030987, 31.906843, 18.335855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231415, 0.200673, 0.951933,
		-0.353423, 0.928983, -0.109918,
		-0.906388, -0.310998, 0.285903,
		38.759071, 31.813543, 18.421627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946621, 32.585213, 18.516502>,  <39.393543, 32.031242, 18.221495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946621, 32.585213, 18.516502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818054, 32.233139, 18.656200>,  <38.740913, 32.021896, 18.740019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818054, 32.233139, 18.656200>,  <38.946621, 32.585213, 18.516502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818054, 32.233139, 18.656200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034229, 0.357776, 0.933180,
		-0.946317, 0.311898, -0.084869,
		-0.321422, -0.880179, 0.349245,
		38.721626, 31.969086, 18.760975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618614, 32.803444, 19.111588>,  <38.946621, 32.585213, 18.516502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618614, 32.803444, 19.111588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604527, 32.412861, 19.196709>,  <38.596073, 32.178509, 19.247782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.604527, 32.412861, 19.196709>,  <38.618614, 32.803444, 19.111588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604527, 32.412861, 19.196709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129435, 0.206683, 0.969809,
		-0.990962, 0.061698, 0.119110,
		-0.035218, -0.976461, 0.212801,
		38.593960, 32.119923, 19.260550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086304, 32.751820, 19.635210>,  <38.618614, 32.803444, 19.111588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086304, 32.751820, 19.635210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335800, 32.439552, 19.650686>,  <38.485500, 32.252193, 19.659971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.335800, 32.439552, 19.650686>,  <38.086304, 32.751820, 19.635210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335800, 32.439552, 19.650686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020081, 0.065489, 0.997651,
		-0.781370, -0.621503, 0.056525,
		0.623745, -0.780670, 0.038691,
		38.522923, 32.205353, 19.662294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954895, 32.507595, 20.230137>,  <38.086304, 32.751820, 19.635210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954895, 32.507595, 20.230137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292233, 32.306511, 20.154192>,  <38.494637, 32.185860, 20.108625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.292233, 32.306511, 20.154192>,  <37.954895, 32.507595, 20.230137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292233, 32.306511, 20.154192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230590, 0.019409, 0.972857,
		-0.485379, -0.864238, 0.132288,
		0.843348, -0.502709, -0.189864,
		38.545238, 32.155697, 20.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202534, 32.352928, 20.233368>,  <37.954895, 32.507595, 20.230137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202534, 32.352928, 20.233368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858677, 32.280529, 20.424473>,  <36.652363, 32.237091, 20.539135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858677, 32.280529, 20.424473>,  <37.202534, 32.352928, 20.233368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858677, 32.280529, 20.424473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510137, 0.253135, -0.821999,
		0.027843, -0.950348, -0.309940,
		-0.859642, -0.180999, 0.477760,
		36.600784, 32.226231, 20.567801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825066, 31.851877, 19.921148>,  <37.202534, 32.352928, 20.233368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825066, 31.851877, 19.921148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.550671, 32.055904, 20.128706>,  <36.386032, 32.178322, 20.253241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.550671, 32.055904, 20.128706>,  <36.825066, 31.851877, 19.921148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550671, 32.055904, 20.128706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542971, 0.115872, -0.831718,
		-0.484358, -0.852294, 0.197465,
		-0.685988, 0.510068, 0.518895,
		36.344875, 32.208923, 20.284374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325176, 31.613035, 19.556147>,  <36.825066, 31.851877, 19.921148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325176, 31.613035, 19.556147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163483, 31.914171, 19.763926>,  <36.066467, 32.094852, 19.888594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.163483, 31.914171, 19.763926>,  <36.325176, 31.613035, 19.556147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163483, 31.914171, 19.763926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436855, 0.340041, -0.832784,
		-0.803586, -0.563565, 0.191425,
		-0.404236, 0.752838, 0.519448,
		36.042213, 32.140022, 19.919760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572342, 31.538162, 19.468037>,  <36.325176, 31.613035, 19.556147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572342, 31.538162, 19.468037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657768, 31.915375, 19.570080>,  <35.709023, 32.141705, 19.631306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657768, 31.915375, 19.570080>,  <35.572342, 31.538162, 19.468037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657768, 31.915375, 19.570080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477405, 0.328570, -0.814939,
		-0.852335, 0.052250, 0.520379,
		0.213561, 0.943033, 0.255108,
		35.721836, 32.198284, 19.646612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997959, 31.912575, 19.292572>,  <35.572342, 31.538162, 19.468037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997959, 31.912575, 19.292572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 32.177029, 19.317104>,  <35.476524, 32.335701, 19.331823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297062, 32.177029, 19.317104>,  <34.997959, 31.912575, 19.292572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297062, 32.177029, 19.317104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286213, 0.404298, -0.868692,
		-0.599115, 0.632018, 0.491542,
		0.747758, 0.661132, 0.061329,
		35.521389, 32.375370, 19.335503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702774, 32.514931, 19.061483>,  <34.997959, 31.912575, 19.292572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702774, 32.514931, 19.061483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093605, 32.580418, 19.007065>,  <35.328106, 32.619709, 18.974413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.093605, 32.580418, 19.007065>,  <34.702774, 32.514931, 19.061483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093605, 32.580418, 19.007065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196473, 0.447655, -0.872355,
		-0.081916, 0.879091, 0.469561,
		0.977081, 0.163716, -0.136048,
		35.386730, 32.629532, 18.966251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715893, 33.170670, 18.788181>,  <34.702774, 32.514931, 19.061483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715893, 33.170670, 18.788181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074951, 33.019176, 18.698036>,  <35.290386, 32.928280, 18.643950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074951, 33.019176, 18.698036>,  <34.715893, 33.170670, 18.788181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074951, 33.019176, 18.698036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090013, 0.343026, -0.935003,
		0.431419, 0.859591, 0.273827,
		0.897650, -0.378730, -0.225362,
		35.344246, 32.905556, 18.630428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558311, 33.931839, 18.787169>,  <34.715893, 33.170670, 18.788181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558311, 33.931839, 18.787169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160568, 33.899170, 18.814268>,  <33.921925, 33.879570, 18.830528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160568, 33.899170, 18.814268>,  <34.558311, 33.931839, 18.787169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160568, 33.899170, 18.814268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087005, -0.261978, 0.961144,
		-0.060748, 0.961612, 0.267604,
		-0.994354, -0.081671, 0.067751,
		33.862263, 33.874668, 18.834593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356232, 34.315716, 19.384541>,  <34.558311, 33.931839, 18.787169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356232, 34.315716, 19.384541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064697, 34.053173, 19.306570>,  <33.889774, 33.895649, 19.259789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.064697, 34.053173, 19.306570>,  <34.356232, 34.315716, 19.384541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064697, 34.053173, 19.306570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116449, -0.161718, 0.979942,
		-0.674710, 0.736919, 0.041435,
		-0.728839, -0.656352, -0.194926,
		33.846046, 33.856266, 19.248093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777462, 34.463356, 19.675817>,  <34.356232, 34.315716, 19.384541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777462, 34.463356, 19.675817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724602, 34.068314, 19.641951>,  <33.692886, 33.831287, 19.621630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724602, 34.068314, 19.641951>,  <33.777462, 34.463356, 19.675817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724602, 34.068314, 19.641951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289995, -0.043159, 0.956055,
		-0.947860, 0.150898, -0.280698,
		-0.132152, -0.987607, -0.084669,
		33.684956, 33.772030, 19.616550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276287, 34.402981, 20.194244>,  <33.777462, 34.463356, 19.675817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276287, 34.402981, 20.194244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384304, 34.028934, 20.102474>,  <33.449112, 33.804508, 20.047411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384304, 34.028934, 20.102474>,  <33.276287, 34.402981, 20.194244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384304, 34.028934, 20.102474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083446, -0.260112, 0.961966,
		-0.959227, -0.240623, -0.148272,
		0.270038, -0.935116, -0.229428,
		33.465317, 33.748398, 20.033646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679787, 33.841423, 20.319832>,  <33.276287, 34.402981, 20.194244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679787, 33.841423, 20.319832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026932, 33.643242, 20.334461>,  <33.235218, 33.524334, 20.343239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026932, 33.643242, 20.334461>,  <32.679787, 33.841423, 20.319832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026932, 33.643242, 20.334461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200998, -0.282842, 0.937870,
		-0.454329, -0.821294, -0.345054,
		0.867863, -0.495456, 0.036575,
		33.287292, 33.494606, 20.345434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622631, 33.345089, 20.828470>,  <32.679787, 33.841423, 20.319832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622631, 33.345089, 20.828470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020786, 33.312531, 20.808176>,  <33.259682, 33.292995, 20.796000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020786, 33.312531, 20.808176>,  <32.622631, 33.345089, 20.828470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020786, 33.312531, 20.808176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030431, -0.233624, 0.971851,
		-0.090955, -0.968914, -0.230070,
		0.995390, -0.081393, -0.050734,
		33.319405, 33.288113, 20.792955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933727, 32.546146, 20.914097>,  <32.622631, 33.345089, 20.828470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933727, 32.546146, 20.914097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188187, 32.839115, 21.011154>,  <33.340862, 33.014896, 21.069389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188187, 32.839115, 21.011154>,  <32.933727, 32.546146, 20.914097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188187, 32.839115, 21.011154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044902, -0.278807, 0.959297,
		0.770258, -0.621151, -0.144476,
		0.636150, 0.732419, 0.242644,
		33.379032, 33.058842, 21.083948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.953873, 35.922234, 16.720098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236874, 35.650810, 16.641108>,  <35.406673, 35.487957, 16.593712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.236874, 35.650810, 16.641108>,  <34.953873, 35.922234, 16.720098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236874, 35.650810, 16.641108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448161, 0.214728, 0.867781,
		-0.546438, -0.702458, 0.456024,
		0.707501, -0.678561, -0.197479,
		35.449123, 35.447243, 16.581863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923603, 35.313412, 17.148928>,  <34.953873, 35.922234, 16.720098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923603, 35.313412, 17.148928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.288635, 35.417469, 17.022738>,  <35.507652, 35.479904, 16.947023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.288635, 35.417469, 17.022738>,  <34.923603, 35.313412, 17.148928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288635, 35.417469, 17.022738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281041, 0.161365, 0.946032,
		0.297013, -0.951990, 0.074146,
		0.912578, 0.260146, -0.315476,
		35.562408, 35.495514, 16.928095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445866, 34.954235, 17.592451>,  <34.923603, 35.313412, 17.148928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445866, 34.954235, 17.592451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662857, 35.251812, 17.436365>,  <35.793053, 35.430359, 17.342714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.662857, 35.251812, 17.436365>,  <35.445866, 34.954235, 17.592451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662857, 35.251812, 17.436365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443449, 0.140920, 0.885152,
		0.713489, -0.653220, -0.253453,
		0.542482, 0.743940, -0.390214,
		35.825603, 35.474995, 17.319302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079567, 35.008411, 18.078161>,  <35.445866, 34.954235, 17.592451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079567, 35.008411, 18.078161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072975, 35.361267, 17.889883>,  <36.069019, 35.572983, 17.776917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.072975, 35.361267, 17.889883>,  <36.079567, 35.008411, 18.078161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072975, 35.361267, 17.889883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332147, 0.448856, 0.829582,
		0.943084, -0.142668, -0.300398,
		-0.016481, 0.882142, -0.470696,
		36.068031, 35.625908, 17.748674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612812, 35.376408, 18.380407>,  <36.079567, 35.008411, 18.078161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612812, 35.376408, 18.380407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373306, 35.655258, 18.222677>,  <36.229603, 35.822567, 18.128038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.373306, 35.655258, 18.222677>,  <36.612812, 35.376408, 18.380407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373306, 35.655258, 18.222677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121690, 0.565808, 0.815508,
		0.791625, 0.440314, -0.423621,
		-0.598767, 0.697126, -0.394326,
		36.193676, 35.864395, 18.104380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896702, 36.135704, 18.563158>,  <36.612812, 35.376408, 18.380407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896702, 36.135704, 18.563158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536781, 36.254570, 18.435377>,  <36.320827, 36.325890, 18.358709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536781, 36.254570, 18.435377>,  <36.896702, 36.135704, 18.563158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536781, 36.254570, 18.435377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102814, 0.567142, 0.817177,
		0.424015, 0.768141, -0.479762,
		-0.899800, 0.297169, -0.319453,
		36.266842, 36.343719, 18.339540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906761, 36.881012, 18.556551>,  <36.896702, 36.135704, 18.563158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906761, 36.881012, 18.556551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538090, 36.744347, 18.630064>,  <36.316887, 36.662346, 18.674171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.538090, 36.744347, 18.630064>,  <36.906761, 36.881012, 18.556551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538090, 36.744347, 18.630064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084371, 0.638902, 0.764648,
		-0.378672, 0.689252, -0.617688,
		-0.921677, -0.341666, 0.183781,
		36.261585, 36.641846, 18.685198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599613, 37.386387, 18.952723>,  <36.906761, 36.881012, 18.556551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599613, 37.386387, 18.952723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343170, 37.086014, 19.016068>,  <36.189304, 36.905788, 19.054073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343170, 37.086014, 19.016068>,  <36.599613, 37.386387, 18.952723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343170, 37.086014, 19.016068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217198, 0.375445, 0.901036,
		-0.736075, 0.543265, -0.403802,
		-0.641107, -0.750935, 0.158360,
		36.150837, 36.860733, 19.063576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043621, 37.755177, 19.155823>,  <36.599613, 37.386387, 18.952723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043621, 37.755177, 19.155823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.023602, 37.379177, 19.290815>,  <36.011589, 37.153576, 19.371811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.023602, 37.379177, 19.290815>,  <36.043621, 37.755177, 19.155823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023602, 37.379177, 19.290815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433840, 0.324824, 0.840400,
		-0.899599, -0.104353, -0.424067,
		-0.050049, -0.940000, 0.337483,
		36.008587, 37.097176, 19.392061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404285, 37.734299, 19.572342>,  <36.043621, 37.755177, 19.155823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404285, 37.734299, 19.572342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594345, 37.407715, 19.703566>,  <35.708382, 37.211765, 19.782301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594345, 37.407715, 19.703566>,  <35.404285, 37.734299, 19.572342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594345, 37.407715, 19.703566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138736, 0.298657, 0.944223,
		-0.868898, -0.494162, 0.028635,
		0.475151, -0.816461, 0.328060,
		35.736889, 37.162777, 19.801983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998959, 37.353603, 20.101894>,  <35.404285, 37.734299, 19.572342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998959, 37.353603, 20.101894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375950, 37.240414, 20.173071>,  <35.602146, 37.172501, 20.215776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375950, 37.240414, 20.173071>,  <34.998959, 37.353603, 20.101894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375950, 37.240414, 20.173071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176070, 0.032245, 0.983850,
		-0.284137, -0.958587, -0.019433,
		0.942479, -0.282970, 0.177941,
		35.658695, 37.155521, 20.226454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974422, 36.904964, 20.675724>,  <34.998959, 37.353603, 20.101894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974422, 36.904964, 20.675724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357735, 37.018684, 20.687504>,  <35.587723, 37.086918, 20.694572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357735, 37.018684, 20.687504>,  <34.974422, 36.904964, 20.675724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357735, 37.018684, 20.687504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006457, -0.124543, 0.992193,
		0.285748, -0.950612, -0.121183,
		0.958283, 0.284300, 0.029450,
		35.645218, 37.103973, 20.696339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566154, 36.250546, 20.898092>,  <34.974422, 36.904964, 20.675724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566154, 36.250546, 20.898092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.200428, 36.390110, 20.980343>,  <33.980991, 36.473846, 21.029694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.200428, 36.390110, 20.980343>,  <34.566154, 36.250546, 20.898092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200428, 36.390110, 20.980343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192241, 0.072972, -0.978631,
		-0.356458, -0.934311, 0.000355,
		-0.914320, 0.348910, 0.205624,
		33.926132, 36.494781, 21.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204018, 35.936405, 20.375256>,  <34.566154, 36.250546, 20.898092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204018, 35.936405, 20.375256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006737, 36.252068, 20.521671>,  <33.888371, 36.441467, 20.609520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006737, 36.252068, 20.521671>,  <34.204018, 35.936405, 20.375256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006737, 36.252068, 20.521671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287677, 0.249144, -0.924753,
		-0.820973, -0.561389, 0.104145,
		-0.493199, 0.789157, 0.366039,
		33.858776, 36.488815, 20.631483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694004, 35.899494, 19.952633>,  <34.204018, 35.936405, 20.375256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694004, 35.899494, 19.952633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665852, 36.275551, 20.086008>,  <33.648960, 36.501186, 20.166033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.665852, 36.275551, 20.086008>,  <33.694004, 35.899494, 19.952633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665852, 36.275551, 20.086008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203168, 0.313749, -0.927515,
		-0.976611, -0.133028, 0.168923,
		-0.070386, 0.940141, 0.333437,
		33.644737, 36.557594, 20.186039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951542, 36.186398, 19.906231>,  <33.694004, 35.899494, 19.952633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951542, 36.186398, 19.906231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217350, 36.485176, 19.915092>,  <33.376835, 36.664444, 19.920410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217350, 36.485176, 19.915092>,  <32.951542, 36.186398, 19.906231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217350, 36.485176, 19.915092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352558, 0.339518, -0.872027,
		-0.658877, 0.571667, 0.488957,
		0.664518, 0.746943, 0.022155,
		33.416706, 36.709259, 19.921740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547195, 36.777691, 19.560286>,  <32.951542, 36.186398, 19.906231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547195, 36.777691, 19.560286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.926315, 36.903336, 19.582216>,  <33.153790, 36.978722, 19.595375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.926315, 36.903336, 19.582216>,  <32.547195, 36.777691, 19.560286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926315, 36.903336, 19.582216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093409, 0.437928, -0.894144,
		-0.304872, 0.842350, 0.444409,
		0.947802, 0.314111, 0.054829,
		33.210655, 36.997570, 19.598665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615002, 37.482296, 19.545010>,  <32.547195, 36.777691, 19.560286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615002, 37.482296, 19.545010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965576, 37.352467, 19.402737>,  <33.175922, 37.274567, 19.317373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965576, 37.352467, 19.402737>,  <32.615002, 37.482296, 19.545010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965576, 37.352467, 19.402737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187455, 0.450403, -0.872925,
		0.443532, 0.831737, 0.333906,
		0.876436, -0.324578, -0.355681,
		33.228508, 37.255093, 19.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678547, 37.963802, 19.027504>,  <32.615002, 37.482296, 19.545010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678547, 37.963802, 19.027504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947899, 37.674480, 18.966335>,  <33.109509, 37.500885, 18.929634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.947899, 37.674480, 18.966335>,  <32.678547, 37.963802, 19.027504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947899, 37.674480, 18.966335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045769, 0.247235, -0.967874,
		0.737878, 0.644749, 0.199588,
		0.673380, -0.723308, -0.152920,
		33.149914, 37.457489, 18.920460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269768, 38.245426, 18.726675>,  <32.678547, 37.963802, 19.027504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269768, 38.245426, 18.726675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.288811, 37.860352, 18.620115>,  <33.300236, 37.629307, 18.556179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.288811, 37.860352, 18.620115>,  <33.269768, 38.245426, 18.726675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288811, 37.860352, 18.620115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194216, 0.270532, -0.942917,
		0.979803, -0.006852, 0.199847,
		0.047604, -0.962687, -0.266399,
		33.303093, 37.571545, 18.540195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913013, 38.194801, 18.262123>,  <33.269768, 38.245426, 18.726675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913013, 38.194801, 18.262123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688496, 37.870453, 18.195866>,  <33.553787, 37.675842, 18.156111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.688496, 37.870453, 18.195866>,  <33.913013, 38.194801, 18.262123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688496, 37.870453, 18.195866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265903, 0.012848, -0.963914,
		0.783739, -0.585082, 0.208402,
		-0.561291, -0.810872, -0.165645,
		33.520107, 37.627190, 18.146172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319107, 37.810677, 17.790791>,  <33.913013, 38.194801, 18.262123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319107, 37.810677, 17.790791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945164, 37.671963, 17.760391>,  <33.720798, 37.588734, 17.742151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945164, 37.671963, 17.760391>,  <34.319107, 37.810677, 17.790791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945164, 37.671963, 17.760391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076689, 0.011749, -0.996986,
		0.346632, -0.937871, 0.015611,
		-0.934861, -0.346784, -0.075997,
		33.664707, 37.567928, 17.737593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348614, 37.315331, 17.226892>,  <34.319107, 37.810677, 17.790791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348614, 37.315331, 17.226892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.952518, 37.367527, 17.246468>,  <33.714859, 37.398846, 17.258213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.952518, 37.367527, 17.246468>,  <34.348614, 37.315331, 17.226892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952518, 37.367527, 17.246468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048753, 0.004625, -0.998800,
		-0.130564, -0.991438, 0.001782,
		-0.990241, 0.130494, 0.048939,
		33.655445, 37.406673, 17.261150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030327, 36.828384, 16.882917>,  <34.348614, 37.315331, 17.226892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030327, 36.828384, 16.882917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765003, 37.127514, 16.894011>,  <33.605808, 37.306992, 16.900667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.765003, 37.127514, 16.894011>,  <34.030327, 36.828384, 16.882917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765003, 37.127514, 16.894011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031384, 0.009228, -0.999465,
		-0.747684, -0.663828, 0.017349,
		-0.663313, 0.747828, 0.027733,
		33.566010, 37.351864, 16.902330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323456, 36.718452, 16.512297>,  <34.030327, 36.828384, 16.882917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323456, 36.718452, 16.512297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.380924, 37.114285, 16.516264>,  <33.415405, 37.351784, 16.518644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.380924, 37.114285, 16.516264>,  <33.323456, 36.718452, 16.512297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380924, 37.114285, 16.516264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097327, -0.004157, -0.995244,
		-0.984829, 0.143950, -0.096909,
		0.143668, 0.989576, 0.009916,
		33.424026, 37.411156, 16.519239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882370, 36.030323, 16.466772>,  <33.323456, 36.718452, 16.512297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882370, 36.030323, 16.466772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964989, 35.712170, 16.238842>,  <33.014561, 35.521278, 16.102085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.964989, 35.712170, 16.238842>,  <32.882370, 36.030323, 16.466772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964989, 35.712170, 16.238842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098181, -0.596290, 0.796742,
		-0.973499, -0.108616, -0.201252,
		0.206543, -0.795387, -0.569824,
		33.026951, 35.473553, 16.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461330, 35.528263, 16.751753>,  <32.882370, 36.030323, 16.466772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461330, 35.528263, 16.751753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.706947, 35.299557, 16.534117>,  <32.854317, 35.162334, 16.403536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.706947, 35.299557, 16.534117>,  <32.461330, 35.528263, 16.751753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706947, 35.299557, 16.534117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186466, -0.564750, 0.803920,
		-0.766929, -0.595097, -0.240166,
		0.614044, -0.571767, -0.544088,
		32.891159, 35.128025, 16.370890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221268, 34.898941, 16.809261>,  <32.461330, 35.528263, 16.751753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221268, 34.898941, 16.809261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594284, 34.819027, 16.688963>,  <32.818096, 34.771080, 16.616783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594284, 34.819027, 16.688963>,  <32.221268, 34.898941, 16.809261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594284, 34.819027, 16.688963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121028, -0.611799, 0.781700,
		-0.340167, -0.765368, -0.546350,
		0.932544, -0.199785, -0.300745,
		32.874046, 34.759090, 16.598740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232750, 34.196510, 16.774235>,  <32.221268, 34.898941, 16.809261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232750, 34.196510, 16.774235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.602516, 34.345520, 16.806942>,  <32.824375, 34.434925, 16.826567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.602516, 34.345520, 16.806942>,  <32.232750, 34.196510, 16.774235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602516, 34.345520, 16.806942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144320, -0.540117, 0.829123,
		0.353037, -0.754650, -0.553054,
		0.924411, 0.372527, 0.081770,
		32.879841, 34.457279, 16.831472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722916, 33.567280, 16.935528>,  <32.232750, 34.196510, 16.774235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722916, 33.567280, 16.935528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.936455, 33.881504, 17.060688>,  <33.064579, 34.070038, 17.135784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.936455, 33.881504, 17.060688>,  <32.722916, 33.567280, 16.935528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936455, 33.881504, 17.060688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235284, -0.493428, 0.837359,
		0.812187, -0.373402, -0.448244,
		0.533848, 0.785557, 0.312900,
		33.096611, 34.117172, 17.154558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290333, 33.280106, 17.278011>,  <32.722916, 33.567280, 16.935528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290333, 33.280106, 17.278011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.295837, 33.648384, 17.434023>,  <33.299141, 33.869350, 17.527630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.295837, 33.648384, 17.434023>,  <33.290333, 33.280106, 17.278011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295837, 33.648384, 17.434023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311009, -0.374660, 0.873443,
		0.950307, 0.109283, -0.291502,
		0.013762, 0.920699, 0.390030,
		33.299965, 33.924595, 17.551031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931980, 33.263657, 17.661036>,  <33.290333, 33.280106, 17.278011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931980, 33.263657, 17.661036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.737850, 33.581005, 17.808012>,  <33.621372, 33.771416, 17.896198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.737850, 33.581005, 17.808012>,  <33.931980, 33.263657, 17.661036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737850, 33.581005, 17.808012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392275, -0.177995, 0.902462,
		0.781393, 0.582129, -0.224835,
		-0.485330, 0.793375, 0.367439,
		33.592251, 33.819019, 17.918243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367485, 33.575211, 18.126041>,  <33.931980, 33.263657, 17.661036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367485, 33.575211, 18.126041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.038357, 33.758926, 18.259916>,  <33.840878, 33.869156, 18.340240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.038357, 33.758926, 18.259916>,  <34.367485, 33.575211, 18.126041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038357, 33.758926, 18.259916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258684, -0.221682, 0.940181,
		0.506008, 0.860181, 0.063595,
		-0.822824, 0.459288, 0.334687,
		33.791512, 33.896713, 18.360323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020157, 33.579723, 18.256109>,  <34.367485, 33.575211, 18.126041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020157, 33.579723, 18.256109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.290298, 33.289524, 18.203112>,  <35.452385, 33.115406, 18.171312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.290298, 33.289524, 18.203112>,  <35.020157, 33.579723, 18.256109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290298, 33.289524, 18.203112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008034, 0.172406, -0.984993,
		0.737450, 0.666283, 0.110607,
		0.675353, -0.725495, -0.132494,
		35.492905, 33.071877, 18.163364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400265, 33.820217, 17.798170>,  <35.020157, 33.579723, 18.256109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400265, 33.820217, 17.798170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471817, 33.429634, 17.749941>,  <35.514748, 33.195286, 17.721003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471817, 33.429634, 17.749941>,  <35.400265, 33.820217, 17.798170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471817, 33.429634, 17.749941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005225, 0.121605, -0.992565,
		0.983857, 0.178182, 0.016652,
		0.178882, -0.976454, -0.120573,
		35.525482, 33.136696, 17.713768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073738, 33.722153, 17.380491>,  <35.400265, 33.820217, 17.798170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073738, 33.722153, 17.380491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.856781, 33.388855, 17.337568>,  <35.726608, 33.188877, 17.311815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.856781, 33.388855, 17.337568>,  <36.073738, 33.722153, 17.380491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856781, 33.388855, 17.337568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207171, -0.008871, -0.978265,
		0.814182, -0.552833, 0.177436,
		-0.542391, -0.833245, -0.107308,
		35.694065, 33.138882, 17.305376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473598, 33.219921, 16.867725>,  <36.073738, 33.722153, 17.380491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473598, 33.219921, 16.867725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095566, 33.089317, 16.873434>,  <35.868744, 33.010956, 16.876860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095566, 33.089317, 16.873434>,  <36.473598, 33.219921, 16.867725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095566, 33.089317, 16.873434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009176, -0.070155, -0.997494,
		0.326694, -0.942586, 0.069299,
		-0.945086, -0.326512, 0.014270,
		35.812038, 32.991364, 16.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334595, 32.669907, 16.340424>,  <36.473598, 33.219921, 16.867725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334595, 32.669907, 16.340424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969158, 32.811420, 16.420622>,  <35.749897, 32.896328, 16.468740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969158, 32.811420, 16.420622>,  <36.334595, 32.669907, 16.340424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969158, 32.811420, 16.420622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247417, -0.092314, -0.964501,
		-0.322713, -0.930762, 0.171868,
		-0.913587, 0.353780, 0.200495,
		35.695084, 32.917553, 16.480770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905418, 32.185009, 16.127632>,  <36.334595, 32.669907, 16.340424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905418, 32.185009, 16.127632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647156, 32.490334, 16.118855>,  <35.492199, 32.673527, 16.113588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.647156, 32.490334, 16.118855>,  <35.905418, 32.185009, 16.127632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647156, 32.490334, 16.118855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152002, -0.156630, -0.975891,
		-0.748345, -0.626757, 0.217154,
		-0.645659, 0.763311, -0.021945,
		35.453457, 32.719326, 16.112270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233253, 31.928261, 15.616134>,  <35.905418, 32.185009, 16.127632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233253, 31.928261, 15.616134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247715, 32.325947, 15.656588>,  <35.256393, 32.564560, 15.680860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247715, 32.325947, 15.656588>,  <35.233253, 31.928261, 15.616134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247715, 32.325947, 15.656588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289807, 0.107283, -0.951054,
		-0.956402, 0.005079, 0.292009,
		0.036158, 0.994216, 0.101134,
		35.258564, 32.624210, 15.686928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644932, 32.106434, 15.247898>,  <35.233253, 31.928261, 15.616134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644932, 32.106434, 15.247898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846035, 32.450268, 15.284430>,  <34.966698, 32.656570, 15.306349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.846035, 32.450268, 15.284430>,  <34.644932, 32.106434, 15.247898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846035, 32.450268, 15.284430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108105, 0.167347, -0.979953,
		-0.857639, 0.482810, 0.177061,
		0.502761, 0.859587, 0.091329,
		34.996864, 32.708145, 15.311829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367962, 32.505985, 14.795545>,  <34.644932, 32.106434, 15.247898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367962, 32.505985, 14.795545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717300, 32.689117, 14.862056>,  <34.926903, 32.798996, 14.901962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.717300, 32.689117, 14.862056>,  <34.367962, 32.505985, 14.795545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717300, 32.689117, 14.862056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030814, 0.392612, -0.919188,
		-0.486118, 0.797649, 0.356996,
		0.873350, 0.457835, 0.166277,
		34.979305, 32.826469, 14.911939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.393345, 30.811722, 31.157185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701908, 31.009998, 30.997578>,  <37.887047, 31.128963, 30.901814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.701908, 31.009998, 30.997578>,  <37.393345, 30.811722, 31.157185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701908, 31.009998, 30.997578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399474, -0.110863, -0.910016,
		-0.495324, 0.861394, 0.112495,
		0.771411, 0.495692, -0.399018,
		37.933331, 31.158707, 30.877872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099701, 31.325392, 30.725044>,  <37.393345, 30.811722, 31.157185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099701, 31.325392, 30.725044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467083, 31.252764, 30.584488>,  <37.687511, 31.209187, 30.500154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467083, 31.252764, 30.584488>,  <37.099701, 31.325392, 30.725044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467083, 31.252764, 30.584488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343747, 0.073049, -0.936217,
		0.195660, 0.980661, 0.004677,
		0.918453, -0.181572, -0.351392,
		37.742619, 31.198292, 30.479071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237450, 31.833544, 30.210749>,  <37.099701, 31.325392, 30.725044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237450, 31.833544, 30.210749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517960, 31.563147, 30.120193>,  <37.686264, 31.400908, 30.065861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517960, 31.563147, 30.120193>,  <37.237450, 31.833544, 30.210749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517960, 31.563147, 30.120193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265712, 0.046831, -0.962914,
		0.661525, 0.735418, -0.146779,
		0.701271, -0.675993, -0.226389,
		37.728340, 31.360348, 30.052277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646183, 32.136543, 29.675175>,  <37.237450, 31.833544, 30.210749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646183, 32.136543, 29.675175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727520, 31.745869, 29.647650>,  <37.776321, 31.511463, 29.631134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727520, 31.745869, 29.647650>,  <37.646183, 32.136543, 29.675175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727520, 31.745869, 29.647650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111490, 0.046726, -0.992666,
		0.972739, 0.209526, -0.099390,
		0.203345, -0.976686, -0.068812,
		37.788525, 31.452864, 29.627007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960064, 32.082638, 29.092037>,  <37.646183, 32.136543, 29.675175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960064, 32.082638, 29.092037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836548, 31.705845, 29.144682>,  <37.762436, 31.479771, 29.176270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.836548, 31.705845, 29.144682>,  <37.960064, 32.082638, 29.092037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836548, 31.705845, 29.144682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160068, -0.084935, -0.983445,
		0.937563, -0.324749, -0.124553,
		-0.308794, -0.941979, 0.131613,
		37.743908, 31.423252, 29.184166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357086, 31.629908, 28.630142>,  <37.960064, 32.082638, 29.092037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357086, 31.629908, 28.630142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014236, 31.438387, 28.706123>,  <37.808525, 31.323475, 28.751713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.014236, 31.438387, 28.706123>,  <38.357086, 31.629908, 28.630142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014236, 31.438387, 28.706123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128810, -0.157817, -0.979031,
		0.498740, -0.863622, 0.073595,
		-0.857127, -0.478802, 0.189953,
		37.757099, 31.294746, 28.763109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418068, 31.088366, 28.183439>,  <38.357086, 31.629908, 28.630142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418068, 31.088366, 28.183439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027882, 31.100580, 28.270647>,  <37.793770, 31.107910, 28.322971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027882, 31.100580, 28.270647>,  <38.418068, 31.088366, 28.183439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027882, 31.100580, 28.270647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220141, -0.128860, -0.966919,
		-0.001433, -0.991193, 0.132421,
		-0.975467, 0.030537, 0.218018,
		37.735241, 31.109741, 28.336052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194153, 30.521603, 27.787508>,  <38.418068, 31.088366, 28.183439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194153, 30.521603, 27.787508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872353, 30.745699, 27.866409>,  <37.679272, 30.880157, 27.913750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.872353, 30.745699, 27.866409>,  <38.194153, 30.521603, 27.787508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872353, 30.745699, 27.866409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332963, -0.150386, -0.930870,
		-0.491849, -0.814563, 0.307526,
		-0.804500, 0.560242, 0.197252,
		37.631004, 30.913771, 27.925585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599342, 30.113916, 27.528692>,  <38.194153, 30.521603, 27.787508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599342, 30.113916, 27.528692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467083, 30.488367, 27.576582>,  <37.387726, 30.713037, 27.605316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.467083, 30.488367, 27.576582>,  <37.599342, 30.113916, 27.528692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467083, 30.488367, 27.576582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483678, -0.059155, -0.873244,
		-0.810387, -0.346645, 0.472345,
		-0.330648, 0.936129, 0.119726,
		37.367889, 30.769205, 27.612499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819904, 30.059299, 27.369171>,  <37.599342, 30.113916, 27.528692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819904, 30.059299, 27.369171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945618, 30.436434, 27.324833>,  <37.021046, 30.662714, 27.298229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945618, 30.436434, 27.324833>,  <36.819904, 30.059299, 27.369171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945618, 30.436434, 27.324833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354935, 0.008407, -0.934853,
		-0.880481, 0.333152, 0.337288,
		0.314284, 0.942836, -0.110845,
		37.039902, 30.719284, 27.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300491, 30.394167, 27.041031>,  <36.819904, 30.059299, 27.369171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300491, 30.394167, 27.041031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590214, 30.657974, 26.960613>,  <36.764046, 30.816259, 26.912363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590214, 30.657974, 26.960613>,  <36.300491, 30.394167, 27.041031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590214, 30.657974, 26.960613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410558, 0.178292, -0.894234,
		-0.553920, 0.730237, 0.399909,
		0.724303, 0.659519, -0.201045,
		36.807507, 30.855829, 26.900299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012321, 31.054167, 26.782919>,  <36.300491, 30.394167, 27.041031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012321, 31.054167, 26.782919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382065, 31.025948, 26.632940>,  <36.603912, 31.009016, 26.542953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382065, 31.025948, 26.632940>,  <36.012321, 31.054167, 26.782919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382065, 31.025948, 26.632940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360365, 0.161285, -0.918762,
		0.125291, 0.984383, 0.123662,
		0.924359, -0.070549, -0.374945,
		36.659374, 31.004784, 26.520456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643295, 31.693453, 26.683853>,  <36.012321, 31.054167, 26.782919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643295, 31.693453, 26.683853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254547, 31.607124, 26.646145>,  <35.021297, 31.555328, 26.623520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254547, 31.607124, 26.646145>,  <35.643295, 31.693453, 26.683853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254547, 31.607124, 26.646145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046934, -0.214771, 0.975536,
		-0.230787, 0.952520, 0.198601,
		-0.971872, -0.215819, -0.094272,
		34.962986, 31.542379, 26.617863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321373, 32.182079, 27.122211>,  <35.643295, 31.693453, 26.683853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321373, 32.182079, 27.122211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.091278, 31.864208, 27.044661>,  <34.953220, 31.673487, 26.998131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.091278, 31.864208, 27.044661>,  <35.321373, 32.182079, 27.122211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091278, 31.864208, 27.044661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192925, -0.098524, 0.976255,
		-0.794908, 0.598985, -0.096639,
		-0.575240, -0.794676, -0.193877,
		34.918705, 31.625805, 26.986498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750015, 32.307209, 27.468498>,  <35.321373, 32.182079, 27.122211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750015, 32.307209, 27.468498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712597, 31.914875, 27.400133>,  <34.690147, 31.679474, 27.359114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712597, 31.914875, 27.400133>,  <34.750015, 32.307209, 27.468498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712597, 31.914875, 27.400133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219039, -0.147182, 0.964552,
		-0.971222, 0.127666, -0.201073,
		-0.093546, -0.980836, -0.170911,
		34.684532, 31.620625, 27.348860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141579, 32.210171, 27.724852>,  <34.750015, 32.307209, 27.468498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141579, 32.210171, 27.724852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351826, 31.869909, 27.729156>,  <34.477974, 31.665752, 27.731739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351826, 31.869909, 27.729156>,  <34.141579, 32.210171, 27.724852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351826, 31.869909, 27.729156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270246, -0.154961, 0.950239,
		-0.806658, -0.502367, -0.311336,
		0.525613, -0.850655, 0.010762,
		34.509510, 31.614712, 27.732386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724552, 31.659456, 28.131765>,  <34.141579, 32.210171, 27.724852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724552, 31.659456, 28.131765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097378, 31.514915, 28.121313>,  <34.321072, 31.428192, 28.115042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097378, 31.514915, 28.121313>,  <33.724552, 31.659456, 28.131765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097378, 31.514915, 28.121313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026202, -0.139167, 0.989922,
		-0.361347, -0.921986, -0.139180,
		0.932064, -0.361352, -0.026130,
		34.376995, 31.406509, 28.113474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715958, 31.069378, 28.701391>,  <33.724552, 31.659456, 28.131765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715958, 31.069378, 28.701391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101440, 31.132183, 28.615036>,  <34.332729, 31.169867, 28.563223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101440, 31.132183, 28.615036>,  <33.715958, 31.069378, 28.701391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101440, 31.132183, 28.615036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241518, -0.168357, 0.955680,
		0.113709, -0.973140, -0.200169,
		0.963711, 0.157014, -0.215887,
		34.390553, 31.179287, 28.550270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985504, 30.526442, 28.914352>,  <33.715958, 31.069378, 28.701391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985504, 30.526442, 28.914352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259449, 30.817797, 28.906176>,  <34.423817, 30.992609, 28.901270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259449, 30.817797, 28.906176>,  <33.985504, 30.526442, 28.914352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259449, 30.817797, 28.906176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214302, -0.174526, 0.961049,
		0.696450, -0.662564, -0.275620,
		0.684859, 0.728388, -0.020440,
		34.464909, 31.036314, 28.900043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623249, 30.204111, 29.291788>,  <33.985504, 30.526442, 28.914352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623249, 30.204111, 29.291788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620129, 30.603848, 29.277582>,  <34.618256, 30.843689, 29.269058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620129, 30.603848, 29.277582>,  <34.623249, 30.204111, 29.291788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620129, 30.603848, 29.277582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136593, 0.036249, 0.989964,
		0.990597, 0.002876, -0.136785,
		-0.007805, 0.999339, -0.035515,
		34.617786, 30.903648, 29.266928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131096, 30.339472, 29.808285>,  <34.623249, 30.204111, 29.291788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131096, 30.339472, 29.808285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946583, 30.691916, 29.766602>,  <34.835873, 30.903381, 29.741592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946583, 30.691916, 29.766602>,  <35.131096, 30.339472, 29.808285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946583, 30.691916, 29.766602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265177, 0.248994, 0.931495,
		0.846697, 0.402053, -0.348507,
		-0.461287, 0.881110, -0.104208,
		34.808197, 30.956249, 29.735340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575008, 30.771353, 30.115755>,  <35.131096, 30.339472, 29.808285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575008, 30.771353, 30.115755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219803, 30.955187, 30.109932>,  <35.006680, 31.065487, 30.106438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219803, 30.955187, 30.109932>,  <35.575008, 30.771353, 30.115755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219803, 30.955187, 30.109932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100456, 0.224805, 0.969212,
		0.448708, 0.859212, -0.245798,
		-0.888015, 0.459584, -0.014559,
		34.953400, 31.093061, 30.105564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700634, 31.413614, 30.495752>,  <35.575008, 30.771353, 30.115755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700634, 31.413614, 30.495752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301666, 31.414530, 30.467068>,  <35.062286, 31.415079, 30.449858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301666, 31.414530, 30.467068>,  <35.700634, 31.413614, 30.495752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301666, 31.414530, 30.467068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066517, 0.345076, 0.936215,
		0.026888, 0.938572, -0.344035,
		-0.997423, 0.002289, -0.071709,
		35.002438, 31.415216, 30.445555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461830, 32.108906, 30.695381>,  <35.700634, 31.413614, 30.495752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461830, 32.108906, 30.695381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138710, 31.879555, 30.750082>,  <34.944839, 31.741943, 30.782902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.138710, 31.879555, 30.750082>,  <35.461830, 32.108906, 30.695381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138710, 31.879555, 30.750082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188981, 0.471661, 0.861291,
		-0.558346, 0.669905, -0.489364,
		-0.807797, -0.573379, 0.136751,
		34.896370, 31.707541, 30.791107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007225, 32.642265, 30.967560>,  <35.461830, 32.108906, 30.695381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007225, 32.642265, 30.967560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860935, 32.277256, 31.040819>,  <34.773163, 32.058250, 31.084774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860935, 32.277256, 31.040819>,  <35.007225, 32.642265, 30.967560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860935, 32.277256, 31.040819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391595, 0.329382, 0.859163,
		-0.844333, 0.242499, -0.477804,
		-0.365726, -0.912525, 0.183147,
		34.751217, 32.003498, 31.095764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321697, 32.722755, 31.142136>,  <35.007225, 32.642265, 30.967560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321697, 32.722755, 31.142136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438282, 32.375744, 31.303356>,  <34.508232, 32.167538, 31.400089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438282, 32.375744, 31.303356>,  <34.321697, 32.722755, 31.142136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438282, 32.375744, 31.303356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382544, 0.280480, 0.880336,
		-0.876761, -0.410770, -0.250116,
		0.291463, -0.867525, 0.403051,
		34.525723, 32.115486, 31.424273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629433, 32.826351, 31.301741>,  <34.321697, 32.722755, 31.142136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629433, 32.826351, 31.301741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609680, 33.168110, 31.508650>,  <33.597828, 33.373165, 31.632795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609680, 33.168110, 31.508650>,  <33.629433, 32.826351, 31.301741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609680, 33.168110, 31.508650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048249, 0.519340, -0.853204,
		-0.997614, -0.017175, -0.066869,
		-0.049382, 0.854395, 0.517272,
		33.594864, 33.424427, 31.663832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025986, 33.143723, 31.152861>,  <33.629433, 32.826351, 31.301741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025986, 33.143723, 31.152861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298325, 33.419502, 31.251732>,  <33.461727, 33.584972, 31.311054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.298325, 33.419502, 31.251732>,  <33.025986, 33.143723, 31.152861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298325, 33.419502, 31.251732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061603, 0.390193, -0.918670,
		-0.729827, 0.610250, 0.308135,
		0.680851, 0.689452, 0.247180,
		33.502579, 33.626339, 31.325886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688236, 33.780033, 31.023161>,  <33.025986, 33.143723, 31.152861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688236, 33.780033, 31.023161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086021, 33.753021, 30.990971>,  <33.324692, 33.736813, 30.971657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086021, 33.753021, 30.990971>,  <32.688236, 33.780033, 31.023161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086021, 33.753021, 30.990971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048077, 0.388566, -0.920166,
		0.093407, 0.918943, 0.383169,
		0.994467, -0.067528, -0.080475,
		33.384361, 33.732761, 30.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785255, 34.340992, 30.676537>,  <32.688236, 33.780033, 31.023161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785255, 34.340992, 30.676537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133415, 34.149300, 30.631376>,  <33.342312, 34.034283, 30.604280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.133415, 34.149300, 30.631376>,  <32.785255, 34.340992, 30.676537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133415, 34.149300, 30.631376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151575, 0.478988, -0.864636,
		0.468440, 0.735463, 0.489549,
		0.870396, -0.479233, -0.112899,
		33.394535, 34.005531, 30.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294769, 34.853699, 30.644850>,  <32.785255, 34.340992, 30.676537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294769, 34.853699, 30.644850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400234, 34.519764, 30.451551>,  <33.463512, 34.319401, 30.335573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400234, 34.519764, 30.451551>,  <33.294769, 34.853699, 30.644850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400234, 34.519764, 30.451551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035751, 0.509084, -0.859974,
		0.963952, 0.209468, 0.164073,
		0.263664, -0.834839, -0.483244,
		33.479332, 34.269314, 30.306578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731297, 35.155949, 30.153250>,  <33.294769, 34.853699, 30.644850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731297, 35.155949, 30.153250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692268, 34.777485, 30.029787>,  <33.668850, 34.550407, 29.955709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692268, 34.777485, 30.029787>,  <33.731297, 35.155949, 30.153250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692268, 34.777485, 30.029787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160927, 0.291057, -0.943074,
		0.982132, -0.141688, 0.123863,
		-0.097571, -0.946156, -0.308658,
		33.662998, 34.493637, 29.937189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311707, 34.835854, 29.749094>,  <33.731297, 35.155949, 30.153250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311707, 34.835854, 29.749094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005905, 34.605560, 29.633114>,  <33.822426, 34.467384, 29.563526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.005905, 34.605560, 29.633114>,  <34.311707, 34.835854, 29.749094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005905, 34.605560, 29.633114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274314, 0.116482, -0.954560,
		0.583347, -0.809297, 0.068882,
		-0.764499, -0.575735, -0.289951,
		33.776554, 34.432838, 29.546129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627338, 34.392830, 29.305855>,  <34.311707, 34.835854, 29.749094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627338, 34.392830, 29.305855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237965, 34.379677, 29.215221>,  <34.004341, 34.371784, 29.160841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237965, 34.379677, 29.215221>,  <34.627338, 34.392830, 29.305855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237965, 34.379677, 29.215221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219596, 0.146000, -0.964605,
		0.064799, -0.988738, -0.134901,
		-0.973437, -0.032882, -0.226583,
		33.945934, 34.369812, 29.147247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630817, 34.010040, 28.598030>,  <34.627338, 34.392830, 29.305855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630817, 34.010040, 28.598030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285122, 34.209686, 28.623259>,  <34.077705, 34.329475, 28.638395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285122, 34.209686, 28.623259>,  <34.630817, 34.010040, 28.598030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285122, 34.209686, 28.623259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043678, 0.199336, -0.978957,
		-0.501186, -0.843296, -0.194074,
		-0.864236, 0.499117, 0.063071,
		34.025852, 34.359421, 28.642179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225273, 33.745823, 28.105722>,  <34.630817, 34.010040, 28.598030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225273, 33.745823, 28.105722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104084, 34.118229, 28.187124>,  <34.031372, 34.341675, 28.235966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104084, 34.118229, 28.187124>,  <34.225273, 33.745823, 28.105722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104084, 34.118229, 28.187124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183877, 0.266638, -0.946093,
		-0.935092, -0.249220, -0.251977,
		-0.302972, 0.931017, 0.203506,
		34.013191, 34.397533, 28.248177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803509, 33.804626, 27.578154>,  <34.225273, 33.745823, 28.105722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803509, 33.804626, 27.578154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890629, 34.175896, 27.698856>,  <33.942902, 34.398659, 27.771278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.890629, 34.175896, 27.698856>,  <33.803509, 33.804626, 27.578154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890629, 34.175896, 27.698856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188462, 0.263365, -0.946108,
		-0.957624, 0.262933, -0.117564,
		0.217801, 0.928173, 0.301758,
		33.955971, 34.454346, 27.789383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453049, 34.233356, 27.143246>,  <33.803509, 33.804626, 27.578154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453049, 34.233356, 27.143246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723072, 34.480526, 27.304480>,  <33.885086, 34.628826, 27.401220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723072, 34.480526, 27.304480>,  <33.453049, 34.233356, 27.143246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723072, 34.480526, 27.304480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021917, 0.562911, -0.826227,
		-0.737443, 0.548914, 0.393538,
		0.675054, 0.617920, 0.403084,
		33.925587, 34.665901, 27.425406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191288, 34.820217, 27.101738>,  <33.453049, 34.233356, 27.143246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191288, 34.820217, 27.101738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582821, 34.890915, 27.143005>,  <33.817741, 34.933334, 27.167767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582821, 34.890915, 27.143005>,  <33.191288, 34.820217, 27.101738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582821, 34.890915, 27.143005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042603, 0.317093, -0.947437,
		-0.200172, 0.931779, 0.302852,
		0.978834, 0.176748, 0.103170,
		33.876472, 34.943939, 27.173956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344677, 35.556782, 26.874826>,  <33.191288, 34.820217, 27.101738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344677, 35.556782, 26.874826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698109, 35.371483, 26.847422>,  <33.910168, 35.260303, 26.830978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698109, 35.371483, 26.847422>,  <33.344677, 35.556782, 26.874826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698109, 35.371483, 26.847422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047705, 0.234587, -0.970924,
		0.465853, 0.854616, 0.229375,
		0.883575, -0.463250, -0.068514,
		33.963181, 35.232510, 26.826868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876198, 36.044270, 26.645161>,  <33.344677, 35.556782, 26.874826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876198, 36.044270, 26.645161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991302, 35.674694, 26.544340>,  <34.060368, 35.452950, 26.483849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991302, 35.674694, 26.544340>,  <33.876198, 36.044270, 26.645161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991302, 35.674694, 26.544340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135831, 0.299898, -0.944252,
		0.948020, 0.237486, 0.211800,
		0.287765, -0.923938, -0.252051,
		34.077633, 35.397514, 26.468725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523136, 36.140091, 26.245422>,  <33.876198, 36.044270, 26.645161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523136, 36.140091, 26.245422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401947, 35.776436, 26.131104>,  <34.329235, 35.558243, 26.062513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401947, 35.776436, 26.131104>,  <34.523136, 36.140091, 26.245422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401947, 35.776436, 26.131104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083139, 0.273532, -0.958263,
		0.949366, -0.314086, -0.007287,
		-0.302971, -0.909137, -0.285795,
		34.311054, 35.503696, 26.045364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969490, 35.989979, 25.668598>,  <34.523136, 36.140091, 26.245422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969490, 35.989979, 25.668598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646294, 35.755440, 25.645460>,  <34.452374, 35.614716, 25.631577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.646294, 35.755440, 25.645460>,  <34.969490, 35.989979, 25.668598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646294, 35.755440, 25.645460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100088, 0.233342, -0.967230,
		0.580630, -0.775725, -0.247224,
		-0.807993, -0.586347, -0.057845,
		34.403896, 35.579536, 25.628107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129986, 35.700092, 25.136480>,  <34.969490, 35.989979, 25.668598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129986, 35.700092, 25.136480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736649, 35.643135, 25.181656>,  <34.500645, 35.608959, 25.208761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736649, 35.643135, 25.181656>,  <35.129986, 35.700092, 25.136480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736649, 35.643135, 25.181656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092994, -0.139687, -0.985819,
		0.156150, -0.979904, 0.124119,
		-0.983346, -0.142393, 0.112938,
		34.441647, 35.600418, 25.215538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956020, 35.296162, 24.572945>,  <35.129986, 35.700092, 25.136480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956020, 35.296162, 24.572945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603626, 35.441776, 24.693836>,  <34.392189, 35.529144, 24.766371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603626, 35.441776, 24.693836>,  <34.956020, 35.296162, 24.572945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603626, 35.441776, 24.693836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314645, 0.026288, -0.948845,
		-0.353361, -0.931013, 0.091383,
		-0.880985, 0.364038, 0.302228,
		34.339329, 35.550987, 24.784504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409817, 34.949871, 24.187172>,  <34.956020, 35.296162, 24.572945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409817, 34.949871, 24.187172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238956, 35.285709, 24.321405>,  <34.136440, 35.487213, 24.401945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238956, 35.285709, 24.321405>,  <34.409817, 34.949871, 24.187172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238956, 35.285709, 24.321405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383218, 0.168053, -0.908241,
		-0.818952, -0.516561, 0.249964,
		-0.427154, 0.839597, 0.335583,
		34.110809, 35.537590, 24.422081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678898, 35.015999, 23.832523>,  <34.409817, 34.949871, 24.187172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678898, 35.015999, 23.832523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777054, 35.386200, 23.947918>,  <33.835945, 35.608322, 24.017155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777054, 35.386200, 23.947918>,  <33.678898, 35.015999, 23.832523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777054, 35.386200, 23.947918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303989, 0.356038, -0.883645,
		-0.920530, 0.129139, 0.368711,
		0.245388, 0.925505, 0.288486,
		33.850670, 35.663853, 24.034464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184296, 35.407143, 23.674541>,  <33.678898, 35.015999, 23.832523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184296, 35.407143, 23.674541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454815, 35.701794, 23.675211>,  <33.617126, 35.878586, 23.675611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454815, 35.701794, 23.675211>,  <33.184296, 35.407143, 23.674541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454815, 35.701794, 23.675211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465808, 0.429414, -0.773710,
		-0.570655, 0.522477, 0.633539,
		0.676296, 0.736629, 0.001673,
		33.657703, 35.922783, 23.675713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809654, 35.940838, 23.383976>,  <33.184296, 35.407143, 23.674541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809654, 35.940838, 23.383976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186958, 36.071716, 23.361355>,  <33.413342, 36.150242, 23.347782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186958, 36.071716, 23.361355>,  <32.809654, 35.940838, 23.383976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186958, 36.071716, 23.361355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195943, 0.410998, -0.890330,
		-0.268068, 0.850896, 0.451791,
		0.943263, 0.327195, -0.056552,
		33.469936, 36.169876, 23.344389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881233, 36.684959, 23.122610>,  <32.809654, 35.940838, 23.383976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881233, 36.684959, 23.122610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244965, 36.540710, 23.039598>,  <33.463203, 36.454163, 22.989792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244965, 36.540710, 23.039598>,  <32.881233, 36.684959, 23.122610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244965, 36.540710, 23.039598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066663, 0.366066, -0.928198,
		0.410695, 0.857876, 0.308836,
		0.909333, -0.360618, -0.207529,
		33.517765, 36.432526, 22.977339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111767, 37.161266, 22.757416>,  <32.881233, 36.684959, 23.122610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111767, 37.161266, 22.757416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362862, 36.861118, 22.674576>,  <33.513519, 36.681030, 22.624872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362862, 36.861118, 22.674576>,  <33.111767, 37.161266, 22.757416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362862, 36.861118, 22.674576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002503, 0.267995, -0.963417,
		0.778419, 0.604257, 0.170109,
		0.627740, -0.750368, -0.207100,
		33.551182, 36.636009, 22.612446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648674, 37.443035, 22.421326>,  <33.111767, 37.161266, 22.757416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648674, 37.443035, 22.421326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670586, 37.056412, 22.321119>,  <33.683731, 36.824436, 22.260996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670586, 37.056412, 22.321119>,  <33.648674, 37.443035, 22.421326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670586, 37.056412, 22.321119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087077, 0.254561, -0.963129,
		0.994694, 0.030944, 0.098110,
		0.054778, -0.966562, -0.250516,
		33.687019, 36.766445, 22.245964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248447, 37.398956, 21.957378>,  <33.648674, 37.443035, 22.421326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248447, 37.398956, 21.957378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056759, 37.051491, 21.907148>,  <33.941746, 36.843010, 21.877010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056759, 37.051491, 21.907148>,  <34.248447, 37.398956, 21.957378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056759, 37.051491, 21.907148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048179, 0.168892, -0.984456,
		0.876370, -0.465724, -0.122789,
		-0.479224, -0.868664, -0.125574,
		33.912991, 36.790894, 21.869476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631653, 36.998138, 21.416378>,  <34.248447, 37.398956, 21.957378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631653, 36.998138, 21.416378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250591, 36.877735, 21.433538>,  <34.021954, 36.805492, 21.443834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250591, 36.877735, 21.433538>,  <34.631653, 36.998138, 21.416378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250591, 36.877735, 21.433538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021015, -0.075570, -0.996919,
		0.303320, -0.950623, 0.065666,
		-0.952657, -0.301006, 0.042899,
		33.964794, 36.787434, 21.446407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276085, 36.556786, 21.265675>,  <34.631653, 36.998138, 21.416378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276085, 36.556786, 21.265675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573265, 36.812176, 21.185308>,  <35.751575, 36.965408, 21.137089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573265, 36.812176, 21.185308>,  <35.276085, 36.556786, 21.265675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573265, 36.812176, 21.185308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383125, -0.159520, 0.909818,
		0.548847, -0.752929, -0.363132,
		0.742955, 0.638476, -0.200914,
		35.796150, 37.003719, 21.125034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970509, 36.212917, 21.514408>,  <35.276085, 36.556786, 21.265675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970509, 36.212917, 21.514408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002739, 36.611603, 21.517765>,  <36.022076, 36.850815, 21.519779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002739, 36.611603, 21.517765>,  <35.970509, 36.212917, 21.514408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002739, 36.611603, 21.517765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326174, -0.034322, 0.944687,
		0.941869, -0.073383, -0.327867,
		0.080577, 0.996713, 0.008391,
		36.026913, 36.910618, 21.520283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623901, 36.326363, 21.854176>,  <35.970509, 36.212917, 21.514408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623901, 36.326363, 21.854176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434658, 36.678135, 21.875244>,  <36.321114, 36.889198, 21.887886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434658, 36.678135, 21.875244>,  <36.623901, 36.326363, 21.854176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434658, 36.678135, 21.875244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105200, -0.002966, 0.994447,
		0.874703, 0.476019, -0.091113,
		-0.473105, 0.879430, 0.052672,
		36.292728, 36.941963, 21.891047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177162, 36.736355, 22.152487>,  <36.623901, 36.326363, 21.854176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177162, 36.736355, 22.152487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822712, 36.913891, 22.205847>,  <36.610043, 37.020412, 22.237862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.822712, 36.913891, 22.205847>,  <37.177162, 36.736355, 22.152487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822712, 36.913891, 22.205847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246045, 0.206608, 0.946982,
		0.392743, 0.871965, -0.292283,
		-0.886123, 0.443836, 0.133399,
		36.556873, 37.047043, 22.245867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303101, 37.234192, 22.552164>,  <37.177162, 36.736355, 22.152487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303101, 37.234192, 22.552164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912502, 37.185417, 22.623255>,  <36.678143, 37.156151, 22.665909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912502, 37.185417, 22.623255>,  <37.303101, 37.234192, 22.552164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912502, 37.185417, 22.623255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170088, 0.070515, 0.982903,
		-0.132387, 0.990030, -0.048117,
		-0.976496, -0.121939, 0.177728,
		36.619553, 37.148834, 22.676573>
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
