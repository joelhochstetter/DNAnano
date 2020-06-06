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
	<46.639885, 39.606339, 45.264935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722023, 39.802185, 45.603897>,  <46.771305, 39.919693, 45.807274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722023, 39.802185, 45.603897>,  <46.639885, 39.606339, 45.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722023, 39.802185, 45.603897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555535, -0.654536, 0.512799,
		0.805738, -0.576068, 0.137595,
		0.205346, 0.489620, 0.847411,
		46.783627, 39.949070, 45.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.787746, 39.104019, 45.810001>,  <46.639885, 39.606339, 45.264935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.787746, 39.104019, 45.810001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666962, 39.438622, 45.992897>,  <46.594490, 39.639385, 46.102634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.666962, 39.438622, 45.992897>,  <46.787746, 39.104019, 45.810001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666962, 39.438622, 45.992897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638195, -0.533676, 0.554884,
		0.708186, -0.124258, 0.695005,
		-0.301959, 0.836510, 0.457243,
		46.576374, 39.689575, 46.130070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856873, 38.953571, 46.552902>,  <46.787746, 39.104019, 45.810001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856873, 38.953571, 46.552902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590759, 39.247917, 46.502472>,  <46.431091, 39.424526, 46.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590759, 39.247917, 46.502472>,  <46.856873, 38.953571, 46.552902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590759, 39.247917, 46.502472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679462, -0.526790, 0.510709,
		0.309399, 0.425431, 0.850459,
		-0.665285, 0.735868, -0.126076,
		46.391174, 39.468678, 46.464649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555676, 38.861397, 47.196857>,  <46.856873, 38.953571, 46.552902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555676, 38.861397, 47.196857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299606, 39.070084, 46.971294>,  <46.145966, 39.195297, 46.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299606, 39.070084, 46.971294>,  <46.555676, 38.861397, 47.196857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299606, 39.070084, 46.971294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768168, -0.425470, 0.478427,
		0.009680, 0.739450, 0.673142,
		-0.640175, 0.521717, -0.563904,
		46.107555, 39.226601, 46.802124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128345, 39.246201, 47.622704>,  <46.555676, 38.861397, 47.196857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128345, 39.246201, 47.622704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912277, 39.186974, 47.291332>,  <45.782635, 39.151436, 47.092510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912277, 39.186974, 47.291332>,  <46.128345, 39.246201, 47.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912277, 39.186974, 47.291332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713227, -0.441948, 0.544049,
		-0.446679, 0.884736, 0.133121,
		-0.540172, -0.148069, -0.828426,
		45.750225, 39.142551, 47.042805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532887, 39.603382, 47.812035>,  <46.128345, 39.246201, 47.622704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532887, 39.603382, 47.812035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454704, 39.382721, 47.487694>,  <45.407795, 39.250324, 47.293091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454704, 39.382721, 47.487694>,  <45.532887, 39.603382, 47.812035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454704, 39.382721, 47.487694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931358, -0.154574, 0.329666,
		-0.307198, 0.819625, -0.483575,
		-0.195454, -0.551654, -0.810849,
		45.396069, 39.217224, 47.244438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006123, 39.965542, 47.548286>,  <45.532887, 39.603382, 47.812035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006123, 39.965542, 47.548286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972801, 39.599167, 47.391254>,  <44.952808, 39.379341, 47.297035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972801, 39.599167, 47.391254>,  <45.006123, 39.965542, 47.548286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972801, 39.599167, 47.391254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943372, -0.054455, 0.327237,
		-0.321107, 0.397606, -0.859534,
		-0.083305, -0.915939, -0.392577,
		44.947811, 39.324387, 47.273483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351688, 39.962852, 47.133484>,  <45.006123, 39.965542, 47.548286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351688, 39.962852, 47.133484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433502, 39.583801, 47.231598>,  <44.482590, 39.356369, 47.290466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433502, 39.583801, 47.231598>,  <44.351688, 39.962852, 47.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433502, 39.583801, 47.231598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923745, -0.103961, 0.368628,
		-0.323824, -0.301973, -0.896633,
		0.204531, -0.947631, 0.245281,
		44.494862, 39.299511, 47.305183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676464, 39.760742, 47.099586>,  <44.351688, 39.962852, 47.133484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676464, 39.760742, 47.099586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865326, 39.455505, 47.276119>,  <43.978642, 39.272366, 47.382038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865326, 39.455505, 47.276119>,  <43.676464, 39.760742, 47.099586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865326, 39.455505, 47.276119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866642, -0.310237, 0.390749,
		-0.161259, -0.566967, -0.807802,
		0.472151, -0.763087, 0.441329,
		44.006969, 39.226578, 47.408516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239521, 39.211006, 46.998547>,  <43.676464, 39.760742, 47.099586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239521, 39.211006, 46.998547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453930, 39.060516, 47.300838>,  <43.582577, 38.970222, 47.482212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453930, 39.060516, 47.300838>,  <43.239521, 39.211006, 46.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453930, 39.060516, 47.300838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837699, -0.347937, 0.420952,
		0.104574, -0.858717, -0.501667,
		0.536026, -0.376226, 0.755731,
		43.614738, 38.947647, 47.527557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897850, 38.638638, 47.253857>,  <43.239521, 39.211006, 46.998547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897850, 38.638638, 47.253857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128586, 38.758255, 47.557915>,  <43.267029, 38.830025, 47.740349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128586, 38.758255, 47.557915>,  <42.897850, 38.638638, 47.253857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128586, 38.758255, 47.557915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695528, -0.308185, 0.649047,
		0.428359, -0.903103, 0.030219,
		0.576844, 0.299043, 0.760147,
		43.301640, 38.847969, 47.785957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937454, 38.020912, 47.714134>,  <42.897850, 38.638638, 47.253857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937454, 38.020912, 47.714134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974743, 38.353447, 47.933292>,  <42.997116, 38.552967, 48.064789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974743, 38.353447, 47.933292>,  <42.937454, 38.020912, 47.714134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974743, 38.353447, 47.933292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642652, -0.370066, 0.670857,
		0.760466, -0.414648, 0.499759,
		0.093225, 0.831335, 0.547897,
		43.002712, 38.602848, 48.097660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843884, 37.769562, 48.407444>,  <42.937454, 38.020912, 47.714134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843884, 37.769562, 48.407444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808689, 38.164291, 48.461758>,  <42.787571, 38.401131, 48.494347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808689, 38.164291, 48.461758>,  <42.843884, 37.769562, 48.407444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808689, 38.164291, 48.461758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479071, -0.161432, 0.862804,
		0.873355, 0.010869, 0.486963,
		-0.087989, 0.986824, 0.135780,
		42.782291, 38.460339, 48.502491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114548, 37.891754, 49.122387>,  <42.843884, 37.769562, 48.407444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114548, 37.891754, 49.122387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875084, 38.193291, 49.014072>,  <42.731403, 38.374214, 48.949081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875084, 38.193291, 49.014072>,  <43.114548, 37.891754, 49.122387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875084, 38.193291, 49.014072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539507, -0.129604, 0.831946,
		0.592060, 0.644147, 0.484292,
		-0.598662, 0.753841, -0.270789,
		42.695484, 38.419441, 48.932835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125439, 38.244762, 49.674965>,  <43.114548, 37.891754, 49.122387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125439, 38.244762, 49.674965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793503, 38.350777, 49.478546>,  <42.594341, 38.414387, 49.360695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793503, 38.350777, 49.478546>,  <43.125439, 38.244762, 49.674965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793503, 38.350777, 49.478546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485020, 0.092521, 0.869595,
		0.275904, 0.959790, 0.051769,
		-0.829839, 0.265034, -0.491044,
		42.544552, 38.430286, 49.331234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870800, 38.734459, 50.144348>,  <43.125439, 38.244762, 49.674965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870800, 38.734459, 50.144348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552189, 38.667480, 49.911968>,  <42.361023, 38.627293, 49.772541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552189, 38.667480, 49.911968>,  <42.870800, 38.734459, 50.144348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552189, 38.667480, 49.911968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602415, 0.138162, 0.786134,
		-0.051372, 0.976152, -0.210924,
		-0.796528, -0.167450, -0.580951,
		42.313229, 38.617245, 49.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331413, 39.104660, 50.439907>,  <42.870800, 38.734459, 50.144348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331413, 39.104660, 50.439907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119324, 38.855804, 50.209492>,  <41.992069, 38.706493, 50.071243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119324, 38.855804, 50.209492>,  <42.331413, 39.104660, 50.439907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119324, 38.855804, 50.209492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694219, -0.071480, 0.716206,
		-0.486751, 0.779641, -0.393997,
		-0.530220, -0.622134, -0.576034,
		41.960258, 38.669163, 50.036682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638519, 39.369194, 50.301323>,  <42.331413, 39.104660, 50.439907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638519, 39.369194, 50.301323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627914, 38.970360, 50.272713>,  <41.621552, 38.731060, 50.255547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627914, 38.970360, 50.272713>,  <41.638519, 39.369194, 50.301323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627914, 38.970360, 50.272713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692079, -0.033322, 0.721052,
		-0.721335, 0.068613, -0.689180,
		-0.026508, -0.997086, -0.071522,
		41.619961, 38.671234, 50.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902187, 39.233097, 50.254913>,  <41.638519, 39.369194, 50.301323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902187, 39.233097, 50.254913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041897, 38.870461, 50.349663>,  <41.125721, 38.652878, 50.406513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041897, 38.870461, 50.349663>,  <40.902187, 39.233097, 50.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041897, 38.870461, 50.349663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573062, -0.006665, 0.819485,
		-0.741357, -0.421963, -0.521859,
		0.349270, -0.906589, 0.236870,
		41.146679, 38.598484, 50.420723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300888, 38.900677, 50.394688>,  <40.902187, 39.233097, 50.254913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300888, 38.900677, 50.394688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593712, 38.681648, 50.556805>,  <40.769405, 38.550232, 50.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593712, 38.681648, 50.556805>,  <40.300888, 38.900677, 50.394688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593712, 38.681648, 50.556805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627243, -0.309629, 0.714630,
		-0.265816, -0.777368, -0.570123,
		0.732057, -0.547566, 0.405294,
		40.813328, 38.517376, 50.678391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977104, 38.261360, 50.401154>,  <40.300888, 38.900677, 50.394688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977104, 38.261360, 50.401154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268456, 38.261932, 50.675224>,  <40.443268, 38.262276, 50.839664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268456, 38.261932, 50.675224>,  <39.977104, 38.261360, 50.401154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268456, 38.261932, 50.675224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653571, -0.298762, 0.695404,
		0.205696, -0.954327, -0.216679,
		0.728378, 0.001427, 0.685174,
		40.486969, 38.262360, 50.880775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018917, 37.668938, 50.649475>,  <39.977104, 38.261360, 50.401154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018917, 37.668938, 50.649475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213367, 37.865776, 50.938339>,  <40.330036, 37.983879, 51.111660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213367, 37.865776, 50.938339>,  <40.018917, 37.668938, 50.649475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213367, 37.865776, 50.938339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490009, -0.530748, 0.691518,
		0.723583, -0.690031, -0.016877,
		0.486126, 0.492100, 0.722162,
		40.359207, 38.013405, 51.154987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345146, 37.116505, 51.137482>,  <40.018917, 37.668938, 50.649475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345146, 37.116505, 51.137482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346893, 37.453957, 51.352242>,  <40.347942, 37.656429, 51.481098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346893, 37.453957, 51.352242>,  <40.345146, 37.116505, 51.137482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346893, 37.453957, 51.352242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371739, -0.497058, 0.784056,
		0.928327, -0.203016, 0.311438,
		0.004372, 0.843634, 0.536901,
		40.348206, 37.707047, 51.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568558, 36.939972, 51.798187>,  <40.345146, 37.116505, 51.137482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568558, 36.939972, 51.798187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364304, 37.280350, 51.847408>,  <40.241749, 37.484577, 51.876942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364304, 37.280350, 51.847408>,  <40.568558, 36.939972, 51.798187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364304, 37.280350, 51.847408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433941, -0.378624, 0.817520,
		0.742257, 0.364057, 0.562599,
		-0.510637, 0.850945, 0.123057,
		40.211113, 37.535633, 51.884327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699284, 37.035961, 52.561386>,  <40.568558, 36.939972, 51.798187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699284, 37.035961, 52.561386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374390, 37.236237, 52.441658>,  <40.179455, 37.356400, 52.369820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374390, 37.236237, 52.441658>,  <40.699284, 37.035961, 52.561386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374390, 37.236237, 52.441658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498807, -0.330091, 0.801394,
		0.302443, 0.800221, 0.517856,
		-0.812232, 0.500686, -0.299322,
		40.130722, 37.386444, 52.351860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508186, 37.494221, 53.053368>,  <40.699284, 37.035961, 52.561386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508186, 37.494221, 53.053368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164856, 37.462509, 52.850590>,  <39.958858, 37.443481, 52.728924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164856, 37.462509, 52.850590>,  <40.508186, 37.494221, 53.053368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164856, 37.462509, 52.850590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493426, -0.143483, 0.857871,
		-0.140748, 0.986472, 0.084037,
		-0.858324, -0.079278, -0.506946,
		39.907360, 37.438725, 52.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979069, 37.944958, 53.373142>,  <40.508186, 37.494221, 53.053368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979069, 37.944958, 53.373142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768349, 37.650261, 53.203583>,  <39.641918, 37.473442, 53.101845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768349, 37.650261, 53.203583>,  <39.979069, 37.944958, 53.373142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768349, 37.650261, 53.203583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486987, -0.147140, 0.860926,
		-0.696654, 0.659970, -0.281271,
		-0.526799, -0.736742, -0.423903,
		39.610310, 37.429237, 53.076412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297588, 38.045570, 53.598339>,  <39.979069, 37.944958, 53.373142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297588, 38.045570, 53.598339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279377, 37.673012, 53.453884>,  <39.268448, 37.449474, 53.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279377, 37.673012, 53.453884>,  <39.297588, 38.045570, 53.598339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279377, 37.673012, 53.453884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730262, -0.215650, 0.648237,
		-0.681648, 0.293244, -0.670346,
		-0.045531, -0.931399, -0.361142,
		39.265717, 37.393593, 53.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564461, 37.956783, 53.449184>,  <39.297588, 38.045570, 53.598339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564461, 37.956783, 53.449184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727692, 37.591606, 53.450367>,  <38.825630, 37.372501, 53.451077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727692, 37.591606, 53.450367>,  <38.564461, 37.956783, 53.449184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727692, 37.591606, 53.450367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724689, -0.321957, 0.609236,
		-0.555246, -0.250759, -0.792983,
		0.408078, -0.912942, 0.002957,
		38.850117, 37.317722, 53.451256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083012, 37.511978, 53.209373>,  <38.564461, 37.956783, 53.449184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083012, 37.511978, 53.209373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325218, 37.281677, 53.429138>,  <38.470543, 37.143497, 53.560997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325218, 37.281677, 53.429138>,  <38.083012, 37.511978, 53.209373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325218, 37.281677, 53.429138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789638, -0.348670, 0.504877,
		-0.099121, -0.739550, -0.665763,
		0.605513, -0.575756, 0.549416,
		38.506874, 37.108952, 53.593964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688309, 36.952911, 53.386864>,  <38.083012, 37.511978, 53.209373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688309, 36.952911, 53.386864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987751, 36.914291, 53.649242>,  <38.167416, 36.891121, 53.806667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987751, 36.914291, 53.649242>,  <37.688309, 36.952911, 53.386864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987751, 36.914291, 53.649242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613353, -0.476522, 0.629860,
		0.251760, -0.873845, -0.415947,
		0.748608, -0.096549, 0.655945,
		38.212334, 36.885326, 53.846027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665215, 36.237778, 53.737221>,  <37.688309, 36.952911, 53.386864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665215, 36.237778, 53.737221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900192, 36.442207, 53.988209>,  <38.041180, 36.564865, 54.138802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900192, 36.442207, 53.988209>,  <37.665215, 36.237778, 53.737221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900192, 36.442207, 53.988209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559996, -0.303022, 0.771092,
		0.584220, -0.804352, 0.108190,
		0.587445, 0.511073, 0.627465,
		38.076427, 36.595528, 54.176449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673962, 35.841980, 54.392765>,  <37.665215, 36.237778, 53.737221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673962, 35.841980, 54.392765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794907, 36.205795, 54.506836>,  <37.867474, 36.424084, 54.575279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794907, 36.205795, 54.506836>,  <37.673962, 35.841980, 54.392765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794907, 36.205795, 54.506836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503494, -0.101636, 0.858000,
		0.809364, -0.403009, 0.427215,
		0.302361, 0.909535, 0.285174,
		37.885616, 36.478657, 54.592388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851772, 35.729355, 55.052925>,  <37.673962, 35.841980, 54.392765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851772, 35.729355, 55.052925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800842, 36.125618, 55.033409>,  <37.770283, 36.363377, 55.021702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800842, 36.125618, 55.033409>,  <37.851772, 35.729355, 55.052925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800842, 36.125618, 55.033409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428901, -0.010640, 0.903289,
		0.894333, 0.135936, 0.426250,
		-0.127325, 0.990661, -0.048788,
		37.762646, 36.422817, 55.018772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053577, 36.046165, 55.618221>,  <37.851772, 35.729355, 55.052925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053577, 36.046165, 55.618221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808186, 36.324310, 55.468491>,  <37.660950, 36.491196, 55.378654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808186, 36.324310, 55.468491>,  <38.053577, 36.046165, 55.618221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808186, 36.324310, 55.468491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491951, 0.034289, 0.869947,
		0.617764, 0.717841, 0.321049,
		-0.613476, 0.695362, -0.374325,
		37.624142, 36.532921, 55.356194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000286, 36.569633, 56.110161>,  <38.053577, 36.046165, 55.618221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000286, 36.569633, 56.110161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678352, 36.639008, 55.883125>,  <37.485191, 36.680634, 55.746902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678352, 36.639008, 55.883125>,  <38.000286, 36.569633, 56.110161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678352, 36.639008, 55.883125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549814, 0.142240, 0.823087,
		0.223486, 0.974519, -0.019123,
		-0.804834, 0.173435, -0.567593,
		37.436901, 36.691036, 55.712849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623974, 37.230694, 56.411335>,  <38.000286, 36.569633, 56.110161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623974, 37.230694, 56.411335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370010, 37.012383, 56.192604>,  <37.217632, 36.881393, 56.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370010, 37.012383, 56.192604>,  <37.623974, 37.230694, 56.411335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370010, 37.012383, 56.192604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621126, -0.060328, 0.781385,
		-0.459455, 0.835752, -0.300697,
		-0.634904, -0.545782, -0.546826,
		37.179539, 36.848648, 56.028557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930660, 37.494591, 56.546394>,  <37.623974, 37.230694, 56.411335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930660, 37.494591, 56.546394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882362, 37.130913, 56.387009>,  <36.853382, 36.912704, 56.291378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882362, 37.130913, 56.387009>,  <36.930660, 37.494591, 56.546394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882362, 37.130913, 56.387009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688583, -0.212420, 0.693349,
		-0.715034, 0.358099, -0.600409,
		-0.120749, -0.909199, -0.398468,
		36.846138, 36.858154, 56.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145512, 37.319721, 56.573071>,  <36.930660, 37.494591, 56.546394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145512, 37.319721, 56.573071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341423, 36.975685, 56.515984>,  <36.458969, 36.769264, 56.481731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341423, 36.975685, 56.515984>,  <36.145512, 37.319721, 56.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341423, 36.975685, 56.515984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673257, -0.477117, 0.564875,
		-0.553936, -0.180575, -0.812741,
		0.489775, -0.860088, -0.142719,
		36.488358, 36.717659, 56.473167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619759, 36.929722, 56.379440>,  <36.145512, 37.319721, 56.573071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619759, 36.929722, 56.379440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891380, 36.655067, 56.483299>,  <36.054356, 36.490276, 56.545612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891380, 36.655067, 56.483299>,  <35.619759, 36.929722, 56.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891380, 36.655067, 56.483299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540918, -0.228909, 0.809326,
		-0.496276, -0.690025, -0.526855,
		0.679056, -0.686634, 0.259645,
		36.095097, 36.449078, 56.561192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217297, 36.305004, 56.513397>,  <35.619759, 36.929722, 56.379440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217297, 36.305004, 56.513397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560905, 36.251236, 56.710987>,  <35.767071, 36.218975, 56.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560905, 36.251236, 56.710987>,  <35.217297, 36.305004, 56.513397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560905, 36.251236, 56.710987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494649, -0.466615, 0.733208,
		0.131939, -0.874186, -0.467323,
		0.859020, -0.134422, 0.493980,
		35.818611, 36.210911, 56.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379654, 35.666077, 56.500332>,  <35.217297, 36.305004, 56.513397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379654, 35.666077, 56.500332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555290, 35.825378, 56.822472>,  <35.660671, 35.920959, 57.015755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555290, 35.825378, 56.822472>,  <35.379654, 35.666077, 56.500332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555290, 35.825378, 56.822472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433977, -0.690864, 0.578248,
		0.786676, -0.603411, -0.130523,
		0.439095, 0.398250, 0.805352,
		35.687019, 35.944855, 57.064079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648151, 35.165379, 56.936687>,  <35.379654, 35.666077, 56.500332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648151, 35.165379, 56.936687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581615, 35.477158, 57.178280>,  <35.541695, 35.664227, 57.323235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581615, 35.477158, 57.178280>,  <35.648151, 35.165379, 56.936687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581615, 35.477158, 57.178280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396394, -0.613700, 0.682821,
		0.902887, -0.125837, 0.411048,
		-0.166336, 0.779446, 0.603983,
		35.531715, 35.710991, 57.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992443, 34.932796, 57.490444>,  <35.648151, 35.165379, 56.936687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992443, 34.932796, 57.490444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712585, 35.208641, 57.565197>,  <35.544670, 35.374149, 57.610050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712585, 35.208641, 57.565197>,  <35.992443, 34.932796, 57.490444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712585, 35.208641, 57.565197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466379, -0.638945, 0.611752,
		0.541280, 0.340854, 0.768658,
		-0.699648, 0.689615, 0.186881,
		35.502689, 35.415527, 57.621262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000156, 35.149117, 58.228012>,  <35.992443, 34.932796, 57.490444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000156, 35.149117, 58.228012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638069, 35.153557, 58.058086>,  <35.420818, 35.156223, 57.956131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638069, 35.153557, 58.058086>,  <36.000156, 35.149117, 58.228012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638069, 35.153557, 58.058086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400633, -0.355640, 0.844401,
		-0.141704, 0.934557, 0.326379,
		-0.905215, 0.011103, -0.424810,
		35.366505, 35.156887, 57.930645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571087, 35.398678, 58.690285>,  <36.000156, 35.149117, 58.228012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571087, 35.398678, 58.690285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354134, 35.161217, 58.452496>,  <35.223961, 35.018742, 58.309822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354134, 35.161217, 58.452496>,  <35.571087, 35.398678, 58.690285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354134, 35.161217, 58.452496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428365, -0.413291, 0.803551,
		-0.722719, 0.690485, -0.030136,
		-0.542384, -0.593651, -0.594473,
		35.191418, 34.983120, 58.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186874, 34.981411, 59.214249>,  <35.571087, 35.398678, 58.690285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186874, 34.981411, 59.214249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937378, 34.672211, 59.167927>,  <34.787678, 34.486691, 59.140133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937378, 34.672211, 59.167927>,  <35.186874, 34.981411, 59.214249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937378, 34.672211, 59.167927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595288, 0.565814, -0.570515,
		0.506533, -0.286918, -0.813082,
		-0.623744, -0.773003, -0.115805,
		34.750256, 34.440311, 59.133186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423519, 35.621063, 59.558189>,  <35.186874, 34.981411, 59.214249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423519, 35.621063, 59.558189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674561, 35.826294, 59.792404>,  <35.825188, 35.949432, 59.932934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674561, 35.826294, 59.792404>,  <35.423519, 35.621063, 59.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674561, 35.826294, 59.792404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654228, 0.060109, -0.753904,
		-0.422011, 0.856233, -0.297948,
		0.627608, 0.513081, 0.585538,
		35.862843, 35.980217, 59.968067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496025, 36.322727, 59.322758>,  <35.423519, 35.621063, 59.558189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496025, 36.322727, 59.322758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828232, 36.183197, 59.496452>,  <36.027557, 36.099480, 59.600670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828232, 36.183197, 59.496452>,  <35.496025, 36.322727, 59.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828232, 36.183197, 59.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458551, -0.014343, -0.888552,
		0.316175, 0.937079, 0.148041,
		0.830521, -0.348822, 0.434234,
		36.077389, 36.078548, 59.626724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064404, 36.832516, 59.141777>,  <35.496025, 36.322727, 59.322758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064404, 36.832516, 59.141777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205833, 36.468811, 59.229618>,  <36.290691, 36.250587, 59.282322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205833, 36.468811, 59.229618>,  <36.064404, 36.832516, 59.141777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205833, 36.468811, 59.229618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732570, 0.123174, -0.669455,
		0.581662, 0.397577, 0.709650,
		0.353570, -0.909264, 0.219607,
		36.311905, 36.196033, 59.295502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768433, 36.839127, 59.566128>,  <36.064404, 36.832516, 59.141777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768433, 36.839127, 59.566128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 36.521370, 59.326942>,  <36.700153, 36.330715, 59.183430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725758, 36.521370, 59.326942>,  <36.768433, 36.839127, 59.566128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725758, 36.521370, 59.326942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893890, 0.186730, -0.407545,
		0.435408, -0.577995, 0.690175,
		-0.106683, -0.794389, -0.597967,
		36.693752, 36.283054, 59.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386543, 36.368603, 59.548458>,  <36.768433, 36.839127, 59.566128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386543, 36.368603, 59.548458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203831, 36.299568, 59.199387>,  <37.094204, 36.258148, 58.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203831, 36.299568, 59.199387>,  <37.386543, 36.368603, 59.548458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203831, 36.299568, 59.199387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888372, -0.037441, -0.457596,
		0.046303, -0.984282, 0.170427,
		-0.456784, -0.172591, -0.872674,
		37.066795, 36.247791, 58.937584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649654, 35.681671, 59.284431>,  <37.386543, 36.368603, 59.548458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649654, 35.681671, 59.284431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569977, 35.968315, 59.017059>,  <37.522171, 36.140301, 58.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569977, 35.968315, 59.017059>,  <37.649654, 35.681671, 59.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569977, 35.968315, 59.017059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903589, -0.129679, -0.408302,
		-0.379273, -0.685317, -0.621685,
		-0.199196, 0.716606, -0.668429,
		37.510220, 36.183296, 58.816532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936085, 35.382076, 58.629417>,  <37.649654, 35.681671, 59.284431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936085, 35.382076, 58.629417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858402, 35.767586, 58.556278>,  <37.811794, 35.998890, 58.512394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858402, 35.767586, 58.556278>,  <37.936085, 35.382076, 58.629417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858402, 35.767586, 58.556278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826593, 0.060400, -0.559550,
		-0.528234, -0.259808, -0.808375,
		-0.194201, 0.963770, -0.182850,
		37.800140, 36.056717, 58.501423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180210, 35.533142, 57.957714>,  <37.936085, 35.382076, 58.629417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180210, 35.533142, 57.957714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176838, 35.907761, 58.097893>,  <38.174816, 36.132530, 58.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176838, 35.907761, 58.097893>,  <38.180210, 35.533142, 57.957714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176838, 35.907761, 58.097893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622166, 0.279274, -0.731379,
		-0.782840, 0.211872, -0.585040,
		-0.008427, 0.936545, 0.350446,
		38.174309, 36.188725, 58.203026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017273, 36.041439, 57.342636>,  <38.180210, 35.533142, 57.957714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017273, 36.041439, 57.342636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206490, 36.258415, 57.620338>,  <38.320019, 36.388599, 57.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206490, 36.258415, 57.620338>,  <38.017273, 36.041439, 57.342636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206490, 36.258415, 57.620338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569536, 0.412943, -0.710708,
		-0.672204, 0.731599, -0.113598,
		0.473044, 0.542439, 0.694254,
		38.348404, 36.421146, 57.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095871, 36.692272, 57.061016>,  <38.017273, 36.041439, 57.342636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095871, 36.692272, 57.061016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374199, 36.700920, 57.348175>,  <38.541195, 36.706108, 57.520470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374199, 36.700920, 57.348175>,  <38.095871, 36.692272, 57.061016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374199, 36.700920, 57.348175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615224, 0.497815, -0.611294,
		-0.370593, 0.867014, 0.333088,
		0.695816, 0.021617, 0.717894,
		38.582943, 36.707405, 57.563545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295635, 37.380280, 57.063644>,  <38.095871, 36.692272, 57.061016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295635, 37.380280, 57.063644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590302, 37.171562, 57.235718>,  <38.767101, 37.046333, 57.338963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590302, 37.171562, 57.235718>,  <38.295635, 37.380280, 57.063644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590302, 37.171562, 57.235718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670943, 0.643528, -0.368385,
		-0.084616, 0.560005, 0.824157,
		0.736665, -0.521791, 0.430184,
		38.811302, 37.015026, 57.364773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625797, 37.864853, 57.347733>,  <38.295635, 37.380280, 57.063644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625797, 37.864853, 57.347733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883202, 37.559151, 57.330734>,  <39.037643, 37.375729, 57.320538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883202, 37.559151, 57.330734>,  <38.625797, 37.864853, 57.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883202, 37.559151, 57.330734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684054, 0.599109, -0.416100,
		0.343466, 0.238696, 0.908326,
		0.643508, -0.764259, -0.042493,
		39.076252, 37.329872, 57.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308739, 38.224617, 57.483223>,  <38.625797, 37.864853, 57.347733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308739, 38.224617, 57.483223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398239, 37.874893, 57.310936>,  <39.451939, 37.665058, 57.207565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398239, 37.874893, 57.310936>,  <39.308739, 38.224617, 57.483223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398239, 37.874893, 57.310936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757004, 0.434252, -0.488232,
		0.613906, -0.216813, 0.759020,
		0.223751, -0.874309, -0.430718,
		39.465363, 37.612602, 57.181721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062698, 38.209801, 57.556000>,  <39.308739, 38.224617, 57.483223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062698, 38.209801, 57.556000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937225, 37.963249, 57.267090>,  <39.861942, 37.815319, 57.093746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937225, 37.963249, 57.267090>,  <40.062698, 38.209801, 57.556000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937225, 37.963249, 57.267090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602487, 0.458722, -0.653134,
		0.733902, -0.640036, 0.227469,
		-0.313684, -0.616383, -0.722270,
		39.843121, 37.778336, 57.050407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637360, 37.925362, 57.304203>,  <40.062698, 38.209801, 57.556000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637360, 37.925362, 57.304203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376389, 37.851524, 57.010193>,  <40.219807, 37.807220, 56.833786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376389, 37.851524, 57.010193>,  <40.637360, 37.925362, 57.304203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376389, 37.851524, 57.010193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684942, 0.271445, -0.676144,
		0.324334, -0.944585, -0.050659,
		-0.652427, -0.184598, -0.735026,
		40.180660, 37.796146, 56.789684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977283, 37.538204, 56.812641>,  <40.637360, 37.925362, 57.304203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977283, 37.538204, 56.812641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665337, 37.699203, 56.620888>,  <40.478168, 37.795803, 56.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665337, 37.699203, 56.620888>,  <40.977283, 37.538204, 56.812641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665337, 37.699203, 56.620888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620780, 0.399119, -0.674786,
		-0.080266, -0.823834, -0.561120,
		-0.779865, 0.402495, -0.479384,
		40.431377, 37.819950, 56.477074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174934, 37.363216, 56.012428>,  <40.977283, 37.538204, 56.812641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174934, 37.363216, 56.012428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874603, 37.627068, 55.998863>,  <40.694405, 37.785378, 55.990726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874603, 37.627068, 55.998863>,  <41.174934, 37.363216, 56.012428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874603, 37.627068, 55.998863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396380, 0.408926, -0.821987,
		-0.528340, -0.630611, -0.568496,
		-0.750826, 0.659628, -0.033909,
		40.649357, 37.824955, 55.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922180, 37.324207, 55.339485>,  <41.174934, 37.363216, 56.012428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922180, 37.324207, 55.339485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826393, 37.675285, 55.505524>,  <40.768921, 37.885933, 55.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826393, 37.675285, 55.505524>,  <40.922180, 37.324207, 55.339485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826393, 37.675285, 55.505524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544580, 0.475372, -0.690980,
		-0.803795, 0.060581, -0.591814,
		-0.239471, 0.877697, 0.415093,
		40.754551, 37.938595, 55.630051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614120, 37.760281, 54.777138>,  <40.922180, 37.324207, 55.339485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614120, 37.760281, 54.777138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741653, 38.010651, 55.061829>,  <40.818172, 38.160873, 55.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741653, 38.010651, 55.061829>,  <40.614120, 37.760281, 54.777138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741653, 38.010651, 55.061829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348272, 0.621021, -0.702168,
		-0.881504, 0.471752, -0.019989,
		0.318836, 0.625926, 0.711731,
		40.837303, 38.198429, 55.275349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331562, 38.435028, 54.634319>,  <40.614120, 37.760281, 54.777138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331562, 38.435028, 54.634319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632271, 38.516533, 54.885178>,  <40.812698, 38.565437, 55.035694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632271, 38.516533, 54.885178>,  <40.331562, 38.435028, 54.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632271, 38.516533, 54.885178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389833, 0.629743, -0.671903,
		-0.531852, 0.749603, 0.393991,
		0.751774, 0.203762, 0.627150,
		40.857803, 38.577660, 55.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383251, 39.157711, 54.732384>,  <40.331562, 38.435028, 54.634319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383251, 39.157711, 54.732384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745590, 39.030350, 54.844131>,  <40.962994, 38.953934, 54.911182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745590, 39.030350, 54.844131>,  <40.383251, 39.157711, 54.732384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745590, 39.030350, 54.844131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419591, 0.584004, -0.694897,
		0.058105, 0.746696, 0.662622,
		0.905852, -0.318407, 0.279374,
		41.017345, 38.934826, 54.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891094, 39.763027, 54.924377>,  <40.383251, 39.157711, 54.732384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891094, 39.763027, 54.924377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138165, 39.459099, 54.843235>,  <41.286407, 39.276741, 54.794548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138165, 39.459099, 54.843235>,  <40.891094, 39.763027, 54.924377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138165, 39.459099, 54.843235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487210, 0.572193, -0.659714,
		0.617339, 0.308653, 0.723620,
		0.617673, -0.759822, -0.202858,
		41.323467, 39.231152, 54.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503887, 40.127789, 54.659012>,  <40.891094, 39.763027, 54.924377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503887, 40.127789, 54.659012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536968, 39.739113, 54.570484>,  <41.556816, 39.505909, 54.517368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536968, 39.739113, 54.570484>,  <41.503887, 40.127789, 54.659012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536968, 39.739113, 54.570484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468749, 0.233907, -0.851799,
		0.879451, -0.033292, 0.474824,
		0.082707, -0.971689, -0.221315,
		41.561779, 39.447605, 54.504089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176460, 39.967144, 54.595345>,  <41.503887, 40.127789, 54.659012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176460, 39.967144, 54.595345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999039, 39.698776, 54.357643>,  <41.892586, 39.537758, 54.215023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999039, 39.698776, 54.357643>,  <42.176460, 39.967144, 54.595345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999039, 39.698776, 54.357643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554391, 0.315589, -0.770100,
		0.704211, -0.671026, 0.231970,
		-0.443550, -0.670915, -0.594253,
		41.865974, 39.497501, 54.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683323, 39.807713, 54.153954>,  <42.176460, 39.967144, 54.595345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683323, 39.807713, 54.153954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375816, 39.636658, 53.963745>,  <42.191311, 39.534023, 53.849621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375816, 39.636658, 53.963745>,  <42.683323, 39.807713, 54.153954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375816, 39.636658, 53.963745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463657, 0.139429, -0.874975,
		0.440475, -0.893132, 0.091089,
		-0.768768, -0.427639, -0.475522,
		42.145187, 39.508366, 53.821087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952950, 39.283474, 53.742756>,  <42.683323, 39.807713, 54.153954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952950, 39.283474, 53.742756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586971, 39.338867, 53.591125>,  <42.367386, 39.372105, 53.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586971, 39.338867, 53.591125>,  <42.952950, 39.283474, 53.742756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586971, 39.338867, 53.591125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383479, 0.005543, -0.923533,
		-0.125797, -0.990349, -0.058179,
		-0.914943, 0.138488, -0.379080,
		42.312489, 39.380413, 53.477402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788155, 38.851204, 53.212204>,  <42.952950, 39.283474, 53.742756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788155, 38.851204, 53.212204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522659, 39.138344, 53.128162>,  <42.363361, 39.310627, 53.077736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522659, 39.138344, 53.128162>,  <42.788155, 38.851204, 53.212204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522659, 39.138344, 53.128162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423344, 0.128968, -0.896742,
		-0.616630, -0.684148, -0.389498,
		-0.663737, 0.717850, -0.210104,
		42.323540, 39.353699, 53.065132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678371, 38.761902, 52.606636>,  <42.788155, 38.851204, 53.212204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678371, 38.761902, 52.606636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545788, 39.137932, 52.638638>,  <42.466236, 39.363548, 52.657841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545788, 39.137932, 52.638638>,  <42.678371, 38.761902, 52.606636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545788, 39.137932, 52.638638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514709, 0.251247, -0.819725,
		-0.790701, -0.230526, -0.567141,
		-0.331461, 0.940071, 0.080007,
		42.446350, 39.419952, 52.662640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489189, 38.942036, 51.905502>,  <42.678371, 38.761902, 52.606636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489189, 38.942036, 51.905502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552994, 39.292107, 52.088200>,  <42.591278, 39.502151, 52.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552994, 39.292107, 52.088200>,  <42.489189, 38.942036, 51.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552994, 39.292107, 52.088200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615555, 0.273535, -0.739101,
		-0.771782, 0.399047, -0.495089,
		0.159512, 0.875180, 0.456745,
		42.600849, 39.554661, 52.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460476, 39.501759, 51.321960>,  <42.489189, 38.942036, 51.905502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460476, 39.501759, 51.321960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642303, 39.682358, 51.629082>,  <42.751400, 39.790718, 51.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642303, 39.682358, 51.629082>,  <42.460476, 39.501759, 51.321960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642303, 39.682358, 51.629082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708982, 0.338395, -0.618735,
		-0.539175, 0.825616, -0.166277,
		0.454570, 0.451494, 0.767801,
		42.778675, 39.817806, 51.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655655, 40.118397, 51.112980>,  <42.460476, 39.501759, 51.321960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655655, 40.118397, 51.112980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896477, 40.066010, 51.428036>,  <43.040970, 40.034576, 51.617069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896477, 40.066010, 51.428036>,  <42.655655, 40.118397, 51.112980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896477, 40.066010, 51.428036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789551, 0.244558, -0.562850,
		-0.118906, 0.960748, 0.250646,
		0.602055, -0.130972, 0.787640,
		43.077095, 40.026718, 51.664330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071663, 40.713169, 51.111053>,  <42.655655, 40.118397, 51.112980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071663, 40.713169, 51.111053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278824, 40.429092, 51.301800>,  <43.403122, 40.258648, 51.416248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278824, 40.429092, 51.301800>,  <43.071663, 40.713169, 51.111053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278824, 40.429092, 51.301800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800007, 0.204704, -0.563990,
		0.302922, 0.673594, 0.674173,
		0.517906, -0.710188, 0.476870,
		43.434196, 40.216034, 51.444862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655212, 41.036732, 51.081257>,  <43.071663, 40.713169, 51.111053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655212, 41.036732, 51.081257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761238, 40.680618, 51.229385>,  <43.824852, 40.466949, 51.318264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761238, 40.680618, 51.229385>,  <43.655212, 41.036732, 51.081257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761238, 40.680618, 51.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887999, 0.075720, -0.453567,
		0.375762, 0.449070, 0.810641,
		0.265065, -0.890283, 0.370321,
		43.840759, 40.413532, 51.340481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227776, 41.103600, 51.498154>,  <43.655212, 41.036732, 51.081257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227776, 41.103600, 51.498154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238167, 40.718719, 51.389717>,  <44.244400, 40.487789, 51.324654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238167, 40.718719, 51.389717>,  <44.227776, 41.103600, 51.498154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238167, 40.718719, 51.389717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906609, 0.136929, -0.399137,
		0.421171, -0.235407, 0.875899,
		0.025976, -0.962203, -0.271092,
		44.245960, 40.430058, 51.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855553, 40.951900, 51.625523>,  <44.227776, 41.103600, 51.498154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855553, 40.951900, 51.625523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730461, 40.675087, 51.365280>,  <44.655407, 40.508999, 51.209137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730461, 40.675087, 51.365280>,  <44.855553, 40.951900, 51.625523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730461, 40.675087, 51.365280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807146, 0.167465, -0.566102,
		0.500717, -0.702168, 0.506204,
		-0.312727, -0.692037, -0.650604,
		44.636642, 40.467476, 51.170097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361423, 40.387997, 51.527927>,  <44.855553, 40.951900, 51.625523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361423, 40.387997, 51.527927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141121, 40.338501, 51.197750>,  <45.008942, 40.308804, 50.999645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141121, 40.338501, 51.197750>,  <45.361423, 40.387997, 51.527927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141121, 40.338501, 51.197750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833479, -0.028768, -0.551801,
		0.044535, -0.991898, 0.118982,
		-0.550753, -0.123743, -0.825445,
		44.975895, 40.301376, 50.950115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666309, 39.839703, 51.178604>,  <45.361423, 40.387997, 51.527927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666309, 39.839703, 51.178604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471863, 40.034012, 50.888031>,  <45.355194, 40.150597, 50.713688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471863, 40.034012, 50.888031>,  <45.666309, 39.839703, 51.178604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471863, 40.034012, 50.888031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749527, -0.195643, -0.632402,
		-0.449329, -0.851906, -0.268997,
		-0.486120, 0.485777, -0.726435,
		45.326027, 40.179745, 50.670101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825989, 39.457947, 50.669106>,  <45.666309, 39.839703, 51.178604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825989, 39.457947, 50.669106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669579, 39.753075, 50.449028>,  <45.575733, 39.930153, 50.316982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669579, 39.753075, 50.449028>,  <45.825989, 39.457947, 50.669106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669579, 39.753075, 50.449028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743329, -0.099346, -0.661507,
		-0.542734, -0.667645, -0.509598,
		-0.391025, 0.737822, -0.550198,
		45.552273, 39.974422, 50.283970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728195, 39.243370, 49.829346>,  <45.825989, 39.457947, 50.669106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728195, 39.243370, 49.829346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766037, 39.637802, 49.884029>,  <45.788742, 39.874462, 49.916840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766037, 39.637802, 49.884029>,  <45.728195, 39.243370, 49.829346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766037, 39.637802, 49.884029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630067, 0.047012, -0.775116,
		-0.770757, 0.159461, -0.616852,
		0.094601, 0.986084, 0.136706,
		45.794418, 39.933628, 49.925041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034824, 39.350895, 49.172894>,  <45.728195, 39.243370, 49.829346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034824, 39.350895, 49.172894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062195, 39.712257, 49.342209>,  <46.078617, 39.929073, 49.443798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062195, 39.712257, 49.342209>,  <46.034824, 39.350895, 49.172894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062195, 39.712257, 49.342209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725718, 0.246067, -0.642482,
		-0.684581, 0.351149, -0.638783,
		0.068424, 0.903408, 0.423288,
		46.082722, 39.983280, 49.469196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082478, 39.793495, 48.691837>,  <46.034824, 39.350895, 49.172894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082478, 39.793495, 48.691837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248016, 39.981682, 49.003578>,  <46.347340, 40.094597, 49.190620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.248016, 39.981682, 49.003578>,  <46.082478, 39.793495, 48.691837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.248016, 39.981682, 49.003578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728117, 0.342796, -0.593580,
		-0.546420, 0.813110, -0.200692,
		0.413849, 0.470471, 0.779349,
		46.372169, 40.122822, 49.237385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167774, 40.464474, 48.428879>,  <46.082478, 39.793495, 48.691837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167774, 40.464474, 48.428879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401924, 40.410858, 48.748722>,  <46.542416, 40.378689, 48.940628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401924, 40.410858, 48.748722>,  <46.167774, 40.464474, 48.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401924, 40.410858, 48.748722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807926, 0.178849, -0.561488,
		-0.067747, 0.974703, 0.212988,
		0.585377, -0.134039, 0.799604,
		46.577538, 40.370647, 48.988602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552361, 41.079735, 48.486755>,  <46.167774, 40.464474, 48.428879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552361, 41.079735, 48.486755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748352, 40.799225, 48.693878>,  <46.865948, 40.630917, 48.818153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748352, 40.799225, 48.693878>,  <46.552361, 41.079735, 48.486755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748352, 40.799225, 48.693878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870789, 0.366127, -0.328143,
		0.040534, 0.611688, 0.790060,
		0.489983, -0.701277, 0.517810,
		46.895348, 40.588840, 48.849220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951630, 41.402821, 48.942196>,  <46.552361, 41.079735, 48.486755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951630, 41.402821, 48.942196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136284, 41.055260, 48.870758>,  <47.247078, 40.846722, 48.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136284, 41.055260, 48.870758>,  <46.951630, 41.402821, 48.942196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136284, 41.055260, 48.870758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753999, 0.490413, -0.437012,
		0.467306, 0.067084, 0.881547,
		0.461639, -0.868904, -0.178592,
		47.274776, 40.794590, 48.817181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696026, 41.515862, 48.889957>,  <46.951630, 41.402821, 48.942196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696026, 41.515862, 48.889957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674690, 41.149925, 48.729843>,  <47.661888, 40.930363, 48.633774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674690, 41.149925, 48.729843>,  <47.696026, 41.515862, 48.889957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674690, 41.149925, 48.729843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652847, 0.271377, -0.707210,
		0.755610, -0.299044, 0.582775,
		-0.053335, -0.914837, -0.400285,
		47.658691, 40.875473, 48.609756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859825, 42.168758, 49.234875>,  <47.696026, 41.515862, 48.889957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859825, 42.168758, 49.234875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979034, 42.549484, 49.263802>,  <48.050560, 42.777920, 49.281158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979034, 42.549484, 49.263802>,  <47.859825, 42.168758, 49.234875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.979034, 42.549484, 49.263802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330993, 0.031983, 0.943091,
		0.895337, -0.304995, 0.324576,
		0.298019, 0.951817, 0.072316,
		48.068439, 42.835030, 49.285496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.316628, 42.274296, 49.886402>,  <47.859825, 42.168758, 49.234875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.316628, 42.274296, 49.886402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110001, 42.604652, 49.796017>,  <47.986023, 42.802864, 49.741787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.110001, 42.604652, 49.796017>,  <48.316628, 42.274296, 49.886402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.110001, 42.604652, 49.796017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389735, 0.008189, 0.920891,
		0.762405, 0.563772, 0.317648,
		-0.516571, 0.825890, -0.225965,
		47.955029, 42.852421, 49.728226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.439293, 42.551750, 50.545212>,  <48.316628, 42.274296, 49.886402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.439293, 42.551750, 50.545212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.159401, 42.756935, 50.346313>,  <47.991467, 42.880047, 50.226974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.159401, 42.756935, 50.346313>,  <48.439293, 42.551750, 50.545212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.159401, 42.756935, 50.346313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501592, 0.142866, 0.853226,
		0.508710, 0.846441, 0.157328,
		-0.699729, 0.512959, -0.497245,
		47.949482, 42.910824, 50.197140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.391350, 43.177261, 50.911308>,  <48.439293, 42.551750, 50.545212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.391350, 43.177261, 50.911308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.044914, 43.136665, 50.715519>,  <47.837051, 43.112309, 50.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.044914, 43.136665, 50.715519>,  <48.391350, 43.177261, 50.911308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.044914, 43.136665, 50.715519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498911, 0.236500, 0.833760,
		0.031142, 0.966316, -0.255465,
		-0.866093, -0.101489, -0.489471,
		47.785088, 43.106220, 50.568676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.015606, 43.702850, 51.260735>,  <48.391350, 43.177261, 50.911308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.015606, 43.702850, 51.260735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742989, 43.501884, 51.047916>,  <47.579418, 43.381306, 50.920223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742989, 43.501884, 51.047916>,  <48.015606, 43.702850, 51.260735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742989, 43.501884, 51.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683741, 0.178130, 0.707649,
		-0.260760, 0.846079, -0.464925,
		-0.681544, -0.502415, -0.532050,
		47.538525, 43.351158, 50.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361115, 44.097179, 51.126804>,  <48.015606, 43.702850, 51.260735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361115, 44.097179, 51.126804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279152, 43.705750, 51.118668>,  <47.229977, 43.470894, 51.113785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.279152, 43.705750, 51.118668>,  <47.361115, 44.097179, 51.126804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.279152, 43.705750, 51.118668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798290, 0.155056, 0.581972,
		-0.566346, 0.135487, -0.812955,
		-0.204903, -0.978571, -0.020343,
		47.217682, 43.412178, 51.112564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704742, 44.031559, 51.356030>,  <47.361115, 44.097179, 51.126804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704742, 44.031559, 51.356030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778595, 43.638954, 51.376228>,  <46.822906, 43.403393, 51.388348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778595, 43.638954, 51.376228>,  <46.704742, 44.031559, 51.356030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778595, 43.638954, 51.376228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806124, -0.121843, 0.579067,
		-0.562208, -0.147620, -0.813714,
		0.184627, -0.981511, 0.050499,
		46.833984, 43.344501, 51.391376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.123825, 43.670731, 51.069283>,  <46.704742, 44.031559, 51.356030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.123825, 43.670731, 51.069283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318680, 43.417892, 51.310333>,  <46.435593, 43.266190, 51.454964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318680, 43.417892, 51.310333>,  <46.123825, 43.670731, 51.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318680, 43.417892, 51.310333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854093, -0.200790, 0.479801,
		-0.182276, -0.748428, -0.637676,
		0.487136, -0.632091, 0.602628,
		46.464821, 43.228264, 51.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.647926, 43.167622, 51.218838>,  <46.123825, 43.670731, 51.069283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.647926, 43.167622, 51.218838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919319, 43.104980, 51.505932>,  <46.082153, 43.067394, 51.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919319, 43.104980, 51.505932>,  <45.647926, 43.167622, 51.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919319, 43.104980, 51.505932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719053, -0.341630, 0.605188,
		0.150426, -0.926696, -0.344393,
		0.678480, -0.156601, 0.717733,
		46.122864, 43.057999, 51.721252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596893, 42.486843, 51.331085>,  <45.647926, 43.167622, 51.218838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596893, 42.486843, 51.331085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755768, 42.662666, 51.653336>,  <45.851093, 42.768158, 51.846687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755768, 42.662666, 51.653336>,  <45.596893, 42.486843, 51.331085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755768, 42.662666, 51.653336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736950, -0.370403, 0.565425,
		0.546941, -0.818287, 0.176810,
		0.397189, 0.439555, 0.805626,
		45.874924, 42.794533, 51.895023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522099, 42.015278, 51.737518>,  <45.596893, 42.486843, 51.331085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522099, 42.015278, 51.737518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571808, 42.341324, 51.963844>,  <45.601631, 42.536953, 52.099640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571808, 42.341324, 51.963844>,  <45.522099, 42.015278, 51.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571808, 42.341324, 51.963844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610414, -0.386762, 0.691238,
		0.782274, -0.431279, 0.449495,
		0.124269, 0.815116, 0.565813,
		45.609089, 42.585857, 52.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738617, 41.676491, 52.435673>,  <45.522099, 42.015278, 51.737518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738617, 41.676491, 52.435673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632950, 42.053154, 52.519089>,  <45.569550, 42.279152, 52.569138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632950, 42.053154, 52.519089>,  <45.738617, 41.676491, 52.435673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632950, 42.053154, 52.519089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597468, -0.329512, 0.731064,
		0.757132, 0.068523, 0.649658,
		-0.264165, 0.941661, 0.208544,
		45.553699, 42.335651, 52.581654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925545, 41.884441, 53.153694>,  <45.738617, 41.676491, 52.435673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925545, 41.884441, 53.153694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623581, 42.132729, 53.069008>,  <45.442402, 42.281700, 53.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.623581, 42.132729, 53.069008>,  <45.925545, 41.884441, 53.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623581, 42.132729, 53.069008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480249, -0.303360, 0.823003,
		0.446624, 0.722970, 0.527107,
		-0.754910, 0.620715, -0.211717,
		45.397106, 42.318943, 53.005493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923561, 42.410187, 53.754112>,  <45.925545, 41.884441, 53.153694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923561, 42.410187, 53.754112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570618, 42.374748, 53.569244>,  <45.358852, 42.353485, 53.458324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570618, 42.374748, 53.569244>,  <45.923561, 42.410187, 53.754112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570618, 42.374748, 53.569244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422630, -0.282743, 0.861069,
		-0.206960, 0.955096, 0.212038,
		-0.882356, -0.088593, -0.462169,
		45.305912, 42.348171, 53.430595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434589, 42.662159, 54.308014>,  <45.923561, 42.410187, 53.754112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434589, 42.662159, 54.308014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201416, 42.490639, 54.031952>,  <45.061512, 42.387726, 53.866314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201416, 42.490639, 54.031952>,  <45.434589, 42.662159, 54.308014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201416, 42.490639, 54.031952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570037, -0.389463, 0.723448,
		-0.579007, 0.815137, -0.017403,
		-0.582932, -0.428801, -0.690159,
		45.026535, 42.362000, 53.824905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798309, 42.884560, 54.450573>,  <45.434589, 42.662159, 54.308014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798309, 42.884560, 54.450573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783180, 42.530792, 54.264511>,  <44.774105, 42.318531, 54.152874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783180, 42.530792, 54.264511>,  <44.798309, 42.884560, 54.450573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783180, 42.530792, 54.264511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530512, -0.376707, 0.759374,
		-0.846834, 0.275492, -0.454948,
		-0.037820, -0.884419, -0.465160,
		44.771835, 42.265465, 54.124962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157005, 42.678612, 54.611553>,  <44.798309, 42.884560, 54.450573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157005, 42.678612, 54.611553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297302, 42.340858, 54.449566>,  <44.381481, 42.138206, 54.352375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297302, 42.340858, 54.449566>,  <44.157005, 42.678612, 54.611553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297302, 42.340858, 54.449566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584718, -0.535249, 0.609601,
		-0.731494, 0.022977, -0.681461,
		0.350745, -0.844381, -0.404967,
		44.402527, 42.087543, 54.328075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684608, 42.393803, 54.283817>,  <44.157005, 42.678612, 54.611553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684608, 42.393803, 54.283817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925148, 42.077835, 54.331829>,  <44.069473, 41.888256, 54.360634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925148, 42.077835, 54.331829>,  <43.684608, 42.393803, 54.283817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925148, 42.077835, 54.331829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730100, -0.482246, 0.484141,
		-0.324549, -0.378771, -0.866718,
		0.601350, -0.789918, 0.120028,
		44.105553, 41.840858, 54.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333282, 41.797073, 54.122028>,  <43.684608, 42.393803, 54.283817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333282, 41.797073, 54.122028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619606, 41.677490, 54.374451>,  <43.791401, 41.605740, 54.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619606, 41.677490, 54.374451>,  <43.333282, 41.797073, 54.122028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619606, 41.677490, 54.374451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671008, -0.544641, 0.503106,
		0.193292, -0.783575, -0.590464,
		0.715812, -0.298960, 0.631060,
		43.834351, 41.587803, 54.563770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191761, 41.071419, 54.259888>,  <43.333282, 41.797073, 54.122028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191761, 41.071419, 54.259888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450760, 41.166870, 54.549385>,  <43.606159, 41.224140, 54.723083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450760, 41.166870, 54.549385>,  <43.191761, 41.071419, 54.259888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450760, 41.166870, 54.549385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455422, -0.640295, 0.618558,
		0.611012, -0.730124, -0.305915,
		0.647499, 0.238626, 0.723742,
		43.645008, 41.238457, 54.766506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533478, 40.463806, 54.652184>,  <43.191761, 41.071419, 54.259888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533478, 40.463806, 54.652184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529873, 40.780922, 54.895958>,  <43.527710, 40.971191, 55.042221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529873, 40.780922, 54.895958>,  <43.533478, 40.463806, 54.652184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529873, 40.780922, 54.895958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519190, -0.524582, 0.674726,
		0.854611, -0.310328, 0.416337,
		-0.009016, 0.792787, 0.609433,
		43.527168, 41.018757, 55.078789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808872, 40.246635, 55.393158>,  <43.533478, 40.463806, 54.652184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808872, 40.246635, 55.393158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583981, 40.575508, 55.428753>,  <43.449047, 40.772831, 55.450111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.583981, 40.575508, 55.428753>,  <43.808872, 40.246635, 55.393158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583981, 40.575508, 55.428753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450589, -0.394785, 0.800696,
		0.693449, 0.410075, 0.592425,
		-0.562226, 0.822182, 0.088988,
		43.415314, 40.822163, 55.455448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650402, 40.236542, 56.087940>,  <43.808872, 40.246635, 55.393158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650402, 40.236542, 56.087940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395077, 40.496696, 55.923233>,  <43.241882, 40.652790, 55.824409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395077, 40.496696, 55.923233>,  <43.650402, 40.236542, 56.087940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395077, 40.496696, 55.923233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682536, -0.230849, 0.693435,
		0.355947, 0.723674, 0.591268,
		-0.638315, 0.650388, -0.411764,
		43.203583, 40.691814, 55.799706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372623, 40.476265, 56.626499>,  <43.650402, 40.236542, 56.087940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372623, 40.476265, 56.626499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113449, 40.549751, 56.330818>,  <42.957943, 40.593842, 56.153408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113449, 40.549751, 56.330818>,  <43.372623, 40.476265, 56.626499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113449, 40.549751, 56.330818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761121, -0.193715, 0.619007,
		-0.029475, 0.963704, 0.265343,
		-0.647940, 0.183713, -0.739205,
		42.919067, 40.604866, 56.109058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764877, 40.853924, 57.002712>,  <43.372623, 40.476265, 56.626499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764877, 40.853924, 57.002712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612823, 40.749847, 56.647678>,  <42.521591, 40.687401, 56.434658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612823, 40.749847, 56.647678>,  <42.764877, 40.853924, 57.002712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612823, 40.749847, 56.647678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914535, -0.037736, 0.402744,
		-0.138282, 0.964821, -0.223605,
		-0.380137, -0.260187, -0.887580,
		42.498783, 40.671791, 56.381405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154125, 41.395863, 56.714233>,  <42.764877, 40.853924, 57.002712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154125, 41.395863, 56.714233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 41.023697, 56.583382>,  <42.048340, 40.800400, 56.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088009, 41.023697, 56.583382>,  <42.154125, 41.395863, 56.714233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088009, 41.023697, 56.583382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911819, 0.017757, 0.410208,
		-0.375854, 0.366086, -0.851302,
		-0.165288, -0.930412, -0.327131,
		42.038422, 40.744572, 56.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464504, 41.415070, 56.566017>,  <42.154125, 41.395863, 56.714233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464504, 41.415070, 56.566017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518070, 41.018883, 56.553093>,  <41.550209, 40.781170, 56.545338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518070, 41.018883, 56.553093>,  <41.464504, 41.415070, 56.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518070, 41.018883, 56.553093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916735, -0.136202, 0.375561,
		-0.376381, -0.020670, -0.926234,
		0.133918, -0.990465, -0.032315,
		41.558247, 40.721745, 56.543400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856888, 41.130440, 56.136452>,  <41.464504, 41.415070, 56.566017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856888, 41.130440, 56.136452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025116, 40.872055, 56.391281>,  <41.126053, 40.717026, 56.544178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025116, 40.872055, 56.391281>,  <40.856888, 41.130440, 56.136452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025116, 40.872055, 56.391281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894562, -0.178172, 0.409895,
		-0.151264, -0.742293, -0.652779,
		0.420569, -0.645954, 0.637076,
		41.151287, 40.678268, 56.582401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421940, 40.496880, 56.116627>,  <40.856888, 41.130440, 56.136452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421940, 40.496880, 56.116627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628731, 40.508064, 56.458843>,  <40.752808, 40.514774, 56.664173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628731, 40.508064, 56.458843>,  <40.421940, 40.496880, 56.116627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628731, 40.508064, 56.458843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851375, -0.086928, 0.517305,
		0.088833, -0.995822, -0.021138,
		0.516982, 0.027958, 0.855540,
		40.783825, 40.516453, 56.715504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250908, 39.920933, 56.592449>,  <40.421940, 40.496880, 56.116627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250908, 39.920933, 56.592449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410851, 40.180183, 56.851692>,  <40.506817, 40.335735, 57.007240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410851, 40.180183, 56.851692>,  <40.250908, 39.920933, 56.592449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410851, 40.180183, 56.851692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767192, -0.150242, 0.623573,
		0.501527, -0.746565, 0.437162,
		0.399858, 0.648126, 0.648109,
		40.530807, 40.374622, 57.046124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971691, 39.667637, 57.173134>,  <40.250908, 39.920933, 56.592449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971691, 39.667637, 57.173134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132034, 40.006256, 57.313236>,  <40.228241, 40.209427, 57.397297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132034, 40.006256, 57.313236>,  <39.971691, 39.667637, 57.173134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132034, 40.006256, 57.313236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762425, 0.096275, 0.639874,
		0.507961, -0.523539, 0.684019,
		0.400853, 0.846544, 0.350255,
		40.252289, 40.260220, 57.418312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131615, 39.589451, 57.882076>,  <39.971691, 39.667637, 57.173134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131615, 39.589451, 57.882076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066093, 39.977074, 57.808212>,  <40.026779, 40.209648, 57.763893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066093, 39.977074, 57.808212>,  <40.131615, 39.589451, 57.882076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066093, 39.977074, 57.808212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704753, 0.016029, 0.709271,
		0.690282, 0.246325, 0.680319,
		-0.163807, 0.969055, -0.184663,
		40.016953, 40.267792, 57.752815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113243, 39.864090, 58.564896>,  <40.131615, 39.589451, 57.882076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113243, 39.864090, 58.564896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942947, 40.133995, 58.323753>,  <39.840771, 40.295937, 58.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942947, 40.133995, 58.323753>,  <40.113243, 39.864090, 58.564896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942947, 40.133995, 58.323753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793940, 0.041028, 0.606610,
		0.434052, 0.736892, 0.518255,
		-0.425744, 0.674764, -0.602856,
		39.815224, 40.336426, 58.142895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111095, 40.436543, 58.912270>,  <40.113243, 39.864090, 58.564896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111095, 40.436543, 58.912270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811428, 40.474281, 58.650021>,  <39.631626, 40.496925, 58.492672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811428, 40.474281, 58.650021>,  <40.111095, 40.436543, 58.912270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811428, 40.474281, 58.650021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644454, 0.124890, 0.754375,
		0.153056, 0.987674, -0.032760,
		-0.749168, 0.094349, -0.655626,
		39.586678, 40.502586, 58.453331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650654, 40.907635, 59.171257>,  <40.111095, 40.436543, 58.912270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650654, 40.907635, 59.171257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389854, 40.752235, 58.910805>,  <39.233376, 40.658997, 58.754536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389854, 40.752235, 58.910805>,  <39.650654, 40.907635, 59.171257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389854, 40.752235, 58.910805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754727, 0.250179, 0.606463,
		-0.072714, 0.886836, -0.456328,
		-0.651997, -0.388501, -0.651127,
		39.194256, 40.635685, 58.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128307, 41.435200, 59.207394>,  <39.650654, 40.907635, 59.171257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128307, 41.435200, 59.207394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960480, 41.123146, 59.021767>,  <38.859783, 40.935913, 58.910389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960480, 41.123146, 59.021767>,  <39.128307, 41.435200, 59.207394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960480, 41.123146, 59.021767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839169, 0.138459, 0.525951,
		-0.346056, 0.610104, -0.712754,
		-0.419572, -0.780129, -0.464066,
		38.834610, 40.889107, 58.882545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471088, 41.722038, 58.952835>,  <39.128307, 41.435200, 59.207394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471088, 41.722038, 58.952835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454075, 41.324280, 58.991570>,  <38.443867, 41.085625, 59.014809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454075, 41.324280, 58.991570>,  <38.471088, 41.722038, 58.952835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454075, 41.324280, 58.991570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791672, 0.092665, 0.603878,
		-0.609464, -0.050976, -0.791173,
		-0.042531, -0.994392, 0.096832,
		38.441315, 41.025963, 59.020618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766628, 41.551346, 58.937286>,  <38.471088, 41.722038, 58.952835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766628, 41.551346, 58.937286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917458, 41.223557, 59.109932>,  <38.007954, 41.026882, 59.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917458, 41.223557, 59.109932>,  <37.766628, 41.551346, 58.937286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917458, 41.223557, 59.109932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756045, -0.003160, 0.654512,
		-0.534989, -0.573114, -0.620748,
		0.377071, -0.819470, 0.431610,
		38.030579, 40.977715, 59.239414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037148, 41.707947, 58.902340>,  <37.766628, 41.551346, 58.937286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037148, 41.707947, 58.902340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752678, 41.765816, 58.627151>,  <36.581997, 41.800537, 58.462040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752678, 41.765816, 58.627151>,  <37.037148, 41.707947, 58.902340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752678, 41.765816, 58.627151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632596, 0.558595, -0.536465,
		0.306683, -0.816726, -0.488778,
		-0.711174, 0.144674, -0.687969,
		36.539326, 41.809219, 58.420761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327229, 41.450241, 58.263386>,  <37.037148, 41.707947, 58.902340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327229, 41.450241, 58.263386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026333, 41.686348, 58.146267>,  <36.845795, 41.828011, 58.075996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026333, 41.686348, 58.146267>,  <37.327229, 41.450241, 58.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026333, 41.686348, 58.146267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588439, 0.401890, -0.701586,
		-0.296449, -0.700051, -0.649651,
		-0.752235, 0.590265, -0.292798,
		36.800663, 41.863426, 58.058426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449951, 41.500839, 57.540352>,  <37.327229, 41.450241, 58.263386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449951, 41.500839, 57.540352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196114, 41.791977, 57.644299>,  <37.043812, 41.966660, 57.706669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196114, 41.791977, 57.644299>,  <37.449951, 41.500839, 57.540352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196114, 41.791977, 57.644299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458298, 0.625155, -0.631778,
		-0.622295, -0.281825, -0.730290,
		-0.634596, 0.727843, 0.259871,
		37.005733, 42.010330, 57.722260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078342, 41.596458, 56.987347>,  <37.449951, 41.500839, 57.540352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078342, 41.596458, 56.987347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068699, 41.927841, 57.211159>,  <37.062912, 42.126671, 57.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068699, 41.927841, 57.211159>,  <37.078342, 41.596458, 56.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068699, 41.927841, 57.211159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597382, 0.460717, -0.656411,
		-0.801594, 0.318426, -0.506015,
		-0.024111, 0.828459, 0.559530,
		37.061466, 42.176380, 57.379017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885754, 42.156765, 56.532852>,  <37.078342, 41.596458, 56.987347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885754, 42.156765, 56.532852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040222, 42.348045, 56.848370>,  <37.132904, 42.462814, 57.037682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040222, 42.348045, 56.848370>,  <36.885754, 42.156765, 56.532852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040222, 42.348045, 56.848370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550899, 0.566314, -0.613025,
		-0.739853, 0.671279, -0.044745,
		0.386171, 0.478198, 0.788796,
		37.156075, 42.491505, 57.085007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915318, 42.949928, 56.388474>,  <36.885754, 42.156765, 56.532852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915318, 42.949928, 56.388474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172440, 42.888924, 56.688751>,  <37.326714, 42.852322, 56.868919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172440, 42.888924, 56.688751>,  <36.915318, 42.949928, 56.388474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172440, 42.888924, 56.688751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684395, 0.554552, -0.473366,
		-0.344107, 0.818054, 0.460845,
		0.642802, -0.152511, 0.750697,
		37.365280, 42.843170, 56.913960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121902, 43.637112, 56.601501>,  <36.915318, 42.949928, 56.388474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121902, 43.637112, 56.601501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395370, 43.371162, 56.721863>,  <37.559452, 43.211594, 56.794079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395370, 43.371162, 56.721863>,  <37.121902, 43.637112, 56.601501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395370, 43.371162, 56.721863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719712, 0.545964, -0.428880,
		0.120871, 0.509773, 0.851776,
		0.683670, -0.664872, 0.300899,
		37.600471, 43.171700, 56.812134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737831, 44.039337, 56.786221>,  <37.121902, 43.637112, 56.601501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737831, 44.039337, 56.786221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883671, 43.671165, 56.729836>,  <37.971176, 43.450260, 56.696003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883671, 43.671165, 56.729836>,  <37.737831, 44.039337, 56.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883671, 43.671165, 56.729836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783051, 0.384993, -0.488479,
		0.503883, 0.067716, 0.861114,
		0.364600, -0.920432, -0.140966,
		37.993050, 43.395035, 56.687546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483250, 44.018738, 56.989773>,  <37.737831, 44.039337, 56.786221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483250, 44.018738, 56.989773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458977, 43.684082, 56.772018>,  <38.444412, 43.483288, 56.641365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458977, 43.684082, 56.772018>,  <38.483250, 44.018738, 56.989773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458977, 43.684082, 56.772018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817294, 0.271451, -0.508277,
		0.573017, -0.475764, 0.667308,
		-0.060678, -0.836638, -0.544385,
		38.440773, 43.433090, 56.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167542, 43.844109, 56.831318>,  <38.483250, 44.018738, 56.989773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167542, 43.844109, 56.831318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002190, 43.618568, 56.545326>,  <38.902977, 43.483246, 56.373730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002190, 43.618568, 56.545326>,  <39.167542, 43.844109, 56.831318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002190, 43.618568, 56.545326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755435, 0.226014, -0.615009,
		0.508366, -0.794352, 0.332520,
		-0.413379, -0.563847, -0.714979,
		38.878178, 43.449413, 56.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664524, 43.375282, 56.580975>,  <39.167542, 43.844109, 56.831318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664524, 43.375282, 56.580975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387581, 43.367287, 56.292465>,  <39.221416, 43.362488, 56.119358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387581, 43.367287, 56.292465>,  <39.664524, 43.375282, 56.580975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387581, 43.367287, 56.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707355, 0.178520, -0.683944,
		0.142436, -0.983733, -0.109459,
		-0.692359, -0.019992, -0.721276,
		39.179874, 43.361290, 56.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944233, 42.990334, 56.053917>,  <39.664524, 43.375282, 56.580975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944233, 42.990334, 56.053917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680664, 43.225838, 55.866650>,  <39.522522, 43.367142, 55.754292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680664, 43.225838, 55.866650>,  <39.944233, 42.990334, 56.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680664, 43.225838, 55.866650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649852, 0.132122, -0.748489,
		-0.378826, -0.797437, -0.469666,
		-0.658926, 0.588760, -0.468164,
		39.482986, 43.402466, 55.726200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889183, 42.731773, 55.394356>,  <39.944233, 42.990334, 56.053917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889183, 42.731773, 55.394356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764122, 43.108543, 55.345314>,  <39.689087, 43.334606, 55.315891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764122, 43.108543, 55.345314>,  <39.889183, 42.731773, 55.394356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764122, 43.108543, 55.345314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667677, 0.126122, -0.733690,
		-0.675617, -0.311244, -0.668332,
		-0.312648, 0.941924, -0.122600,
		39.670326, 43.391121, 55.308533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816349, 42.775749, 54.704395>,  <39.889183, 42.731773, 55.394356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816349, 42.775749, 54.704395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902283, 43.133507, 54.861317>,  <39.953842, 43.348164, 54.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902283, 43.133507, 54.861317>,  <39.816349, 42.775749, 54.704395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902283, 43.133507, 54.861317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793188, 0.074571, -0.604393,
		-0.569822, 0.441014, -0.693405,
		0.214838, 0.894397, 0.392299,
		39.966736, 43.401825, 54.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952415, 43.143803, 54.201424>,  <39.816349, 42.775749, 54.704395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952415, 43.143803, 54.201424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112457, 43.395073, 54.468349>,  <40.208481, 43.545837, 54.628506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112457, 43.395073, 54.468349>,  <39.952415, 43.143803, 54.201424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112457, 43.395073, 54.468349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830354, 0.059677, -0.554032,
		-0.387854, 0.775778, -0.497733,
		0.400103, 0.628178, 0.667316,
		40.232487, 43.583527, 54.668545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085403, 43.816917, 53.909664>,  <39.952415, 43.143803, 54.201424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085403, 43.816917, 53.909664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337860, 43.710464, 54.201096>,  <40.489334, 43.646591, 54.375954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337860, 43.710464, 54.201096>,  <40.085403, 43.816917, 53.909664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337860, 43.710464, 54.201096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763342, 0.046324, -0.644332,
		0.137730, 0.962822, 0.232390,
		0.631141, -0.266137, 0.728582,
		40.527203, 43.630623, 54.419670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629276, 44.249855, 53.764378>,  <40.085403, 43.816917, 53.909664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629276, 44.249855, 53.764378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802887, 44.005287, 54.029037>,  <40.907055, 43.858547, 54.187836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802887, 44.005287, 54.029037>,  <40.629276, 44.249855, 53.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802887, 44.005287, 54.029037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850919, 0.036994, -0.523992,
		0.295903, 0.790440, 0.536327,
		0.434025, -0.611422, 0.661654,
		40.933094, 43.821861, 54.227535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182114, 44.665768, 53.917419>,  <40.629276, 44.249855, 53.764378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182114, 44.665768, 53.917419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259487, 44.285912, 54.016022>,  <41.305912, 44.057999, 54.075184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259487, 44.285912, 54.016022>,  <41.182114, 44.665768, 53.917419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259487, 44.285912, 54.016022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827685, 0.023043, -0.560720,
		0.526801, 0.312495, 0.790460,
		0.193437, -0.949640, 0.246508,
		41.317520, 44.001019, 54.089973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961388, 44.560635, 54.109879>,  <41.182114, 44.665768, 53.917419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961388, 44.560635, 54.109879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787552, 44.223351, 53.983307>,  <41.683250, 44.020981, 53.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787552, 44.223351, 53.983307>,  <41.961388, 44.560635, 54.109879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787552, 44.223351, 53.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699218, -0.094447, -0.708643,
		0.567652, -0.529216, 0.630635,
		-0.434587, -0.843214, -0.316424,
		41.657177, 43.970387, 53.888378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524841, 44.133411, 54.235382>,  <41.961388, 44.560635, 54.109879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524841, 44.133411, 54.235382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290215, 43.912277, 53.998634>,  <42.149437, 43.779598, 53.856586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290215, 43.912277, 53.998634>,  <42.524841, 44.133411, 54.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290215, 43.912277, 53.998634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775553, -0.172848, -0.607158,
		0.233356, -0.815166, 0.530141,
		-0.586568, -0.552837, -0.591869,
		42.114243, 43.746426, 53.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954288, 43.677235, 54.005779>,  <42.524841, 44.133411, 54.235382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954288, 43.677235, 54.005779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638676, 43.631310, 53.764366>,  <42.449310, 43.603752, 53.619518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638676, 43.631310, 53.764366>,  <42.954288, 43.677235, 54.005779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638676, 43.631310, 53.764366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610275, -0.033439, -0.791484,
		0.070696, -0.992824, 0.096456,
		-0.789029, -0.114819, -0.603531,
		42.401966, 43.596863, 53.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943100, 43.008575, 53.598022>,  <42.954288, 43.677235, 54.005779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943100, 43.008575, 53.598022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746273, 43.295258, 53.400356>,  <42.628178, 43.467266, 53.281757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746273, 43.295258, 53.400356>,  <42.943100, 43.008575, 53.598022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746273, 43.295258, 53.400356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723761, 0.021346, -0.689721,
		-0.483780, -0.697046, -0.529230,
		-0.492064, 0.716709, -0.494167,
		42.598652, 43.510269, 53.252106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011665, 42.750977, 52.904118>,  <42.943100, 43.008575, 53.598022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011665, 42.750977, 52.904118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917068, 43.139359, 52.889584>,  <42.860310, 43.372387, 52.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917068, 43.139359, 52.889584>,  <43.011665, 42.750977, 52.904118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917068, 43.139359, 52.889584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612993, 0.120078, -0.780911,
		-0.753865, -0.206951, -0.623585,
		-0.236490, 0.970954, -0.036337,
		42.846123, 43.430645, 52.878681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874382, 42.874649, 52.217056>,  <43.011665, 42.750977, 52.904118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874382, 42.874649, 52.217056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957771, 43.225510, 52.390099>,  <43.007805, 43.436028, 52.493923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957771, 43.225510, 52.390099>,  <42.874382, 42.874649, 52.217056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957771, 43.225510, 52.390099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574740, 0.248018, -0.779847,
		-0.791337, 0.411209, -0.452429,
		0.208469, 0.877151, 0.432604,
		43.020313, 43.488655, 52.519878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716125, 43.276146, 51.697262>,  <42.874382, 42.874649, 52.217056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716125, 43.276146, 51.697262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947502, 43.493332, 51.940765>,  <43.086327, 43.623646, 52.086868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947502, 43.493332, 51.940765>,  <42.716125, 43.276146, 51.697262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947502, 43.493332, 51.940765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603684, 0.216961, -0.767133,
		-0.548607, 0.811241, -0.202282,
		0.578443, 0.542969, 0.608760,
		43.121037, 43.656223, 52.123394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847374, 43.786053, 51.273769>,  <42.716125, 43.276146, 51.697262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847374, 43.786053, 51.273769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113373, 43.858284, 51.563644>,  <43.272972, 43.901623, 51.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113373, 43.858284, 51.563644>,  <42.847374, 43.786053, 51.273769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113373, 43.858284, 51.563644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523690, 0.579059, -0.624852,
		-0.532469, 0.795036, 0.290507,
		0.665000, 0.180579, 0.724683,
		43.312874, 43.912457, 51.781048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027203, 44.540440, 51.316261>,  <42.847374, 43.786053, 51.273769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027203, 44.540440, 51.316261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337685, 44.321983, 51.442272>,  <43.523972, 44.190910, 51.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337685, 44.321983, 51.442272>,  <43.027203, 44.540440, 51.316261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337685, 44.321983, 51.442272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586796, 0.443011, -0.677799,
		0.230610, 0.710967, 0.664338,
		0.776202, -0.546138, 0.315030,
		43.570545, 44.158142, 51.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509048, 44.996586, 51.506969>,  <43.027203, 44.540440, 51.316261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509048, 44.996586, 51.506969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741577, 44.676537, 51.447811>,  <43.881092, 44.484509, 51.412315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741577, 44.676537, 51.447811>,  <43.509048, 44.996586, 51.506969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741577, 44.676537, 51.447811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499183, 0.494231, -0.711724,
		0.642562, 0.339910, 0.686713,
		0.581317, -0.800123, -0.147897,
		43.915974, 44.436501, 51.403442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129200, 45.170570, 51.559658>,  <43.509048, 44.996586, 51.506969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129200, 45.170570, 51.559658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180237, 44.830872, 51.354721>,  <44.210861, 44.627052, 51.231758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180237, 44.830872, 51.354721>,  <44.129200, 45.170570, 51.559658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180237, 44.830872, 51.354721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656542, 0.459509, -0.598167,
		0.743419, -0.260052, 0.616199,
		0.127594, -0.849249, -0.512343,
		44.218513, 44.576096, 51.201019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835339, 45.155079, 51.272156>,  <44.129200, 45.170570, 51.559658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835339, 45.155079, 51.272156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659096, 44.876038, 51.046158>,  <44.553349, 44.708614, 50.910561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659096, 44.876038, 51.046158>,  <44.835339, 45.155079, 51.272156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659096, 44.876038, 51.046158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413916, 0.400611, -0.817425,
		0.796580, -0.594023, 0.112237,
		-0.440606, -0.697602, -0.564994,
		44.526913, 44.666756, 50.876659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346836, 44.775444, 51.012360>,  <44.835339, 45.155079, 51.272156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346836, 44.775444, 51.012360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025261, 44.745964, 50.776306>,  <44.832317, 44.728275, 50.634674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025261, 44.745964, 50.776306>,  <45.346836, 44.775444, 51.012360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025261, 44.745964, 50.776306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552740, 0.273587, -0.787165,
		0.219462, -0.959020, -0.179213,
		-0.803938, -0.073695, -0.590130,
		44.784081, 44.723854, 50.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543453, 44.365273, 50.410259>,  <45.346836, 44.775444, 51.012360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543453, 44.365273, 50.410259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212479, 44.554901, 50.289852>,  <45.013893, 44.668678, 50.217609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.212479, 44.554901, 50.289852>,  <45.543453, 44.365273, 50.410259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212479, 44.554901, 50.289852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486807, 0.338313, -0.805334,
		-0.279945, -0.812899, -0.510711,
		-0.827436, 0.474067, -0.301015,
		44.964249, 44.697121, 50.199547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447163, 44.139641, 49.689754>,  <45.543453, 44.365273, 50.410259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447163, 44.139641, 49.689754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225227, 44.468201, 49.742611>,  <45.092064, 44.665337, 49.774326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.225227, 44.468201, 49.742611>,  <45.447163, 44.139641, 49.689754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225227, 44.468201, 49.742611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510848, 0.461727, -0.725150,
		-0.656648, -0.334839, -0.675793,
		-0.554841, 0.821396, 0.132141,
		45.058777, 44.714619, 49.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193817, 44.319973, 48.967957>,  <45.447163, 44.139641, 49.689754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193817, 44.319973, 48.967957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183968, 44.658211, 49.181259>,  <45.178059, 44.861153, 49.309242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.183968, 44.658211, 49.181259>,  <45.193817, 44.319973, 48.967957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183968, 44.658211, 49.181259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533678, 0.462169, -0.708229,
		-0.845330, 0.267151, -0.462653,
		-0.024620, 0.845595, 0.533258,
		45.176582, 44.911888, 49.341236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951672, 44.864353, 48.498642>,  <45.193817, 44.319973, 48.967957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951672, 44.864353, 48.498642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139656, 45.076065, 48.781200>,  <45.252445, 45.203094, 48.950737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139656, 45.076065, 48.781200>,  <44.951672, 44.864353, 48.498642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139656, 45.076065, 48.781200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595873, 0.400178, -0.696271,
		-0.651209, 0.748142, -0.127318,
		0.469960, 0.529283, 0.706397,
		45.280643, 45.234852, 48.993118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022083, 45.590057, 48.237427>,  <44.951672, 44.864353, 48.498642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022083, 45.590057, 48.237427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295731, 45.585732, 48.529144>,  <45.459919, 45.583134, 48.704174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295731, 45.585732, 48.529144>,  <45.022083, 45.590057, 48.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295731, 45.585732, 48.529144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666854, 0.414310, -0.619397,
		-0.295454, 0.910071, 0.290649,
		0.684114, -0.010817, 0.729295,
		45.500965, 45.582485, 48.747932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410900, 46.249573, 48.135132>,  <45.022083, 45.590057, 48.237427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410900, 46.249573, 48.135132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638687, 46.049217, 48.395844>,  <45.775360, 45.929005, 48.552269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638687, 46.049217, 48.395844>,  <45.410900, 46.249573, 48.135132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638687, 46.049217, 48.395844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816926, 0.256787, -0.516422,
		0.091304, 0.826540, 0.555423,
		0.569469, -0.500891, 0.651777,
		45.809528, 45.898949, 48.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920483, 46.756828, 48.403988>,  <45.410900, 46.249573, 48.135132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920483, 46.756828, 48.403988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046600, 46.377808, 48.424881>,  <46.122269, 46.150394, 48.437416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046600, 46.377808, 48.424881>,  <45.920483, 46.756828, 48.403988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046600, 46.377808, 48.424881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810298, 0.240153, -0.534551,
		0.493973, 0.210864, 0.843521,
		0.315292, -0.947556, 0.052234,
		46.141190, 46.093540, 48.440552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640923, 46.867321, 48.476143>,  <45.920483, 46.756828, 48.403988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640923, 46.867321, 48.476143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578339, 46.496040, 48.341110>,  <46.540787, 46.273273, 48.260090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578339, 46.496040, 48.341110>,  <46.640923, 46.867321, 48.476143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578339, 46.496040, 48.341110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720631, 0.126450, -0.681690,
		0.675433, -0.349929, 0.649107,
		-0.156463, -0.928202, -0.337579,
		46.531399, 46.217579, 48.239838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341537, 46.645638, 48.202320>,  <46.640923, 46.867321, 48.476143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341537, 46.645638, 48.202320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078186, 46.413963, 48.010036>,  <46.920177, 46.274960, 47.894665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.078186, 46.413963, 48.010036>,  <47.341537, 46.645638, 48.202320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.078186, 46.413963, 48.010036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691332, -0.212749, -0.690506,
		0.297663, -0.786942, 0.540481,
		-0.658374, -0.579189, -0.480711,
		46.880672, 46.240208, 47.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.907578, 40.418373, 51.136608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914467, 40.026947, 51.054527>,  <37.918598, 39.792091, 51.005280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914467, 40.026947, 51.054527>,  <37.907578, 40.418373, 51.136608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914467, 40.026947, 51.054527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763542, 0.145374, -0.629182,
		0.645528, -0.145845, 0.749681,
		0.017221, -0.978568, -0.205202,
		37.919632, 39.733376, 50.992966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582695, 40.274643, 51.122574>,  <37.907578, 40.418373, 51.136608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582695, 40.274643, 51.122574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443810, 39.963898, 50.912464>,  <38.360477, 39.777451, 50.786396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443810, 39.963898, 50.912464>,  <38.582695, 40.274643, 51.122574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443810, 39.963898, 50.912464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772626, 0.080478, -0.629740,
		0.531498, -0.624500, 0.572285,
		-0.347216, -0.776868, -0.525278,
		38.339645, 39.730839, 50.754879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161991, 39.905045, 50.911781>,  <38.582695, 40.274643, 51.122574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161991, 39.905045, 50.911781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878883, 39.755638, 50.671932>,  <38.709019, 39.665997, 50.528023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878883, 39.755638, 50.671932>,  <39.161991, 39.905045, 50.911781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878883, 39.755638, 50.671932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675093, -0.107578, -0.729846,
		0.208102, -0.921365, 0.328298,
		-0.707773, -0.373515, -0.599620,
		38.666550, 39.643585, 50.492046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420448, 39.332897, 50.670216>,  <39.161991, 39.905045, 50.911781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420448, 39.332897, 50.670216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137074, 39.443802, 50.410599>,  <38.967049, 39.510345, 50.254829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137074, 39.443802, 50.410599>,  <39.420448, 39.332897, 50.670216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137074, 39.443802, 50.410599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657286, -0.075808, -0.749819,
		-0.257098, -0.957799, -0.128536,
		-0.708432, 0.277262, -0.649038,
		38.924545, 39.526981, 50.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454060, 38.842438, 50.106606>,  <39.420448, 39.332897, 50.670216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454060, 38.842438, 50.106606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271759, 39.164001, 49.953758>,  <39.162376, 39.356941, 49.862049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.271759, 39.164001, 49.953758>,  <39.454060, 38.842438, 50.106606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271759, 39.164001, 49.953758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632548, -0.009518, -0.774462,
		-0.626235, -0.594674, -0.504174,
		-0.455754, 0.803910, -0.382121,
		39.135033, 39.405174, 49.839123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467518, 38.755630, 49.382660>,  <39.454060, 38.842438, 50.106606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467518, 38.755630, 49.382660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401909, 39.144020, 49.452301>,  <39.362545, 39.377052, 49.494083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.401909, 39.144020, 49.452301>,  <39.467518, 38.755630, 49.382660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401909, 39.144020, 49.452301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592326, 0.238074, -0.769721,
		-0.788826, -0.023126, -0.614181,
		-0.164021, 0.970972, 0.174101,
		39.352703, 39.435310, 49.504532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268806, 39.027740, 48.733452>,  <39.467518, 38.755630, 49.382660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268806, 39.027740, 48.733452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387428, 39.350349, 48.938034>,  <39.458599, 39.543915, 49.060783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387428, 39.350349, 48.938034>,  <39.268806, 39.027740, 48.733452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387428, 39.350349, 48.938034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551136, 0.292840, -0.781341,
		-0.779940, 0.513588, -0.357659,
		0.296551, 0.806518, 0.511455,
		39.476395, 39.592304, 49.091469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548225, 39.461040, 48.206638>,  <39.268806, 39.027740, 48.733452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548225, 39.461040, 48.206638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678635, 39.634041, 48.542889>,  <39.756882, 39.737843, 48.744637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678635, 39.634041, 48.542889>,  <39.548225, 39.461040, 48.206638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678635, 39.634041, 48.542889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754091, 0.417291, -0.507163,
		-0.570134, 0.799256, -0.190097,
		0.326027, 0.432502, 0.840624,
		39.776443, 39.763790, 48.795074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556934, 40.182507, 48.084618>,  <39.548225, 39.461040, 48.206638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556934, 40.182507, 48.084618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806801, 40.101517, 48.386292>,  <39.956722, 40.052925, 48.567295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.806801, 40.101517, 48.386292>,  <39.556934, 40.182507, 48.084618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806801, 40.101517, 48.386292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690513, 0.594241, -0.412394,
		-0.364670, 0.778384, 0.511012,
		0.624666, -0.202473, 0.754187,
		39.994202, 40.040775, 48.612549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861977, 40.799004, 48.225468>,  <39.556934, 40.182507, 48.084618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861977, 40.799004, 48.225468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112221, 40.536140, 48.393635>,  <40.262367, 40.378422, 48.494534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112221, 40.536140, 48.393635>,  <39.861977, 40.799004, 48.225468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112221, 40.536140, 48.393635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766420, 0.618336, -0.173956,
		-0.145643, 0.431046, 0.890499,
		0.625610, -0.657161, 0.420418,
		40.299904, 40.338993, 48.519760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394173, 41.174614, 48.598476>,  <39.861977, 40.799004, 48.225468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394173, 41.174614, 48.598476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557571, 40.815872, 48.530617>,  <40.655609, 40.600628, 48.489902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.557571, 40.815872, 48.530617>,  <40.394173, 41.174614, 48.598476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557571, 40.815872, 48.530617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860136, 0.440437, -0.257259,
		0.305444, -0.040832, 0.951334,
		0.408498, -0.896855, -0.169650,
		40.680122, 40.546814, 48.479721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124805, 41.323338, 48.700928>,  <40.394173, 41.174614, 48.598476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124805, 41.323338, 48.700928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104816, 40.967781, 48.518776>,  <41.092823, 40.754448, 48.409485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104816, 40.967781, 48.518776>,  <41.124805, 41.323338, 48.700928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104816, 40.967781, 48.518776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911362, 0.145933, -0.384866,
		0.408560, -0.434252, 0.802810,
		-0.049973, -0.888892, -0.455383,
		41.089825, 40.701115, 48.382160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822258, 40.909679, 48.754051>,  <41.124805, 41.323338, 48.700928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822258, 40.909679, 48.754051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.612392, 40.810356, 48.428333>,  <41.486473, 40.750763, 48.232903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.612392, 40.810356, 48.428333>,  <41.822258, 40.909679, 48.754051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612392, 40.810356, 48.428333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818047, 0.117704, -0.562979,
		0.235636, -0.961504, 0.141371,
		-0.524667, -0.248306, -0.814290,
		41.454994, 40.735863, 48.184048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222424, 40.338451, 48.530701>,  <41.822258, 40.909679, 48.754051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222424, 40.338451, 48.530701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003296, 40.520447, 48.249882>,  <41.871819, 40.629642, 48.081390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003296, 40.520447, 48.249882>,  <42.222424, 40.338451, 48.530701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003296, 40.520447, 48.249882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836362, 0.278065, -0.472418,
		-0.019729, -0.845969, -0.532866,
		-0.547822, 0.454990, -0.702051,
		41.838951, 40.656944, 48.039265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650970, 40.246037, 47.902996>,  <42.222424, 40.338451, 48.530701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650970, 40.246037, 47.902996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.374084, 40.507523, 47.780685>,  <42.207951, 40.664413, 47.707298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.374084, 40.507523, 47.780685>,  <42.650970, 40.246037, 47.902996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374084, 40.507523, 47.780685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661107, 0.404456, -0.631944,
		-0.289436, -0.639592, -0.712144,
		-0.692217, 0.653711, -0.305774,
		42.166420, 40.703636, 47.688953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832344, 40.302734, 47.200951>,  <42.650970, 40.246037, 47.902996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832344, 40.302734, 47.200951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.614296, 40.633148, 47.258236>,  <42.483467, 40.831398, 47.292606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.614296, 40.633148, 47.258236>,  <42.832344, 40.302734, 47.200951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614296, 40.633148, 47.258236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680460, 0.535732, -0.499965,
		-0.489714, -0.175087, -0.854122,
		-0.545118, 0.826036, 0.143216,
		42.450760, 40.880959, 47.301201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743973, 40.701359, 46.520760>,  <42.832344, 40.302734, 47.200951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743973, 40.701359, 46.520760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.699814, 40.950996, 46.830166>,  <42.673321, 41.100780, 47.015808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.699814, 40.950996, 46.830166>,  <42.743973, 40.701359, 46.520760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699814, 40.950996, 46.830166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599218, 0.662708, -0.449173,
		-0.792938, 0.413917, -0.447127,
		-0.110394, 0.624093, 0.773512,
		42.666695, 41.138226, 47.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649334, 41.342354, 46.182232>,  <42.743973, 40.701359, 46.520760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649334, 41.342354, 46.182232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.762959, 41.438850, 46.553417>,  <42.831131, 41.496750, 46.776127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.762959, 41.438850, 46.553417>,  <42.649334, 41.342354, 46.182232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762959, 41.438850, 46.553417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588408, 0.720288, -0.367371,
		-0.757025, 0.650375, 0.062655,
		0.284058, 0.241243, 0.927962,
		42.848175, 41.511223, 46.831806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811523, 42.079365, 46.192455>,  <42.649334, 41.342354, 46.182232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811523, 42.079365, 46.192455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.003555, 41.946686, 46.517296>,  <43.118774, 41.867077, 46.712200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.003555, 41.946686, 46.517296>,  <42.811523, 42.079365, 46.192455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003555, 41.946686, 46.517296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791918, 0.562099, -0.238562,
		-0.377349, 0.757643, 0.532527,
		0.480077, -0.331696, 0.812098,
		43.147579, 41.847176, 46.760925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112667, 42.652283, 46.410896>,  <42.811523, 42.079365, 46.192455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112667, 42.652283, 46.410896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.314255, 42.362900, 46.599628>,  <43.435207, 42.189270, 46.712868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.314255, 42.362900, 46.599628>,  <43.112667, 42.652283, 46.410896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314255, 42.362900, 46.599628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860206, 0.371144, -0.349712,
		0.077884, 0.582116, 0.809367,
		0.503965, -0.723459, 0.471833,
		43.465443, 42.145863, 46.741177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620766, 42.960571, 46.830593>,  <43.112667, 42.652283, 46.410896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620766, 42.960571, 46.830593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768417, 42.593628, 46.770992>,  <43.857010, 42.373463, 46.735229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768417, 42.593628, 46.770992>,  <43.620766, 42.960571, 46.830593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768417, 42.593628, 46.770992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875140, 0.397061, -0.276537,
		0.312847, -0.028323, 0.949381,
		0.369130, -0.917355, -0.149006,
		43.879158, 42.318420, 46.726292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173416, 43.000633, 47.137943>,  <43.620766, 42.960571, 46.830593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173416, 43.000633, 47.137943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.248226, 42.666756, 46.930748>,  <44.293114, 42.466431, 46.806431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.248226, 42.666756, 46.930748>,  <44.173416, 43.000633, 47.137943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248226, 42.666756, 46.930748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962117, 0.262118, -0.074993,
		0.198369, -0.484336, 0.852097,
		0.187028, -0.834693, -0.517984,
		44.304333, 42.416348, 46.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809822, 43.415482, 47.195621>,  <44.173416, 43.000633, 47.137943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809822, 43.415482, 47.195621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.722549, 43.805763, 47.187729>,  <44.670185, 44.039932, 47.182995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.722549, 43.805763, 47.187729>,  <44.809822, 43.415482, 47.195621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722549, 43.805763, 47.187729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610805, -0.120760, 0.782518,
		0.761127, 0.182784, 0.622315,
		-0.218183, 0.975708, -0.019731,
		44.657093, 44.098476, 47.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799568, 43.494526, 47.864979>,  <44.809822, 43.415482, 47.195621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799568, 43.494526, 47.864979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.577766, 43.775864, 47.687061>,  <44.444687, 43.944664, 47.580311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.577766, 43.775864, 47.687061>,  <44.799568, 43.494526, 47.864979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577766, 43.775864, 47.687061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677356, -0.070961, 0.732224,
		0.483442, 0.707300, 0.515761,
		-0.554502, 0.703342, -0.444789,
		44.411415, 43.986866, 47.553623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684265, 44.014565, 48.370876>,  <44.799568, 43.494526, 47.864979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684265, 44.014565, 48.370876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.405724, 44.043678, 48.085278>,  <44.238598, 44.061146, 47.913918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.405724, 44.043678, 48.085278>,  <44.684265, 44.014565, 48.370876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405724, 44.043678, 48.085278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715696, 0.003895, 0.698401,
		0.053616, 0.997340, 0.049381,
		-0.696351, 0.072787, -0.714001,
		44.196819, 44.065514, 47.871078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150539, 44.488522, 48.618164>,  <44.684265, 44.014565, 48.370876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150539, 44.488522, 48.618164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.954681, 44.304237, 48.322056>,  <43.837166, 44.193668, 48.144390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.954681, 44.304237, 48.322056>,  <44.150539, 44.488522, 48.618164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954681, 44.304237, 48.322056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790483, -0.123723, 0.599857,
		-0.367948, 0.878886, -0.303602,
		-0.489644, -0.460708, -0.740268,
		43.807789, 44.166023, 48.099976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471554, 44.776039, 48.655842>,  <44.150539, 44.488522, 48.618164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471554, 44.776039, 48.655842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.431686, 44.430252, 48.458759>,  <43.407764, 44.222778, 48.340508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.431686, 44.430252, 48.458759>,  <43.471554, 44.776039, 48.655842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431686, 44.430252, 48.458759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740237, -0.266478, 0.617284,
		-0.664917, 0.426246, -0.613351,
		-0.099671, -0.864467, -0.492709,
		43.401787, 44.170914, 48.310947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702980, 44.771980, 48.349625>,  <43.471554, 44.776039, 48.655842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702980, 44.771980, 48.349625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810318, 44.386650, 48.349079>,  <42.874722, 44.155453, 48.348751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810318, 44.386650, 48.349079>,  <42.702980, 44.771980, 48.349625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810318, 44.386650, 48.349079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787488, -0.220181, 0.575658,
		-0.554845, -0.153397, -0.817690,
		0.268344, -0.963322, -0.001369,
		42.890820, 44.097652, 48.348667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125847, 44.464252, 48.367252>,  <42.702980, 44.771980, 48.349625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125847, 44.464252, 48.367252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359482, 44.159599, 48.479511>,  <42.499660, 43.976807, 48.546867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359482, 44.159599, 48.479511>,  <42.125847, 44.464252, 48.367252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359482, 44.159599, 48.479511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733608, -0.347370, 0.584083,
		-0.347370, -0.547037, -0.761633,
		-0.584083, 0.761633, -0.280645,
		42.534706, 43.931110, 48.563705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758797, 43.812168, 48.240265>,  <42.125847, 44.464252, 48.367252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758797, 43.812168, 48.240265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.028107, 43.726074, 48.523212>,  <42.189693, 43.674419, 48.692982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.028107, 43.726074, 48.523212>,  <41.758797, 43.812168, 48.240265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028107, 43.726074, 48.523212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738949, -0.228890, 0.633691,
		0.025519, -0.949360, -0.313153,
		0.673278, -0.215233, 0.707370,
		42.230091, 43.661503, 48.735424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607777, 43.107056, 48.460312>,  <41.758797, 43.812168, 48.240265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607777, 43.107056, 48.460312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.826065, 43.259781, 48.758682>,  <41.957039, 43.351418, 48.937706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.826065, 43.259781, 48.758682>,  <41.607777, 43.107056, 48.460312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826065, 43.259781, 48.758682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656112, -0.359028, 0.663789,
		0.521252, -0.851656, 0.054582,
		0.545723, 0.381813, 0.745926,
		41.989780, 43.374325, 48.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631176, 42.608898, 48.935265>,  <41.607777, 43.107056, 48.460312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631176, 42.608898, 48.935265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.739845, 42.931274, 49.145657>,  <41.805046, 43.124699, 49.271893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.739845, 42.931274, 49.145657>,  <41.631176, 42.608898, 48.935265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739845, 42.931274, 49.145657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684936, -0.222012, 0.693955,
		0.676061, -0.548788, 0.491704,
		0.271670, 0.805942, 0.525978,
		41.821346, 43.173058, 49.303452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589825, 42.370213, 49.641827>,  <41.631176, 42.608898, 48.935265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589825, 42.370213, 49.641827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586670, 42.768524, 49.678398>,  <41.584778, 43.007511, 49.700340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586670, 42.768524, 49.678398>,  <41.589825, 42.370213, 49.641827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586670, 42.768524, 49.678398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627159, -0.076140, 0.775160,
		0.778851, -0.051232, 0.625113,
		-0.007883, 0.995780, 0.091432,
		41.584305, 43.067257, 49.705830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404640, 42.409283, 50.318359>,  <41.589825, 42.370213, 49.641827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404640, 42.409283, 50.318359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.316086, 42.766998, 50.162804>,  <41.262955, 42.981628, 50.069469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.316086, 42.766998, 50.162804>,  <41.404640, 42.409283, 50.318359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316086, 42.766998, 50.162804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774384, 0.081170, 0.627488,
		0.592722, 0.440066, 0.674554,
		-0.221383, 0.894290, -0.388891,
		41.249672, 43.035286, 50.046135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370419, 42.855274, 50.864502>,  <41.404640, 42.409283, 50.318359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370419, 42.855274, 50.864502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.138596, 43.002304, 50.573570>,  <40.999504, 43.090523, 50.399014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.138596, 43.002304, 50.573570>,  <41.370419, 42.855274, 50.864502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138596, 43.002304, 50.573570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787466, -0.022834, 0.615935,
		0.209797, 0.929712, 0.302690,
		-0.579553, 0.367579, -0.727326,
		40.964729, 43.112579, 50.355373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962578, 43.362076, 51.225613>,  <41.370419, 42.855274, 50.864502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962578, 43.362076, 51.225613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.787148, 43.277275, 50.876282>,  <40.681889, 43.226395, 50.666683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.787148, 43.277275, 50.876282>,  <40.962578, 43.362076, 51.225613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787148, 43.277275, 50.876282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840324, -0.247764, 0.482149,
		-0.318594, 0.945341, -0.069482,
		-0.438580, -0.211997, -0.873329,
		40.655575, 43.213676, 50.614285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387886, 43.689350, 51.270424>,  <40.962578, 43.362076, 51.225613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387886, 43.689350, 51.270424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331200, 43.416710, 50.983276>,  <40.297188, 43.253128, 50.810986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331200, 43.416710, 50.983276>,  <40.387886, 43.689350, 51.270424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331200, 43.416710, 50.983276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875687, -0.251851, 0.412000,
		-0.461615, 0.687020, -0.561173,
		-0.141720, -0.681597, -0.717873,
		40.288685, 43.212231, 50.767914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737274, 43.873699, 50.976009>,  <40.387886, 43.689350, 51.270424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737274, 43.873699, 50.976009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808922, 43.498055, 50.858715>,  <39.851910, 43.272667, 50.788338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808922, 43.498055, 50.858715>,  <39.737274, 43.873699, 50.976009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808922, 43.498055, 50.858715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863899, -0.292749, 0.409849,
		-0.470738, 0.179914, -0.863734,
		0.179120, -0.939111, -0.293235,
		39.862659, 43.216320, 50.770744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091358, 43.588985, 50.723381>,  <39.737274, 43.873699, 50.976009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091358, 43.588985, 50.723381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309868, 43.265007, 50.808769>,  <39.440975, 43.070618, 50.860001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309868, 43.265007, 50.808769>,  <39.091358, 43.588985, 50.723381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309868, 43.265007, 50.808769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805303, -0.437766, 0.399810,
		-0.230375, -0.390313, -0.891394,
		0.546273, -0.809948, 0.213470,
		39.473751, 43.022022, 50.872810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697666, 43.072437, 50.458427>,  <39.091358, 43.588985, 50.723381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697666, 43.072437, 50.458427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942547, 42.907463, 50.728275>,  <39.089474, 42.808479, 50.890182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942547, 42.907463, 50.728275>,  <38.697666, 43.072437, 50.458427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942547, 42.907463, 50.728275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789251, -0.370405, 0.489779,
		0.047881, -0.832286, -0.552275,
		0.612202, -0.412432, 0.674617,
		39.126209, 42.783733, 50.930660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.479641, 42.393799, 50.449310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673180, 42.426620, 50.797829>,  <38.789303, 42.446316, 51.006939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.673180, 42.426620, 50.797829>,  <38.479641, 42.393799, 50.449310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673180, 42.426620, 50.797829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682739, -0.587459, 0.434464,
		0.547502, -0.805083, -0.228217,
		0.483848, 0.082057, 0.871297,
		38.818333, 42.451237, 51.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498898, 41.747902, 50.742352>,  <38.479641, 42.393799, 50.449310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498898, 41.747902, 50.742352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557175, 41.967773, 51.071381>,  <38.592140, 42.099697, 51.268799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557175, 41.967773, 51.071381>,  <38.498898, 41.747902, 50.742352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557175, 41.967773, 51.071381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624647, -0.593652, 0.507339,
		0.767196, -0.587735, 0.256863,
		0.145694, 0.549677, 0.822574,
		38.600883, 42.132675, 51.318153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451504, 41.242496, 51.198639>,  <38.498898, 41.747902, 50.742352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451504, 41.242496, 51.198639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424709, 41.569221, 51.427837>,  <38.408634, 41.765255, 51.565357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424709, 41.569221, 51.427837>,  <38.451504, 41.242496, 51.198639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424709, 41.569221, 51.427837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688387, -0.453545, 0.566057,
		0.722244, -0.356527, 0.592665,
		-0.066985, 0.816814, 0.572999,
		38.404613, 41.814266, 51.599735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621769, 41.096100, 51.873787>,  <38.451504, 41.242496, 51.198639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621769, 41.096100, 51.873787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394932, 41.424568, 51.899330>,  <38.258827, 41.621651, 51.914658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394932, 41.424568, 51.899330>,  <38.621769, 41.096100, 51.873787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394932, 41.424568, 51.899330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579425, -0.452845, 0.677642,
		0.585379, 0.347287, 0.732614,
		-0.567097, 0.821172, 0.063859,
		38.224804, 41.670921, 51.918488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645645, 41.238609, 52.570229>,  <38.621769, 41.096100, 51.873787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645645, 41.238609, 52.570229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317497, 41.418358, 52.428772>,  <38.120609, 41.526207, 52.343899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317497, 41.418358, 52.428772>,  <38.645645, 41.238609, 52.570229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317497, 41.418358, 52.428772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517301, -0.319616, 0.793880,
		0.243713, 0.834215, 0.494661,
		-0.820368, 0.449367, -0.353646,
		38.071388, 41.553169, 52.322678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300781, 41.453053, 53.185741>,  <38.645645, 41.238609, 52.570229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300781, 41.453053, 53.185741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013962, 41.490128, 52.909405>,  <37.841869, 41.512371, 52.743603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.013962, 41.490128, 52.909405>,  <38.300781, 41.453053, 53.185741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013962, 41.490128, 52.909405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688802, -0.246032, 0.681924,
		-0.106763, 0.964820, 0.240259,
		-0.717045, 0.092687, -0.690837,
		37.798847, 41.517933, 52.702152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764511, 41.829231, 53.517330>,  <38.300781, 41.453053, 53.185741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764511, 41.829231, 53.517330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593971, 41.627800, 53.216763>,  <37.491646, 41.506943, 53.036423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593971, 41.627800, 53.216763>,  <37.764511, 41.829231, 53.517330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593971, 41.627800, 53.216763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797162, -0.183420, 0.575230,
		-0.427498, 0.844255, -0.323232,
		-0.426353, -0.503578, -0.751420,
		37.466064, 41.476727, 52.991337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034870, 42.167568, 53.484684>,  <37.764511, 41.829231, 53.517330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034870, 42.167568, 53.484684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010288, 41.819290, 53.289497>,  <36.995541, 41.610321, 53.172386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010288, 41.819290, 53.289497>,  <37.034870, 42.167568, 53.484684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010288, 41.819290, 53.289497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904845, -0.157752, 0.395437,
		-0.421283, 0.465833, -0.778152,
		-0.061453, -0.870698, -0.487965,
		36.991852, 41.558083, 53.143108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388020, 42.033783, 53.337856>,  <37.034870, 42.167568, 53.484684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388020, 42.033783, 53.337856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563446, 41.674477, 53.349037>,  <36.668701, 41.458893, 53.355743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563446, 41.674477, 53.349037>,  <36.388020, 42.033783, 53.337856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563446, 41.674477, 53.349037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785434, -0.367991, 0.497670,
		-0.436756, -0.240211, -0.866916,
		0.438563, -0.898266, 0.027948,
		36.695015, 41.404999, 53.357422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787514, 41.584900, 53.484730>,  <36.388020, 42.033783, 53.337856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787514, 41.584900, 53.484730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105560, 41.358368, 53.571499>,  <36.296391, 41.222450, 53.623558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105560, 41.358368, 53.571499>,  <35.787514, 41.584900, 53.484730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105560, 41.358368, 53.571499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509706, -0.430251, 0.745039,
		-0.328607, -0.702962, -0.630763,
		0.795121, -0.566329, 0.216920,
		36.344097, 41.188469, 53.636574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543537, 40.909061, 53.772472>,  <35.787514, 41.584900, 53.484730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543537, 40.909061, 53.772472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920197, 40.954430, 53.899235>,  <36.146194, 40.981651, 53.975292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920197, 40.954430, 53.899235>,  <35.543537, 40.909061, 53.772472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920197, 40.954430, 53.899235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236775, -0.445962, 0.863166,
		0.239226, -0.887837, -0.393086,
		0.941652, 0.113419, 0.316903,
		36.202694, 40.988457, 53.994305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685417, 40.278809, 54.034332>,  <35.543537, 40.909061, 53.772472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685417, 40.278809, 54.034332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944061, 40.530663, 54.206589>,  <36.099247, 40.681774, 54.309944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944061, 40.530663, 54.206589>,  <35.685417, 40.278809, 54.034332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944061, 40.530663, 54.206589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249948, -0.358498, 0.899447,
		0.720713, -0.689227, -0.074430,
		0.646606, 0.629639, 0.430645,
		36.138042, 40.719555, 54.335781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944672, 39.937119, 54.625710>,  <35.685417, 40.278809, 54.034332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944672, 39.937119, 54.625710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005173, 40.325455, 54.700108>,  <36.041473, 40.558456, 54.744747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005173, 40.325455, 54.700108>,  <35.944672, 39.937119, 54.625710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005173, 40.325455, 54.700108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352013, -0.122926, 0.927888,
		0.923693, -0.205818, 0.323155,
		0.151252, 0.970839, 0.185996,
		36.050549, 40.616707, 54.755905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319313, 39.952797, 55.202007>,  <35.944672, 39.937119, 54.625710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319313, 39.952797, 55.202007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170387, 40.322960, 55.173721>,  <36.081032, 40.545059, 55.156750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170387, 40.322960, 55.173721>,  <36.319313, 39.952797, 55.202007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170387, 40.322960, 55.173721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407197, -0.094411, 0.908448,
		0.834009, 0.367024, 0.411975,
		-0.372317, 0.925408, -0.070711,
		36.058693, 40.600582, 55.152508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456982, 40.240948, 55.827385>,  <36.319313, 39.952797, 55.202007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456982, 40.240948, 55.827385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167633, 40.462456, 55.662426>,  <35.994022, 40.595360, 55.563450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167633, 40.462456, 55.662426>,  <36.456982, 40.240948, 55.827385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167633, 40.462456, 55.662426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440491, 0.089816, 0.893253,
		0.531695, 0.827812, 0.178960,
		-0.723372, 0.553769, -0.412399,
		35.950623, 40.628586, 55.538708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312374, 40.738121, 56.318138>,  <36.456982, 40.240948, 55.827385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312374, 40.738121, 56.318138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985802, 40.744850, 56.087257>,  <35.789860, 40.748890, 55.948730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985802, 40.744850, 56.087257>,  <36.312374, 40.738121, 56.318138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985802, 40.744850, 56.087257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577377, -0.008297, 0.816435,
		0.008948, 0.999824, 0.016488,
		-0.816428, 0.016826, -0.577201,
		35.740871, 40.749897, 55.914097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870663, 41.276283, 56.551537>,  <36.312374, 40.738121, 56.318138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870663, 41.276283, 56.551537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619808, 41.036636, 56.352432>,  <35.469296, 40.892849, 56.232971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619808, 41.036636, 56.352432>,  <35.870663, 41.276283, 56.551537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619808, 41.036636, 56.352432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584169, -0.060929, 0.809342,
		-0.515219, 0.798339, -0.311775,
		-0.627133, -0.599117, -0.497757,
		35.431667, 40.856899, 56.203106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098236, 41.576843, 56.642982>,  <35.870663, 41.276283, 56.551537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098236, 41.576843, 56.642982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038860, 41.205902, 56.505589>,  <35.003235, 40.983337, 56.423153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038860, 41.205902, 56.505589>,  <35.098236, 41.576843, 56.642982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038860, 41.205902, 56.505589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607387, -0.188606, 0.771692,
		-0.780414, 0.323179, -0.535265,
		-0.148441, -0.927353, -0.343485,
		34.994328, 40.927696, 56.402542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292175, 41.482941, 56.700493>,  <35.098236, 41.576843, 56.642982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292175, 41.482941, 56.700493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487770, 41.134041, 56.704056>,  <34.605125, 40.924702, 56.706196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487770, 41.134041, 56.704056>,  <34.292175, 41.482941, 56.700493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487770, 41.134041, 56.704056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576137, -0.315279, 0.754099,
		-0.654952, -0.373876, -0.656700,
		0.488983, -0.872248, 0.008911,
		34.634464, 40.872368, 56.706730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774681, 41.047035, 56.713707>,  <34.292175, 41.482941, 56.700493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774681, 41.047035, 56.713707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089813, 40.844749, 56.854321>,  <34.278893, 40.723377, 56.938690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089813, 40.844749, 56.854321>,  <33.774681, 41.047035, 56.713707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089813, 40.844749, 56.854321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563109, -0.360261, 0.743721,
		-0.249463, -0.783880, -0.568595,
		0.787830, -0.505712, 0.351538,
		34.326164, 40.693035, 56.959782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492111, 40.340008, 56.927242>,  <33.774681, 41.047035, 56.713707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492111, 40.340008, 56.927242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845474, 40.361031, 57.113499>,  <34.057491, 40.373642, 57.225254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845474, 40.361031, 57.113499>,  <33.492111, 40.340008, 56.927242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845474, 40.361031, 57.113499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396176, -0.446931, 0.802058,
		0.250264, -0.893023, -0.374002,
		0.883410, 0.052555, 0.465645,
		34.110497, 40.376797, 57.253193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409321, 39.825012, 57.407074>,  <33.492111, 40.340008, 56.927242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409321, 39.825012, 57.407074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725182, 40.035568, 57.533165>,  <33.914696, 40.161903, 57.608818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.725182, 40.035568, 57.533165>,  <33.409321, 39.825012, 57.407074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725182, 40.035568, 57.533165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214226, -0.244896, 0.945586,
		0.574946, -0.814210, -0.080615,
		0.789648, 0.526391, 0.315227,
		33.962074, 40.193485, 57.627731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861519, 39.382431, 57.764740>,  <33.409321, 39.825012, 57.407074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861519, 39.382431, 57.764740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857655, 39.755959, 57.907787>,  <33.855335, 39.980076, 57.993614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.857655, 39.755959, 57.907787>,  <33.861519, 39.382431, 57.764740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857655, 39.755959, 57.907787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182199, -0.353290, 0.917600,
		0.983214, -0.056292, 0.173554,
		-0.009661, 0.933819, 0.357616,
		33.854755, 40.036102, 58.015072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401985, 38.880703, 57.616085>,  <33.861519, 39.382431, 57.764740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401985, 38.880703, 57.616085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466427, 38.486023, 57.624710>,  <33.505093, 38.249214, 57.629887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.466427, 38.486023, 57.624710>,  <33.401985, 38.880703, 57.616085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466427, 38.486023, 57.624710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592351, 0.079193, -0.801778,
		0.789408, 0.141946, 0.597232,
		0.161106, -0.986701, 0.021566,
		33.514759, 38.190014, 57.631180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036774, 38.712994, 57.449104>,  <33.401985, 38.880703, 57.616085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036774, 38.712994, 57.449104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861580, 38.361458, 57.373405>,  <33.756466, 38.150536, 57.327988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861580, 38.361458, 57.373405>,  <34.036774, 38.712994, 57.449104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861580, 38.361458, 57.373405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599986, -0.128995, -0.789543,
		0.669470, -0.459348, 0.583789,
		-0.437980, -0.878840, -0.189244,
		33.730186, 38.097805, 57.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588120, 38.304192, 57.261044>,  <34.036774, 38.712994, 57.449104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588120, 38.304192, 57.261044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285072, 38.074989, 57.136032>,  <34.103245, 37.937466, 57.061024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285072, 38.074989, 57.136032>,  <34.588120, 38.304192, 57.261044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285072, 38.074989, 57.136032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520080, -0.240666, -0.819510,
		0.394372, -0.783416, 0.480344,
		-0.757620, -0.573009, -0.312527,
		34.057785, 37.903088, 57.042274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798660, 37.615379, 57.068432>,  <34.588120, 38.304192, 57.261044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798660, 37.615379, 57.068432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452705, 37.635254, 56.868629>,  <34.245132, 37.647179, 56.748749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452705, 37.635254, 56.868629>,  <34.798660, 37.615379, 57.068432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452705, 37.635254, 56.868629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485713, -0.168378, -0.857748,
		-0.126721, -0.984469, 0.121496,
		-0.864884, 0.049683, -0.499507,
		34.193241, 37.650158, 56.718777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880344, 37.066128, 56.643089>,  <34.798660, 37.615379, 57.068432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880344, 37.066128, 56.643089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607849, 37.304802, 56.473442>,  <34.444351, 37.448006, 56.371655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.607849, 37.304802, 56.473442>,  <34.880344, 37.066128, 56.643089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607849, 37.304802, 56.473442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452674, -0.111965, -0.884619,
		-0.575328, -0.794624, -0.193831,
		-0.681237, 0.596689, -0.424122,
		34.403477, 37.483807, 56.346207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680092, 36.733936, 56.021770>,  <34.880344, 37.066128, 56.643089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680092, 36.733936, 56.021770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608818, 37.124489, 55.972897>,  <34.566055, 37.358822, 55.943573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608818, 37.124489, 55.972897>,  <34.680092, 36.733936, 56.021770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608818, 37.124489, 55.972897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353026, -0.052478, -0.934140,
		-0.918490, -0.209583, -0.335338,
		-0.178183, 0.976381, -0.122189,
		34.555363, 37.417404, 55.936241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494610, 36.731365, 55.253059>,  <34.680092, 36.733936, 56.021770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494610, 36.731365, 55.253059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566757, 37.106781, 55.370773>,  <34.610046, 37.332031, 55.441402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566757, 37.106781, 55.370773>,  <34.494610, 36.731365, 55.253059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566757, 37.106781, 55.370773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489129, 0.173985, -0.854682,
		-0.853357, 0.298101, -0.427688,
		0.180370, 0.938544, 0.294282,
		34.620869, 37.388344, 55.459057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619362, 37.042740, 54.636799>,  <34.494610, 36.731365, 55.253059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619362, 37.042740, 54.636799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725330, 37.352829, 54.866180>,  <34.788910, 37.538883, 55.003811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725330, 37.352829, 54.866180>,  <34.619362, 37.042740, 54.636799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725330, 37.352829, 54.866180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611838, 0.324521, -0.721346,
		-0.745300, 0.541962, -0.388336,
		0.264919, 0.775218, 0.573458,
		34.804806, 37.585396, 55.038219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546921, 37.627632, 54.227108>,  <34.619362, 37.042740, 54.636799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546921, 37.627632, 54.227108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808743, 37.729958, 54.511673>,  <34.965836, 37.791351, 54.682411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808743, 37.729958, 54.511673>,  <34.546921, 37.627632, 54.227108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808743, 37.729958, 54.511673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576992, 0.439004, -0.688735,
		-0.488502, 0.861299, 0.139751,
		0.654558, 0.255814, 0.711417,
		35.005112, 37.806702, 54.725098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636242, 38.274860, 54.206318>,  <34.546921, 37.627632, 54.227108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636242, 38.274860, 54.206318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962364, 38.121353, 54.379753>,  <35.158035, 38.029247, 54.483814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962364, 38.121353, 54.379753>,  <34.636242, 38.274860, 54.206318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962364, 38.121353, 54.379753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578789, 0.518340, -0.629544,
		0.016851, 0.764228, 0.644726,
		0.815303, -0.383769, 0.433593,
		35.206955, 38.006222, 54.509830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007431, 38.848610, 54.463917>,  <34.636242, 38.274860, 54.206318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007431, 38.848610, 54.463917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263092, 38.544640, 54.416573>,  <35.416489, 38.362259, 54.388168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263092, 38.544640, 54.416573>,  <35.007431, 38.848610, 54.463917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263092, 38.544640, 54.416573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547617, 0.557732, -0.623739,
		0.540004, 0.333848, 0.772620,
		0.639149, -0.759921, -0.118356,
		35.454838, 38.316662, 54.381065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727180, 39.119217, 54.412365>,  <35.007431, 38.848610, 54.463917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727180, 39.119217, 54.412365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750580, 38.757263, 54.243713>,  <35.764618, 38.540092, 54.142525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750580, 38.757263, 54.243713>,  <35.727180, 39.119217, 54.412365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750580, 38.757263, 54.243713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697181, 0.339319, -0.631507,
		0.714505, -0.257009, 0.650715,
		0.058497, -0.904881, -0.421627,
		35.768127, 38.485798, 54.117226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482788, 38.984829, 54.370907>,  <35.727180, 39.119217, 54.412365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482788, 38.984829, 54.370907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283302, 38.751389, 54.114567>,  <36.163609, 38.611324, 53.960762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283302, 38.751389, 54.114567>,  <36.482788, 38.984829, 54.370907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283302, 38.751389, 54.114567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725795, 0.122994, -0.676827,
		0.473815, -0.802675, 0.362232,
		-0.498719, -0.583597, -0.640854,
		36.133686, 38.576309, 53.922310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058983, 38.558517, 53.976822>,  <36.482788, 38.984829, 54.370907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058983, 38.558517, 53.976822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.712784, 38.551727, 53.776573>,  <36.505062, 38.547653, 53.656425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.712784, 38.551727, 53.776573>,  <37.058983, 38.558517, 53.976822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712784, 38.551727, 53.776573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492047, 0.158317, -0.856052,
		0.093779, -0.987243, -0.128676,
		-0.865503, -0.016966, -0.500617,
		36.453133, 38.546635, 53.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223202, 38.103580, 53.320572>,  <37.058983, 38.558517, 53.976822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223202, 38.103580, 53.320572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890076, 38.294075, 53.207710>,  <36.690201, 38.408371, 53.139992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890076, 38.294075, 53.207710>,  <37.223202, 38.103580, 53.320572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890076, 38.294075, 53.207710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418377, 0.207777, -0.884189,
		-0.362455, -0.854418, -0.372286,
		-0.832819, 0.476234, -0.282159,
		36.640228, 38.436947, 53.123062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020988, 37.861450, 52.723076>,  <37.223202, 38.103580, 53.320572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020988, 37.861450, 52.723076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838203, 38.217201, 52.728539>,  <36.728535, 38.430653, 52.731815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838203, 38.217201, 52.728539>,  <37.020988, 37.861450, 52.723076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838203, 38.217201, 52.728539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413224, 0.225855, -0.882177,
		-0.787676, -0.397478, -0.470721,
		-0.456961, 0.889382, 0.013653,
		36.701115, 38.484016, 52.732635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775528, 37.940781, 52.089161>,  <37.020988, 37.861450, 52.723076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775528, 37.940781, 52.089161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777374, 38.314240, 52.232430>,  <36.778484, 38.538315, 52.318390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777374, 38.314240, 52.232430>,  <36.775528, 37.940781, 52.089161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777374, 38.314240, 52.232430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396526, 0.327101, -0.857772,
		-0.918012, 0.145986, -0.368704,
		0.004619, 0.933645, 0.358170,
		36.778759, 38.594334, 52.339882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542614, 38.340714, 51.534367>,  <36.775528, 37.940781, 52.089161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542614, 38.340714, 51.534367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707138, 38.595993, 51.794682>,  <36.805851, 38.749161, 51.950871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707138, 38.595993, 51.794682>,  <36.542614, 38.340714, 51.534367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707138, 38.595993, 51.794682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257680, 0.603443, -0.754624,
		-0.874316, 0.478077, 0.083749,
		0.411306, 0.638199, 0.650791,
		36.830528, 38.787453, 51.989918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489201, 38.891846, 51.182774>,  <36.542614, 38.340714, 51.534367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489201, 38.891846, 51.182774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770359, 39.020622, 51.436478>,  <36.939056, 39.097889, 51.588699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770359, 39.020622, 51.436478>,  <36.489201, 38.891846, 51.182774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770359, 39.020622, 51.436478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556980, 0.305477, -0.772307,
		-0.442389, 0.896124, 0.035405,
		0.702898, 0.321940, 0.634263,
		36.981228, 39.117203, 51.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704456, 39.621758, 50.943405>,  <36.489201, 38.891846, 51.182774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704456, 39.621758, 50.943405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995270, 39.463814, 51.168083>,  <37.169758, 39.369045, 51.302891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995270, 39.463814, 51.168083>,  <36.704456, 39.621758, 50.943405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995270, 39.463814, 51.168083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686601, 0.417711, -0.595061,
		0.000340, 0.818292, 0.574803,
		0.727035, -0.394863, 0.561697,
		37.213379, 39.345356, 51.336594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245857, 40.139080, 51.035446>,  <36.704456, 39.621758, 50.943405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245857, 40.139080, 51.035446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436905, 39.793770, 51.100723>,  <37.551533, 39.586582, 51.139889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436905, 39.793770, 51.100723>,  <37.245857, 40.139080, 51.035446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436905, 39.793770, 51.100723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810150, 0.360903, -0.461960,
		0.339904, 0.352849, 0.871758,
		0.477622, -0.863277, 0.163189,
		37.580193, 39.534786, 51.149681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.964996, 44.238819, 49.536076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046825, 43.878448, 49.689163>,  <41.095924, 43.662224, 49.781017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046825, 43.878448, 49.689163>,  <40.964996, 44.238819, 49.536076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046825, 43.878448, 49.689163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950285, 0.089030, -0.298381,
		0.234746, 0.424734, 0.874354,
		0.204576, -0.900930, 0.382719,
		41.108200, 43.608170, 49.803978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542217, 44.358181, 49.863743>,  <40.964996, 44.238819, 49.536076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542217, 44.358181, 49.863743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556988, 43.960052, 49.828049>,  <41.565849, 43.721176, 49.806633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.556988, 43.960052, 49.828049>,  <41.542217, 44.358181, 49.863743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556988, 43.960052, 49.828049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920085, 0.068714, -0.385645,
		0.389974, -0.067863, 0.918322,
		0.036930, -0.995326, -0.089236,
		41.568066, 43.661453, 49.801277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162807, 44.128059, 50.112206>,  <41.542217, 44.358181, 49.863743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162807, 44.128059, 50.112206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055599, 43.837029, 49.859604>,  <41.991276, 43.662411, 49.708042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055599, 43.837029, 49.859604>,  <42.162807, 44.128059, 50.112206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055599, 43.837029, 49.859604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877464, 0.086280, -0.471818,
		0.397769, -0.680580, 0.615297,
		-0.268022, -0.727576, -0.631504,
		41.975193, 43.618755, 49.670151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830456, 43.779205, 49.939823>,  <42.162807, 44.128059, 50.112206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830456, 43.779205, 49.939823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576004, 43.672127, 49.650360>,  <42.423332, 43.607880, 49.476685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576004, 43.672127, 49.650360>,  <42.830456, 43.779205, 49.939823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576004, 43.672127, 49.650360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725605, 0.111360, -0.679041,
		0.262361, -0.957047, 0.123400,
		-0.636133, -0.267694, -0.723654,
		42.385162, 43.591820, 49.433266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197300, 43.355621, 49.586349>,  <42.830456, 43.779205, 49.939823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197300, 43.355621, 49.586349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903542, 43.472366, 49.341248>,  <42.727287, 43.542416, 49.194187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.903542, 43.472366, 49.341248>,  <43.197300, 43.355621, 49.586349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903542, 43.472366, 49.341248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666816, 0.141954, -0.731577,
		-0.126540, -0.945866, -0.298873,
		-0.734400, 0.291867, -0.612756,
		42.683220, 43.559925, 49.157421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383232, 43.092594, 49.013893>,  <43.197300, 43.355621, 49.586349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383232, 43.092594, 49.013893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106049, 43.344810, 48.874046>,  <42.939739, 43.496140, 48.790138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.106049, 43.344810, 48.874046>,  <43.383232, 43.092594, 49.013893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106049, 43.344810, 48.874046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511768, 0.088608, -0.854542,
		-0.507843, -0.771083, -0.384091,
		-0.692957, 0.630539, -0.349617,
		42.898163, 43.533974, 48.769161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322193, 42.889587, 48.369465>,  <43.383232, 43.092594, 49.013893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322193, 42.889587, 48.369465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191494, 43.267593, 48.364079>,  <43.113075, 43.494396, 48.360847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.191494, 43.267593, 48.364079>,  <43.322193, 42.889587, 48.369465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191494, 43.267593, 48.364079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650960, 0.214698, -0.728117,
		-0.685191, -0.246678, -0.685320,
		-0.326748, 0.945016, -0.013468,
		43.093472, 43.551098, 48.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269073, 43.119011, 47.593388>,  <43.322193, 42.889587, 48.369465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269073, 43.119011, 47.593388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327560, 43.434814, 47.831814>,  <43.362652, 43.624298, 47.974869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.327560, 43.434814, 47.831814>,  <43.269073, 43.119011, 47.593388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327560, 43.434814, 47.831814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660560, 0.370608, -0.652924,
		-0.736396, 0.489209, -0.467328,
		0.146220, 0.789509, 0.596066,
		43.371426, 43.671669, 48.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186554, 43.655190, 47.120968>,  <43.269073, 43.119011, 47.593388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186554, 43.655190, 47.120968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390980, 43.762184, 47.447712>,  <43.513634, 43.826382, 47.643757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.390980, 43.762184, 47.447712>,  <43.186554, 43.655190, 47.120968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390980, 43.762184, 47.447712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740414, 0.345696, -0.576438,
		-0.436577, 0.899413, -0.021380,
		0.511065, 0.267490, 0.816861,
		43.544300, 43.842430, 47.692772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287842, 44.324078, 46.945805>,  <43.186554, 43.655190, 47.120968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287842, 44.324078, 46.945805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557716, 44.240761, 47.229046>,  <43.719643, 44.190773, 47.398991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557716, 44.240761, 47.229046>,  <43.287842, 44.324078, 46.945805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557716, 44.240761, 47.229046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699414, 0.486940, -0.523172,
		-0.235835, 0.848237, 0.474211,
		0.674686, -0.208288, 0.708107,
		43.760120, 44.178276, 47.441479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703411, 44.954948, 47.077450>,  <43.287842, 44.324078, 46.945805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703411, 44.954948, 47.077450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930126, 44.653954, 47.211624>,  <44.066154, 44.473354, 47.292130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.930126, 44.653954, 47.211624>,  <43.703411, 44.954948, 47.077450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930126, 44.653954, 47.211624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767665, 0.334570, -0.546583,
		0.299073, 0.567294, 0.767289,
		0.566786, -0.752489, 0.335431,
		44.100163, 44.428207, 47.312252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322678, 45.322697, 47.256931>,  <43.703411, 44.954948, 47.077450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322678, 45.322697, 47.256931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408199, 44.933640, 47.220596>,  <44.459511, 44.700207, 47.198795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408199, 44.933640, 47.220596>,  <44.322678, 45.322697, 47.256931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408199, 44.933640, 47.220596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724500, 0.220258, -0.653135,
		0.655276, 0.073831, 0.751773,
		0.213806, -0.972643, -0.090839,
		44.472340, 44.641846, 47.193344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034691, 45.333103, 47.414131>,  <44.322678, 45.322697, 47.256931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034691, 45.333103, 47.414131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918037, 45.013329, 47.204044>,  <44.848045, 44.821465, 47.077991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.918037, 45.013329, 47.204044>,  <45.034691, 45.333103, 47.414131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918037, 45.013329, 47.204044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837668, 0.051644, -0.543732,
		0.461802, -0.598530, 0.654599,
		-0.291634, -0.799434, -0.525219,
		44.830547, 44.773499, 47.046478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562649, 44.878262, 47.433945>,  <45.034691, 45.333103, 47.414131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562649, 44.878262, 47.433945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389229, 44.749039, 47.097450>,  <45.285179, 44.671505, 46.895554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.389229, 44.749039, 47.097450>,  <45.562649, 44.878262, 47.433945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389229, 44.749039, 47.097450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899700, -0.207757, -0.383896,
		-0.050752, -0.923294, 0.380725,
		-0.433547, -0.323055, -0.841233,
		45.259163, 44.652122, 46.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037426, 45.484394, 47.318535>,  <45.562649, 44.878262, 47.433945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037426, 45.484394, 47.318535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341934, 45.669380, 47.500347>,  <46.524639, 45.780373, 47.609436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.341934, 45.669380, 47.500347>,  <46.037426, 45.484394, 47.318535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341934, 45.669380, 47.500347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474723, -0.080016, 0.876490,
		0.441712, -0.883022, 0.158628,
		0.761267, 0.462461, 0.454535,
		46.570316, 45.808117, 47.636707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392460, 45.006653, 47.776321>,  <46.037426, 45.484394, 47.318535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392460, 45.006653, 47.776321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412903, 45.381058, 47.915615>,  <46.425171, 45.605701, 47.999191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412903, 45.381058, 47.915615>,  <46.392460, 45.006653, 47.776321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412903, 45.381058, 47.915615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257969, -0.324479, 0.910036,
		0.964800, -0.136344, 0.224879,
		0.051109, 0.936014, 0.348230,
		46.428234, 45.661861, 48.020084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472023, 44.856216, 48.559494>,  <46.392460, 45.006653, 47.776321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472023, 44.856216, 48.559494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.386497, 45.245689, 48.527927>,  <46.335182, 45.479374, 48.508987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.386497, 45.245689, 48.527927>,  <46.472023, 44.856216, 48.559494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386497, 45.245689, 48.527927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670484, -0.087517, 0.736744,
		0.710447, 0.210439, 0.671551,
		-0.213812, 0.973681, -0.078920,
		46.322353, 45.537792, 48.504250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633236, 45.196625, 49.289413>,  <46.472023, 44.856216, 48.559494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633236, 45.196625, 49.289413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366890, 45.412445, 49.083302>,  <46.207085, 45.541939, 48.959637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366890, 45.412445, 49.083302>,  <46.633236, 45.196625, 49.289413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366890, 45.412445, 49.083302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686983, -0.174025, 0.705527,
		0.290999, 0.823771, 0.486541,
		-0.665863, 0.539553, -0.515276,
		46.167130, 45.574310, 48.928719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274879, 45.561825, 49.758125>,  <46.633236, 45.196625, 49.289413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274879, 45.561825, 49.758125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.029251, 45.582153, 49.443081>,  <45.881874, 45.594353, 49.254055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.029251, 45.582153, 49.443081>,  <46.274879, 45.561825, 49.758125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029251, 45.582153, 49.443081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776204, -0.219576, 0.591011,
		-0.142903, 0.974271, 0.174285,
		-0.614073, 0.050824, -0.787611,
		45.845028, 45.597401, 49.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722824, 45.996376, 49.934105>,  <46.274879, 45.561825, 49.758125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722824, 45.996376, 49.934105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589592, 45.763283, 49.637600>,  <45.509651, 45.623425, 49.459698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589592, 45.763283, 49.637600>,  <45.722824, 45.996376, 49.934105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589592, 45.763283, 49.637600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824995, -0.200545, 0.528360,
		-0.456552, 0.787528, -0.413957,
		-0.333081, -0.582736, -0.741266,
		45.489666, 45.588463, 49.415218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012585, 45.971676, 50.036575>,  <45.722824, 45.996376, 49.934105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012585, 45.971676, 50.036575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043182, 45.658539, 49.789577>,  <45.061543, 45.470657, 49.641376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043182, 45.658539, 49.789577>,  <45.012585, 45.971676, 50.036575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043182, 45.658539, 49.789577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757712, -0.448191, 0.474338,
		-0.648090, 0.431601, -0.627455,
		0.076495, -0.782844, -0.617498,
		45.066132, 45.423687, 49.604328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291943, 45.787548, 49.928200>,  <45.012585, 45.971676, 50.036575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291943, 45.787548, 49.928200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516029, 45.462685, 49.863022>,  <44.650482, 45.267765, 49.823914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516029, 45.462685, 49.863022>,  <44.291943, 45.787548, 49.928200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516029, 45.462685, 49.863022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644854, -0.551069, 0.529610,
		-0.519923, -0.191620, -0.832443,
		0.560217, -0.812160, -0.162947,
		44.684093, 45.219036, 49.814137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865734, 45.114735, 49.664707>,  <44.291943, 45.787548, 49.928200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865734, 45.114735, 49.664707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191616, 44.996948, 49.864525>,  <44.387146, 44.926277, 49.984417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.191616, 44.996948, 49.864525>,  <43.865734, 45.114735, 49.664707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191616, 44.996948, 49.864525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564256, -0.601155, 0.565887,
		0.133669, -0.742902, -0.655918,
		0.814707, -0.294464, 0.499543,
		44.436028, 44.908607, 50.014389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841511, 44.354855, 49.762413>,  <43.865734, 45.114735, 49.664707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841511, 44.354855, 49.762413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103340, 44.501724, 50.026749>,  <44.260437, 44.589848, 50.185352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103340, 44.501724, 50.026749>,  <43.841511, 44.354855, 49.762413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103340, 44.501724, 50.026749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360692, -0.616549, 0.699835,
		0.664403, -0.696456, -0.271142,
		0.654576, 0.367173, 0.660843,
		44.299713, 44.611877, 50.225002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118595, 43.791100, 50.087868>,  <43.841511, 44.354855, 49.762413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118595, 43.791100, 50.087868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210060, 44.090378, 50.336998>,  <44.264938, 44.269943, 50.486477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210060, 44.090378, 50.336998>,  <44.118595, 43.791100, 50.087868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210060, 44.090378, 50.336998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219365, -0.583723, 0.781758,
		0.948468, -0.315385, 0.030653,
		0.228663, 0.748197, 0.622828,
		44.278660, 44.314838, 50.523846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286407, 43.370136, 50.644939>,  <44.118595, 43.791100, 50.087868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286407, 43.370136, 50.644939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284828, 43.738220, 50.801498>,  <44.283882, 43.959072, 50.895435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.284828, 43.738220, 50.801498>,  <44.286407, 43.370136, 50.644939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284828, 43.738220, 50.801498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366797, -0.365451, 0.855515,
		0.930293, -0.140187, 0.338973,
		-0.003946, 0.920213, 0.391397,
		44.283646, 44.014286, 50.918919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530972, 43.299557, 51.296387>,  <44.286407, 43.370136, 50.644939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530972, 43.299557, 51.296387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370972, 43.664078, 51.335445>,  <44.274971, 43.882790, 51.358879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370972, 43.664078, 51.335445>,  <44.530972, 43.299557, 51.296387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370972, 43.664078, 51.335445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365328, -0.256242, 0.894916,
		0.840559, 0.322290, 0.435419,
		-0.399995, 0.911301, 0.097645,
		44.250973, 43.937469, 51.364738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637905, 43.541611, 52.038570>,  <44.530972, 43.299557, 51.296387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637905, 43.541611, 52.038570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326057, 43.750565, 51.900402>,  <44.138950, 43.875935, 51.817501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.326057, 43.750565, 51.900402>,  <44.637905, 43.541611, 52.038570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326057, 43.750565, 51.900402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514561, -0.219924, 0.828770,
		0.356969, 0.823862, 0.440254,
		-0.779615, 0.522383, -0.345422,
		44.092175, 43.907280, 51.796776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024330, 43.551956, 52.683456>,  <44.637905, 43.541611, 52.038570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024330, 43.551956, 52.683456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180916, 43.184898, 52.656052>,  <45.274868, 42.964664, 52.639610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180916, 43.184898, 52.656052>,  <45.024330, 43.551956, 52.683456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180916, 43.184898, 52.656052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730772, 0.355261, -0.582891,
		0.559224, 0.178114, 0.809657,
		0.391461, -0.917641, -0.068510,
		45.298355, 42.909607, 52.635498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.740582, 43.662663, 52.897785>,  <45.024330, 43.551956, 52.683456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.740582, 43.662663, 52.897785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721909, 43.321106, 52.690441>,  <45.710705, 43.116173, 52.566036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.721909, 43.321106, 52.690441>,  <45.740582, 43.662663, 52.897785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.721909, 43.321106, 52.690441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848660, 0.239804, -0.471456,
		0.526875, -0.461921, 0.713465,
		-0.046683, -0.853887, -0.518361,
		45.707905, 43.064941, 52.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420155, 43.483051, 52.820236>,  <45.740582, 43.662663, 52.897785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420155, 43.483051, 52.820236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252274, 43.232246, 52.557724>,  <46.151546, 43.081764, 52.400215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252274, 43.232246, 52.557724>,  <46.420155, 43.483051, 52.820236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252274, 43.232246, 52.557724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813649, 0.060556, -0.578194,
		0.402274, -0.776656, 0.484749,
		-0.419704, -0.627008, -0.656285,
		46.126362, 43.044144, 52.360840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.840141, 42.859203, 52.728344>,  <46.420155, 43.483051, 52.820236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.840141, 42.859203, 52.728344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.633652, 42.906792, 52.389084>,  <46.509758, 42.935345, 52.185528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.633652, 42.906792, 52.389084>,  <46.840141, 42.859203, 52.728344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633652, 42.906792, 52.389084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852794, -0.020033, -0.521864,
		-0.079078, -0.992695, -0.091118,
		-0.516226, 0.118973, -0.848148,
		46.478783, 42.942482, 52.134640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122257, 42.404835, 52.222881>,  <46.840141, 42.859203, 52.728344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122257, 42.404835, 52.222881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916962, 42.678345, 52.015404>,  <46.793785, 42.842449, 51.890919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.916962, 42.678345, 52.015404>,  <47.122257, 42.404835, 52.222881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916962, 42.678345, 52.015404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673417, -0.053828, -0.737301,
		-0.532065, -0.727708, -0.432836,
		-0.513241, 0.683771, -0.518691,
		46.762989, 42.883476, 51.859795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153416, 42.096172, 51.570087>,  <47.122257, 42.404835, 52.222881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153416, 42.096172, 51.570087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052658, 42.476303, 51.496964>,  <46.992203, 42.704384, 51.453087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052658, 42.476303, 51.496964>,  <47.153416, 42.096172, 51.570087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052658, 42.476303, 51.496964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450715, -0.051965, -0.891154,
		-0.856392, -0.306871, -0.415239,
		-0.251892, 0.950331, -0.182814,
		46.977089, 42.761402, 51.442120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795212, 42.216503, 50.900612>,  <47.153416, 42.096172, 51.570087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795212, 42.216503, 50.900612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.952103, 42.576080, 50.978649>,  <47.046238, 42.791824, 51.025471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.952103, 42.576080, 50.978649>,  <46.795212, 42.216503, 50.900612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952103, 42.576080, 50.978649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370442, 0.039772, -0.928004,
		-0.841980, 0.436261, -0.317405,
		0.392228, 0.898941, 0.195096,
		47.069771, 42.845764, 51.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673088, 42.522549, 50.312180>,  <46.795212, 42.216503, 50.900612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673088, 42.522549, 50.312180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.947342, 42.757881, 50.483658>,  <47.111893, 42.899078, 50.586544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.947342, 42.757881, 50.483658>,  <46.673088, 42.522549, 50.312180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947342, 42.757881, 50.483658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475059, 0.084591, -0.875878,
		-0.551567, 0.804186, -0.221492,
		0.685633, 0.588327, 0.428694,
		47.153030, 42.934380, 50.612267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722481, 43.071121, 49.875576>,  <46.673088, 42.522549, 50.312180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722481, 43.071121, 49.875576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057434, 43.075485, 50.094177>,  <47.258408, 43.078102, 50.225338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.057434, 43.075485, 50.094177>,  <46.722481, 43.071121, 49.875576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057434, 43.075485, 50.094177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540866, 0.128061, -0.831303,
		-0.079056, 0.991706, 0.101335,
		0.837386, 0.010911, 0.546504,
		47.308651, 43.078758, 50.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.054436, 43.595360, 49.524990>,  <46.722481, 43.071121, 49.875576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.054436, 43.595360, 49.524990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.329933, 43.405266, 49.743999>,  <47.495232, 43.291210, 49.875404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.329933, 43.405266, 49.743999>,  <47.054436, 43.595360, 49.524990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329933, 43.405266, 49.743999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656089, 0.087201, -0.749629,
		0.308507, 0.875526, 0.371857,
		0.688746, -0.475237, 0.547521,
		47.536556, 43.262695, 49.908257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581112, 44.024891, 49.432564>,  <47.054436, 43.595360, 49.524990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581112, 44.024891, 49.432564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.705643, 43.656174, 49.524979>,  <47.780361, 43.434944, 49.580429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.705643, 43.656174, 49.524979>,  <47.581112, 44.024891, 49.432564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705643, 43.656174, 49.524979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559476, -0.018728, -0.828635,
		0.768153, 0.387240, 0.509888,
		0.311331, -0.921789, 0.231037,
		47.799042, 43.379639, 49.594292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.340160, 44.104385, 49.465878>,  <47.581112, 44.024891, 49.432564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.340160, 44.104385, 49.465878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.242981, 43.726555, 49.377560>,  <48.184673, 43.499855, 49.324570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.242981, 43.726555, 49.377560>,  <48.340160, 44.104385, 49.465878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.242981, 43.726555, 49.377560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536222, 0.058905, -0.842019,
		0.808356, -0.322968, 0.492191,
		-0.242952, -0.944575, -0.220799,
		48.170094, 43.443184, 49.311321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.632389, 42.076145, 55.847855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613670, 41.732948, 55.643246>,  <43.602440, 41.527031, 55.520481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613670, 41.732948, 55.643246>,  <43.632389, 42.076145, 55.847855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613670, 41.732948, 55.643246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809454, 0.267489, -0.522717,
		0.585315, -0.438518, 0.681989,
		-0.046796, -0.857993, -0.511525,
		43.599632, 41.475552, 55.489788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345322, 41.589336, 55.762154>,  <43.632389, 42.076145, 55.847855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345322, 41.589336, 55.762154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121819, 41.506004, 55.441059>,  <43.987717, 41.456005, 55.248402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121819, 41.506004, 55.441059>,  <44.345322, 41.589336, 55.762154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121819, 41.506004, 55.441059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764664, 0.245300, -0.595917,
		0.321062, -0.946797, 0.022243,
		-0.558756, -0.208334, -0.802738,
		43.954193, 41.443504, 55.200237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796555, 41.210934, 55.338196>,  <44.345322, 41.589336, 55.762154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796555, 41.210934, 55.338196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509266, 41.336517, 55.089813>,  <44.336891, 41.411865, 54.940784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509266, 41.336517, 55.089813>,  <44.796555, 41.210934, 55.338196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509266, 41.336517, 55.089813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680031, 0.127713, -0.721975,
		-0.147364, -0.940809, -0.305226,
		-0.718221, 0.313956, -0.620959,
		44.293800, 41.430706, 54.903526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010117, 40.908989, 54.745342>,  <44.796555, 41.210934, 55.338196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010117, 40.908989, 54.745342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757378, 41.200424, 54.639565>,  <44.605736, 41.375286, 54.576096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757378, 41.200424, 54.639565>,  <45.010117, 40.908989, 54.745342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757378, 41.200424, 54.639565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607280, 0.253330, -0.753017,
		-0.481648, -0.636382, -0.602523,
		-0.631843, 0.728590, -0.264446,
		44.567825, 41.419003, 54.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918633, 40.954048, 54.029671>,  <45.010117, 40.908989, 54.745342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918633, 40.954048, 54.029671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765892, 41.314583, 54.111431>,  <44.674248, 41.530903, 54.160488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765892, 41.314583, 54.111431>,  <44.918633, 40.954048, 54.029671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765892, 41.314583, 54.111431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470706, 0.379989, -0.796269,
		-0.795378, -0.207844, -0.569364,
		-0.381851, 0.901338, 0.204401,
		44.651337, 41.584984, 54.172752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687485, 41.164074, 53.417393>,  <44.918633, 40.954048, 54.029671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687485, 41.164074, 53.417393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713604, 41.501427, 53.630726>,  <44.729275, 41.703838, 53.758724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713604, 41.501427, 53.630726>,  <44.687485, 41.164074, 53.417393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713604, 41.501427, 53.630726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312710, 0.490255, -0.813549,
		-0.947601, 0.219902, -0.231721,
		0.065299, 0.843382, 0.533332,
		44.733192, 41.754440, 53.790726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307041, 41.652229, 53.037624>,  <44.687485, 41.164074, 53.417393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307041, 41.652229, 53.037624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551056, 41.868446, 53.269371>,  <44.697464, 41.998177, 53.408421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551056, 41.868446, 53.269371>,  <44.307041, 41.652229, 53.037624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551056, 41.868446, 53.269371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258441, 0.555463, -0.790360,
		-0.749039, 0.631884, 0.199157,
		0.610040, 0.540540, 0.579368,
		44.734070, 42.030609, 53.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127182, 42.349319, 52.886471>,  <44.307041, 41.652229, 53.037624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127182, 42.349319, 52.886471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485687, 42.358963, 53.063614>,  <44.700790, 42.364750, 53.169899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485687, 42.358963, 53.063614>,  <44.127182, 42.349319, 52.886471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485687, 42.358963, 53.063614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357156, 0.552775, -0.752914,
		-0.262953, 0.832982, 0.486823,
		0.896267, 0.024109, 0.442859,
		44.754566, 42.366196, 53.196472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423279, 43.072712, 52.624775>,  <44.127182, 42.349319, 52.886471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423279, 43.072712, 52.624775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722069, 42.843704, 52.759983>,  <44.901340, 42.706299, 52.841106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722069, 42.843704, 52.759983>,  <44.423279, 43.072712, 52.624775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722069, 42.843704, 52.759983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597288, 0.354552, -0.719402,
		0.292023, 0.739269, 0.606798,
		0.746973, -0.572515, 0.338019,
		44.946159, 42.671951, 52.861389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250546, 43.892105, 52.580242>,  <44.423279, 43.072712, 52.624775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250546, 43.892105, 52.580242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934746, 43.969276, 52.347183>,  <43.745266, 44.015579, 52.207348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934746, 43.969276, 52.347183>,  <44.250546, 43.892105, 52.580242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934746, 43.969276, 52.347183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613608, -0.227210, 0.756215,
		0.013514, 0.954544, 0.297765,
		-0.789495, 0.192931, -0.582645,
		43.697899, 44.027157, 52.172390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816566, 44.314396, 52.979721>,  <44.250546, 43.892105, 52.580242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816566, 44.314396, 52.979721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614502, 44.105896, 52.704590>,  <43.493263, 43.980797, 52.539509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614502, 44.105896, 52.704590>,  <43.816566, 44.314396, 52.979721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614502, 44.105896, 52.704590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660917, -0.278865, 0.696723,
		-0.554979, 0.806556, -0.203632,
		-0.505160, -0.521251, -0.687831,
		43.462955, 43.949520, 52.498241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169609, 44.622597, 53.023376>,  <43.816566, 44.314396, 52.979721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169609, 44.622597, 53.023376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120899, 44.273468, 52.834335>,  <43.091675, 44.063992, 52.720913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120899, 44.273468, 52.834335>,  <43.169609, 44.622597, 53.023376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120899, 44.273468, 52.834335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779757, -0.210478, 0.589642,
		-0.614125, 0.440318, -0.654959,
		-0.121776, -0.872823, -0.472601,
		43.084366, 44.011620, 52.692554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475727, 44.642380, 52.802166>,  <43.169609, 44.622597, 53.023376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475727, 44.642380, 52.802166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613220, 44.267822, 52.830475>,  <42.695717, 44.043087, 52.847458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613220, 44.267822, 52.830475>,  <42.475727, 44.642380, 52.802166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613220, 44.267822, 52.830475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813938, -0.259497, 0.519775,
		-0.468352, -0.236265, -0.851367,
		0.343732, -0.936397, 0.070769,
		42.716339, 43.986904, 52.851707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870304, 44.305271, 52.569698>,  <42.475727, 44.642380, 52.802166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870304, 44.305271, 52.569698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094868, 44.047676, 52.777580>,  <42.229607, 43.893120, 52.902309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094868, 44.047676, 52.777580>,  <41.870304, 44.305271, 52.569698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094868, 44.047676, 52.777580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786438, -0.219739, 0.577261,
		-0.257556, -0.732790, -0.629828,
		0.561409, -0.643998, 0.519699,
		42.263290, 43.854477, 52.933491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454197, 43.752396, 52.761608>,  <41.870304, 44.305271, 52.569698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454197, 43.752396, 52.761608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761139, 43.674904, 53.006111>,  <41.945305, 43.628410, 53.152813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761139, 43.674904, 53.006111>,  <41.454197, 43.752396, 52.761608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761139, 43.674904, 53.006111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641180, -0.220403, 0.735058,
		-0.007676, -0.955977, -0.293341,
		0.767352, -0.193726, 0.611262,
		41.991344, 43.616787, 53.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298595, 43.099728, 53.030571>,  <41.454197, 43.752396, 52.761608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298595, 43.099728, 53.030571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548218, 43.309174, 53.262566>,  <41.697990, 43.434841, 53.401760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548218, 43.309174, 53.262566>,  <41.298595, 43.099728, 53.030571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548218, 43.309174, 53.262566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656457, -0.051259, 0.752620,
		0.423813, -0.850411, 0.311743,
		0.624057, 0.523616, 0.579983,
		41.735435, 43.466259, 53.436562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342571, 42.734985, 53.645760>,  <41.298595, 43.099728, 53.030571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342571, 42.734985, 53.645760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458130, 43.107178, 53.735859>,  <41.527466, 43.330494, 53.789917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458130, 43.107178, 53.735859>,  <41.342571, 42.734985, 53.645760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458130, 43.107178, 53.735859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553468, -0.029648, 0.832343,
		0.781160, -0.365130, 0.506428,
		0.288899, 0.930484, 0.225247,
		41.544800, 43.386322, 53.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573544, 42.766228, 54.416451>,  <41.342571, 42.734985, 53.645760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573544, 42.766228, 54.416451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465790, 43.133202, 54.299320>,  <41.401138, 43.353386, 54.229042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465790, 43.133202, 54.299320>,  <41.573544, 42.766228, 54.416451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465790, 43.133202, 54.299320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572709, 0.091840, 0.814598,
		0.774232, 0.387145, 0.500682,
		-0.269385, 0.917433, -0.292827,
		41.384975, 43.408432, 54.211472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574558, 43.124908, 55.107597>,  <41.573544, 42.766228, 54.416451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574558, 43.124908, 55.107597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372375, 43.343086, 54.840164>,  <41.251064, 43.473991, 54.679703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372375, 43.343086, 54.840164>,  <41.574558, 43.124908, 55.107597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372375, 43.343086, 54.840164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645375, 0.275319, 0.712524,
		0.572714, 0.791640, 0.212851,
		-0.505461, 0.545441, -0.668583,
		41.220737, 43.506718, 54.639587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367203, 43.729721, 55.482872>,  <41.574558, 43.124908, 55.107597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367203, 43.729721, 55.482872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131622, 43.726379, 55.159622>,  <40.990276, 43.724377, 54.965672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131622, 43.726379, 55.159622>,  <41.367203, 43.729721, 55.482872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131622, 43.726379, 55.159622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788840, 0.223343, 0.572581,
		0.175708, 0.974704, -0.138125,
		-0.588947, -0.008352, -0.808129,
		40.954937, 43.723873, 54.917183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846668, 44.352089, 55.531254>,  <41.367203, 43.729721, 55.482872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846668, 44.352089, 55.531254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657181, 44.109459, 55.275864>,  <40.543488, 43.963879, 55.122627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657181, 44.109459, 55.275864>,  <40.846668, 44.352089, 55.531254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657181, 44.109459, 55.275864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866555, 0.191744, 0.460778,
		-0.157074, 0.771555, -0.616466,
		-0.473719, -0.606578, -0.638477,
		40.515064, 43.927486, 55.084320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126152, 44.620018, 55.315552>,  <40.846668, 44.352089, 55.531254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126152, 44.620018, 55.315552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069561, 44.233360, 55.230156>,  <40.035606, 44.001366, 55.178917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069561, 44.233360, 55.230156>,  <40.126152, 44.620018, 55.315552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069561, 44.233360, 55.230156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934811, 0.059491, 0.350126,
		-0.325748, 0.249107, -0.912049,
		-0.141478, -0.966647, -0.213489,
		40.027119, 43.943367, 55.166111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353622, 44.607910, 55.230541>,  <40.126152, 44.620018, 55.315552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353622, 44.607910, 55.230541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449871, 44.219666, 55.231560>,  <39.507622, 43.986717, 55.232170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449871, 44.219666, 55.231560>,  <39.353622, 44.607910, 55.230541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449871, 44.219666, 55.231560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880439, -0.217165, 0.421504,
		-0.408565, -0.103665, -0.906823,
		0.240626, -0.970615, 0.002545,
		39.522060, 43.928482, 55.232323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.115334, 36.196522, 52.743546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140450, 36.560226, 52.908131>,  <39.155518, 36.778450, 53.006882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140450, 36.560226, 52.908131>,  <39.115334, 36.196522, 52.743546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140450, 36.560226, 52.908131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515817, 0.323378, -0.793322,
		-0.854395, 0.262053, -0.448707,
		0.062790, 0.909261, 0.411464,
		39.159286, 36.833004, 53.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043335, 36.700294, 52.250309>,  <39.115334, 36.196522, 52.743546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043335, 36.700294, 52.250309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213871, 36.940300, 52.521072>,  <39.316193, 37.084305, 52.683533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213871, 36.940300, 52.521072>,  <39.043335, 36.700294, 52.250309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213871, 36.940300, 52.521072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496971, 0.469901, -0.729529,
		-0.755812, 0.647435, -0.097853,
		0.426342, 0.600018, 0.676913,
		39.341774, 37.120304, 52.724148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830425, 37.345974, 52.014858>,  <39.043335, 36.700294, 52.250309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830425, 37.345974, 52.014858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172436, 37.366554, 52.221268>,  <39.377644, 37.378902, 52.345112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172436, 37.366554, 52.221268>,  <38.830425, 37.345974, 52.014858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172436, 37.366554, 52.221268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413817, 0.532011, -0.738729,
		-0.312537, 0.845173, 0.433594,
		0.855030, 0.051451, 0.516020,
		39.428944, 37.381989, 52.376072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052197, 38.047203, 51.978462>,  <38.830425, 37.345974, 52.014858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052197, 38.047203, 51.978462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373436, 37.829590, 52.075668>,  <39.566181, 37.699020, 52.133991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373436, 37.829590, 52.075668>,  <39.052197, 38.047203, 51.978462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373436, 37.829590, 52.075668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519978, 0.440756, -0.731681,
		0.290948, 0.713977, 0.636857,
		0.803102, -0.544033, 0.243014,
		39.614365, 37.666382, 52.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517227, 38.552734, 52.192089>,  <39.052197, 38.047203, 51.978462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517227, 38.552734, 52.192089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736549, 38.228157, 52.111176>,  <39.868141, 38.033409, 52.062626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736549, 38.228157, 52.111176>,  <39.517227, 38.552734, 52.192089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736549, 38.228157, 52.111176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653473, 0.566664, -0.501861,
		0.521860, 0.142985, 0.840962,
		0.548302, -0.811447, -0.202283,
		39.901039, 37.984722, 52.050491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226585, 38.810207, 52.176105>,  <39.517227, 38.552734, 52.192089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226585, 38.810207, 52.176105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289062, 38.463242, 51.987129>,  <40.326550, 38.255062, 51.873741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289062, 38.463242, 51.987129>,  <40.226585, 38.810207, 52.176105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289062, 38.463242, 51.987129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720644, 0.427185, -0.546064,
		0.675482, -0.255173, 0.691817,
		0.156192, -0.867410, -0.472445,
		40.335918, 38.203018, 51.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949848, 38.723667, 52.063446>,  <40.226585, 38.810207, 52.176105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949848, 38.723667, 52.063446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768211, 38.490242, 51.794151>,  <40.659229, 38.350185, 51.632572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.768211, 38.490242, 51.794151>,  <40.949848, 38.723667, 52.063446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768211, 38.490242, 51.794151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763514, 0.134563, -0.631617,
		0.459184, -0.800838, 0.384458,
		-0.454089, -0.583568, -0.673240,
		40.631985, 38.315170, 51.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505486, 38.287842, 51.805283>,  <40.949848, 38.723667, 52.063446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505486, 38.287842, 51.805283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218124, 38.269852, 51.527615>,  <41.045708, 38.259060, 51.361012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.218124, 38.269852, 51.527615>,  <41.505486, 38.287842, 51.805283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218124, 38.269852, 51.527615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692246, 0.052054, -0.719782,
		0.068506, -0.997631, -0.006263,
		-0.718403, -0.044974, -0.694172,
		41.002602, 38.256359, 51.319363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756317, 37.791534, 51.245831>,  <41.505486, 38.287842, 51.805283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756317, 37.791534, 51.245831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470818, 38.015564, 51.077602>,  <41.299519, 38.149982, 50.976665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470818, 38.015564, 51.077602>,  <41.756317, 37.791534, 51.245831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470818, 38.015564, 51.077602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438032, -0.111597, -0.892005,
		-0.546524, -0.820891, -0.165678,
		-0.713750, 0.560075, -0.420567,
		41.256691, 38.183586, 50.951431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617157, 37.436054, 50.680828>,  <41.756317, 37.791534, 51.245831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617157, 37.436054, 50.680828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467499, 37.797928, 50.599274>,  <41.377705, 38.015053, 50.550339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.467499, 37.797928, 50.599274>,  <41.617157, 37.436054, 50.680828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467499, 37.797928, 50.599274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467706, -0.005772, -0.883865,
		-0.800793, -0.426051, -0.420965,
		-0.374142, 0.904681, -0.203889,
		41.355255, 38.069332, 50.538109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489689, 37.409737, 49.951111>,  <41.617157, 37.436054, 50.680828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489689, 37.409737, 49.951111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.528496, 37.796593, 50.045113>,  <41.551781, 38.028706, 50.101513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.528496, 37.796593, 50.045113>,  <41.489689, 37.409737, 49.951111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528496, 37.796593, 50.045113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530947, 0.149428, -0.834126,
		-0.841833, 0.205698, -0.499004,
		0.097014, 0.967140, 0.235008,
		41.557598, 38.086735, 50.115616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265873, 37.741299, 49.412113>,  <41.489689, 37.409737, 49.951111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265873, 37.741299, 49.412113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.469837, 38.039612, 49.583595>,  <41.592216, 38.218601, 49.686485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.469837, 38.039612, 49.583595>,  <41.265873, 37.741299, 49.412113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469837, 38.039612, 49.583595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382334, 0.249952, -0.889576,
		-0.770591, 0.617515, -0.157686,
		0.509913, 0.745787, 0.428708,
		41.622810, 38.263348, 49.712208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245464, 38.242714, 48.955826>,  <41.265873, 37.741299, 49.412113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245464, 38.242714, 48.955826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540871, 38.354340, 49.201332>,  <41.718117, 38.421314, 49.348637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.540871, 38.354340, 49.201332>,  <41.245464, 38.242714, 48.955826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540871, 38.354340, 49.201332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569014, 0.230356, -0.789405,
		-0.361680, 0.932233, 0.011330,
		0.738519, 0.279065, 0.613769,
		41.762428, 38.438061, 49.385464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489674, 38.860332, 48.731224>,  <41.245464, 38.242714, 48.955826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489674, 38.860332, 48.731224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 38.728035, 48.919323>,  <42.013332, 38.648655, 49.032181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 38.728035, 48.919323>,  <41.489674, 38.860332, 48.731224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816959, 38.728035, 48.919323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541533, 0.168755, -0.823568,
		0.193035, 0.928509, 0.317187,
		0.818217, -0.330745, 0.470243,
		42.062424, 38.628811, 49.060394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085857, 39.355515, 49.039764>,  <41.489674, 38.860332, 48.731224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085857, 39.355515, 49.039764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854706, 39.640839, 48.881145>,  <40.716015, 39.812031, 48.785973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854706, 39.640839, 48.881145>,  <41.085857, 39.355515, 49.039764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854706, 39.640839, 48.881145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701451, -0.185742, 0.688089,
		0.417163, 0.675790, 0.607686,
		-0.577877, 0.713307, -0.396549,
		40.681343, 39.854832, 48.762180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767471, 39.729443, 49.653790>,  <41.085857, 39.355515, 49.039764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767471, 39.729443, 49.653790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546661, 39.828331, 49.335255>,  <40.414173, 39.887665, 49.144135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546661, 39.828331, 49.335255>,  <40.767471, 39.729443, 49.653790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546661, 39.828331, 49.335255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804956, 0.091130, 0.586294,
		0.217512, 0.964666, 0.148693,
		-0.552028, 0.247217, -0.796335,
		40.381054, 39.902496, 49.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332432, 40.225601, 49.911385>,  <40.767471, 39.729443, 49.653790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332432, 40.225601, 49.911385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160114, 40.089958, 49.576859>,  <40.056725, 40.008572, 49.376144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.160114, 40.089958, 49.576859>,  <40.332432, 40.225601, 49.911385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160114, 40.089958, 49.576859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851307, -0.154839, 0.501300,
		-0.299488, 0.927918, -0.221979,
		-0.430795, -0.339105, -0.836316,
		40.030876, 39.988228, 49.325962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759216, 40.705006, 49.733322>,  <40.332432, 40.225601, 49.911385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759216, 40.705006, 49.733322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698029, 40.344276, 49.571678>,  <39.661316, 40.127838, 49.474689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.698029, 40.344276, 49.571678>,  <39.759216, 40.705006, 49.733322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698029, 40.344276, 49.571678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917380, -0.022457, 0.397377,
		-0.367441, 0.431513, -0.823883,
		-0.152972, -0.901827, -0.404113,
		39.652138, 40.073727, 49.450443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025772, 40.696869, 49.529213>,  <39.759216, 40.705006, 49.733322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025772, 40.696869, 49.529213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129372, 40.310669, 49.540031>,  <39.191532, 40.078949, 49.546524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129372, 40.310669, 49.540031>,  <39.025772, 40.696869, 49.529213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129372, 40.310669, 49.540031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831419, -0.208605, 0.515002,
		-0.491591, -0.155874, -0.856762,
		0.259000, -0.965498, 0.027048,
		39.207073, 40.021019, 49.548145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419506, 40.417881, 49.460129>,  <39.025772, 40.696869, 49.529213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419506, 40.417881, 49.460129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633560, 40.088036, 49.533508>,  <38.761993, 39.890129, 49.577538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633560, 40.088036, 49.533508>,  <38.419506, 40.417881, 49.460129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633560, 40.088036, 49.533508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796265, -0.419845, 0.435537,
		-0.282127, -0.379144, -0.881280,
		0.535132, -0.824609, 0.183449,
		38.794098, 39.840652, 49.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040714, 39.897846, 49.293159>,  <38.419506, 40.417881, 49.460129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040714, 39.897846, 49.293159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310623, 39.778107, 49.562996>,  <38.472569, 39.706264, 49.724895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310623, 39.778107, 49.562996>,  <38.040714, 39.897846, 49.293159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310623, 39.778107, 49.562996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733233, -0.375890, 0.566636,
		0.083949, -0.876982, -0.473134,
		0.674775, -0.299349, 0.674588,
		38.513054, 39.688301, 49.765373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667450, 39.419109, 49.729507>,  <38.040714, 39.897846, 49.293159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667450, 39.419109, 49.729507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993240, 39.454842, 49.958820>,  <38.188713, 39.476280, 50.096409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993240, 39.454842, 49.958820>,  <37.667450, 39.419109, 49.729507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993240, 39.454842, 49.958820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511783, -0.354863, 0.782400,
		0.273328, -0.930641, -0.243309,
		0.814475, 0.089331, 0.573280,
		38.237583, 39.481640, 50.130806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768948, 38.755501, 50.150581>,  <37.667450, 39.419109, 49.729507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768948, 38.755501, 50.150581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957493, 39.054474, 50.337837>,  <38.070618, 39.233860, 50.450191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957493, 39.054474, 50.337837>,  <37.768948, 38.755501, 50.150581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957493, 39.054474, 50.337837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441080, -0.259871, 0.859020,
		0.763720, -0.611397, 0.207186,
		0.471361, 0.747437, 0.468143,
		38.098900, 39.278706, 50.478279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019863, 38.449436, 50.661289>,  <37.768948, 38.755501, 50.150581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019863, 38.449436, 50.661289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973228, 38.836647, 50.750137>,  <37.945248, 39.068974, 50.803448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973228, 38.836647, 50.750137>,  <38.019863, 38.449436, 50.661289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973228, 38.836647, 50.750137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498578, -0.250468, 0.829871,
		0.858969, -0.013994, 0.511837,
		-0.116585, 0.968024, 0.222121,
		37.938251, 39.127052, 50.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256924, 38.471378, 51.399273>,  <38.019863, 38.449436, 50.661289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256924, 38.471378, 51.399273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040771, 38.796829, 51.313484>,  <37.911079, 38.992100, 51.262012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040771, 38.796829, 51.313484>,  <38.256924, 38.471378, 51.399273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040771, 38.796829, 51.313484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447074, -0.061702, 0.892366,
		0.712824, 0.578098, 0.397096,
		-0.540377, 0.813631, -0.214470,
		37.878658, 39.040920, 51.249142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144077, 38.759941, 51.940296>,  <38.256924, 38.471378, 51.399273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144077, 38.759941, 51.940296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856537, 38.973465, 51.762173>,  <37.684013, 39.101578, 51.655296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.856537, 38.973465, 51.762173>,  <38.144077, 38.759941, 51.940296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856537, 38.973465, 51.762173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561222, -0.067627, 0.824898,
		0.410220, 0.842899, 0.348197,
		-0.718853, 0.533806, -0.445312,
		37.640881, 39.133606, 51.628578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952686, 39.218437, 52.464787>,  <38.144077, 38.759941, 51.940296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952686, 39.218437, 52.464787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634090, 39.186523, 52.225040>,  <37.442932, 39.167374, 52.081192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634090, 39.186523, 52.225040>,  <37.952686, 39.218437, 52.464787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634090, 39.186523, 52.225040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589428, -0.118574, 0.799071,
		-0.134822, 0.989735, 0.047415,
		-0.796490, -0.079785, -0.599364,
		37.395142, 39.162586, 52.045231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367222, 39.711720, 52.621761>,  <37.952686, 39.218437, 52.464787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367222, 39.711720, 52.621761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234718, 39.370369, 52.460754>,  <37.155216, 39.165558, 52.364151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234718, 39.370369, 52.460754>,  <37.367222, 39.711720, 52.621761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234718, 39.370369, 52.460754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549177, -0.172516, 0.817706,
		-0.767248, 0.491929, -0.411505,
		-0.331262, -0.853372, -0.402518,
		37.135338, 39.114357, 52.340000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996635, 40.414135, 52.537689>,  <37.367222, 39.711720, 52.621761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996635, 40.414135, 52.537689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967171, 40.771942, 52.714054>,  <36.949490, 40.986626, 52.819874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967171, 40.771942, 52.714054>,  <36.996635, 40.414135, 52.537689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967171, 40.771942, 52.714054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463853, 0.422116, -0.778883,
		-0.882844, 0.147143, -0.446021,
		-0.073666, 0.894520, 0.440916,
		36.945072, 41.040298, 52.846329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905266, 40.913731, 51.951801>,  <36.996635, 40.414135, 52.537689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905266, 40.913731, 51.951801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048710, 41.112671, 52.267784>,  <37.134777, 41.232037, 52.457375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048710, 41.112671, 52.267784>,  <36.905266, 40.913731, 51.951801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048710, 41.112671, 52.267784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575522, 0.548479, -0.606585,
		-0.734964, 0.672167, -0.089548,
		0.358611, 0.497355, 0.789960,
		37.156292, 41.261879, 52.504772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901279, 41.576614, 51.764683>,  <36.905266, 40.913731, 51.951801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901279, 41.576614, 51.764683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170078, 41.563904, 52.060631>,  <37.331360, 41.556278, 52.238197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170078, 41.563904, 52.060631>,  <36.901279, 41.576614, 51.764683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170078, 41.563904, 52.060631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625828, 0.558505, -0.544437,
		-0.395921, 0.828892, 0.395201,
		0.672001, -0.031774, 0.739868,
		37.371677, 41.554371, 52.282593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079323, 42.232300, 51.882301>,  <36.901279, 41.576614, 51.764683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079323, 42.232300, 51.882301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383957, 42.004570, 52.006142>,  <37.566738, 41.867931, 52.080444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383957, 42.004570, 52.006142>,  <37.079323, 42.232300, 51.882301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383957, 42.004570, 52.006142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643391, 0.606967, -0.466517,
		0.077683, 0.554488, 0.828558,
		0.761586, -0.569327, 0.309602,
		37.612434, 41.833771, 52.099022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555904, 42.766571, 52.159981>,  <37.079323, 42.232300, 51.882301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555904, 42.766571, 52.159981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750671, 42.425285, 52.085213>,  <37.867531, 42.220512, 52.040352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750671, 42.425285, 52.085213>,  <37.555904, 42.766571, 52.159981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750671, 42.425285, 52.085213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694820, 0.508043, -0.509035,
		0.529281, 0.117978, 0.840204,
		0.486915, -0.853213, -0.186924,
		37.896748, 42.169323, 52.029137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243717, 42.912132, 52.235394>,  <37.555904, 42.766571, 52.159981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243717, 42.912132, 52.235394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310226, 42.566505, 52.045341>,  <38.350132, 42.359131, 51.931313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.310226, 42.566505, 52.045341>,  <38.243717, 42.912132, 52.235394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310226, 42.566505, 52.045341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790353, 0.404907, -0.459774,
		0.589656, -0.299068, 0.750242,
		0.166274, -0.864065, -0.475126,
		38.360107, 42.307285, 51.902805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907970, 42.975109, 52.174816>,  <38.243717, 42.912132, 52.235394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907970, 42.975109, 52.174816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831917, 42.667633, 51.930531>,  <38.786285, 42.483147, 51.783958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831917, 42.667633, 51.930531>,  <38.907970, 42.975109, 52.174816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831917, 42.667633, 51.930531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725236, 0.309308, -0.615111,
		0.661726, -0.559864, 0.498669,
		-0.190137, -0.768688, -0.610710,
		38.774876, 42.437027, 51.747318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508362, 42.548450, 52.132309>,  <38.907970, 42.975109, 52.174816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508362, 42.548450, 52.132309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305527, 42.515419, 51.789139>,  <39.183826, 42.495598, 51.583237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.305527, 42.515419, 51.789139>,  <39.508362, 42.548450, 52.132309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305527, 42.515419, 51.789139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782304, 0.373685, -0.498358,
		0.361752, -0.923872, -0.124885,
		-0.507086, -0.082584, -0.857929,
		39.153400, 42.490643, 51.531761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969501, 42.168304, 51.765244>,  <39.508362, 42.548450, 52.132309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969501, 42.168304, 51.765244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.701427, 42.338966, 51.522324>,  <39.540581, 42.441364, 51.376572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.701427, 42.338966, 51.522324>,  <39.969501, 42.168304, 51.765244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701427, 42.338966, 51.522324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735417, 0.271449, -0.620869,
		-0.100049, -0.862715, -0.495693,
		-0.670188, 0.426659, -0.607297,
		39.500370, 42.466965, 51.340134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213943, 42.017281, 51.129894>,  <39.969501, 42.168304, 51.765244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213943, 42.017281, 51.129894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973427, 42.322578, 51.035320>,  <39.829117, 42.505756, 50.978577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973427, 42.322578, 51.035320>,  <40.213943, 42.017281, 51.129894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973427, 42.322578, 51.035320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679888, 0.333268, -0.653211,
		-0.419764, -0.553522, -0.719313,
		-0.601291, 0.763247, -0.236439,
		39.793041, 42.551552, 50.964390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134418, 42.038097, 50.371628>,  <40.213943, 42.017281, 51.129894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134418, 42.038097, 50.371628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077084, 42.405838, 50.518185>,  <40.042683, 42.626484, 50.606117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077084, 42.405838, 50.518185>,  <40.134418, 42.038097, 50.371628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077084, 42.405838, 50.518185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543073, 0.382561, -0.747475,
		-0.827362, 0.091840, -0.554110,
		-0.143333, 0.919355, 0.366392,
		40.034084, 42.681644, 50.628101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048107, 42.400696, 49.782284>,  <40.134418, 42.038097, 50.371628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048107, 42.400696, 49.782284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122009, 42.662598, 50.075451>,  <40.166351, 42.819740, 50.251350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122009, 42.662598, 50.075451>,  <40.048107, 42.400696, 49.782284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122009, 42.662598, 50.075451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626474, 0.496138, -0.601147,
		-0.757230, 0.570215, -0.318524,
		0.184751, 0.654754, 0.732915,
		40.177433, 42.859024, 50.295326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013275, 42.993324, 49.486023>,  <40.048107, 42.400696, 49.782284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013275, 42.993324, 49.486023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209023, 43.062576, 49.827911>,  <40.326469, 43.104126, 50.033043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209023, 43.062576, 49.827911>,  <40.013275, 42.993324, 49.486023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209023, 43.062576, 49.827911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643029, 0.590429, -0.487758,
		-0.589096, 0.788302, 0.177611,
		0.489367, 0.173127, 0.854720,
		40.355831, 43.114513, 50.084328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273258, 43.727814, 49.384686>,  <40.013275, 42.993324, 49.486023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273258, 43.727814, 49.384686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484367, 43.544724, 49.670887>,  <40.611034, 43.434868, 49.842609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.484367, 43.544724, 49.670887>,  <40.273258, 43.727814, 49.384686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484367, 43.544724, 49.670887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843902, 0.378146, -0.380573,
		-0.096366, 0.804670, 0.585850,
		0.527772, -0.457725, 0.715502,
		40.642700, 43.407406, 49.885536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.748352, 44.236374, 55.042519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944515, 43.952690, 55.245110>,  <39.062214, 43.782478, 55.366665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944515, 43.952690, 55.245110>,  <38.748352, 44.236374, 55.042519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944515, 43.952690, 55.245110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841814, -0.235120, 0.485868,
		-0.225499, -0.664635, -0.712327,
		0.490408, -0.709210, 0.506480,
		39.091637, 43.739925, 55.397053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309151, 43.600155, 55.116680>,  <38.748352, 44.236374, 55.042519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309151, 43.600155, 55.116680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577377, 43.516647, 55.401428>,  <38.738312, 43.466545, 55.572277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.577377, 43.516647, 55.401428>,  <38.309151, 43.600155, 55.116680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577377, 43.516647, 55.401428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729960, -0.356799, 0.582969,
		0.132290, -0.910555, -0.391648,
		0.670565, -0.208767, 0.711870,
		38.778545, 43.454018, 55.614990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172970, 42.886993, 55.370945>,  <38.309151, 43.600155, 55.116680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172970, 42.886993, 55.370945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374397, 43.053345, 55.673855>,  <38.495255, 43.153156, 55.855602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374397, 43.053345, 55.673855>,  <38.172970, 42.886993, 55.370945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374397, 43.053345, 55.673855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700744, -0.316093, 0.639565,
		0.505351, -0.852719, 0.132251,
		0.503566, 0.415879, 0.757275,
		38.525467, 43.178108, 55.901039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256565, 42.413231, 55.847103>,  <38.172970, 42.886993, 55.370945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256565, 42.413231, 55.847103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324417, 42.729446, 56.082481>,  <38.365128, 42.919174, 56.223709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324417, 42.729446, 56.082481>,  <38.256565, 42.413231, 55.847103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324417, 42.729446, 56.082481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506253, -0.442397, 0.740266,
		0.845537, -0.423476, 0.325169,
		0.169631, 0.790540, 0.588449,
		38.375305, 42.966610, 56.259014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491463, 42.188828, 56.477436>,  <38.256565, 42.413231, 55.847103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491463, 42.188828, 56.477436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318817, 42.544197, 56.539940>,  <38.215229, 42.757420, 56.577442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.318817, 42.544197, 56.539940>,  <38.491463, 42.188828, 56.477436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318817, 42.544197, 56.539940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447037, -0.361120, 0.818382,
		0.783499, 0.283367, 0.553021,
		-0.431610, 0.888423, 0.156262,
		38.189335, 42.810722, 56.586819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563766, 42.362766, 57.234074>,  <38.491463, 42.188828, 56.477436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563766, 42.362766, 57.234074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268452, 42.595688, 57.097923>,  <38.091263, 42.735439, 57.016232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268452, 42.595688, 57.097923>,  <38.563766, 42.362766, 57.234074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268452, 42.595688, 57.097923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512877, -0.156912, 0.844000,
		0.438053, 0.797686, 0.414495,
		-0.738286, 0.582301, -0.340379,
		38.046967, 42.770378, 56.995808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271271, 42.744560, 57.827328>,  <38.563766, 42.362766, 57.234074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271271, 42.744560, 57.827328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988049, 42.758858, 57.545227>,  <37.818115, 42.767437, 57.375965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988049, 42.758858, 57.545227>,  <38.271271, 42.744560, 57.827328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988049, 42.758858, 57.545227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695423, -0.208776, 0.687604,
		-0.122665, 0.977310, 0.172678,
		-0.708054, 0.035739, -0.705253,
		37.775631, 42.769581, 57.333652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683128, 43.092480, 58.115490>,  <38.271271, 42.744560, 57.827328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683128, 43.092480, 58.115490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501396, 42.925797, 57.800545>,  <37.392357, 42.825787, 57.611576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.501396, 42.925797, 57.800545>,  <37.683128, 43.092480, 58.115490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501396, 42.925797, 57.800545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720150, -0.348463, 0.599964,
		-0.524376, 0.839601, -0.141774,
		-0.454327, -0.416705, -0.787365,
		37.365097, 42.800785, 57.564335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998405, 43.246696, 58.172054>,  <37.683128, 43.092480, 58.115490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998405, 43.246696, 58.172054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016418, 42.934402, 57.922760>,  <37.027225, 42.747025, 57.773186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.016418, 42.934402, 57.922760>,  <36.998405, 43.246696, 58.172054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016418, 42.934402, 57.922760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754333, -0.435586, 0.491168,
		-0.654945, 0.448008, -0.608552,
		0.045030, -0.780739, -0.623232,
		37.029926, 42.700180, 57.735790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252567, 43.133129, 58.062820>,  <36.998405, 43.246696, 58.172054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252567, 43.133129, 58.062820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437710, 42.795448, 57.954681>,  <36.548798, 42.592838, 57.889797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.437710, 42.795448, 57.954681>,  <36.252567, 43.133129, 58.062820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437710, 42.795448, 57.954681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794014, -0.530437, 0.296949,
		-0.394085, 0.077211, -0.915825,
		0.462860, -0.844201, -0.270344,
		36.576569, 42.542187, 57.873577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802212, 42.691803, 57.711620>,  <36.252567, 43.133129, 58.062820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802212, 42.691803, 57.711620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092766, 42.455498, 57.852112>,  <36.267097, 42.313713, 57.936405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092766, 42.455498, 57.852112>,  <35.802212, 42.691803, 57.711620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092766, 42.455498, 57.852112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677512, -0.701375, 0.221473,
		0.115504, -0.398836, -0.909719,
		0.726386, -0.590764, 0.351228,
		36.310680, 42.278267, 57.957481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556202, 42.061905, 57.567482>,  <35.802212, 42.691803, 57.711620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556202, 42.061905, 57.567482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.849495, 42.016357, 57.835632>,  <36.025471, 41.989029, 57.996521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.849495, 42.016357, 57.835632>,  <35.556202, 42.061905, 57.567482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849495, 42.016357, 57.835632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621335, -0.512714, 0.592509,
		0.276242, -0.850975, -0.446690,
		0.733235, -0.113869, 0.670374,
		36.069466, 41.982197, 58.036743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615231, 41.346272, 57.811775>,  <35.556202, 42.061905, 57.567482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615231, 41.346272, 57.811775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766171, 41.576721, 58.101791>,  <35.856735, 41.714993, 58.275803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766171, 41.576721, 58.101791>,  <35.615231, 41.346272, 57.811775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766171, 41.576721, 58.101791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455103, -0.566492, 0.686999,
		0.806530, -0.589206, 0.048434,
		0.377347, 0.576128, 0.725042,
		35.879375, 41.749561, 58.319305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680378, 40.899548, 58.335518>,  <35.615231, 41.346272, 57.811775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680378, 40.899548, 58.335518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673019, 41.266396, 58.494793>,  <35.668606, 41.486504, 58.590359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673019, 41.266396, 58.494793>,  <35.680378, 40.899548, 58.335518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673019, 41.266396, 58.494793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530286, -0.346579, 0.773744,
		0.847619, -0.196923, 0.492710,
		-0.018395, 0.917117, 0.398192,
		35.667500, 41.541531, 58.614250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928936, 40.763439, 58.119160>,  <35.680378, 40.899548, 58.335518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928936, 40.763439, 58.119160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643635, 40.520241, 57.979664>,  <34.472454, 40.374321, 57.895966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.643635, 40.520241, 57.979664>,  <34.928936, 40.763439, 58.119160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643635, 40.520241, 57.979664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224233, 0.273466, -0.935380,
		0.664072, -0.745359, -0.058718,
		-0.713251, -0.607993, -0.348735,
		34.429661, 40.337841, 57.875042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359741, 40.381706, 57.755367>,  <34.928936, 40.763439, 58.119160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359741, 40.381706, 57.755367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979774, 40.398575, 57.631516>,  <34.751793, 40.408695, 57.557205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979774, 40.398575, 57.631516>,  <35.359741, 40.381706, 57.755367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979774, 40.398575, 57.631516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309724, 0.258587, -0.914988,
		0.041478, -0.965067, -0.258700,
		-0.949921, 0.042173, -0.309630,
		34.694798, 40.411228, 57.538628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317360, 39.921474, 57.233807>,  <35.359741, 40.381706, 57.755367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317360, 39.921474, 57.233807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015175, 40.173378, 57.161488>,  <34.833866, 40.324520, 57.118095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015175, 40.173378, 57.161488>,  <35.317360, 39.921474, 57.233807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015175, 40.173378, 57.161488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327992, 0.124628, -0.936424,
		-0.567189, -0.766728, -0.300707,
		-0.755458, 0.629759, -0.180793,
		34.788536, 40.362305, 57.107250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167023, 39.694218, 56.625046>,  <35.317360, 39.921474, 57.233807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167023, 39.694218, 56.625046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 40.057762, 56.647480>,  <34.902504, 40.275890, 56.660942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001698, 40.057762, 56.647480>,  <35.167023, 39.694218, 56.625046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001698, 40.057762, 56.647480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285882, 0.187993, -0.939644,
		-0.864548, -0.372334, -0.337527,
		-0.413314, 0.908860, 0.056086,
		34.877705, 40.330421, 56.664307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856007, 39.701065, 56.046864>,  <35.167023, 39.694218, 56.625046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856007, 39.701065, 56.046864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911415, 40.080803, 56.159691>,  <34.944660, 40.308643, 56.227386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911415, 40.080803, 56.159691>,  <34.856007, 39.701065, 56.046864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911415, 40.080803, 56.159691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501118, 0.178478, -0.846774,
		-0.854220, 0.258647, -0.451009,
		0.138520, 0.949341, 0.282072,
		34.952972, 40.365604, 56.244312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699303, 40.079079, 55.488110>,  <34.856007, 39.701065, 56.046864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699303, 40.079079, 55.488110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915749, 40.330849, 55.711185>,  <35.045616, 40.481911, 55.845032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915749, 40.330849, 55.711185>,  <34.699303, 40.079079, 55.488110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915749, 40.330849, 55.711185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524408, 0.265866, -0.808895,
		-0.657409, 0.730163, -0.186211,
		0.541118, 0.629426, 0.557687,
		35.078083, 40.519676, 55.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701542, 40.794697, 55.104103>,  <34.699303, 40.079079, 55.488110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701542, 40.794697, 55.104103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010109, 40.793404, 55.358635>,  <35.195248, 40.792625, 55.511353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010109, 40.793404, 55.358635>,  <34.701542, 40.794697, 55.104103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010109, 40.793404, 55.358635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580370, 0.413650, -0.701473,
		-0.260945, 0.910430, 0.320974,
		0.771414, -0.003238, 0.636326,
		35.241531, 40.792431, 55.549534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048164, 41.437496, 54.980659>,  <34.701542, 40.794697, 55.104103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048164, 41.437496, 54.980659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329342, 41.208351, 55.149273>,  <35.498051, 41.070862, 55.250439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.329342, 41.208351, 55.149273>,  <35.048164, 41.437496, 54.980659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329342, 41.208351, 55.149273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670716, 0.336725, -0.660875,
		0.236653, 0.747288, 0.620931,
		0.702947, -0.572867, 0.421531,
		35.540226, 41.036491, 55.275734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656513, 41.827782, 55.123524>,  <35.048164, 41.437496, 54.980659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656513, 41.827782, 55.123524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781242, 41.447792, 55.116409>,  <35.856079, 41.219799, 55.112141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781242, 41.447792, 55.116409>,  <35.656513, 41.827782, 55.123524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781242, 41.447792, 55.116409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628451, 0.220252, -0.746015,
		0.712610, 0.221453, 0.665692,
		0.311827, -0.949973, -0.017781,
		35.874790, 41.162800, 55.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311573, 41.883076, 54.978695>,  <35.656513, 41.827782, 55.123524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311573, 41.883076, 54.978695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252724, 41.491547, 54.921753>,  <36.217415, 41.256630, 54.887589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252724, 41.491547, 54.921753>,  <36.311573, 41.883076, 54.978695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252724, 41.491547, 54.921753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632716, 0.017489, -0.774187,
		0.760280, -0.203968, 0.616742,
		-0.147123, -0.978821, -0.142350,
		36.208588, 41.197899, 54.879047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962528, 41.622749, 54.843906>,  <36.311573, 41.883076, 54.978695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962528, 41.622749, 54.843906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726643, 41.335823, 54.695473>,  <36.585114, 41.163666, 54.606415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726643, 41.335823, 54.695473>,  <36.962528, 41.622749, 54.843906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726643, 41.335823, 54.695473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539082, -0.007489, -0.842220,
		0.601358, -0.696709, 0.391108,
		-0.589711, -0.717315, -0.371080,
		36.549728, 41.120628, 54.584148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402683, 41.108047, 54.411324>,  <36.962528, 41.622749, 54.843906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402683, 41.108047, 54.411324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030731, 41.068916, 54.269478>,  <36.807560, 41.045437, 54.184368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030731, 41.068916, 54.269478>,  <37.402683, 41.108047, 54.411324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030731, 41.068916, 54.269478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353641, 0.027728, -0.934970,
		0.101296, -0.994817, 0.008811,
		-0.929880, -0.097824, -0.354617,
		36.751766, 41.039570, 54.163094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433399, 40.571930, 53.866573>,  <37.402683, 41.108047, 54.411324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433399, 40.571930, 53.866573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083679, 40.743538, 53.775761>,  <36.873848, 40.846504, 53.721275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083679, 40.743538, 53.775761>,  <37.433399, 40.571930, 53.866573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083679, 40.743538, 53.775761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322388, 0.163601, -0.932363,
		-0.362864, -0.888354, -0.281349,
		-0.874297, 0.429025, -0.227030,
		36.821388, 40.872246, 53.707653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168198, 40.247227, 53.234253>,  <37.433399, 40.571930, 53.866573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168198, 40.247227, 53.234253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989079, 40.604416, 53.252499>,  <36.881607, 40.818729, 53.263447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.989079, 40.604416, 53.252499>,  <37.168198, 40.247227, 53.234253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989079, 40.604416, 53.252499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479891, 0.283069, -0.830408,
		-0.754441, -0.349965, -0.555286,
		-0.447798, 0.892971, 0.045614,
		36.854740, 40.872307, 53.266182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729897, 39.732567, 52.983192>,  <37.168198, 40.247227, 53.234253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729897, 39.732567, 52.983192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.729828, 39.390968, 52.775082>,  <36.729786, 39.186008, 52.650215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.729828, 39.390968, 52.775082>,  <36.729897, 39.732567, 52.983192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729828, 39.390968, 52.775082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669476, -0.386385, 0.634436,
		-0.742834, 0.348420, -0.571666,
		-0.000167, -0.853997, -0.520278,
		36.729778, 39.134769, 52.618999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072826, 39.583599, 52.662384>,  <36.729897, 39.732567, 52.983192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072826, 39.583599, 52.662384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275742, 39.241844, 52.707413>,  <36.397491, 39.036789, 52.734432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275742, 39.241844, 52.707413>,  <36.072826, 39.583599, 52.662384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275742, 39.241844, 52.707413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663950, -0.304210, 0.683101,
		-0.549389, -0.421273, -0.721596,
		0.507288, -0.854392, 0.112574,
		36.427929, 38.985527, 52.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590435, 39.129517, 52.827972>,  <36.072826, 39.583599, 52.662384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590435, 39.129517, 52.827972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914368, 38.914429, 52.921799>,  <36.108727, 38.785374, 52.978096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.914368, 38.914429, 52.921799>,  <35.590435, 39.129517, 52.827972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914368, 38.914429, 52.921799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485710, -0.390306, 0.782142,
		-0.329020, -0.747340, -0.577260,
		0.809834, -0.537721, 0.234572,
		36.157318, 38.753113, 52.992168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344940, 38.447952, 52.938221>,  <35.590435, 39.129517, 52.827972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344940, 38.447952, 52.938221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687050, 38.480606, 53.142906>,  <35.892315, 38.500198, 53.265717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.687050, 38.480606, 53.142906>,  <35.344940, 38.447952, 52.938221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687050, 38.480606, 53.142906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454455, -0.356283, 0.816415,
		0.248958, -0.930806, -0.267621,
		0.855272, 0.081631, 0.511709,
		35.943630, 38.505096, 53.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485634, 37.747536, 53.180855>,  <35.344940, 38.447952, 52.938221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485634, 37.747536, 53.180855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705696, 37.994629, 53.405617>,  <35.837734, 38.142883, 53.540474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705696, 37.994629, 53.405617>,  <35.485634, 37.747536, 53.180855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705696, 37.994629, 53.405617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433369, -0.363981, 0.824445,
		0.713810, -0.697083, 0.067461,
		0.550152, 0.617733, 0.561907,
		35.870743, 38.179947, 53.574188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856712, 37.318928, 53.670643>,  <35.485634, 37.747536, 53.180855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856712, 37.318928, 53.670643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799248, 37.691727, 53.803749>,  <35.764767, 37.915405, 53.883614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799248, 37.691727, 53.803749>,  <35.856712, 37.318928, 53.670643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799248, 37.691727, 53.803749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392237, -0.362343, 0.845492,
		0.908576, -0.009057, 0.417621,
		-0.143664, 0.932001, 0.332769,
		35.756149, 37.971329, 53.903580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219379, 37.285995, 54.350338>,  <35.856712, 37.318928, 53.670643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219379, 37.285995, 54.350338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998009, 37.618645, 54.368755>,  <35.865189, 37.818233, 54.379807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998009, 37.618645, 54.368755>,  <36.219379, 37.285995, 54.350338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998009, 37.618645, 54.368755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406596, -0.317995, 0.856481,
		0.726912, 0.455277, 0.514122,
		-0.553424, 0.831626, 0.046041,
		35.831982, 37.868134, 54.382568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895168, 37.408329, 54.743114>,  <36.219379, 37.285995, 54.350338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895168, 37.408329, 54.743114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122223, 37.157814, 54.956863>,  <37.258453, 37.007507, 55.085114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122223, 37.157814, 54.956863>,  <36.895168, 37.408329, 54.743114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122223, 37.157814, 54.956863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771845, 0.179002, -0.610093,
		0.286438, 0.758766, 0.585003,
		0.567635, -0.626285, 0.534376,
		37.292515, 36.969929, 55.117176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557457, 37.680473, 54.715366>,  <36.895168, 37.408329, 54.743114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557457, 37.680473, 54.715366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618378, 37.305305, 54.840019>,  <37.654930, 37.080204, 54.914810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.618378, 37.305305, 54.840019>,  <37.557457, 37.680473, 54.715366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618378, 37.305305, 54.840019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679937, -0.129405, -0.721762,
		0.717280, 0.321818, 0.618016,
		0.152301, -0.937917, 0.311636,
		37.664066, 37.023930, 54.933510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206081, 37.665882, 55.017704>,  <37.557457, 37.680473, 54.715366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206081, 37.665882, 55.017704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105827, 37.313408, 54.857357>,  <38.045677, 37.101921, 54.761150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.105827, 37.313408, 54.857357>,  <38.206081, 37.665882, 55.017704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105827, 37.313408, 54.857357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790020, 0.053148, -0.610774,
		0.559511, -0.469770, 0.682835,
		-0.250632, -0.881188, -0.400864,
		38.030636, 37.049053, 54.737099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812923, 37.347992, 54.878212>,  <38.206081, 37.665882, 55.017704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812923, 37.347992, 54.878212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572212, 37.102623, 54.673630>,  <38.427784, 36.955402, 54.550880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.572212, 37.102623, 54.673630>,  <38.812923, 37.347992, 54.878212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572212, 37.102623, 54.673630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741616, -0.191500, -0.642910,
		0.296429, -0.766189, 0.570161,
		-0.601777, -0.613418, -0.511452,
		38.391678, 36.918598, 54.520195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310207, 36.841419, 54.611374>,  <38.812923, 37.347992, 54.878212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310207, 36.841419, 54.611374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984184, 36.843483, 54.379631>,  <38.788570, 36.844723, 54.240585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984184, 36.843483, 54.379631>,  <39.310207, 36.841419, 54.611374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984184, 36.843483, 54.379631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576543, -0.091551, -0.811921,
		-0.057224, -0.995787, 0.071649,
		-0.815060, 0.005153, -0.579353,
		38.739666, 36.845032, 54.205826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498795, 36.420448, 54.140770>,  <39.310207, 36.841419, 54.611374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498795, 36.420448, 54.140770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179794, 36.591423, 53.970455>,  <38.988396, 36.694008, 53.868267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179794, 36.591423, 53.970455>,  <39.498795, 36.420448, 54.140770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179794, 36.591423, 53.970455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500076, 0.073493, -0.862858,
		-0.337523, -0.901054, -0.272360,
		-0.797498, 0.427435, -0.425790,
		38.940544, 36.719654, 53.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397362, 36.131847, 53.417763>,  <39.498795, 36.420448, 54.140770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397362, 36.131847, 53.417763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231026, 36.495621, 53.418564>,  <39.131226, 36.713886, 53.419044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.231026, 36.495621, 53.418564>,  <39.397362, 36.131847, 53.417763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231026, 36.495621, 53.418564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442919, 0.204448, -0.872940,
		-0.794295, -0.362111, -0.487824,
		-0.415836, 0.909438, 0.002007,
		39.106274, 36.768452, 53.419167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.468071, 39.945782, 59.804184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308891, 40.242744, 59.588604>,  <38.213383, 40.420921, 59.459255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308891, 40.242744, 59.588604>,  <38.468071, 39.945782, 59.804184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308891, 40.242744, 59.588604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640147, -0.196103, -0.742803,
		-0.657153, -0.640603, -0.397212,
		-0.397948, 0.742409, -0.538949,
		38.189507, 40.465466, 59.426918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325703, 39.726490, 59.084042>,  <38.468071, 39.945782, 59.804184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325703, 39.726490, 59.084042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376335, 40.122635, 59.061562>,  <38.406715, 40.360321, 59.048073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376335, 40.122635, 59.061562>,  <38.325703, 39.726490, 59.084042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376335, 40.122635, 59.061562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613782, -0.122709, -0.779881,
		-0.779261, 0.064221, -0.623400,
		0.126582, 0.990363, -0.056204,
		38.414310, 40.419743, 59.044701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234097, 39.887527, 58.334068>,  <38.325703, 39.726490, 59.084042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234097, 39.887527, 58.334068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434853, 40.187569, 58.506325>,  <38.555305, 40.367596, 58.609676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434853, 40.187569, 58.506325>,  <38.234097, 39.887527, 58.334068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434853, 40.187569, 58.506325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684316, -0.039864, -0.728095,
		-0.528982, 0.660115, -0.533317,
		0.501887, 0.750106, 0.430640,
		38.585419, 40.412601, 58.635517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461479, 40.265461, 57.733662>,  <38.234097, 39.887527, 58.334068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461479, 40.265461, 57.733662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.683891, 40.420410, 58.027813>,  <38.817337, 40.513378, 58.204304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.683891, 40.420410, 58.027813>,  <38.461479, 40.265461, 57.733662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683891, 40.420410, 58.027813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750444, 0.146362, -0.644524,
		-0.357301, 0.910232, -0.209318,
		0.556030, 0.387371, 0.735374,
		38.850700, 40.536621, 58.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694691, 40.933529, 57.632328>,  <38.461479, 40.265461, 57.733662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694691, 40.933529, 57.632328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963318, 40.775330, 57.882950>,  <39.124496, 40.680412, 58.033325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963318, 40.775330, 57.882950>,  <38.694691, 40.933529, 57.632328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963318, 40.775330, 57.882950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726566, 0.185755, -0.661511,
		0.145238, 0.899488, 0.412101,
		0.671571, -0.395495, 0.626559,
		39.164787, 40.656681, 58.070919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303493, 41.408295, 57.643051>,  <38.694691, 40.933529, 57.632328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303493, 41.408295, 57.643051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451004, 41.057541, 57.766392>,  <39.539509, 40.847088, 57.840397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.451004, 41.057541, 57.766392>,  <39.303493, 41.408295, 57.643051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451004, 41.057541, 57.766392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822633, 0.153439, -0.547477,
		0.432760, 0.455557, 0.777937,
		0.368773, -0.876883, 0.308354,
		39.561638, 40.794476, 57.858898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958046, 41.527138, 57.486313>,  <39.303493, 41.408295, 57.643051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958046, 41.527138, 57.486313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981033, 41.146240, 57.606262>,  <39.994823, 40.917702, 57.678230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981033, 41.146240, 57.606262>,  <39.958046, 41.527138, 57.486313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981033, 41.146240, 57.606262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886351, -0.089563, -0.454268,
		0.459433, 0.291896, 0.838879,
		0.057466, -0.952247, 0.299871,
		39.998272, 40.860565, 57.696224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653038, 41.454990, 57.732075>,  <39.958046, 41.527138, 57.486313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653038, 41.454990, 57.732075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.522057, 41.089386, 57.636284>,  <40.443466, 40.870022, 57.578808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.522057, 41.089386, 57.636284>,  <40.653038, 41.454990, 57.732075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522057, 41.089386, 57.636284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893803, -0.217452, -0.392213,
		0.306413, -0.342478, 0.888155,
		-0.327455, -0.914015, -0.239478,
		40.423820, 40.815182, 57.564442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168583, 41.079395, 57.889156>,  <40.653038, 41.454990, 57.732075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168583, 41.079395, 57.889156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975349, 40.856285, 57.619186>,  <40.859409, 40.722420, 57.457203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.975349, 40.856285, 57.619186>,  <41.168583, 41.079395, 57.889156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975349, 40.856285, 57.619186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862547, -0.170676, -0.476321,
		0.150486, -0.812255, 0.563556,
		-0.483080, -0.557774, -0.674924,
		40.830425, 40.688953, 57.416710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563313, 40.359509, 57.781612>,  <41.168583, 41.079395, 57.889156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563313, 40.359509, 57.781612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.323193, 40.428123, 57.469147>,  <41.179119, 40.469292, 57.281666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.323193, 40.428123, 57.469147>,  <41.563313, 40.359509, 57.781612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323193, 40.428123, 57.469147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726503, -0.291449, -0.622295,
		-0.334414, -0.941081, 0.050336,
		-0.600300, 0.171535, -0.781163,
		41.143101, 40.479584, 57.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554077, 39.720066, 57.317703>,  <41.563313, 40.359509, 57.781612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554077, 39.720066, 57.317703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438316, 40.028915, 57.091404>,  <41.368858, 40.214226, 56.955624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.438316, 40.028915, 57.091404>,  <41.554077, 39.720066, 57.317703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438316, 40.028915, 57.091404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748069, -0.186303, -0.636933,
		-0.597191, -0.607551, -0.523684,
		-0.289405, 0.772123, -0.565748,
		41.351494, 40.260551, 56.921680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716381, 39.453899, 56.605549>,  <41.554077, 39.720066, 57.317703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716381, 39.453899, 56.605549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662292, 39.849274, 56.578068>,  <41.629841, 40.086498, 56.561581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.662292, 39.849274, 56.578068>,  <41.716381, 39.453899, 56.605549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662292, 39.849274, 56.578068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819406, 0.072576, -0.568600,
		-0.557036, -0.133176, -0.819741,
		-0.135217, 0.988431, -0.068698,
		41.621727, 40.145802, 56.557457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224419, 39.050179, 56.200253>,  <41.716381, 39.453899, 56.605549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224419, 39.050179, 56.200253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102051, 38.788918, 55.923180>,  <41.028629, 38.632160, 55.756935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102051, 38.788918, 55.923180>,  <41.224419, 39.050179, 56.200253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102051, 38.788918, 55.923180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608384, -0.425521, 0.669926,
		-0.732313, 0.626360, -0.267192,
		-0.305919, -0.653151, -0.692682,
		41.010277, 38.592972, 55.715374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509281, 39.147388, 56.107510>,  <41.224419, 39.050179, 56.200253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509281, 39.147388, 56.107510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.570652, 38.782394, 55.955807>,  <40.607475, 38.563400, 55.864784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.570652, 38.782394, 55.955807>,  <40.509281, 39.147388, 56.107510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570652, 38.782394, 55.955807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724047, -0.364998, 0.585263,
		-0.672470, 0.184805, -0.716681,
		0.153427, -0.912482, -0.379258,
		40.616680, 38.508648, 55.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876472, 38.852283, 56.119942>,  <40.509281, 39.147388, 56.107510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876472, 38.852283, 56.119942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101501, 38.526505, 56.063099>,  <40.236519, 38.331039, 56.028996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101501, 38.526505, 56.063099>,  <39.876472, 38.852283, 56.119942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101501, 38.526505, 56.063099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698124, -0.560050, 0.446057,
		-0.442872, -0.151735, -0.883652,
		0.562572, -0.814445, -0.142101,
		40.270271, 38.282169, 56.020470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464050, 38.272060, 55.812401>,  <39.876472, 38.852283, 56.119942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464050, 38.272060, 55.812401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762947, 38.120796, 56.030991>,  <39.942284, 38.030037, 56.162144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.762947, 38.120796, 56.030991>,  <39.464050, 38.272060, 55.812401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762947, 38.120796, 56.030991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655155, -0.557007, 0.510406,
		0.111375, -0.739419, -0.663969,
		0.747240, -0.378156, 0.546471,
		39.987118, 38.007351, 56.194931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287842, 37.620308, 55.815010>,  <39.464050, 38.272060, 55.812401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287842, 37.620308, 55.815010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546379, 37.672371, 56.115757>,  <39.701500, 37.703609, 56.296204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.546379, 37.672371, 56.115757>,  <39.287842, 37.620308, 55.815010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546379, 37.672371, 56.115757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497684, -0.675003, 0.544685,
		0.578405, -0.726244, -0.371507,
		0.646342, 0.130156, 0.751865,
		39.740280, 37.711418, 56.341316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474430, 36.965115, 56.065838>,  <39.287842, 37.620308, 55.815010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474430, 36.965115, 56.065838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578346, 37.219307, 56.356674>,  <39.640697, 37.371822, 56.531178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578346, 37.219307, 56.356674>,  <39.474430, 36.965115, 56.065838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578346, 37.219307, 56.356674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487778, -0.563472, 0.666762,
		0.833414, -0.527882, 0.163588,
		0.259795, 0.635484, 0.727095,
		39.656284, 37.409950, 56.574802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697704, 36.514057, 56.543613>,  <39.474430, 36.965115, 56.065838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697704, 36.514057, 56.543613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.614487, 36.860222, 56.725945>,  <39.564556, 37.067921, 56.835342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.614487, 36.860222, 56.725945>,  <39.697704, 36.514057, 56.543613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614487, 36.860222, 56.725945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597776, -0.481361, 0.641058,
		0.774197, -0.139114, 0.617467,
		-0.208045, 0.865412, 0.455828,
		39.552074, 37.119846, 56.862694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894562, 36.353653, 57.252705>,  <39.697704, 36.514057, 56.543613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894562, 36.353653, 57.252705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643387, 36.662819, 57.289135>,  <39.492683, 36.848320, 57.310993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.643387, 36.662819, 57.289135>,  <39.894562, 36.353653, 57.252705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643387, 36.662819, 57.289135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503464, -0.492660, 0.709796,
		0.593483, 0.399853, 0.698495,
		-0.627934, 0.772919, 0.091074,
		39.455006, 36.894695, 57.316456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828358, 36.446751, 57.919228>,  <39.894562, 36.353653, 57.252705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828358, 36.446751, 57.919228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515144, 36.625328, 57.745998>,  <39.327217, 36.732475, 57.642063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515144, 36.625328, 57.745998>,  <39.828358, 36.446751, 57.919228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515144, 36.625328, 57.745998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592602, -0.324021, 0.737450,
		0.188906, 0.834085, 0.518282,
		-0.783031, 0.446444, -0.433071,
		39.280235, 36.759262, 57.616077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492535, 36.795586, 58.494614>,  <39.828358, 36.446751, 57.919228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492535, 36.795586, 58.494614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.214573, 36.768532, 58.208248>,  <39.047794, 36.752300, 58.036430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.214573, 36.768532, 58.208248>,  <39.492535, 36.795586, 58.494614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214573, 36.768532, 58.208248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692965, -0.202991, 0.691805,
		-0.192113, 0.976842, 0.094191,
		-0.694904, -0.067633, -0.715915,
		39.006104, 36.748241, 57.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974957, 37.152313, 58.775574>,  <39.492535, 36.795586, 58.494614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974957, 37.152313, 58.775574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789154, 36.929512, 58.500191>,  <38.677673, 36.795830, 58.334961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.789154, 36.929512, 58.500191>,  <38.974957, 37.152313, 58.775574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789154, 36.929512, 58.500191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640791, -0.325186, 0.695443,
		-0.611243, 0.764197, -0.205873,
		-0.464509, -0.557006, -0.688459,
		38.649803, 36.762409, 58.293652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227543, 37.352570, 58.746445>,  <38.974957, 37.152313, 58.775574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227543, 37.352570, 58.746445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183144, 37.009468, 58.545670>,  <38.156502, 36.803608, 58.425205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183144, 37.009468, 58.545670>,  <38.227543, 37.352570, 58.746445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183144, 37.009468, 58.545670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841284, -0.187777, 0.506934,
		-0.529075, 0.478544, -0.700768,
		-0.111002, -0.857750, -0.501939,
		38.149841, 36.752144, 58.395088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614681, 37.324654, 58.319630>,  <38.227543, 37.352570, 58.746445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614681, 37.324654, 58.319630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666122, 36.930359, 58.363045>,  <37.696987, 36.693783, 58.389095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.666122, 36.930359, 58.363045>,  <37.614681, 37.324654, 58.319630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666122, 36.930359, 58.363045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966847, -0.100282, 0.234843,
		-0.220609, -0.135139, -0.965955,
		0.128604, -0.985739, 0.108536,
		37.704704, 36.634636, 58.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086872, 37.076763, 58.007305>,  <37.614681, 37.324654, 58.319630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086872, 37.076763, 58.007305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212555, 36.791893, 58.258411>,  <37.287964, 36.620972, 58.409073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212555, 36.791893, 58.258411>,  <37.086872, 37.076763, 58.007305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212555, 36.791893, 58.258411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906854, -0.029517, 0.420411,
		-0.280875, -0.701385, -0.655109,
		0.314207, -0.712171, 0.627763,
		37.306816, 36.578243, 58.446739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410320, 36.519764, 57.961838>,  <37.086872, 37.076763, 58.007305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410320, 36.519764, 57.961838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.189270, 36.313316, 57.700081>,  <36.056641, 36.189449, 57.543026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.189270, 36.313316, 57.700081>,  <36.410320, 36.519764, 57.961838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189270, 36.313316, 57.700081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706967, 0.125515, -0.696020,
		0.441365, -0.847271, 0.295515,
		-0.552626, -0.516118, -0.654390,
		36.023483, 36.158482, 57.503765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915085, 36.180477, 57.538128>,  <36.410320, 36.519764, 57.961838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915085, 36.180477, 57.538128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583687, 36.173012, 57.314255>,  <36.384850, 36.168533, 57.179932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.583687, 36.173012, 57.314255>,  <36.915085, 36.180477, 57.538128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583687, 36.173012, 57.314255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540316, 0.235987, -0.807693,
		0.147150, -0.971577, -0.185432,
		-0.828496, -0.018661, -0.559684,
		36.335136, 36.167416, 57.146351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110909, 35.783157, 57.037956>,  <36.915085, 36.180477, 57.538128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110909, 35.783157, 57.037956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792656, 35.971466, 56.885460>,  <36.601704, 36.084454, 56.793961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792656, 35.971466, 56.885460>,  <37.110909, 35.783157, 57.037956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792656, 35.971466, 56.885460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528865, 0.232885, -0.816129,
		-0.295429, -0.850961, -0.434267,
		-0.795628, 0.470776, -0.381242,
		36.553967, 36.112698, 56.771088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012383, 35.549572, 56.315952>,  <37.110909, 35.783157, 57.037956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012383, 35.549572, 56.315952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835976, 35.907364, 56.345390>,  <36.730133, 36.122040, 56.363052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.835976, 35.907364, 56.345390>,  <37.012383, 35.549572, 56.315952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835976, 35.907364, 56.345390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415455, 0.276145, -0.866684,
		-0.795553, -0.351643, -0.493399,
		-0.441013, 0.894478, 0.073596,
		36.703671, 36.175709, 56.367470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620586, 35.695000, 55.706013>,  <37.012383, 35.549572, 56.315952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620586, 35.695000, 55.706013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697979, 36.051155, 55.870827>,  <36.744415, 36.264847, 55.969715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.697979, 36.051155, 55.870827>,  <36.620586, 35.695000, 55.706013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697979, 36.051155, 55.870827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400623, 0.311664, -0.861607,
		-0.895582, 0.331776, -0.296409,
		0.193480, 0.890388, 0.412038,
		36.756023, 36.318272, 55.994438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360645, 36.154606, 55.226265>,  <36.620586, 35.695000, 55.706013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360645, 36.154606, 55.226265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603420, 36.363991, 55.465469>,  <36.749084, 36.489620, 55.608990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.603420, 36.363991, 55.465469>,  <36.360645, 36.154606, 55.226265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603420, 36.363991, 55.465469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492793, 0.342462, -0.799922,
		-0.623524, 0.780197, -0.050105,
		0.606937, 0.523462, 0.598009,
		36.785500, 36.521030, 55.644871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395458, 36.934738, 54.977001>,  <36.360645, 36.154606, 55.226265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395458, 36.934738, 54.977001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.715752, 36.843254, 55.198456>,  <36.907928, 36.788364, 55.331329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.715752, 36.843254, 55.198456>,  <36.395458, 36.934738, 54.977001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715752, 36.843254, 55.198456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595861, 0.209356, -0.775319,
		0.061420, 0.950715, 0.303921,
		0.800736, -0.228715, 0.553635,
		36.955971, 36.774639, 55.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201626, 37.532932, 55.151600>,  <36.395458, 36.934738, 54.977001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201626, 37.532932, 55.151600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.890999, 37.684731, 54.950436>,  <35.704624, 37.775810, 54.829735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.890999, 37.684731, 54.950436>,  <36.201626, 37.532932, 55.151600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890999, 37.684731, 54.950436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573709, -0.096043, 0.813409,
		0.260387, 0.920193, 0.292306,
		-0.776567, 0.379499, -0.502915,
		35.658028, 37.798580, 54.799561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923389, 38.037376, 55.591366>,  <36.201626, 37.532932, 55.151600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923389, 38.037376, 55.591366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.624676, 37.964012, 55.335655>,  <35.445450, 37.919994, 55.182228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.624676, 37.964012, 55.335655>,  <35.923389, 38.037376, 55.591366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624676, 37.964012, 55.335655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645241, -0.033155, 0.763259,
		-0.161184, 0.982477, -0.093584,
		-0.746782, -0.183410, -0.639279,
		35.400642, 37.908989, 55.143871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396835, 38.342793, 55.908318>,  <35.923389, 38.037376, 55.591366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396835, 38.342793, 55.908318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209740, 38.117821, 55.635586>,  <35.097481, 37.982838, 55.471947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.209740, 38.117821, 55.635586>,  <35.396835, 38.342793, 55.908318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209740, 38.117821, 55.635586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802622, -0.052785, 0.594148,
		-0.370156, 0.825160, -0.426727,
		-0.467743, -0.562428, -0.681830,
		35.069416, 37.949093, 55.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835373, 38.636967, 55.706081>,  <35.396835, 38.342793, 55.908318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835373, 38.636967, 55.706081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738693, 38.257431, 55.624809>,  <34.680683, 38.029709, 55.576046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738693, 38.257431, 55.624809>,  <34.835373, 38.636967, 55.706081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738693, 38.257431, 55.624809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801051, 0.076940, 0.593631,
		-0.547628, 0.306238, -0.778666,
		-0.241703, -0.948841, -0.203178,
		34.666183, 37.972778, 55.563854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144081, 38.546982, 55.407074>,  <34.835373, 38.636967, 55.706081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144081, 38.546982, 55.407074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.257870, 38.209808, 55.589737>,  <34.326145, 38.007504, 55.699333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.257870, 38.209808, 55.589737>,  <34.144081, 38.546982, 55.407074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257870, 38.209808, 55.589737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723242, 0.123967, 0.679377,
		-0.629280, -0.523539, -0.574381,
		0.284476, -0.842935, 0.456656,
		34.343212, 37.956928, 55.726734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593452, 38.341457, 55.799168>,  <34.144081, 38.546982, 55.407074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593452, 38.341457, 55.799168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.852604, 38.088737, 55.969379>,  <34.008095, 37.937103, 56.071507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.852604, 38.088737, 55.969379>,  <33.593452, 38.341457, 55.799168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852604, 38.088737, 55.969379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584166, -0.053569, 0.809865,
		-0.488880, -0.773275, -0.403784,
		0.647879, -0.631803, 0.425532,
		34.046967, 37.899197, 56.097038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199596, 37.750004, 55.985912>,  <33.593452, 38.341457, 55.799168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199596, 37.750004, 55.985912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525204, 37.750587, 56.218246>,  <33.720570, 37.750938, 56.357647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.525204, 37.750587, 56.218246>,  <33.199596, 37.750004, 55.985912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525204, 37.750587, 56.218246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575758, -0.129919, 0.807232,
		0.076641, -0.991524, -0.104915,
		0.814020, 0.001461, 0.580835,
		33.769409, 37.751026, 56.392498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966995, 37.349239, 56.508205>,  <33.199596, 37.750004, 55.985912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966995, 37.349239, 56.508205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.289009, 37.527512, 56.664810>,  <33.482216, 37.634476, 56.758774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.289009, 37.527512, 56.664810>,  <32.966995, 37.349239, 56.508205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289009, 37.527512, 56.664810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454545, 0.039340, 0.889854,
		0.381189, -0.894327, 0.234252,
		0.805036, 0.445681, 0.391517,
		33.530521, 37.661217, 56.782265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271938, 37.000469, 57.027382>,  <32.966995, 37.349239, 56.508205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271938, 37.000469, 57.027382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367043, 37.381195, 57.104858>,  <33.424107, 37.609631, 57.151344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367043, 37.381195, 57.104858>,  <33.271938, 37.000469, 57.027382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367043, 37.381195, 57.104858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440033, -0.072221, 0.895073,
		0.865934, -0.298041, 0.401659,
		0.237760, 0.951817, 0.193687,
		33.438370, 37.666740, 57.162964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.370701, 41.341732, 46.092815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.367615, 41.656868, 46.339149>,  <44.365765, 41.845947, 46.486950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.367615, 41.656868, 46.339149>,  <44.370701, 41.341732, 46.092815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367615, 41.656868, 46.339149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838995, -0.340186, 0.424689,
		0.544084, -0.513406, 0.663616,
		-0.007715, 0.787838, 0.615835,
		44.365299, 41.893219, 46.523899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170963, 41.071789, 46.761749>,  <44.370701, 41.341732, 46.092815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170963, 41.071789, 46.761749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086845, 41.462845, 46.762409>,  <44.036377, 41.697479, 46.762806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086845, 41.462845, 46.762409>,  <44.170963, 41.071789, 46.761749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086845, 41.462845, 46.762409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818402, -0.176960, 0.546721,
		0.534786, 0.113624, 0.837314,
		-0.210291, 0.977637, 0.001646,
		44.023758, 41.756138, 46.762901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120361, 41.279083, 47.432186>,  <44.170963, 41.071789, 46.761749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120361, 41.279083, 47.432186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.917088, 41.552361, 47.222427>,  <43.795124, 41.716328, 47.096573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.917088, 41.552361, 47.222427>,  <44.120361, 41.279083, 47.432186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917088, 41.552361, 47.222427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833614, -0.237196, 0.498824,
		0.216407, 0.690643, 0.690058,
		-0.508189, 0.683191, -0.524399,
		43.764629, 41.757317, 47.065109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733242, 41.670841, 47.888950>,  <44.120361, 41.279083, 47.432186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733242, 41.670841, 47.888950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.551552, 41.679504, 47.532700>,  <43.442539, 41.684704, 47.318951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.551552, 41.679504, 47.532700>,  <43.733242, 41.670841, 47.888950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551552, 41.679504, 47.532700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871599, -0.217700, 0.439229,
		-0.184376, 0.975776, 0.117762,
		-0.454225, 0.021658, -0.890624,
		43.415283, 41.686001, 47.265514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096691, 41.979893, 48.055698>,  <43.733242, 41.670841, 47.888950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096691, 41.979893, 48.055698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036530, 41.838493, 47.686394>,  <43.000431, 41.753654, 47.464809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036530, 41.838493, 47.686394>,  <43.096691, 41.979893, 48.055698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036530, 41.838493, 47.686394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888546, -0.361098, 0.283007,
		-0.433431, 0.862931, -0.259784,
		-0.150408, -0.353495, -0.923265,
		42.991405, 41.732445, 47.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432594, 42.050808, 47.989307>,  <43.096691, 41.979893, 48.055698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432594, 42.050808, 47.989307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.504871, 41.787987, 47.696560>,  <42.548237, 41.630295, 47.520912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.504871, 41.787987, 47.696560>,  <42.432594, 42.050808, 47.989307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504871, 41.787987, 47.696560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898287, -0.413286, 0.149249,
		-0.400536, 0.630461, -0.664899,
		0.180697, -0.657049, -0.731870,
		42.559082, 41.590874, 47.476997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813889, 42.013817, 47.530205>,  <42.432594, 42.050808, 47.989307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813889, 42.013817, 47.530205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.004143, 41.664734, 47.486115>,  <42.118294, 41.455284, 47.459660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.004143, 41.664734, 47.486115>,  <41.813889, 42.013817, 47.530205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004143, 41.664734, 47.486115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851751, -0.488227, 0.190142,
		-0.219755, 0.003450, -0.975549,
		0.475633, -0.872710, -0.110229,
		42.146832, 41.402920, 47.453045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254330, 41.527969, 47.159695>,  <41.813889, 42.013817, 47.530205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254330, 41.527969, 47.159695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.529617, 41.295776, 47.333771>,  <41.694790, 41.156460, 47.438217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.529617, 41.295776, 47.333771>,  <41.254330, 41.527969, 47.159695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529617, 41.295776, 47.333771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725478, -0.555299, 0.406601,
		0.005634, -0.595551, -0.803298,
		0.688222, -0.580485, 0.435188,
		41.736084, 41.121632, 47.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101578, 40.856758, 46.851860>,  <41.254330, 41.527969, 47.159695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101578, 40.856758, 46.851860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.307941, 40.784645, 47.186844>,  <41.431759, 40.741375, 47.387833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.307941, 40.784645, 47.186844>,  <41.101578, 40.856758, 46.851860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307941, 40.784645, 47.186844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677409, -0.684260, 0.270008,
		0.524359, -0.706601, -0.475146,
		0.515911, -0.180287, 0.837456,
		41.462715, 40.730560, 47.438080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936111, 40.223358, 47.164745>,  <41.101578, 40.856758, 46.851860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936111, 40.223358, 47.164745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.109631, 40.378189, 47.490196>,  <41.213741, 40.471088, 47.685467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.109631, 40.378189, 47.490196>,  <40.936111, 40.223358, 47.164745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109631, 40.378189, 47.490196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613936, -0.533956, 0.581355,
		0.659470, -0.751707, 0.006009,
		0.433800, 0.387075, 0.813627,
		41.239769, 40.494312, 47.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141724, 39.640270, 47.592766>,  <40.936111, 40.223358, 47.164745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141724, 39.640270, 47.592766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113274, 39.953461, 47.839958>,  <41.096203, 40.141373, 47.988274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113274, 39.953461, 47.839958>,  <41.141724, 39.640270, 47.592766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113274, 39.953461, 47.839958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692711, -0.484547, 0.534196,
		0.717700, -0.390087, 0.576835,
		-0.071121, 0.782972, 0.617977,
		41.091938, 40.188351, 48.025352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258583, 39.367970, 48.291557>,  <41.141724, 39.640270, 47.592766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258583, 39.367970, 48.291557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.072285, 39.719582, 48.332317>,  <40.960506, 39.930550, 48.356773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.072285, 39.719582, 48.332317>,  <41.258583, 39.367970, 48.291557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072285, 39.719582, 48.332317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668514, -0.424957, 0.610327,
		0.579800, 0.216136, 0.785568,
		-0.465746, 0.879032, 0.101901,
		40.932560, 39.983292, 48.362888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012177, 39.434410, 48.560181>,  <41.258583, 39.367970, 48.291557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012177, 39.434410, 48.560181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.211220, 39.110970, 48.685753>,  <42.330647, 38.916904, 48.761097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.211220, 39.110970, 48.685753>,  <42.012177, 39.434410, 48.560181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211220, 39.110970, 48.685753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757672, 0.228996, -0.611142,
		0.422283, 0.541961, 0.726605,
		0.497605, -0.808603, 0.313928,
		42.360500, 38.868389, 48.779930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636280, 39.666328, 48.861641>,  <42.012177, 39.434410, 48.560181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636280, 39.666328, 48.861641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.678669, 39.302917, 48.699970>,  <42.704102, 39.084873, 48.602970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.678669, 39.302917, 48.699970>,  <42.636280, 39.666328, 48.861641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678669, 39.302917, 48.699970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883630, 0.272449, -0.380748,
		0.456035, -0.316792, 0.831670,
		0.105969, -0.908523, -0.404173,
		42.710461, 39.030361, 48.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305588, 39.709057, 48.705383>,  <42.636280, 39.666328, 48.861641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305588, 39.709057, 48.705383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.214359, 39.368019, 48.517311>,  <43.159622, 39.163395, 48.404469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.214359, 39.368019, 48.517311>,  <43.305588, 39.709057, 48.705383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214359, 39.368019, 48.517311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865648, 0.043492, -0.498761,
		0.445690, -0.520759, 0.728128,
		-0.228066, -0.852595, -0.470177,
		43.145939, 39.112240, 48.376259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929028, 39.359215, 48.767136>,  <43.305588, 39.709057, 48.705383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929028, 39.359215, 48.767136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.744137, 39.182358, 48.459667>,  <43.633202, 39.076244, 48.275185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.744137, 39.182358, 48.459667>,  <43.929028, 39.359215, 48.767136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744137, 39.182358, 48.459667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876231, -0.094551, -0.472525,
		0.136245, -0.891948, 0.431123,
		-0.462231, -0.442142, -0.768670,
		43.605469, 39.049717, 48.229065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366913, 38.780354, 48.545513>,  <43.929028, 39.359215, 48.767136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366913, 38.780354, 48.545513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129829, 38.835213, 48.228050>,  <43.987579, 38.868126, 48.037575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129829, 38.835213, 48.228050>,  <44.366913, 38.780354, 48.545513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129829, 38.835213, 48.228050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804176, 0.046076, -0.592603,
		-0.044703, -0.989479, -0.137598,
		-0.592708, 0.137144, -0.793655,
		43.952019, 38.876354, 47.989952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474735, 38.257446, 48.120697>,  <44.366913, 38.780354, 48.545513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474735, 38.257446, 48.120697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.351288, 38.549438, 47.876770>,  <44.277218, 38.724636, 47.730415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.351288, 38.549438, 47.876770>,  <44.474735, 38.257446, 48.120697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351288, 38.549438, 47.876770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862687, -0.055237, -0.502713,
		-0.400657, -0.681229, -0.612700,
		-0.308619, 0.729983, -0.609819,
		44.258701, 38.768433, 47.693825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793411, 38.051441, 47.563778>,  <44.474735, 38.257446, 48.120697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793411, 38.051441, 47.563778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.689919, 38.433655, 47.507195>,  <44.627823, 38.662983, 47.473244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.689919, 38.433655, 47.507195>,  <44.793411, 38.051441, 47.563778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689919, 38.433655, 47.507195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880638, 0.173162, -0.441012,
		-0.396907, -0.238677, -0.886283,
		-0.258730, 0.955536, -0.141458,
		44.612301, 38.720314, 47.464756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789085, 38.105000, 46.738869>,  <44.793411, 38.051441, 47.563778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789085, 38.105000, 46.738869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.832005, 38.471588, 46.893047>,  <44.857758, 38.691540, 46.985554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.832005, 38.471588, 46.893047>,  <44.789085, 38.105000, 46.738869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832005, 38.471588, 46.893047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755902, 0.176630, -0.630408,
		-0.645832, 0.359000, -0.673811,
		0.107301, 0.916472, 0.385442,
		44.864197, 38.746529, 47.008678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911575, 38.510643, 46.209068>,  <44.789085, 38.105000, 46.738869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911575, 38.510643, 46.209068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.050941, 38.723328, 46.517845>,  <45.134560, 38.850937, 46.703110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.050941, 38.723328, 46.517845>,  <44.911575, 38.510643, 46.209068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050941, 38.723328, 46.517845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769188, 0.308466, -0.559642,
		-0.535685, 0.788753, -0.301513,
		0.348413, 0.531712, 0.771940,
		45.155464, 38.882843, 46.749428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911968, 39.273426, 46.063438>,  <44.911575, 38.510643, 46.209068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911968, 39.273426, 46.063438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.188774, 39.199127, 46.342468>,  <45.354858, 39.154549, 46.509888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.188774, 39.199127, 46.342468>,  <44.911968, 39.273426, 46.063438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188774, 39.199127, 46.342468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644858, 0.593396, -0.481704,
		-0.324464, 0.783184, 0.530420,
		0.692012, -0.185750, 0.697579,
		45.396378, 39.143402, 46.551743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370991, 39.854095, 45.952312>,  <44.911968, 39.273426, 46.063438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370991, 39.854095, 45.952312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.585030, 39.649933, 46.221581>,  <45.713451, 39.527435, 46.383141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.585030, 39.649933, 46.221581>,  <45.370991, 39.854095, 45.952312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585030, 39.649933, 46.221581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797100, 0.568989, -0.202194,
		-0.279826, 0.644778, 0.711308,
		0.535097, -0.510405, 0.673170,
		45.745560, 39.496811, 46.423531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.517826, 40.416000, 46.401104>,  <45.370991, 39.854095, 45.952312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.517826, 40.416000, 46.401104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.791756, 40.125076, 46.419136>,  <45.956116, 39.950523, 46.429955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.791756, 40.125076, 46.419136>,  <45.517826, 40.416000, 46.401104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791756, 40.125076, 46.419136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708039, 0.649501, -0.277181,
		0.172318, 0.221738, 0.959760,
		0.684826, -0.727311, 0.045079,
		45.997204, 39.906883, 46.432659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088627, 40.740589, 46.618172>,  <45.517826, 40.416000, 46.401104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088627, 40.740589, 46.618172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.266617, 40.400986, 46.504204>,  <46.373409, 40.197224, 46.435825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.266617, 40.400986, 46.504204>,  <46.088627, 40.740589, 46.618172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266617, 40.400986, 46.504204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811505, 0.516824, -0.272675,
		0.378756, -0.109877, 0.918951,
		0.444976, -0.849011, -0.284916,
		46.400108, 40.146282, 46.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791615, 40.824875, 46.829037>,  <46.088627, 40.740589, 46.618172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791615, 40.824875, 46.829037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.803345, 40.524971, 46.564613>,  <46.810383, 40.345028, 46.405960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.803345, 40.524971, 46.564613>,  <46.791615, 40.824875, 46.829037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.803345, 40.524971, 46.564613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657255, 0.512738, -0.552373,
		0.753098, -0.418286, 0.507820,
		0.029328, -0.749757, -0.661063,
		46.812141, 40.300045, 46.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.431225, 40.496922, 46.707901>,  <46.791615, 40.824875, 46.829037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.431225, 40.496922, 46.707901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.253876, 40.430084, 46.355652>,  <47.147465, 40.389984, 46.144302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.253876, 40.430084, 46.355652>,  <47.431225, 40.496922, 46.707901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253876, 40.430084, 46.355652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717720, 0.522352, -0.460464,
		0.536937, -0.836199, -0.111669,
		-0.443370, -0.167093, -0.880626,
		47.120865, 40.379959, 46.091465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579746, 40.333725, 47.438053>,  <47.431225, 40.496922, 46.707901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579746, 40.333725, 47.438053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747711, 40.440041, 47.785160>,  <47.848492, 40.503830, 47.993423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.747711, 40.440041, 47.785160>,  <47.579746, 40.333725, 47.438053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.747711, 40.440041, 47.785160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780860, -0.381479, 0.494704,
		0.462524, -0.885341, 0.047358,
		0.419916, 0.265792, 0.867770,
		47.873688, 40.519779, 48.045490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.625168, 39.722443, 48.045631>,  <47.579746, 40.333725, 47.438053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.625168, 39.722443, 48.045631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.652084, 40.075302, 48.232086>,  <47.668232, 40.287018, 48.343960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.652084, 40.075302, 48.232086>,  <47.625168, 39.722443, 48.045631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652084, 40.075302, 48.232086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655263, -0.313242, 0.687393,
		0.752398, -0.351696, 0.556963,
		0.067290, 0.882151, 0.466136,
		47.672272, 40.339947, 48.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.879444, 39.641117, 48.806381>,  <47.625168, 39.722443, 48.045631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.879444, 39.641117, 48.806381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.701614, 39.999168, 48.793175>,  <47.594917, 40.214001, 48.785252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.701614, 39.999168, 48.793175>,  <47.879444, 39.641117, 48.806381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.701614, 39.999168, 48.793175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648417, -0.296171, 0.701311,
		0.617987, 0.333197, 0.712090,
		-0.444575, 0.895132, -0.033020,
		47.568241, 40.267708, 48.783268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659222, 39.751884, 49.508114>,  <47.879444, 39.641117, 48.806381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659222, 39.751884, 49.508114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.423515, 40.000130, 49.301193>,  <47.282093, 40.149078, 49.177040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.423515, 40.000130, 49.301193>,  <47.659222, 39.751884, 49.508114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423515, 40.000130, 49.301193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750257, -0.182741, 0.635390,
		0.299800, 0.762524, 0.573304,
		-0.589267, 0.620615, -0.517303,
		47.246735, 40.186314, 49.146004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440578, 40.360886, 49.949924>,  <47.659222, 39.751884, 49.508114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440578, 40.360886, 49.949924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.171494, 40.325890, 49.656040>,  <47.010044, 40.304893, 49.479710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.171494, 40.325890, 49.656040>,  <47.440578, 40.360886, 49.949924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171494, 40.325890, 49.656040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736703, 0.171451, 0.654120,
		0.068737, 0.981300, -0.179793,
		-0.672714, -0.087491, -0.734712,
		46.969681, 40.299641, 49.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925625, 40.759773, 50.258926>,  <47.440578, 40.360886, 49.949924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925625, 40.759773, 50.258926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.763222, 40.579636, 49.940845>,  <46.665779, 40.471554, 49.749996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.763222, 40.579636, 49.940845>,  <46.925625, 40.759773, 50.258926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763222, 40.579636, 49.940845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902267, 0.059323, 0.427078,
		-0.145158, 0.890882, -0.430416,
		-0.406010, -0.450344, -0.795202,
		46.641418, 40.444534, 49.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382725, 41.056679, 50.226589>,  <46.925625, 40.759773, 50.258926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382725, 41.056679, 50.226589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.296188, 40.749130, 49.985909>,  <46.244267, 40.564602, 49.841499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.296188, 40.749130, 49.985909>,  <46.382725, 41.056679, 50.226589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296188, 40.749130, 49.985909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922981, -0.039850, 0.382777,
		-0.318282, 0.638165, -0.701029,
		-0.216339, -0.768867, -0.601698,
		46.231285, 40.518471, 49.805401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815811, 41.194107, 49.862602>,  <46.382725, 41.056679, 50.226589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815811, 41.194107, 49.862602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.831764, 40.798553, 49.919907>,  <45.841335, 40.561222, 49.954288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.831764, 40.798553, 49.919907>,  <45.815811, 41.194107, 49.862602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831764, 40.798553, 49.919907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830014, 0.047037, 0.555756,
		-0.556315, -0.141077, -0.818908,
		0.039885, -0.988881, 0.143263,
		45.843731, 40.501888, 49.962887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148567, 41.057636, 49.717083>,  <45.815811, 41.194107, 49.862602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148567, 41.057636, 49.717083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.284111, 40.735100, 49.910984>,  <45.365437, 40.541576, 50.027325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.284111, 40.735100, 49.910984>,  <45.148567, 41.057636, 49.717083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284111, 40.735100, 49.910984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845596, -0.035133, 0.532666,
		-0.412482, -0.590401, -0.693747,
		0.338860, -0.806345, 0.484749,
		45.385769, 40.493195, 50.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572643, 40.676365, 49.666363>,  <45.148567, 41.057636, 49.717083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572643, 40.676365, 49.666363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.801010, 40.509995, 49.949505>,  <44.938030, 40.410172, 50.119389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.801010, 40.509995, 49.949505>,  <44.572643, 40.676365, 49.666363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801010, 40.509995, 49.949505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806900, -0.125118, 0.577286,
		-0.151540, -0.900753, -0.407038,
		0.570919, -0.415921, 0.707857,
		44.972286, 40.385220, 50.161861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185673, 40.109169, 49.918907>,  <44.572643, 40.676365, 49.666363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185673, 40.109169, 49.918907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.443459, 40.164307, 50.219749>,  <44.598129, 40.197388, 50.400257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.443459, 40.164307, 50.219749>,  <44.185673, 40.109169, 49.918907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443459, 40.164307, 50.219749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745182, -0.107244, 0.658181,
		0.171386, -0.984631, 0.033604,
		0.644461, 0.137844, 0.752109,
		44.636799, 40.205658, 50.445381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129620, 39.592659, 50.294655>,  <44.185673, 40.109169, 49.918907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129620, 39.592659, 50.294655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.286629, 39.841415, 50.565704>,  <44.380833, 39.990669, 50.728336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.286629, 39.841415, 50.565704>,  <44.129620, 39.592659, 50.294655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286629, 39.841415, 50.565704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778047, -0.168382, 0.605219,
		0.490482, -0.764785, 0.417769,
		0.392518, 0.621893, 0.677627,
		44.404385, 40.027985, 50.768993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164394, 39.214043, 50.907505>,  <44.129620, 39.592659, 50.294655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164394, 39.214043, 50.907505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.178238, 39.593758, 51.032505>,  <44.186543, 39.821587, 51.107506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.178238, 39.593758, 51.032505>,  <44.164394, 39.214043, 50.907505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178238, 39.593758, 51.032505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701062, -0.199787, 0.684541,
		0.712260, -0.242768, 0.658597,
		0.034606, 0.949289, 0.312496,
		44.188622, 39.878544, 51.126255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093109, 39.158485, 51.544598>,  <44.164394, 39.214043, 50.907505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093109, 39.158485, 51.544598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.003639, 39.543991, 51.486458>,  <43.949955, 39.775295, 51.451576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.003639, 39.543991, 51.486458>,  <44.093109, 39.158485, 51.544598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003639, 39.543991, 51.486458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682552, -0.048435, 0.729230,
		0.695766, 0.262320, 0.668653,
		-0.223678, 0.963765, -0.145347,
		43.936535, 39.833122, 51.442852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152683, 39.471394, 52.217545>,  <44.093109, 39.158485, 51.544598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152683, 39.471394, 52.217545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.929390, 39.697929, 51.975014>,  <43.795414, 39.833851, 51.829494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.929390, 39.697929, 51.975014>,  <44.152683, 39.471394, 52.217545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929390, 39.697929, 51.975014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767985, -0.076164, 0.635923,
		0.313968, 0.820645, 0.477457,
		-0.558232, 0.566340, -0.606330,
		43.761921, 39.867832, 51.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881691, 39.862705, 52.641888>,  <44.152683, 39.471394, 52.217545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881691, 39.862705, 52.641888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.623970, 39.917252, 52.340881>,  <43.469337, 39.949978, 52.160278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.623970, 39.917252, 52.340881>,  <43.881691, 39.862705, 52.641888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623970, 39.917252, 52.340881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754580, 0.046738, 0.654541,
		0.124425, 0.989556, 0.072782,
		-0.644304, 0.136362, -0.752514,
		43.430679, 39.958160, 52.115128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486916, 40.427532, 52.844547>,  <43.881691, 39.862705, 52.641888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486916, 40.427532, 52.844547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.269508, 40.243965, 52.563412>,  <43.139065, 40.133823, 52.394730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.269508, 40.243965, 52.563412>,  <43.486916, 40.427532, 52.844547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269508, 40.243965, 52.563412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741813, -0.129224, 0.658039,
		-0.392808, 0.879032, -0.270194,
		-0.543521, -0.458916, -0.702837,
		43.106453, 40.106289, 52.352562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811653, 40.728676, 52.858486>,  <43.486916, 40.427532, 52.844547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811653, 40.728676, 52.858486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.763847, 40.374176, 52.679474>,  <42.735165, 40.161476, 52.572067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.763847, 40.374176, 52.679474>,  <42.811653, 40.728676, 52.858486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763847, 40.374176, 52.679474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847455, -0.143772, 0.511029,
		-0.517239, 0.440339, -0.733870,
		-0.119516, -0.886246, -0.447532,
		42.727993, 40.108303, 52.545216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037476, 40.641582, 52.640465>,  <42.811653, 40.728676, 52.858486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037476, 40.641582, 52.640465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.176033, 40.268074, 52.676437>,  <42.259167, 40.043968, 52.698021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.176033, 40.268074, 52.676437>,  <42.037476, 40.641582, 52.640465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176033, 40.268074, 52.676437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805763, -0.247068, 0.538242,
		-0.480374, -0.258907, -0.837978,
		0.346392, -0.933769, 0.089932,
		42.279949, 39.987942, 52.703419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463245, 40.298080, 52.692383>,  <42.037476, 40.641582, 52.640465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463245, 40.298080, 52.692383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.734344, 40.032669, 52.819115>,  <41.897003, 39.873421, 52.895153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.734344, 40.032669, 52.819115>,  <41.463245, 40.298080, 52.692383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734344, 40.032669, 52.819115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634600, -0.310212, 0.707850,
		-0.371400, -0.680802, -0.631325,
		0.677750, -0.663534, 0.316824,
		41.937672, 39.833611, 52.914162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162807, 39.813179, 53.126633>,  <41.463245, 40.298080, 52.692383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162807, 39.813179, 53.126633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.522217, 39.651016, 53.193932>,  <41.737862, 39.553719, 53.234310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.522217, 39.651016, 53.193932>,  <41.162807, 39.813179, 53.126633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522217, 39.651016, 53.193932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344609, -0.414149, 0.842452,
		-0.271859, -0.814938, -0.511828,
		0.898520, -0.405409, 0.168245,
		41.791771, 39.529392, 53.244404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201431, 39.016300, 53.080666>,  <41.162807, 39.813179, 53.126633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201431, 39.016300, 53.080666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.474686, 39.167809, 53.330421>,  <41.638638, 39.258713, 53.480274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.474686, 39.167809, 53.330421>,  <41.201431, 39.016300, 53.080666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474686, 39.167809, 53.330421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414442, -0.502893, 0.758509,
		0.601303, -0.776936, -0.186563,
		0.683134, 0.378774, 0.624386,
		41.679626, 39.281441, 53.517738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320511, 38.484032, 53.607628>,  <41.201431, 39.016300, 53.080666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320511, 38.484032, 53.607628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505634, 38.792534, 53.782425>,  <41.616711, 38.977634, 53.887302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505634, 38.792534, 53.782425>,  <41.320511, 38.484032, 53.607628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505634, 38.792534, 53.782425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172354, -0.405268, 0.897804,
		0.869540, -0.490832, -0.054633,
		0.462812, 0.771260, 0.436994,
		41.644478, 39.023911, 53.913525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845875, 38.216331, 54.094780>,  <41.320511, 38.484032, 53.607628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845875, 38.216331, 54.094780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.757526, 38.586990, 54.216461>,  <41.704517, 38.809387, 54.289471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.757526, 38.586990, 54.216461>,  <41.845875, 38.216331, 54.094780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757526, 38.586990, 54.216461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100245, -0.331822, 0.938001,
		0.970137, 0.176685, 0.166182,
		-0.220873, 0.926648, 0.304201,
		41.691265, 38.864986, 54.307720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174976, 38.274670, 54.705429>,  <41.845875, 38.216331, 54.094780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174976, 38.274670, 54.705429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910549, 38.574791, 54.702957>,  <41.751892, 38.754864, 54.701473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910549, 38.574791, 54.702957>,  <42.174976, 38.274670, 54.705429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910549, 38.574791, 54.702957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319769, -0.274266, 0.906932,
		0.678778, 0.601518, 0.421232,
		-0.661066, 0.750303, -0.006181,
		41.712231, 38.799881, 54.701103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243443, 38.658791, 55.311710>,  <42.174976, 38.274670, 54.705429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243443, 38.658791, 55.311710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.865936, 38.693832, 55.184196>,  <41.639431, 38.714855, 55.107689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.865936, 38.693832, 55.184196>,  <42.243443, 38.658791, 55.311710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865936, 38.693832, 55.184196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329927, -0.187962, 0.925104,
		0.021119, 0.978262, 0.206294,
		-0.943770, 0.087600, -0.318786,
		41.582806, 38.720112, 55.088562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876232, 38.849274, 55.809010>,  <42.243443, 38.658791, 55.311710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876232, 38.849274, 55.809010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559055, 38.756180, 55.583771>,  <41.368748, 38.700325, 55.448627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.559055, 38.756180, 55.583771>,  <41.876232, 38.849274, 55.809010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559055, 38.756180, 55.583771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475975, -0.340345, 0.810933,
		-0.380376, 0.911044, 0.159100,
		-0.792945, -0.232732, -0.563093,
		41.321171, 38.686359, 55.414845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857056, 39.606525, 55.901722>,  <41.876232, 38.849274, 55.809010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857056, 39.606525, 55.901722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.919861, 39.952522, 56.092358>,  <41.957542, 40.160122, 56.206738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.919861, 39.952522, 56.092358>,  <41.857056, 39.606525, 55.901722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919861, 39.952522, 56.092358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738758, 0.217394, -0.637947,
		-0.655426, 0.452251, -0.604885,
		0.157014, 0.864991, 0.476589,
		41.966965, 40.212021, 56.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918716, 40.160580, 55.338840>,  <41.857056, 39.606525, 55.901722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918716, 40.160580, 55.338840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.107391, 40.320221, 55.653351>,  <42.220596, 40.416004, 55.842056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.107391, 40.320221, 55.653351>,  <41.918716, 40.160580, 55.338840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107391, 40.320221, 55.653351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673740, 0.412129, -0.613372,
		-0.568844, 0.819065, -0.074494,
		0.471690, 0.399102, 0.786273,
		42.248898, 40.439953, 55.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102715, 40.880634, 55.136883>,  <41.918716, 40.160580, 55.338840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102715, 40.880634, 55.136883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335869, 40.805252, 55.453041>,  <42.475761, 40.760021, 55.642738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.335869, 40.805252, 55.453041>,  <42.102715, 40.880634, 55.136883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335869, 40.805252, 55.453041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780523, 0.400289, -0.480158,
		-0.225899, 0.896801, 0.380416,
		0.582883, -0.188456, 0.790400,
		42.510735, 40.748714, 55.690163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327271, 41.480877, 55.345482>,  <42.102715, 40.880634, 55.136883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327271, 41.480877, 55.345482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.608448, 41.239174, 55.495541>,  <42.777157, 41.094151, 55.585575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.608448, 41.239174, 55.495541>,  <42.327271, 41.480877, 55.345482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608448, 41.239174, 55.495541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697584, 0.482868, -0.529353,
		0.138719, 0.633806, 0.760952,
		0.702946, -0.604259, 0.375150,
		42.819332, 41.057896, 55.608086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833611, 41.973400, 55.612892>,  <42.327271, 41.480877, 55.345482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833611, 41.973400, 55.612892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010002, 41.620674, 55.546024>,  <43.115837, 41.409039, 55.505905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010002, 41.620674, 55.546024>,  <42.833611, 41.973400, 55.612892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010002, 41.620674, 55.546024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820321, 0.471566, -0.323572,
		0.364161, 0.005556, 0.931319,
		0.440977, -0.881813, -0.167168,
		43.142296, 41.356129, 55.495872>
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
