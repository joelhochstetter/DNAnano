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
	<24.342005, 34.552876, 34.833645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207502, 34.887970, 35.005749>,  <24.126801, 35.089027, 35.109013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207502, 34.887970, 35.005749>,  <24.342005, 34.552876, 34.833645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207502, 34.887970, 35.005749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423815, 0.542594, -0.725240,
		-0.841019, -0.061514, -0.537497,
		-0.336254, 0.837740, 0.430261,
		24.106627, 35.139294, 35.134827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904364, 35.091770, 34.491146>,  <24.342005, 34.552876, 34.833645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904364, 35.091770, 34.491146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103230, 35.305828, 34.764336>,  <24.222549, 35.434261, 34.928249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103230, 35.305828, 34.764336>,  <23.904364, 35.091770, 34.491146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103230, 35.305828, 34.764336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609229, 0.345164, -0.713934,
		-0.617793, 0.771029, -0.154420,
		0.497164, 0.535141, 0.682973,
		24.252378, 35.466370, 34.969227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061689, 35.843555, 34.281197>,  <23.904364, 35.091770, 34.491146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061689, 35.843555, 34.281197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330189, 35.706581, 34.544151>,  <24.491289, 35.624397, 34.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330189, 35.706581, 34.544151>,  <24.061689, 35.843555, 34.281197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330189, 35.706581, 34.544151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740442, 0.268871, -0.615998,
		0.034189, 0.900246, 0.434036,
		0.671250, -0.342439, 0.657388,
		24.531565, 35.603848, 34.741367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580532, 36.380978, 34.603226>,  <24.061689, 35.843555, 34.281197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580532, 36.380978, 34.603226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738518, 36.018616, 34.542114>,  <24.833309, 35.801197, 34.505447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738518, 36.018616, 34.542114>,  <24.580532, 36.380978, 34.603226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738518, 36.018616, 34.542114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601534, 0.380703, -0.702298,
		0.694377, 0.185482, 0.695296,
		0.394965, -0.905904, -0.152778,
		24.857008, 35.746845, 34.496281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188986, 36.467285, 34.173592>,  <24.580532, 36.380978, 34.603226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188986, 36.467285, 34.173592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161572, 36.070164, 34.134327>,  <25.145123, 35.831890, 34.110767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161572, 36.070164, 34.134327>,  <25.188986, 36.467285, 34.173592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161572, 36.070164, 34.134327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599679, 0.037640, -0.799355,
		0.797300, -0.113650, 0.592786,
		-0.068535, -0.992808, -0.098164,
		25.141010, 35.772320, 34.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835545, 36.292648, 33.903370>,  <25.188986, 36.467285, 34.173592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835545, 36.292648, 33.903370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585037, 35.987095, 33.841057>,  <25.434732, 35.803764, 33.803669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585037, 35.987095, 33.841057>,  <25.835545, 36.292648, 33.903370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585037, 35.987095, 33.841057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461804, -0.202504, -0.863556,
		0.628111, -0.612758, 0.479587,
		-0.626270, -0.763884, -0.155779,
		25.397156, 35.757931, 33.794323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292229, 35.654686, 33.866482>,  <25.835545, 36.292648, 33.903370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292229, 35.654686, 33.866482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950762, 35.546680, 33.688339>,  <25.745882, 35.481876, 33.581451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950762, 35.546680, 33.688339>,  <26.292229, 35.654686, 33.866482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950762, 35.546680, 33.688339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515188, -0.312394, -0.798117,
		0.076377, -0.910770, 0.405789,
		-0.853667, -0.270015, -0.445358,
		25.694662, 35.465675, 33.554733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277679, 34.902733, 33.649158>,  <26.292229, 35.654686, 33.866482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277679, 34.902733, 33.649158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025463, 35.119896, 33.427284>,  <25.874134, 35.250195, 33.294159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025463, 35.119896, 33.427284>,  <26.277679, 34.902733, 33.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025463, 35.119896, 33.427284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272138, -0.514646, -0.813069,
		-0.726885, -0.663622, 0.176760,
		-0.630539, 0.542904, -0.554685,
		25.836302, 35.282768, 33.260880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648405, 34.581348, 33.263874>,  <26.277679, 34.902733, 33.649158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648405, 34.581348, 33.263874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782883, 34.884933, 33.040825>,  <25.863569, 35.067085, 32.906994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782883, 34.884933, 33.040825>,  <25.648405, 34.581348, 33.263874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782883, 34.884933, 33.040825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137171, -0.546311, -0.826274,
		-0.931750, 0.354278, -0.079558,
		0.336194, 0.758967, -0.557622,
		25.883741, 35.112625, 32.873539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162992, 34.852493, 32.625790>,  <25.648405, 34.581348, 33.263874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162992, 34.852493, 32.625790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550142, 34.939342, 32.575069>,  <25.782433, 34.991451, 32.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550142, 34.939342, 32.575069>,  <25.162992, 34.852493, 32.625790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550142, 34.939342, 32.575069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020552, -0.434293, -0.900537,
		-0.250597, 0.874212, -0.415878,
		0.967873, 0.217124, -0.126799,
		25.840504, 35.004478, 32.537029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246540, 35.153923, 31.921377>,  <25.162992, 34.852493, 32.625790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246540, 35.153923, 31.921377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581810, 34.984241, 32.058498>,  <25.782972, 34.882431, 32.140770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581810, 34.984241, 32.058498>,  <25.246540, 35.153923, 31.921377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581810, 34.984241, 32.058498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001474, -0.626765, -0.779207,
		0.545400, 0.653617, -0.524713,
		0.838174, -0.424206, 0.342801,
		25.833261, 34.856979, 32.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784437, 35.171295, 31.385515>,  <25.246540, 35.153923, 31.921377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784437, 35.171295, 31.385515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813044, 34.854252, 31.627726>,  <25.830208, 34.664028, 31.773052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813044, 34.854252, 31.627726>,  <25.784437, 35.171295, 31.385515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813044, 34.854252, 31.627726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095846, -0.598812, -0.795134,
		0.992824, 0.114904, 0.033142,
		0.071518, -0.792604, 0.605528,
		25.834499, 34.616470, 31.809383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319159, 34.733143, 31.232265>,  <25.784437, 35.171295, 31.385515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319159, 34.733143, 31.232265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065840, 34.483200, 31.414909>,  <25.913849, 34.333237, 31.524496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065840, 34.483200, 31.414909>,  <26.319159, 34.733143, 31.232265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065840, 34.483200, 31.414909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009968, -0.596541, -0.802521,
		0.773844, -0.503683, 0.384017,
		-0.633298, -0.624854, 0.456609,
		25.875851, 34.295742, 31.551891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136908, 33.987926, 31.143061>,  <26.319159, 34.733143, 31.232265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136908, 33.987926, 31.143061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343622, 33.647457, 31.179790>,  <26.467651, 33.443176, 31.201828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343622, 33.647457, 31.179790>,  <26.136908, 33.987926, 31.143061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343622, 33.647457, 31.179790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750279, -0.398633, 0.527421,
		-0.412326, -0.341455, -0.844628,
		0.516787, -0.851176, 0.091820,
		26.498659, 33.392105, 31.207338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776333, 33.287445, 30.991465>,  <26.136908, 33.987926, 31.143061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776333, 33.287445, 30.991465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064053, 33.238903, 31.265072>,  <26.236685, 33.209778, 31.429237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064053, 33.238903, 31.265072>,  <25.776333, 33.287445, 30.991465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064053, 33.238903, 31.265072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598246, -0.608736, 0.521098,
		0.353147, -0.784036, -0.510465,
		0.719298, -0.121359, 0.684020,
		26.279842, 33.202496, 31.470278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717945, 32.670006, 31.331028>,  <25.776333, 33.287445, 30.991465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717945, 32.670006, 31.331028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002523, 32.799580, 31.580479>,  <26.173271, 32.877323, 31.730148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002523, 32.799580, 31.580479>,  <25.717945, 32.670006, 31.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002523, 32.799580, 31.580479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424374, -0.509293, 0.748684,
		0.560135, -0.797298, -0.224864,
		0.711446, 0.323938, 0.623625,
		26.215958, 32.896763, 31.767567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494743, 32.298340, 31.980476>,  <25.717945, 32.670006, 31.331028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494743, 32.298340, 31.980476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838705, 32.491337, 32.047119>,  <26.045082, 32.607136, 32.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838705, 32.491337, 32.047119>,  <25.494743, 32.298340, 31.980476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838705, 32.491337, 32.047119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143062, -0.085508, 0.986013,
		0.489995, -0.871714, -0.004502,
		0.859906, 0.482497, 0.166607,
		26.096678, 32.636086, 32.097103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877756, 31.889572, 32.527916>,  <25.494743, 32.298340, 31.980476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877756, 31.889572, 32.527916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006973, 32.268078, 32.533947>,  <26.084503, 32.495182, 32.537567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006973, 32.268078, 32.533947>,  <25.877756, 31.889572, 32.527916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006973, 32.268078, 32.533947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107232, 0.020769, 0.994017,
		0.940290, -0.322727, 0.108179,
		0.323043, 0.946264, 0.015078,
		26.103886, 32.551956, 32.538471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243593, 31.990641, 33.045879>,  <25.877756, 31.889572, 32.527916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243593, 31.990641, 33.045879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131590, 32.371151, 32.994232>,  <26.064388, 32.599457, 32.963242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.131590, 32.371151, 32.994232>,  <26.243593, 31.990641, 33.045879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131590, 32.371151, 32.994232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167048, 0.084169, 0.982350,
		0.945352, 0.296635, 0.135341,
		-0.280008, 0.951274, -0.129122,
		26.047588, 32.656532, 32.955494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488680, 32.476372, 33.689304>,  <26.243593, 31.990641, 33.045879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488680, 32.476372, 33.689304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172890, 32.634857, 33.501797>,  <25.983416, 32.729950, 33.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172890, 32.634857, 33.501797>,  <26.488680, 32.476372, 33.689304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172890, 32.634857, 33.501797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491096, 0.050367, 0.869648,
		0.368180, 0.916775, 0.154817,
		-0.789474, 0.396217, -0.468768,
		25.936049, 32.753723, 33.361168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291998, 32.991314, 34.162331>,  <26.488680, 32.476372, 33.689304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291998, 32.991314, 34.162331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960325, 32.905067, 33.956043>,  <25.761322, 32.853317, 33.832272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960325, 32.905067, 33.956043>,  <26.291998, 32.991314, 34.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960325, 32.905067, 33.956043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553560, 0.188580, 0.811178,
		-0.077651, 0.958095, -0.275725,
		-0.829182, -0.215618, -0.515719,
		25.711571, 32.840382, 33.801327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676291, 33.674828, 34.379635>,  <26.291998, 32.991314, 34.162331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676291, 33.674828, 34.379635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761448, 33.783833, 34.004314>,  <26.812542, 33.849236, 33.779121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761448, 33.783833, 34.004314>,  <26.676291, 33.674828, 34.379635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761448, 33.783833, 34.004314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856779, 0.409564, 0.313348,
		0.469687, -0.870628, -0.146292,
		0.212893, 0.272516, -0.938302,
		26.825315, 33.865585, 33.722824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417004, 33.467747, 34.156254>,  <26.676291, 33.674828, 34.379635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417004, 33.467747, 34.156254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270184, 33.801842, 33.992470>,  <27.182091, 34.002300, 33.894199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270184, 33.801842, 33.992470>,  <27.417004, 33.467747, 34.156254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270184, 33.801842, 33.992470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712034, 0.535527, 0.454113,
		0.598567, -0.124866, -0.791281,
		-0.367049, 0.835236, -0.409458,
		27.160069, 34.052414, 33.869633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029085, 33.738976, 33.947651>,  <27.417004, 33.467747, 34.156254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029085, 33.738976, 33.947651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732691, 33.994244, 34.031246>,  <27.554853, 34.147404, 34.081402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732691, 33.994244, 34.031246>,  <28.029085, 33.738976, 33.947651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732691, 33.994244, 34.031246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588996, 0.468179, 0.658705,
		0.322526, 0.611182, -0.722796,
		-0.740986, 0.638174, 0.208983,
		27.510395, 34.185696, 34.093941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190308, 34.459305, 33.843132>,  <28.029085, 33.738976, 33.947651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190308, 34.459305, 33.843132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930622, 34.453613, 34.147320>,  <27.774811, 34.450199, 34.329834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930622, 34.453613, 34.147320>,  <28.190308, 34.459305, 33.843132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930622, 34.453613, 34.147320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723073, 0.298654, 0.622873,
		-0.235983, 0.954255, -0.183599,
		-0.649213, -0.014232, 0.760474,
		27.735859, 34.449345, 34.375462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437681, 35.079945, 34.093292>,  <28.190308, 34.459305, 33.843132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437681, 35.079945, 34.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300474, 34.805687, 34.350117>,  <28.218151, 34.641132, 34.504211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300474, 34.805687, 34.350117>,  <28.437681, 35.079945, 34.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300474, 34.805687, 34.350117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746274, 0.216186, 0.629554,
		-0.570451, 0.695099, 0.437520,
		-0.343016, -0.685639, 0.642058,
		28.197569, 34.599995, 34.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517862, 35.381760, 34.726257>,  <28.437681, 35.079945, 34.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517862, 35.381760, 34.726257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502434, 34.986557, 34.786057>,  <28.493177, 34.749435, 34.821934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502434, 34.986557, 34.786057>,  <28.517862, 35.381760, 34.726257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502434, 34.986557, 34.786057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866800, 0.041352, 0.496939,
		-0.497162, 0.148751, 0.854812,
		-0.038572, -0.988010, 0.149496,
		28.490862, 34.690155, 34.830906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513439, 35.202579, 35.515247>,  <28.517862, 35.381760, 34.726257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513439, 35.202579, 35.515247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674662, 34.943165, 35.256962>,  <28.771395, 34.787518, 35.101990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674662, 34.943165, 35.256962>,  <28.513439, 35.202579, 35.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674662, 34.943165, 35.256962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902715, 0.165704, 0.397048,
		-0.150503, -0.742928, 0.652232,
		0.403055, -0.648537, -0.645714,
		28.795578, 34.748604, 35.063248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974619, 34.873363, 35.791645>,  <28.513439, 35.202579, 35.515247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974619, 34.873363, 35.791645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108232, 34.834213, 35.416660>,  <29.188400, 34.810722, 35.191669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108232, 34.834213, 35.416660>,  <28.974619, 34.873363, 35.791645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108232, 34.834213, 35.416660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931008, -0.120986, 0.344365,
		-0.147127, -0.987817, 0.050714,
		0.334034, -0.097881, -0.937465,
		29.208443, 34.804848, 35.135422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385241, 34.241310, 35.652290>,  <28.974619, 34.873363, 35.791645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385241, 34.241310, 35.652290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514297, 34.545143, 35.426392>,  <29.591732, 34.727444, 35.290852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514297, 34.545143, 35.426392>,  <29.385241, 34.241310, 35.652290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514297, 34.545143, 35.426392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930987, -0.147018, 0.334138,
		0.170779, -0.633576, -0.754597,
		0.322641, 0.759584, -0.564743,
		29.611090, 34.773018, 35.256969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844387, 34.185387, 35.066021>,  <29.385241, 34.241310, 35.652290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844387, 34.185387, 35.066021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923595, 34.550991, 35.207657>,  <29.971121, 34.770351, 35.292637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923595, 34.550991, 35.207657>,  <29.844387, 34.185387, 35.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923595, 34.550991, 35.207657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872137, -0.329176, 0.361967,
		0.447399, 0.237138, -0.862323,
		0.198020, 0.914007, 0.354090,
		29.983002, 34.825191, 35.313885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500540, 34.444340, 34.817368>,  <29.844387, 34.185387, 35.066021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500540, 34.444340, 34.817368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444311, 34.642487, 35.160263>,  <30.410574, 34.761375, 35.366001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444311, 34.642487, 35.160263>,  <30.500540, 34.444340, 34.817368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444311, 34.642487, 35.160263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954950, -0.160726, 0.249474,
		0.261361, 0.853686, -0.450456,
		-0.140572, 0.495366, 0.857235,
		30.402140, 34.791096, 35.417435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967369, 34.962254, 34.960506>,  <30.500540, 34.444340, 34.817368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967369, 34.962254, 34.960506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856388, 34.830215, 35.321407>,  <30.789799, 34.750992, 35.537949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856388, 34.830215, 35.321407>,  <30.967369, 34.962254, 34.960506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856388, 34.830215, 35.321407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942339, -0.276421, 0.188649,
		0.187129, 0.902568, 0.387755,
		-0.277453, -0.330095, 0.902251,
		30.773151, 34.731186, 35.592083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405684, 35.289139, 35.495670>,  <30.967369, 34.962254, 34.960506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405684, 35.289139, 35.495670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296898, 34.925510, 35.621922>,  <31.231627, 34.707333, 35.697674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296898, 34.925510, 35.621922>,  <31.405684, 35.289139, 35.495670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296898, 34.925510, 35.621922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957026, -0.289825, -0.010121,
		0.100678, 0.299313, 0.948828,
		-0.271964, -0.909073, 0.315630,
		31.215309, 34.652790, 35.716610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623280, 35.113064, 36.242252>,  <31.405684, 35.289139, 35.495670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623280, 35.113064, 36.242252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598923, 34.855221, 35.937416>,  <31.584309, 34.700516, 35.754517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598923, 34.855221, 35.937416>,  <31.623280, 35.113064, 36.242252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598923, 34.855221, 35.937416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979865, -0.184054, 0.077387,
		-0.190150, -0.742031, 0.642832,
		-0.060892, -0.644604, -0.762088,
		31.580654, 34.661839, 35.708790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999762, 34.505474, 36.500813>,  <31.623280, 35.113064, 36.242252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999762, 34.505474, 36.500813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987886, 34.563808, 36.105267>,  <31.980762, 34.598808, 35.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987886, 34.563808, 36.105267>,  <31.999762, 34.505474, 36.500813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987886, 34.563808, 36.105267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999421, -0.012076, -0.031785,
		-0.016577, -0.989236, -0.145389,
		-0.029687, 0.145832, -0.988864,
		31.978981, 34.607559, 35.808609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391815, 33.979465, 36.006077>,  <31.999762, 34.505474, 36.500813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391815, 33.979465, 36.006077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372864, 34.339245, 35.832298>,  <32.361492, 34.555115, 35.728031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372864, 34.339245, 35.832298>,  <32.391815, 33.979465, 36.006077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372864, 34.339245, 35.832298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998739, 0.049877, -0.005647,
		0.016590, -0.434168, -0.900679,
		-0.047375, 0.899450, -0.434448,
		32.358650, 34.609081, 35.701965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729973, 33.922531, 35.430809>,  <32.391815, 33.979465, 36.006077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729973, 33.922531, 35.430809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741905, 34.309925, 35.529728>,  <32.749065, 34.542362, 35.589081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741905, 34.309925, 35.529728>,  <32.729973, 33.922531, 35.430809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741905, 34.309925, 35.529728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991248, 0.003169, -0.131973,
		-0.128597, 0.249069, -0.959910,
		0.029829, 0.968481, 0.247297,
		32.750854, 34.600468, 35.603916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129890, 34.482410, 34.944111>,  <32.729973, 33.922531, 35.430809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129890, 34.482410, 34.944111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120453, 34.603550, 35.325211>,  <33.114788, 34.676235, 35.553871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120453, 34.603550, 35.325211>,  <33.129890, 34.482410, 34.944111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120453, 34.603550, 35.325211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980601, 0.192507, -0.036904,
		-0.194587, 0.933394, -0.301517,
		-0.023598, 0.302849, 0.952746,
		33.113373, 34.694405, 35.611034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493050, 35.096607, 34.951710>,  <33.129890, 34.482410, 34.944111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493050, 35.096607, 34.951710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486755, 34.923351, 35.312187>,  <33.482979, 34.819397, 35.528473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486755, 34.923351, 35.312187>,  <33.493050, 35.096607, 34.951710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486755, 34.923351, 35.312187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989935, 0.120032, 0.074974,
		-0.140646, 0.893300, 0.426889,
		-0.015734, -0.433137, 0.901191,
		33.482037, 34.793411, 35.582546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756516, 35.601974, 35.448315>,  <33.493050, 35.096607, 34.951710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756516, 35.601974, 35.448315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812241, 35.223061, 35.563728>,  <33.845676, 34.995712, 35.632977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812241, 35.223061, 35.563728>,  <33.756516, 35.601974, 35.448315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812241, 35.223061, 35.563728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976482, 0.179831, 0.118925,
		-0.164542, 0.265182, 0.950055,
		0.139313, -0.947280, 0.288535,
		33.854034, 34.938877, 35.650288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418571, 35.616802, 35.700806>,  <33.756516, 35.601974, 35.448315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418571, 35.616802, 35.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380985, 35.219570, 35.672638>,  <34.358433, 34.981232, 35.655739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380985, 35.219570, 35.672638>,  <34.418571, 35.616802, 35.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380985, 35.219570, 35.672638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974344, -0.106261, 0.198397,
		-0.204507, -0.049970, 0.977589,
		-0.093966, -0.993082, -0.070419,
		34.352795, 34.921646, 35.651512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853695, 35.502342, 36.317581>,  <34.418571, 35.616802, 35.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853695, 35.502342, 36.317581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869015, 35.215092, 36.039639>,  <34.878208, 35.042740, 35.872871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869015, 35.215092, 36.039639>,  <34.853695, 35.502342, 36.317581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869015, 35.215092, 36.039639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993120, 0.104362, -0.053118,
		0.110662, -0.688040, 0.717185,
		0.038300, -0.718129, -0.694855,
		34.880505, 34.999653, 35.831181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504158, 35.350647, 36.414749>,  <34.853695, 35.502342, 36.317581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504158, 35.350647, 36.414749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382023, 35.182587, 36.072933>,  <35.308743, 35.081749, 35.867844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382023, 35.182587, 36.072933>,  <35.504158, 35.350647, 36.414749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382023, 35.182587, 36.072933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932844, 0.048240, -0.357037,
		0.191234, -0.906169, 0.377210,
		-0.305339, -0.420156, -0.854539,
		35.290421, 35.056541, 35.816570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128487, 34.833141, 36.213310>,  <35.504158, 35.350647, 36.414749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128487, 34.833141, 36.213310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907269, 34.963066, 35.906422>,  <35.774536, 35.041019, 35.722286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907269, 34.963066, 35.906422>,  <36.128487, 34.833141, 36.213310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907269, 34.963066, 35.906422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830390, 0.289767, -0.475906,
		0.067737, -0.900296, -0.429975,
		-0.553050, 0.324811, -0.767225,
		35.741352, 35.060509, 35.676254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474503, 34.622772, 35.556133>,  <36.128487, 34.833141, 36.213310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474503, 34.622772, 35.556133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186634, 34.880295, 35.452145>,  <36.013912, 35.034809, 35.389751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186634, 34.880295, 35.452145>,  <36.474503, 34.622772, 35.556133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186634, 34.880295, 35.452145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537388, 0.279404, -0.795706,
		-0.439646, -0.712350, -0.547054,
		-0.719671, 0.643809, -0.259969,
		35.970734, 35.073437, 35.374153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490936, 34.531517, 34.875347>,  <36.474503, 34.622772, 35.556133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490936, 34.531517, 34.875347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794796, 34.480255, 34.620316>,  <36.977112, 34.449497, 34.467297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794796, 34.480255, 34.620316>,  <36.490936, 34.531517, 34.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794796, 34.480255, 34.620316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649298, -0.204730, -0.732460,
		-0.036660, 0.970392, -0.238736,
		0.759650, -0.128159, -0.637579,
		37.022690, 34.441807, 34.429043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418385, 34.920334, 34.275620>,  <36.490936, 34.531517, 34.875347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418385, 34.920334, 34.275620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 34.573467, 34.191372>,  <36.707203, 34.365345, 34.140823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598896, 34.573467, 34.191372>,  <36.418385, 34.920334, 34.275620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598896, 34.573467, 34.191372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712876, -0.208341, -0.669629,
		0.536802, 0.452336, -0.712205,
		0.451279, -0.867171, -0.210622,
		36.734280, 34.313316, 34.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489418, 34.861938, 33.562271>,  <36.418385, 34.920334, 34.275620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489418, 34.861938, 33.562271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476173, 34.494591, 33.720005>,  <36.468227, 34.274181, 33.814644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476173, 34.494591, 33.720005>,  <36.489418, 34.861938, 33.562271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476173, 34.494591, 33.720005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618359, -0.291145, -0.729978,
		0.785198, -0.268007, -0.558244,
		-0.033109, -0.918372, 0.394331,
		36.466240, 34.219078, 33.838303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563457, 34.424988, 33.050129>,  <36.489418, 34.861938, 33.562271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563457, 34.424988, 33.050129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371403, 34.220512, 33.335270>,  <36.256172, 34.097828, 33.506355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371403, 34.220512, 33.335270>,  <36.563457, 34.424988, 33.050129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371403, 34.220512, 33.335270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729579, -0.218463, -0.648065,
		0.487018, -0.831237, -0.268064,
		-0.480134, -0.511193, 0.712848,
		36.227364, 34.067154, 33.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420555, 33.794388, 32.692348>,  <36.563457, 34.424988, 33.050129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420555, 33.794388, 32.692348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175529, 33.907051, 32.987762>,  <36.028515, 33.974648, 33.165012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175529, 33.907051, 32.987762>,  <36.420555, 33.794388, 32.692348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175529, 33.907051, 32.987762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789504, -0.263026, -0.554527,
		0.038068, -0.922761, 0.383488,
		-0.612564, 0.281656, 0.738536,
		35.991760, 33.991547, 33.209324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815338, 33.357521, 32.767887>,  <36.420555, 33.794388, 32.692348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815338, 33.357521, 32.767887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682869, 33.678085, 32.967110>,  <35.603386, 33.870426, 33.086643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682869, 33.678085, 32.967110>,  <35.815338, 33.357521, 32.767887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682869, 33.678085, 32.967110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824285, 0.011165, -0.566065,
		-0.459214, -0.598003, 0.656897,
		-0.331175, 0.801416, 0.498052,
		35.583515, 33.918510, 33.116524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078621, 33.344788, 33.040382>,  <35.815338, 33.357521, 32.767887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078621, 33.344788, 33.040382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198437, 33.721722, 32.980667>,  <35.270325, 33.947880, 32.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198437, 33.721722, 32.980667>,  <35.078621, 33.344788, 33.040382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198437, 33.721722, 32.980667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791051, 0.157811, -0.591045,
		-0.533402, 0.295135, 0.792703,
		0.299535, 0.942332, -0.149290,
		35.288296, 34.004421, 32.935879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850853, 32.612171, 32.888931>,  <35.078621, 33.344788, 33.040382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850853, 32.612171, 32.888931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781120, 32.238560, 33.013641>,  <34.739281, 32.014393, 33.088467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781120, 32.238560, 33.013641>,  <34.850853, 32.612171, 32.888931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781120, 32.238560, 33.013641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075151, 0.328317, 0.941573,
		-0.981814, 0.140720, -0.127430,
		-0.174336, -0.934027, 0.311771,
		34.728821, 31.958351, 33.107174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214832, 32.548225, 33.098877>,  <34.850853, 32.612171, 32.888931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214832, 32.548225, 33.098877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516167, 32.359867, 33.282501>,  <34.696968, 32.246853, 33.392677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516167, 32.359867, 33.282501>,  <34.214832, 32.548225, 33.098877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516167, 32.359867, 33.282501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007146, 0.692151, 0.721717,
		-0.657594, -0.546978, 0.518059,
		0.753339, -0.470895, 0.459063,
		34.742168, 32.218597, 33.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231323, 31.947256, 33.575550>,  <34.214832, 32.548225, 33.098877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231323, 31.947256, 33.575550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379288, 31.967806, 33.946609>,  <34.468067, 31.980135, 34.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379288, 31.967806, 33.946609>,  <34.231323, 31.947256, 33.575550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379288, 31.967806, 33.946609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057077, -0.995327, 0.077882,
		0.927313, -0.081756, -0.365248,
		0.369909, 0.051373, 0.927647,
		34.490261, 31.983217, 34.224903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846130, 31.586254, 33.588783>,  <34.231323, 31.947256, 33.575550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846130, 31.586254, 33.588783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652607, 31.584438, 33.938847>,  <34.536491, 31.583349, 34.148884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652607, 31.584438, 33.938847>,  <34.846130, 31.586254, 33.588783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652607, 31.584438, 33.938847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070117, -0.996973, 0.033589,
		0.872360, 0.077614, 0.482663,
		-0.483809, -0.004541, 0.875162,
		34.507465, 31.583076, 34.201397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132534, 31.069370, 34.003014>,  <34.846130, 31.586254, 33.588783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132534, 31.069370, 34.003014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775055, 31.147741, 34.164467>,  <34.560570, 31.194763, 34.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775055, 31.147741, 34.164467>,  <35.132534, 31.069370, 34.003014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775055, 31.147741, 34.164467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180999, -0.980601, 0.075237,
		0.410545, -0.005818, 0.911822,
		-0.893695, 0.195927, 0.403634,
		34.506947, 31.206520, 34.285557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129902, 30.687984, 34.687096>,  <35.132534, 31.069370, 34.003014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129902, 30.687984, 34.687096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753510, 30.743246, 34.563503>,  <34.527676, 30.776403, 34.489349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753510, 30.743246, 34.563503>,  <35.129902, 30.687984, 34.687096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753510, 30.743246, 34.563503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166823, -0.983623, 0.068238,
		-0.294494, 0.115756, 0.948617,
		-0.940980, 0.138155, -0.308982,
		34.471214, 30.784693, 34.470810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704586, 30.320503, 35.187641>,  <35.129902, 30.687984, 34.687096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704586, 30.320503, 35.187641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521069, 30.360588, 34.834492>,  <34.410957, 30.384640, 34.622604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521069, 30.360588, 34.834492>,  <34.704586, 30.320503, 35.187641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521069, 30.360588, 34.834492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209227, -0.977864, -0.002268,
		-0.863556, 0.183680, 0.469609,
		-0.458797, 0.100213, -0.882872,
		34.383430, 30.390652, 34.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368244, 29.730522, 35.260029>,  <34.704586, 30.320503, 35.187641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368244, 29.730522, 35.260029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288219, 29.834454, 34.882149>,  <34.240204, 29.896812, 34.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288219, 29.834454, 34.882149>,  <34.368244, 29.730522, 35.260029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288219, 29.834454, 34.882149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076245, -0.965401, -0.249376,
		-0.976813, 0.022139, 0.212947,
		-0.200058, 0.259829, -0.944704,
		34.228203, 29.912403, 34.598736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756172, 29.486574, 35.034863>,  <34.368244, 29.730522, 35.260029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756172, 29.486574, 35.034863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002213, 29.538595, 34.723804>,  <34.149837, 29.569807, 34.537170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002213, 29.538595, 34.723804>,  <33.756172, 29.486574, 35.034863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002213, 29.538595, 34.723804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074860, -0.991480, -0.106599,
		-0.784887, 0.007354, -0.619595,
		0.615100, 0.130051, -0.777649,
		34.186741, 29.577610, 34.490509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492970, 29.534870, 34.413147>,  <33.756172, 29.486574, 35.034863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492970, 29.534870, 34.413147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846924, 29.350895, 34.442654>,  <34.059296, 29.240511, 34.460358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846924, 29.350895, 34.442654>,  <33.492970, 29.534870, 34.413147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846924, 29.350895, 34.442654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402505, -0.834678, -0.375903,
		0.234466, 0.302937, -0.923718,
		0.884882, -0.459937, 0.073770,
		34.112389, 29.212914, 34.464783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537231, 29.017454, 33.836254>,  <33.492970, 29.534870, 34.413147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537231, 29.017454, 33.836254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818062, 28.890596, 34.091286>,  <33.986561, 28.814482, 34.244305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818062, 28.890596, 34.091286>,  <33.537231, 29.017454, 33.836254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818062, 28.890596, 34.091286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327288, -0.938890, -0.106624,
		0.632432, -0.133814, -0.762971,
		0.702078, -0.317143, 0.637579,
		34.028687, 28.795454, 34.282558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767891, 28.358023, 33.514629>,  <33.537231, 29.017454, 33.836254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767891, 28.358023, 33.514629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885201, 28.342535, 33.896729>,  <33.955585, 28.333242, 34.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885201, 28.342535, 33.896729>,  <33.767891, 28.358023, 33.514629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885201, 28.342535, 33.896729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176348, -0.984225, 0.014247,
		0.939623, -0.172634, -0.295475,
		0.293273, -0.038719, 0.955244,
		33.973183, 28.330919, 34.183300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458233, 28.135332, 33.601871>,  <33.767891, 28.358023, 33.514629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458233, 28.135332, 33.601871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217098, 27.994038, 33.888035>,  <34.072418, 27.909262, 34.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217098, 27.994038, 33.888035>,  <34.458233, 28.135332, 33.601871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217098, 27.994038, 33.888035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333846, -0.926064, -0.175933,
		0.724663, 0.132779, 0.676190,
		-0.602835, -0.353236, 0.715412,
		34.036247, 27.888067, 34.102657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228184, 27.797718, 33.684456>,  <34.458233, 28.135332, 33.601871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228184, 27.797718, 33.684456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292469, 27.459837, 33.480240>,  <35.331039, 27.257109, 33.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292469, 27.459837, 33.480240>,  <35.228184, 27.797718, 33.684456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292469, 27.459837, 33.480240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136504, 0.493267, -0.859101,
		0.977516, 0.207758, -0.036031,
		0.160712, -0.844704, -0.510536,
		35.340683, 27.206427, 33.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709824, 27.956633, 33.186455>,  <35.228184, 27.797718, 33.684456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709824, 27.956633, 33.186455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520157, 27.637434, 33.037663>,  <35.406357, 27.445915, 32.948387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520157, 27.637434, 33.037663>,  <35.709824, 27.956633, 33.186455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520157, 27.637434, 33.037663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064429, 0.452816, -0.889273,
		0.878077, -0.397693, -0.266123,
		-0.474162, -0.797996, -0.371985,
		35.377907, 27.398035, 32.926067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007599, 27.839188, 32.542816>,  <35.709824, 27.956633, 33.186455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007599, 27.839188, 32.542816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668232, 27.629408, 32.514130>,  <35.464611, 27.503540, 32.496918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668232, 27.629408, 32.514130>,  <36.007599, 27.839188, 32.542816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668232, 27.629408, 32.514130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163370, 0.388300, -0.906936,
		0.503492, -0.757741, -0.415119,
		-0.848414, -0.524453, -0.071714,
		35.413708, 27.472073, 32.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000103, 27.556110, 31.906111>,  <36.007599, 27.839188, 32.542816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000103, 27.556110, 31.906111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609898, 27.547888, 31.993706>,  <35.375774, 27.542955, 32.046265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609898, 27.547888, 31.993706>,  <36.000103, 27.556110, 31.906111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609898, 27.547888, 31.993706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209522, 0.389787, -0.896753,
		-0.066926, -0.920675, -0.384549,
		-0.975511, -0.020555, 0.218989,
		35.317245, 27.541721, 32.059402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629372, 27.233662, 31.329649>,  <36.000103, 27.556110, 31.906111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629372, 27.233662, 31.329649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339859, 27.429869, 31.523779>,  <35.166153, 27.547592, 31.640257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339859, 27.429869, 31.523779>,  <35.629372, 27.233662, 31.329649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339859, 27.429869, 31.523779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324863, 0.378288, -0.866811,
		-0.608778, -0.785042, -0.114446,
		-0.723777, 0.490517, 0.485325,
		35.122726, 27.577024, 31.669376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048096, 27.232937, 30.956890>,  <35.629372, 27.233662, 31.329649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048096, 27.232937, 30.956890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923374, 27.536968, 31.184946>,  <34.848541, 27.719387, 31.321779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923374, 27.536968, 31.184946>,  <35.048096, 27.232937, 30.956890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923374, 27.536968, 31.184946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386105, 0.446919, -0.806961,
		-0.868161, -0.471746, 0.154120,
		-0.311801, 0.760078, 0.570141,
		34.829834, 27.764992, 31.355988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327667, 27.374655, 30.869324>,  <35.048096, 27.232937, 30.956890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327667, 27.374655, 30.869324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486706, 27.724165, 30.981346>,  <34.582130, 27.933872, 31.048559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486706, 27.724165, 30.981346>,  <34.327667, 27.374655, 30.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486706, 27.724165, 30.981346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294044, 0.410456, -0.863171,
		-0.869170, 0.260844, 0.420124,
		0.397596, 0.873777, 0.280057,
		34.605984, 27.986298, 31.065363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710655, 27.857092, 30.836798>,  <34.327667, 27.374655, 30.869324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710655, 27.857092, 30.836798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034523, 28.091385, 30.822117>,  <34.228844, 28.231960, 30.813309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034523, 28.091385, 30.822117>,  <33.710655, 27.857092, 30.836798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034523, 28.091385, 30.822117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358355, 0.443897, -0.821302,
		-0.464770, 0.678140, 0.569311,
		0.809673, 0.585732, -0.036704,
		34.277424, 28.267105, 30.811106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436165, 28.623173, 30.721277>,  <33.710655, 27.857092, 30.836798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436165, 28.623173, 30.721277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820812, 28.610359, 30.612274>,  <34.051601, 28.602671, 30.546873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820812, 28.610359, 30.612274>,  <33.436165, 28.623173, 30.721277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820812, 28.610359, 30.612274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224512, 0.479079, -0.848574,
		0.157736, 0.877187, 0.453500,
		0.961620, -0.032034, -0.272508,
		34.109299, 28.600748, 30.530521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585201, 29.275633, 30.392389>,  <33.436165, 28.623173, 30.721277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585201, 29.275633, 30.392389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889545, 29.040422, 30.282608>,  <34.072151, 28.899296, 30.216740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889545, 29.040422, 30.282608>,  <33.585201, 29.275633, 30.392389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889545, 29.040422, 30.282608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154860, 0.246183, -0.956772,
		0.630171, 0.770468, 0.096249,
		0.760857, -0.588024, -0.274452,
		34.117802, 28.864016, 30.200272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808937, 29.644827, 29.802967>,  <33.585201, 29.275633, 30.392389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808937, 29.644827, 29.802967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972530, 29.284117, 29.747070>,  <34.070686, 29.067690, 29.713533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972530, 29.284117, 29.747070>,  <33.808937, 29.644827, 29.802967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972530, 29.284117, 29.747070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215118, 0.053542, -0.975119,
		0.886823, 0.428871, -0.172090,
		0.408987, -0.901778, -0.139740,
		34.095226, 29.013584, 29.705149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443443, 29.696274, 29.366758>,  <33.808937, 29.644827, 29.802967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443443, 29.696274, 29.366758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320885, 29.317497, 29.327923>,  <34.247349, 29.090231, 29.304623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320885, 29.317497, 29.327923>,  <34.443443, 29.696274, 29.366758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320885, 29.317497, 29.327923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041325, 0.115128, -0.992491,
		0.951007, -0.300082, -0.074407,
		-0.306395, -0.946941, -0.097087,
		34.228966, 29.033415, 29.298798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806084, 29.388763, 28.812666>,  <34.443443, 29.696274, 29.366758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806084, 29.388763, 28.812666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497131, 29.138659, 28.857338>,  <34.311760, 28.988596, 28.884142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497131, 29.138659, 28.857338>,  <34.806084, 29.388763, 28.812666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497131, 29.138659, 28.857338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104059, -0.048888, -0.993369,
		0.626575, -0.778882, -0.027304,
		-0.772383, -0.625262, 0.111682,
		34.265415, 28.951080, 28.890842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887077, 28.768679, 28.459797>,  <34.806084, 29.388763, 28.812666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887077, 28.768679, 28.459797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489788, 28.744066, 28.499229>,  <34.251415, 28.729300, 28.522890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489788, 28.744066, 28.499229>,  <34.887077, 28.768679, 28.459797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489788, 28.744066, 28.499229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086214, -0.178658, -0.980127,
		0.077921, -0.981985, 0.172143,
		-0.993225, -0.061531, 0.098582,
		34.191822, 28.725607, 28.528805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684418, 28.290718, 28.002844>,  <34.887077, 28.768679, 28.459797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684418, 28.290718, 28.002844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332752, 28.462219, 28.086027>,  <34.121754, 28.565121, 28.135937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332752, 28.462219, 28.086027>,  <34.684418, 28.290718, 28.002844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332752, 28.462219, 28.086027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310529, -0.184458, -0.932495,
		-0.361452, -0.884390, 0.295308,
		-0.879161, 0.428754, 0.207956,
		34.069004, 28.590845, 28.148415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093742, 27.774633, 27.884703>,  <34.684418, 28.290718, 28.002844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093742, 27.774633, 27.884703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981503, 28.156425, 27.844254>,  <33.914158, 28.385502, 27.819984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981503, 28.156425, 27.844254>,  <34.093742, 27.774633, 27.884703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981503, 28.156425, 27.844254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401783, -0.212488, -0.890741,
		-0.871683, -0.209316, 0.443119,
		-0.280604, 0.954482, -0.101123,
		33.897320, 28.442770, 27.813917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450012, 27.722589, 27.574429>,  <34.093742, 27.774633, 27.884703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450012, 27.722589, 27.574429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552326, 28.102085, 27.500160>,  <33.613716, 28.329782, 27.455599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552326, 28.102085, 27.500160>,  <33.450012, 27.722589, 27.574429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552326, 28.102085, 27.500160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426603, -0.061575, -0.902341,
		-0.867516, 0.310011, 0.388984,
		0.255784, 0.948737, -0.185669,
		33.629063, 28.386705, 27.444460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832054, 28.051815, 27.270754>,  <33.450012, 27.722589, 27.574429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832054, 28.051815, 27.270754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135929, 28.286488, 27.158558>,  <33.318256, 28.427292, 27.091240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135929, 28.286488, 27.158558>,  <32.832054, 28.051815, 27.270754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135929, 28.286488, 27.158558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404615, 0.088788, -0.910167,
		-0.509073, 0.804936, 0.304831,
		0.759692, 0.586681, -0.280489,
		33.363838, 28.462492, 27.074411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513725, 28.646231, 26.893795>,  <32.832054, 28.051815, 27.270754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513725, 28.646231, 26.893795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899963, 28.663317, 26.791195>,  <33.131706, 28.673569, 26.729635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899963, 28.663317, 26.791195>,  <32.513725, 28.646231, 26.893795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899963, 28.663317, 26.791195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259945, 0.132562, -0.956481,
		-0.006855, 0.990254, 0.139106,
		0.965599, 0.042717, -0.256503,
		33.189644, 28.676132, 26.714245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602303, 29.165886, 26.395613>,  <32.513725, 28.646231, 26.893795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602303, 29.165886, 26.395613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906815, 28.913351, 26.336460>,  <33.089523, 28.761831, 26.300968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906815, 28.913351, 26.336460>,  <32.602303, 29.165886, 26.395613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906815, 28.913351, 26.336460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226440, -0.045140, -0.972979,
		0.607600, 0.774195, -0.177323,
		0.761280, -0.631335, -0.147881,
		33.135197, 28.723951, 26.292095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934219, 29.333508, 25.817389>,  <32.602303, 29.165886, 26.395613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934219, 29.333508, 25.817389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103718, 28.971926, 25.840401>,  <33.205418, 28.754976, 25.854208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103718, 28.971926, 25.840401>,  <32.934219, 29.333508, 25.817389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103718, 28.971926, 25.840401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053668, -0.038347, -0.997822,
		0.904190, 0.425911, 0.032264,
		0.423746, -0.903952, 0.057531,
		33.230843, 28.700741, 25.857660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298855, 29.392965, 25.333292>,  <32.934219, 29.333508, 25.817389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298855, 29.392965, 25.333292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288902, 28.997822, 25.394636>,  <33.282932, 28.760736, 25.431442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288902, 28.997822, 25.394636>,  <33.298855, 29.392965, 25.333292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288902, 28.997822, 25.394636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195534, -0.155254, -0.968330,
		0.980381, 0.005896, 0.197023,
		-0.024879, -0.987857, 0.153361,
		33.281437, 28.701466, 25.440645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873421, 29.197996, 24.861076>,  <33.298855, 29.392965, 25.333292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873421, 29.197996, 24.861076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657204, 28.879683, 24.970282>,  <33.527473, 28.688694, 25.035805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657204, 28.879683, 24.970282>,  <33.873421, 29.197996, 24.861076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657204, 28.879683, 24.970282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013100, -0.332432, -0.943036,
		0.841212, -0.506179, 0.190120,
		-0.540547, -0.795784, 0.273015,
		33.495041, 28.640947, 25.052187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177177, 28.563223, 24.668579>,  <33.873421, 29.197996, 24.861076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177177, 28.563223, 24.668579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791134, 28.471285, 24.718767>,  <33.559509, 28.416122, 24.748880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791134, 28.471285, 24.718767>,  <34.177177, 28.563223, 24.668579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791134, 28.471285, 24.718767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057695, -0.280731, -0.958051,
		0.255427, -0.931859, 0.257674,
		-0.965105, -0.229845, 0.125470,
		33.501602, 28.402330, 24.756409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114193, 27.979364, 24.290459>,  <34.177177, 28.563223, 24.668579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114193, 27.979364, 24.290459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 28.127510, 24.320631>,  <33.521671, 28.216398, 24.338736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743866, 28.127510, 24.320631>,  <34.114193, 27.979364, 24.290459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743866, 28.127510, 24.320631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150518, -0.178206, -0.972413,
		-0.346708, -0.911631, 0.220734,
		-0.925817, 0.370368, 0.075431,
		33.466122, 28.238621, 24.343260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704605, 27.532316, 24.010254>,  <34.114193, 27.979364, 24.290459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704605, 27.532316, 24.010254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471531, 27.855345, 23.973797>,  <33.331684, 28.049162, 23.951923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471531, 27.855345, 23.973797>,  <33.704605, 27.532316, 24.010254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471531, 27.855345, 23.973797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137239, -0.208315, -0.968385,
		-0.801025, -0.551758, 0.232213,
		-0.582688, 0.807570, -0.091143,
		33.296726, 28.097616, 23.946453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079563, 27.259079, 23.647593>,  <33.704605, 27.532316, 24.010254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079563, 27.259079, 23.647593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069057, 27.656914, 23.607372>,  <33.062756, 27.895615, 23.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069057, 27.656914, 23.607372>,  <33.079563, 27.259079, 23.647593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069057, 27.656914, 23.607372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288631, -0.103848, -0.951792,
		-0.957080, 0.004024, 0.289795,
		-0.026265, 0.994585, -0.100552,
		33.061176, 27.955290, 23.577208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451500, 27.360514, 23.335733>,  <33.079563, 27.259079, 23.647593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451500, 27.360514, 23.335733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668617, 27.685383, 23.250174>,  <32.798889, 27.880304, 23.198837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668617, 27.685383, 23.250174>,  <32.451500, 27.360514, 23.335733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668617, 27.685383, 23.250174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383541, 0.013128, -0.923430,
		-0.747176, 0.583270, 0.318627,
		0.542793, 0.812172, -0.213899,
		32.831455, 27.929035, 23.186005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155933, 27.554813, 22.811880>,  <32.451500, 27.360514, 23.335733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155933, 27.554813, 22.811880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490883, 27.773180, 22.800747>,  <32.691853, 27.904200, 22.794067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490883, 27.773180, 22.800747>,  <32.155933, 27.554813, 22.811880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490883, 27.773180, 22.800747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158591, 0.193900, -0.968118,
		-0.523115, 0.815093, 0.248945,
		0.837376, 0.545918, -0.027834,
		32.742096, 27.936954, 22.792397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927330, 28.245148, 22.688162>,  <32.155933, 27.554813, 22.811880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927330, 28.245148, 22.688162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300262, 28.185488, 22.556396>,  <32.524021, 28.149693, 22.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300262, 28.185488, 22.556396>,  <31.927330, 28.245148, 22.688162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300262, 28.185488, 22.556396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266300, 0.333080, -0.904512,
		0.244627, 0.931028, 0.270822,
		0.932331, -0.149148, -0.329413,
		32.579964, 28.140743, 22.457573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924141, 28.759411, 22.189102>,  <31.927330, 28.245148, 22.688162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924141, 28.759411, 22.189102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254478, 28.544819, 22.119623>,  <32.452682, 28.416063, 22.077936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254478, 28.544819, 22.119623>,  <31.924141, 28.759411, 22.189102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254478, 28.544819, 22.119623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021882, 0.338285, -0.940789,
		0.563474, 0.773144, 0.291110,
		0.825844, -0.536481, -0.173697,
		32.502232, 28.383875, 22.067514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406681, 29.220741, 22.000929>,  <31.924141, 28.759411, 22.189102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406681, 29.220741, 22.000929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500595, 28.863438, 21.847584>,  <32.556942, 28.649055, 21.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500595, 28.863438, 21.847584>,  <32.406681, 29.220741, 22.000929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500595, 28.863438, 21.847584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184603, 0.346237, -0.919805,
		0.954358, 0.286723, -0.083608,
		0.234781, -0.893258, -0.383364,
		32.571030, 28.595461, 21.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931023, 29.276325, 21.529850>,  <32.406681, 29.220741, 22.000929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931023, 29.276325, 21.529850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738464, 28.948402, 21.405804>,  <32.622929, 28.751648, 21.331375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738464, 28.948402, 21.405804>,  <32.931023, 29.276325, 21.529850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738464, 28.948402, 21.405804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126301, 0.414999, -0.901013,
		0.867354, -0.394579, -0.303322,
		-0.481400, -0.819807, -0.310115,
		32.594044, 28.702461, 21.312769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235046, 29.091854, 20.865578>,  <32.931023, 29.276325, 21.529850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235046, 29.091854, 20.865578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904182, 28.867327, 20.876364>,  <32.705662, 28.732611, 20.882835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904182, 28.867327, 20.876364>,  <33.235046, 29.091854, 20.865578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904182, 28.867327, 20.876364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141524, 0.161634, -0.976650,
		0.543851, -0.811664, -0.213137,
		-0.827162, -0.561316, 0.026965,
		32.656033, 28.698933, 20.884453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294098, 28.660847, 20.237663>,  <33.235046, 29.091854, 20.865578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294098, 28.660847, 20.237663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908829, 28.617170, 20.335951>,  <32.677666, 28.590963, 20.394922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908829, 28.617170, 20.335951>,  <33.294098, 28.660847, 20.237663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908829, 28.617170, 20.335951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240168, -0.061561, -0.968777,
		0.120909, -0.992113, 0.033069,
		-0.963172, -0.109192, 0.245717,
		32.619877, 28.584414, 20.409666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106556, 28.098267, 19.889221>,  <33.294098, 28.660847, 20.237663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106556, 28.098267, 19.889221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778717, 28.320457, 19.945370>,  <32.582012, 28.453772, 19.979059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778717, 28.320457, 19.945370>,  <33.106556, 28.098267, 19.889221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778717, 28.320457, 19.945370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253348, -0.131624, -0.958379,
		-0.513884, -0.821047, 0.248608,
		-0.819597, 0.555480, 0.140371,
		32.532837, 28.487101, 19.987482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570923, 27.851799, 19.654819>,  <33.106556, 28.098267, 19.889221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570923, 27.851799, 19.654819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463020, 28.236748, 19.667898>,  <32.398277, 28.467716, 19.675745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463020, 28.236748, 19.667898>,  <32.570923, 27.851799, 19.654819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463020, 28.236748, 19.667898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185616, -0.018651, -0.982445,
		-0.944868, -0.271095, 0.183663,
		-0.269761, 0.962372, 0.032697,
		32.382092, 28.525459, 19.677708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942118, 27.822456, 19.313137>,  <32.570923, 27.851799, 19.654819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942118, 27.822456, 19.313137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063641, 28.203516, 19.308109>,  <32.136555, 28.432152, 19.305092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063641, 28.203516, 19.308109>,  <31.942118, 27.822456, 19.313137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063641, 28.203516, 19.308109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233855, 0.061773, -0.970307,
		-0.923588, 0.297724, 0.241550,
		0.303805, 0.952651, -0.012571,
		32.154781, 28.489311, 19.304338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456497, 28.195404, 18.860687>,  <31.942118, 27.822456, 19.313137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456497, 28.195404, 18.860687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804821, 28.392052, 18.859833>,  <32.013813, 28.510040, 18.859320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804821, 28.392052, 18.859833>,  <31.456497, 28.195404, 18.860687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804821, 28.392052, 18.859833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054585, -0.101007, -0.993387,
		-0.488585, 0.864932, -0.114793,
		0.870807, 0.491620, -0.002138,
		32.066063, 28.539537, 18.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255253, 28.699173, 18.465744>,  <31.456497, 28.195404, 18.860687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255253, 28.699173, 18.465744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655031, 28.695461, 18.478531>,  <31.894897, 28.693233, 18.486204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655031, 28.695461, 18.478531>,  <31.255253, 28.699173, 18.465744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655031, 28.695461, 18.478531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032120, 0.016519, -0.999347,
		0.008745, 0.999820, 0.016808,
		0.999446, -0.009279, 0.031969,
		31.954865, 28.692677, 18.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522776, 29.264502, 17.896847>,  <31.255253, 28.699173, 18.465744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522776, 29.264502, 17.896847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820560, 29.013065, 17.986874>,  <31.999231, 28.862204, 18.040890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820560, 29.013065, 17.986874>,  <31.522776, 29.264502, 17.896847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820560, 29.013065, 17.986874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240865, -0.061544, -0.968605,
		0.622705, 0.775299, 0.105588,
		0.744461, -0.628588, 0.225066,
		32.043900, 28.824490, 18.054394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010044, 29.612770, 17.675520>,  <31.522776, 29.264502, 17.896847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010044, 29.612770, 17.675520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160404, 29.242289, 17.687132>,  <32.250622, 29.019999, 17.694099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160404, 29.242289, 17.687132>,  <32.010044, 29.612770, 17.675520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160404, 29.242289, 17.687132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218032, 0.057955, -0.974219,
		0.900645, 0.372537, 0.223728,
		0.375899, -0.926206, 0.029028,
		32.273174, 28.964426, 17.695841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582832, 29.690733, 17.291599>,  <32.010044, 29.612770, 17.675520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582832, 29.690733, 17.291599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474800, 29.306044, 17.310112>,  <32.409981, 29.075230, 17.321220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474800, 29.306044, 17.310112>,  <32.582832, 29.690733, 17.291599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474800, 29.306044, 17.310112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261748, -0.119596, -0.957698,
		0.926577, -0.246541, 0.284030,
		-0.270080, -0.961725, 0.046284,
		32.393776, 29.017527, 17.323997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119293, 29.223324, 17.112268>,  <32.582832, 29.690733, 17.291599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119293, 29.223324, 17.112268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755779, 29.083157, 17.021660>,  <32.537670, 28.999056, 16.967295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755779, 29.083157, 17.021660>,  <33.119293, 29.223324, 17.112268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755779, 29.083157, 17.021660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254044, -0.034005, -0.966595,
		0.331009, -0.935976, 0.119925,
		-0.908787, -0.350418, -0.226523,
		32.483143, 28.978031, 16.953703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204689, 28.685719, 16.620491>,  <33.119293, 29.223324, 17.112268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204689, 28.685719, 16.620491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840492, 28.844524, 16.574207>,  <32.621975, 28.939808, 16.546438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840492, 28.844524, 16.574207>,  <33.204689, 28.685719, 16.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840492, 28.844524, 16.574207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165557, 0.093555, -0.981753,
		-0.378945, -0.913032, -0.150909,
		-0.910490, 0.397014, -0.115707,
		32.567345, 28.963629, 16.539495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777634, 28.217283, 16.172361>,  <33.204689, 28.685719, 16.620491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777634, 28.217283, 16.172361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653046, 28.596931, 16.153795>,  <32.578293, 28.824720, 16.142656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653046, 28.596931, 16.153795>,  <32.777634, 28.217283, 16.172361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653046, 28.596931, 16.153795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127477, -0.006670, -0.991819,
		-0.941665, -0.314843, -0.118914,
		-0.311474, 0.949120, -0.046416,
		32.559605, 28.881668, 16.139870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101982, 28.213282, 15.557808>,  <32.777634, 28.217283, 16.172361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101982, 28.213282, 15.557808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895409, 27.876308, 15.619259>,  <32.771465, 27.674126, 15.656129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895409, 27.876308, 15.619259>,  <33.101982, 28.213282, 15.557808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895409, 27.876308, 15.619259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346530, 0.041540, -0.937118,
		0.783077, -0.537199, -0.313381,
		-0.516437, -0.842432, 0.153627,
		32.740479, 27.623579, 15.665347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318996, 27.792364, 15.062611>,  <33.101982, 28.213282, 15.557808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318996, 27.792364, 15.062611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940075, 27.735741, 15.177558>,  <32.712723, 27.701767, 15.246526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940075, 27.735741, 15.177558>,  <33.318996, 27.792364, 15.062611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940075, 27.735741, 15.177558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306030, 0.134777, -0.942433,
		0.094669, -0.980713, -0.170993,
		-0.947303, -0.141548, 0.287369,
		32.655884, 27.693274, 15.263768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019691, 27.371397, 14.627896>,  <33.318996, 27.792364, 15.062611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019691, 27.371397, 14.627896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737011, 27.614380, 14.772986>,  <32.567402, 27.760170, 14.860041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737011, 27.614380, 14.772986>,  <33.019691, 27.371397, 14.627896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737011, 27.614380, 14.772986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276756, 0.234482, -0.931893,
		-0.651139, -0.758955, 0.002410,
		-0.706699, 0.607459, 0.362725,
		32.525002, 27.796618, 14.881804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207695, 27.260532, 14.534988>,  <33.019691, 27.371397, 14.627896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207695, 27.260532, 14.534988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385906, 27.618120, 14.515707>,  <32.492832, 27.832672, 14.504138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385906, 27.618120, 14.515707>,  <32.207695, 27.260532, 14.534988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385906, 27.618120, 14.515707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070392, -0.018696, -0.997344,
		-0.892494, 0.447742, 0.054599,
		0.445532, 0.893967, -0.048203,
		32.519566, 27.886311, 14.501246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654652, 27.282934, 15.079443>,  <32.207695, 27.260532, 14.534988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654652, 27.282934, 15.079443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851521, 26.946594, 14.989343>,  <31.969641, 26.744789, 14.935283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851521, 26.946594, 14.989343>,  <31.654652, 27.282934, 15.079443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851521, 26.946594, 14.989343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020308, -0.247598, 0.968650,
		-0.870262, -0.481316, -0.104784,
		0.492171, -0.840851, -0.225250,
		31.999172, 26.694340, 14.921768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322765, 26.638680, 15.205436>,  <31.654652, 27.282934, 15.079443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322765, 26.638680, 15.205436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708263, 26.541027, 15.248507>,  <31.939562, 26.482435, 15.274350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708263, 26.541027, 15.248507>,  <31.322765, 26.638680, 15.205436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708263, 26.541027, 15.248507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198957, -0.388594, 0.899673,
		-0.177793, -0.888479, -0.423077,
		0.963746, -0.244130, 0.107680,
		31.997387, 26.467789, 15.280811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354277, 26.080385, 15.575758>,  <31.322765, 26.638680, 15.205436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354277, 26.080385, 15.575758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736097, 26.197882, 15.595937>,  <31.965191, 26.268379, 15.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736097, 26.197882, 15.595937>,  <31.354277, 26.080385, 15.575758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736097, 26.197882, 15.595937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102615, -0.482820, 0.869687,
		0.279818, -0.824986, -0.491019,
		0.954553, 0.293740, 0.050446,
		32.022465, 26.286003, 15.611071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518246, 25.654564, 16.149239>,  <31.354277, 26.080385, 15.575758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518246, 25.654564, 16.149239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846380, 25.864922, 16.059368>,  <32.043262, 25.991137, 16.005445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846380, 25.864922, 16.059368>,  <31.518246, 25.654564, 16.149239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846380, 25.864922, 16.059368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430485, -0.309236, 0.847972,
		0.376468, -0.792342, -0.480068,
		0.820338, 0.525896, -0.224675,
		32.092484, 26.022690, 15.991965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045010, 25.199165, 16.210957>,  <31.518246, 25.654564, 16.149239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045010, 25.199165, 16.210957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114857, 25.586407, 16.282827>,  <32.156765, 25.818752, 16.325951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114857, 25.586407, 16.282827>,  <32.045010, 25.199165, 16.210957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114857, 25.586407, 16.282827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177449, -0.210434, 0.961369,
		0.968515, -0.135984, -0.208534,
		0.174613, 0.968104, 0.179678,
		32.167240, 25.876839, 16.336731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440002, 25.142649, 16.652712>,  <32.045010, 25.199165, 16.210957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440002, 25.142649, 16.652712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355610, 25.532999, 16.675165>,  <32.304974, 25.767210, 16.688637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355610, 25.532999, 16.675165>,  <32.440002, 25.142649, 16.652712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355610, 25.532999, 16.675165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097017, -0.036239, 0.994623,
		0.972664, 0.215291, -0.087031,
		-0.210979, 0.975877, 0.056135,
		32.292316, 25.825762, 16.692005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036079, 25.441229, 17.044310>,  <32.440002, 25.142649, 16.652712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036079, 25.441229, 17.044310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728504, 25.696337, 17.062092>,  <32.543957, 25.849401, 17.072762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728504, 25.696337, 17.062092>,  <33.036079, 25.441229, 17.044310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728504, 25.696337, 17.062092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101552, 0.053195, 0.993407,
		0.631202, 0.768386, -0.105670,
		-0.768942, 0.637771, 0.044454,
		32.497822, 25.887669, 17.075428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175320, 25.848269, 17.597660>,  <33.036079, 25.441229, 17.044310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175320, 25.848269, 17.597660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796734, 25.963997, 17.540403>,  <32.569580, 26.033434, 17.506048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796734, 25.963997, 17.540403>,  <33.175320, 25.848269, 17.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796734, 25.963997, 17.540403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115459, 0.110680, 0.987127,
		0.301441, 0.950811, -0.071350,
		-0.946469, 0.289322, -0.143143,
		32.512794, 26.050793, 17.497461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026016, 26.439850, 18.046673>,  <33.175320, 25.848269, 17.597660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026016, 26.439850, 18.046673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659840, 26.295261, 17.975903>,  <32.440132, 26.208509, 17.933441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659840, 26.295261, 17.975903>,  <33.026016, 26.439850, 18.046673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659840, 26.295261, 17.975903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182241, -0.019634, 0.983058,
		-0.358820, 0.932177, -0.047901,
		-0.915443, -0.361470, -0.176926,
		32.385208, 26.186821, 17.922825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634502, 26.752018, 18.500952>,  <33.026016, 26.439850, 18.046673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634502, 26.752018, 18.500952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412281, 26.432739, 18.407799>,  <32.278946, 26.241171, 18.351906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412281, 26.432739, 18.407799>,  <32.634502, 26.752018, 18.500952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412281, 26.432739, 18.407799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218866, -0.129824, 0.967080,
		-0.802155, 0.588239, -0.102574,
		-0.555558, -0.798198, -0.232884,
		32.245613, 26.193279, 18.337933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934675, 26.897787, 18.748758>,  <32.634502, 26.752018, 18.500952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934675, 26.897787, 18.748758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948652, 26.499056, 18.720161>,  <31.957039, 26.259817, 18.703003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948652, 26.499056, 18.720161>,  <31.934675, 26.897787, 18.748758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948652, 26.499056, 18.720161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359686, -0.079286, 0.929699,
		-0.932419, -0.006771, -0.361316,
		0.034943, -0.996829, -0.071492,
		31.959135, 26.200006, 18.698713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352091, 26.595644, 19.045362>,  <31.934675, 26.897787, 18.748758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352091, 26.595644, 19.045362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586512, 26.271744, 19.033749>,  <31.727163, 26.077404, 19.026779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586512, 26.271744, 19.033749>,  <31.352091, 26.595644, 19.045362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586512, 26.271744, 19.033749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258161, -0.220571, 0.940586,
		-0.768046, -0.543736, -0.338313,
		0.586052, -0.809753, -0.029037,
		31.762327, 26.028818, 19.025038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927729, 25.964458, 19.245501>,  <31.352091, 26.595644, 19.045362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927729, 25.964458, 19.245501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308828, 25.877083, 19.329931>,  <31.537489, 25.824657, 19.380590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308828, 25.877083, 19.329931>,  <30.927729, 25.964458, 19.245501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308828, 25.877083, 19.329931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276518, -0.336086, 0.900325,
		-0.125723, -0.916151, -0.380607,
		0.952750, -0.218436, 0.211078,
		31.594654, 25.811552, 19.393255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909740, 25.511204, 19.774536>,  <30.927729, 25.964458, 19.245501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909740, 25.511204, 19.774536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300062, 25.584843, 19.821728>,  <31.534254, 25.629026, 19.850042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300062, 25.584843, 19.821728>,  <30.909740, 25.511204, 19.774536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300062, 25.584843, 19.821728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098275, -0.112730, 0.988754,
		0.195327, -0.976422, -0.091910,
		0.975802, 0.184098, 0.117977,
		31.592802, 25.640072, 19.857121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023193, 25.032995, 20.278872>,  <30.909740, 25.511204, 19.774536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023193, 25.032995, 20.278872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349430, 25.264206, 20.268322>,  <31.545172, 25.402931, 20.261992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349430, 25.264206, 20.268322>,  <31.023193, 25.032995, 20.278872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349430, 25.264206, 20.268322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125990, -0.132914, 0.983087,
		0.564744, -0.805122, -0.181229,
		0.815593, 0.578025, -0.026375,
		31.594109, 25.437614, 20.260410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386656, 24.718449, 20.716530>,  <31.023193, 25.032995, 20.278872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386656, 24.718449, 20.716530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554556, 25.079996, 20.683462>,  <31.655296, 25.296925, 20.663622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554556, 25.079996, 20.683462>,  <31.386656, 24.718449, 20.716530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554556, 25.079996, 20.683462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270548, -0.037659, 0.961970,
		0.866380, -0.426150, -0.260347,
		0.419748, 0.903868, -0.082667,
		31.680481, 25.351156, 20.658663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171154, 24.684065, 20.920540>,  <31.386656, 24.718449, 20.716530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171154, 24.684065, 20.920540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049114, 25.064142, 20.945980>,  <31.975891, 25.292189, 20.961245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049114, 25.064142, 20.945980>,  <32.171154, 24.684065, 20.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049114, 25.064142, 20.945980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398662, 0.066785, 0.914663,
		0.864860, 0.304419, -0.399182,
		-0.305100, 0.950194, 0.063601,
		31.957584, 25.349201, 20.965061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782207, 25.036913, 21.249664>,  <32.171154, 24.684065, 20.920540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782207, 25.036913, 21.249664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446777, 25.245239, 21.313583>,  <32.245518, 25.370235, 21.351934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446777, 25.245239, 21.313583>,  <32.782207, 25.036913, 21.249664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446777, 25.245239, 21.313583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340155, 0.271451, 0.900338,
		0.425535, 0.809360, -0.404792,
		-0.838579, 0.520818, 0.159796,
		32.195202, 25.401485, 21.361523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986576, 25.710573, 21.494423>,  <32.782207, 25.036913, 21.249664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986576, 25.710573, 21.494423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613472, 25.616098, 21.603365>,  <32.389610, 25.559414, 21.668730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613472, 25.616098, 21.603365>,  <32.986576, 25.710573, 21.494423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613472, 25.616098, 21.603365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258775, 0.087332, 0.961982,
		-0.250991, 0.967776, -0.020340,
		-0.932759, -0.236185, 0.272356,
		32.333645, 25.545242, 21.685072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980907, 26.173140, 22.013693>,  <32.986576, 25.710573, 21.494423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980907, 26.173140, 22.013693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664051, 25.932335, 22.053885>,  <32.473938, 25.787851, 22.077999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664051, 25.932335, 22.053885>,  <32.980907, 26.173140, 22.013693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664051, 25.932335, 22.053885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101657, 0.032191, 0.994299,
		-0.601813, 0.797839, 0.035699,
		-0.792141, -0.602011, 0.100479,
		32.426411, 25.751732, 22.084028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482143, 26.530319, 22.450497>,  <32.980907, 26.173140, 22.013693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482143, 26.530319, 22.450497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420422, 26.135242, 22.460747>,  <32.383389, 25.898197, 22.466896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420422, 26.135242, 22.460747>,  <32.482143, 26.530319, 22.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420422, 26.135242, 22.460747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150800, 0.002089, 0.988562,
		-0.976447, 0.156403, 0.148621,
		-0.154304, -0.987691, 0.025626,
		32.374130, 25.838936, 22.468435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075546, 26.370001, 23.086672>,  <32.482143, 26.530319, 22.450497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075546, 26.370001, 23.086672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229862, 26.017143, 22.978605>,  <32.322453, 25.805428, 22.913765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229862, 26.017143, 22.978605>,  <32.075546, 26.370001, 23.086672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229862, 26.017143, 22.978605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164954, -0.222165, 0.960954,
		-0.907722, -0.415287, 0.059806,
		0.385785, -0.882145, -0.270167,
		32.345596, 25.752501, 22.897554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770575, 25.844488, 23.497597>,  <32.075546, 26.370001, 23.086672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770575, 25.844488, 23.497597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130070, 25.715950, 23.378263>,  <32.345768, 25.638826, 23.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130070, 25.715950, 23.378263>,  <31.770575, 25.844488, 23.497597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130070, 25.715950, 23.378263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208195, -0.286061, 0.935320,
		-0.385906, -0.902720, -0.190191,
		0.898738, -0.321348, -0.298335,
		32.399693, 25.619545, 23.288763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942343, 25.346914, 24.060772>,  <31.770575, 25.844488, 23.497597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942343, 25.346914, 24.060772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284489, 25.394314, 23.859055>,  <32.489777, 25.422754, 23.738024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284489, 25.394314, 23.859055>,  <31.942343, 25.346914, 24.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284489, 25.394314, 23.859055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517018, -0.134480, 0.845345,
		0.032357, -0.983805, -0.176297,
		0.855363, 0.118501, -0.504294,
		32.541096, 25.429865, 23.707766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400005, 24.731363, 24.215525>,  <31.942343, 25.346914, 24.060772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400005, 24.731363, 24.215525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639896, 25.026043, 24.090557>,  <32.783829, 25.202850, 24.015577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639896, 25.026043, 24.090557>,  <32.400005, 24.731363, 24.215525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639896, 25.026043, 24.090557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652082, -0.223630, 0.724416,
		0.463812, -0.638171, -0.614505,
		0.599723, 0.736700, -0.312418,
		32.819813, 25.247053, 23.996832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093487, 24.428711, 24.159670>,  <32.400005, 24.731363, 24.215525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093487, 24.428711, 24.159670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125778, 24.824787, 24.205278>,  <33.145153, 25.062433, 24.232643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125778, 24.824787, 24.205278>,  <33.093487, 24.428711, 24.159670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125778, 24.824787, 24.205278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571945, -0.139709, 0.808307,
		0.816310, -0.000042, -0.577614,
		0.080732, 0.990193, 0.114022,
		33.149998, 25.121845, 24.239485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727840, 24.470442, 24.340229>,  <33.093487, 24.428711, 24.159670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727840, 24.470442, 24.340229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552223, 24.805649, 24.469826>,  <33.446854, 25.006773, 24.547585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552223, 24.805649, 24.469826>,  <33.727840, 24.470442, 24.340229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552223, 24.805649, 24.469826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520087, -0.057005, 0.852209,
		0.732635, 0.542659, -0.410814,
		-0.439040, 0.838017, 0.323994,
		33.420509, 25.057055, 24.567024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308647, 24.865204, 24.536442>,  <33.727840, 24.470442, 24.340229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308647, 24.865204, 24.536442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968586, 24.967241, 24.720690>,  <33.764549, 25.028463, 24.831240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968586, 24.967241, 24.720690>,  <34.308647, 24.865204, 24.536442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968586, 24.967241, 24.720690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488667, 0.056471, 0.870641,
		0.196082, 0.965266, -0.172664,
		-0.850151, 0.255092, 0.460621,
		33.713539, 25.043770, 24.858875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501911, 25.314606, 24.964405>,  <34.308647, 24.865204, 24.536442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501911, 25.314606, 24.964405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140339, 25.283947, 25.132710>,  <33.923397, 25.265551, 25.233692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140339, 25.283947, 25.132710>,  <34.501911, 25.314606, 24.964405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140339, 25.283947, 25.132710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427680, -0.166943, 0.888381,
		0.002150, 0.982983, 0.183686,
		-0.903928, -0.076649, 0.420761,
		33.869160, 25.260952, 25.258938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594505, 25.704721, 25.587313>,  <34.501911, 25.314606, 24.964405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594505, 25.704721, 25.587313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282799, 25.461811, 25.649220>,  <34.095776, 25.316065, 25.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282799, 25.461811, 25.649220>,  <34.594505, 25.704721, 25.587313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282799, 25.461811, 25.649220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293449, -0.135380, 0.946340,
		-0.553739, 0.782870, 0.283702,
		-0.779269, -0.607278, 0.154768,
		34.049019, 25.279627, 25.695650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249592, 25.982193, 26.243502>,  <34.594505, 25.704721, 25.587313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249592, 25.982193, 26.243502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087063, 25.620216, 26.192928>,  <33.989544, 25.403030, 26.162584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087063, 25.620216, 26.192928>,  <34.249592, 25.982193, 26.243502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087063, 25.620216, 26.192928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207145, -0.043540, 0.977341,
		-0.889939, 0.423307, -0.169762,
		-0.406324, -0.904940, -0.126434,
		33.965164, 25.348734, 26.154999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599648, 26.005260, 26.598465>,  <34.249592, 25.982193, 26.243502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599648, 26.005260, 26.598465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706509, 25.621428, 26.563059>,  <33.770626, 25.391129, 26.541815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706509, 25.621428, 26.563059>,  <33.599648, 26.005260, 26.598465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706509, 25.621428, 26.563059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063990, -0.109314, 0.991945,
		-0.961527, -0.259337, -0.090608,
		0.267153, -0.959581, -0.088514,
		33.786655, 25.333553, 26.536505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110519, 25.656069, 27.045866>,  <33.599648, 26.005260, 26.598465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110519, 25.656069, 27.045866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421135, 25.411644, 26.984436>,  <33.607506, 25.264990, 26.947578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421135, 25.411644, 26.984436>,  <33.110519, 25.656069, 27.045866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421135, 25.411644, 26.984436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155601, -0.050206, 0.986543,
		-0.610550, -0.789988, 0.056095,
		0.776542, -0.611063, -0.153576,
		33.654099, 25.228325, 26.938364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074070, 25.016182, 27.475489>,  <33.110519, 25.656069, 27.045866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074070, 25.016182, 27.475489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455360, 25.077467, 27.371271>,  <33.684135, 25.114239, 27.308741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455360, 25.077467, 27.371271>,  <33.074070, 25.016182, 27.475489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455360, 25.077467, 27.371271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248163, 0.095361, 0.964013,
		0.172547, -0.983581, 0.052878,
		0.953228, 0.153215, -0.260543,
		33.741329, 25.123430, 27.293108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445843, 24.684334, 28.004368>,  <33.074070, 25.016182, 27.475489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445843, 24.684334, 28.004368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730751, 24.914444, 27.843502>,  <33.901695, 25.052509, 27.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730751, 24.914444, 27.843502>,  <33.445843, 24.684334, 28.004368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730751, 24.914444, 27.843502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393786, 0.146790, 0.907406,
		0.581040, -0.804682, -0.121981,
		0.712267, 0.575274, -0.402163,
		33.944431, 25.087027, 27.722853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085922, 24.392685, 28.307922>,  <33.445843, 24.684334, 28.004368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085922, 24.392685, 28.307922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165218, 24.760931, 28.173361>,  <34.212795, 24.981878, 28.092623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165218, 24.760931, 28.173361>,  <34.085922, 24.392685, 28.307922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165218, 24.760931, 28.173361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340363, 0.257202, 0.904434,
		0.919160, -0.293792, -0.262356,
		0.198237, 0.920615, -0.336406,
		34.224689, 25.037115, 28.072439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747673, 24.504576, 28.565907>,  <34.085922, 24.392685, 28.307922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747673, 24.504576, 28.565907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581554, 24.860634, 28.490892>,  <34.481884, 25.074268, 28.445883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581554, 24.860634, 28.490892>,  <34.747673, 24.504576, 28.565907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581554, 24.860634, 28.490892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316267, 0.334578, 0.887712,
		0.852939, 0.309351, -0.420472,
		-0.415295, 0.890146, -0.187537,
		34.456966, 25.127678, 28.434631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107437, 25.038713, 28.987474>,  <34.747673, 24.504576, 28.565907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107437, 25.038713, 28.987474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749035, 25.193251, 28.899925>,  <34.533993, 25.285973, 28.847395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749035, 25.193251, 28.899925>,  <35.107437, 25.038713, 28.987474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749035, 25.193251, 28.899925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101371, 0.301926, 0.947926,
		0.432310, 0.871538, -0.231364,
		-0.896009, 0.386344, -0.218875,
		34.480232, 25.309155, 28.834263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102879, 25.680347, 29.243839>,  <35.107437, 25.038713, 28.987474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102879, 25.680347, 29.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706676, 25.630775, 29.220064>,  <34.468956, 25.601032, 29.205799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706676, 25.630775, 29.220064>,  <35.102879, 25.680347, 29.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706676, 25.630775, 29.220064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109134, 0.446265, 0.888222,
		-0.083555, 0.886278, -0.455554,
		-0.990509, -0.123932, -0.059436,
		34.409523, 25.593596, 29.202234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837296, 26.228735, 29.611689>,  <35.102879, 25.680347, 29.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837296, 26.228735, 29.611689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518860, 25.988512, 29.581820>,  <34.327797, 25.844379, 29.563898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518860, 25.988512, 29.581820>,  <34.837296, 26.228735, 29.611689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518860, 25.988512, 29.581820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303356, 0.289233, 0.907921,
		-0.523658, 0.745438, -0.412437,
		-0.796089, -0.600555, -0.074674,
		34.280033, 25.808346, 29.559418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211460, 26.590536, 29.758495>,  <34.837296, 26.228735, 29.611689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211460, 26.590536, 29.758495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099186, 26.217909, 29.850925>,  <34.031822, 25.994331, 29.906384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099186, 26.217909, 29.850925>,  <34.211460, 26.590536, 29.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099186, 26.217909, 29.850925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262048, 0.305985, 0.915262,
		-0.923336, 0.196344, -0.330001,
		-0.280681, -0.931570, 0.231075,
		34.014980, 25.938438, 29.920248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488083, 26.596491, 29.989162>,  <34.211460, 26.590536, 29.758495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488083, 26.596491, 29.989162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650288, 26.260717, 30.133888>,  <33.747608, 26.059254, 30.220724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650288, 26.260717, 30.133888>,  <33.488083, 26.596491, 29.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650288, 26.260717, 30.133888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235306, 0.286621, 0.928698,
		-0.883286, -0.461733, -0.081296,
		0.405509, -0.839435, 0.361817,
		33.771938, 26.008886, 30.242434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998589, 26.293816, 30.394953>,  <33.488083, 26.596491, 29.989162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998589, 26.293816, 30.394953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324596, 26.115448, 30.542952>,  <33.520203, 26.008427, 30.631750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324596, 26.115448, 30.542952>,  <32.998589, 26.293816, 30.394953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324596, 26.115448, 30.542952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316908, 0.191531, 0.928916,
		-0.485089, -0.874340, 0.014786,
		0.815021, -0.445921, 0.369995,
		33.569103, 25.981672, 30.653950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848160, 25.728420, 30.888918>,  <32.998589, 26.293816, 30.394953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848160, 25.728420, 30.888918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202919, 25.896784, 30.965075>,  <33.415775, 25.997803, 31.010769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202919, 25.896784, 30.965075>,  <32.848160, 25.728420, 30.888918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202919, 25.896784, 30.965075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309971, 0.236612, 0.920833,
		0.342539, -0.875700, 0.340320,
		0.886897, 0.420910, 0.190393,
		33.468987, 26.023056, 31.022192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000347, 25.400747, 30.135509>,  <32.848160, 25.728420, 30.888918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000347, 25.400747, 30.135509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641083, 25.413239, 30.310930>,  <32.425522, 25.420734, 30.416183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641083, 25.413239, 30.310930>,  <33.000347, 25.400747, 30.135509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641083, 25.413239, 30.310930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438935, -0.121046, -0.890328,
		0.025281, -0.992156, 0.122426,
		-0.898163, 0.031229, 0.438552,
		32.371635, 25.422607, 30.442495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512745, 24.794500, 29.892092>,  <33.000347, 25.400747, 30.135509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512745, 24.794500, 29.892092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265045, 25.080072, 30.022835>,  <32.116425, 25.251415, 30.101280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265045, 25.080072, 30.022835>,  <32.512745, 24.794500, 29.892092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265045, 25.080072, 30.022835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555123, -0.103662, -0.825283,
		-0.555310, -0.692503, 0.460511,
		-0.619249, 0.713928, 0.326859,
		32.079269, 25.294250, 30.120893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914658, 24.536076, 29.640999>,  <32.512745, 24.794500, 29.892092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914658, 24.536076, 29.640999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855385, 24.922737, 29.724541>,  <31.819822, 25.154734, 29.774666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855385, 24.922737, 29.724541>,  <31.914658, 24.536076, 29.640999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855385, 24.922737, 29.724541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525445, 0.101957, -0.844697,
		-0.837825, -0.234909, 0.492816,
		-0.148181, 0.966655, 0.208854,
		31.810930, 25.212734, 29.787197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294460, 24.609165, 29.435514>,  <31.914658, 24.536076, 29.640999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294460, 24.609165, 29.435514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413860, 24.988333, 29.479961>,  <31.485500, 25.215834, 29.506630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413860, 24.988333, 29.479961>,  <31.294460, 24.609165, 29.435514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413860, 24.988333, 29.479961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591115, 0.275026, -0.758251,
		-0.749322, 0.160652, 0.642424,
		0.298498, 0.947920, 0.111119,
		31.503410, 25.272709, 29.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649378, 24.988071, 29.453716>,  <31.294460, 24.609165, 29.435514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649378, 24.988071, 29.453716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942026, 25.245142, 29.362770>,  <31.117615, 25.399385, 29.308203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942026, 25.245142, 29.362770>,  <30.649378, 24.988071, 29.453716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942026, 25.245142, 29.362770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610492, 0.469256, -0.638042,
		-0.303363, 0.605610, 0.735668,
		0.731621, 0.642678, -0.227365,
		31.161512, 25.437946, 29.294561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235731, 25.617306, 29.273909>,  <30.649378, 24.988071, 29.453716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235731, 25.617306, 29.273909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604551, 25.695938, 29.140535>,  <30.825844, 25.743116, 29.060513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604551, 25.695938, 29.140535>,  <30.235731, 25.617306, 29.273909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604551, 25.695938, 29.140535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387064, 0.465025, -0.796199,
		-0.001462, 0.863197, 0.504866,
		0.922052, 0.196579, -0.333432,
		30.881166, 25.754911, 29.040506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261456, 26.321617, 29.061079>,  <30.235731, 25.617306, 29.273909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261456, 26.321617, 29.061079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559504, 26.143257, 28.862698>,  <30.738333, 26.036242, 28.743670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.559504, 26.143257, 28.862698>,  <30.261456, 26.321617, 29.061079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559504, 26.143257, 28.862698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352150, 0.368475, -0.860358,
		0.566381, 0.815719, 0.117534,
		0.745119, -0.445901, -0.495953,
		30.783039, 26.009487, 28.713911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479086, 26.759981, 28.583584>,  <30.261456, 26.321617, 29.061079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479086, 26.759981, 28.583584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615395, 26.421980, 28.418736>,  <30.697180, 26.219179, 28.319826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615395, 26.421980, 28.418736>,  <30.479086, 26.759981, 28.583584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615395, 26.421980, 28.418736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453790, 0.236073, -0.859269,
		0.823377, 0.479830, -0.303008,
		0.340772, -0.845005, -0.412119,
		30.717627, 26.168478, 28.295099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957710, 26.899691, 27.945648>,  <30.479086, 26.759981, 28.583584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957710, 26.899691, 27.945648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857769, 26.515129, 27.899553>,  <30.797804, 26.284393, 27.871897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857769, 26.515129, 27.899553>,  <30.957710, 26.899691, 27.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857769, 26.515129, 27.899553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228242, 0.174134, -0.957906,
		0.940999, -0.213034, -0.262940,
		-0.249853, -0.961402, -0.115237,
		30.782812, 26.226709, 27.864983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379948, 26.624617, 27.349628>,  <30.957710, 26.899691, 27.945648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379948, 26.624617, 27.349628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093319, 26.352776, 27.412447>,  <30.921341, 26.189671, 27.450138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093319, 26.352776, 27.412447>,  <31.379948, 26.624617, 27.349628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093319, 26.352776, 27.412447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097435, -0.125414, -0.987308,
		0.690673, -0.722781, 0.023651,
		-0.716574, -0.679602, 0.157044,
		30.878347, 26.148895, 27.459560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529428, 26.069284, 26.917595>,  <31.379948, 26.624617, 27.349628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529428, 26.069284, 26.917595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140100, 26.029160, 27.000135>,  <30.906504, 26.005085, 27.049660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140100, 26.029160, 27.000135>,  <31.529428, 26.069284, 26.917595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140100, 26.029160, 27.000135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184873, -0.189770, -0.964266,
		0.135889, -0.976691, 0.166162,
		-0.973322, -0.100315, 0.206351,
		30.848104, 25.999065, 27.062040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334484, 25.419516, 26.748030>,  <31.529428, 26.069284, 26.917595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334484, 25.419516, 26.748030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002499, 25.641901, 26.729847>,  <30.803307, 25.775331, 26.718937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002499, 25.641901, 26.729847>,  <31.334484, 25.419516, 26.748030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002499, 25.641901, 26.729847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136357, -0.281223, -0.949905,
		-0.540894, -0.782189, 0.309215,
		-0.829964, 0.555962, -0.045455,
		30.753510, 25.808689, 26.716211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906012, 25.011101, 26.243505>,  <31.334484, 25.419516, 26.748030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906012, 25.011101, 26.243505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741087, 25.372852, 26.287500>,  <30.642132, 25.589903, 26.313896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741087, 25.372852, 26.287500>,  <30.906012, 25.011101, 26.243505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741087, 25.372852, 26.287500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317508, -0.029489, -0.947797,
		-0.853924, -0.425710, 0.299306,
		-0.412313, 0.904379, 0.109985,
		30.617393, 25.644165, 26.320496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260328, 24.971622, 26.051386>,  <30.906012, 25.011101, 26.243505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260328, 24.971622, 26.051386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343185, 25.353991, 25.968145>,  <30.392900, 25.583412, 25.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343185, 25.353991, 25.968145>,  <30.260328, 24.971622, 26.051386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343185, 25.353991, 25.968145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119696, -0.186352, -0.975165,
		-0.970960, 0.226909, 0.075818,
		0.207145, 0.955921, -0.208101,
		30.405329, 25.640766, 25.905716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792757, 25.055412, 25.538944>,  <30.260328, 24.971622, 26.051386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792757, 25.055412, 25.538944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030632, 25.373568, 25.492128>,  <30.173357, 25.564461, 25.464039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030632, 25.373568, 25.492128>,  <29.792757, 25.055412, 25.538944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030632, 25.373568, 25.492128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145359, -0.036804, -0.988694,
		-0.790705, 0.604979, 0.093730,
		0.594690, 0.795390, -0.117040,
		30.209040, 25.612185, 25.457016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384544, 25.594999, 25.005812>,  <29.792757, 25.055412, 25.538944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384544, 25.594999, 25.005812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764498, 25.718370, 24.985426>,  <29.992470, 25.792393, 24.973194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764498, 25.718370, 24.985426>,  <29.384544, 25.594999, 25.005812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764498, 25.718370, 24.985426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131504, 0.246333, -0.960222,
		-0.283604, 0.918800, 0.274547,
		0.949882, 0.308427, -0.050965,
		30.049463, 25.810898, 24.970137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426035, 26.270948, 24.724758>,  <29.384544, 25.594999, 25.005812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426035, 26.270948, 24.724758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787752, 26.116499, 24.651913>,  <30.004782, 26.023829, 24.608206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787752, 26.116499, 24.651913>,  <29.426035, 26.270948, 24.724758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787752, 26.116499, 24.651913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145839, 0.121516, -0.981817,
		0.401233, 0.914408, 0.053574,
		0.904292, -0.386124, -0.182113,
		30.059040, 26.000662, 24.597279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773863, 26.654432, 24.226889>,  <29.426035, 26.270948, 24.724758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773863, 26.654432, 24.226889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958979, 26.300432, 24.206484>,  <30.070047, 26.088032, 24.194241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958979, 26.300432, 24.206484>,  <29.773863, 26.654432, 24.226889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958979, 26.300432, 24.206484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136198, 0.127845, -0.982398,
		0.875943, 0.447696, 0.179700,
		0.462789, -0.885000, -0.051010,
		30.097815, 26.034933, 24.191181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467112, 26.773853, 23.838684>,  <29.773863, 26.654432, 24.226889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467112, 26.773853, 23.838684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360617, 26.388903, 23.816954>,  <30.296721, 26.157932, 23.803915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360617, 26.388903, 23.816954>,  <30.467112, 26.773853, 23.838684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360617, 26.388903, 23.816954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204667, -0.001365, -0.978831,
		0.941929, -0.271718, 0.197330,
		-0.266236, -0.962376, -0.054326,
		30.280746, 26.100189, 23.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961924, 26.482021, 23.389759>,  <30.467112, 26.773853, 23.838684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961924, 26.482021, 23.389759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654427, 26.226330, 23.397947>,  <30.469929, 26.072914, 23.402861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654427, 26.226330, 23.397947>,  <30.961924, 26.482021, 23.389759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654427, 26.226330, 23.397947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002124, -0.029454, -0.999564,
		0.639552, -0.768453, 0.021285,
		-0.768745, -0.639228, 0.020470,
		30.423803, 26.034561, 23.404089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034828, 26.009764, 22.891150>,  <30.961924, 26.482021, 23.389759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034828, 26.009764, 22.891150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659243, 25.908335, 22.984138>,  <30.433891, 25.847477, 23.039932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659243, 25.908335, 22.984138>,  <31.034828, 26.009764, 22.891150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659243, 25.908335, 22.984138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142674, -0.327860, -0.933891,
		0.313029, -0.910059, 0.271671,
		-0.938966, -0.253575, 0.232472,
		30.377552, 25.832262, 23.053881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950632, 25.315622, 22.713680>,  <31.034828, 26.009764, 22.891150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950632, 25.315622, 22.713680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616959, 25.536118, 22.720371>,  <30.416756, 25.668415, 22.724386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616959, 25.536118, 22.720371>,  <30.950632, 25.315622, 22.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616959, 25.536118, 22.720371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172716, -0.232327, -0.957180,
		-0.523747, -0.801351, 0.289010,
		-0.834181, 0.551236, 0.016726,
		30.366705, 25.701488, 22.725389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562223, 24.951221, 22.239048>,  <30.950632, 25.315622, 22.713680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562223, 24.951221, 22.239048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356323, 25.293728, 22.256218>,  <30.232782, 25.499231, 22.266520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356323, 25.293728, 22.256218>,  <30.562223, 24.951221, 22.239048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356323, 25.293728, 22.256218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152482, -0.042166, -0.987406,
		-0.843671, -0.514814, 0.152270,
		-0.514751, 0.856264, 0.042926,
		30.201899, 25.550608, 22.269096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982161, 24.885582, 21.805822>,  <30.562223, 24.951221, 22.239048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982161, 24.885582, 21.805822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980883, 25.284704, 21.832268>,  <29.980116, 25.524178, 21.848135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980883, 25.284704, 21.832268>,  <29.982161, 24.885582, 21.805822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980883, 25.284704, 21.832268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289109, 0.062371, -0.955262,
		-0.957291, -0.022166, 0.288275,
		-0.003194, 0.997807, 0.066115,
		29.979925, 25.584045, 21.852102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246166, 25.235889, 21.673525>,  <29.982161, 24.885582, 21.805822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246166, 25.235889, 21.673525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506039, 25.535379, 21.620878>,  <29.661963, 25.715075, 21.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506039, 25.535379, 21.620878>,  <29.246166, 25.235889, 21.673525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506039, 25.535379, 21.620878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427269, 0.216433, -0.877837,
		-0.628774, 0.626550, 0.460520,
		0.649681, 0.748727, -0.131618,
		29.700943, 25.759998, 21.581392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872416, 25.756636, 21.399120>,  <29.246166, 25.235889, 21.673525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872416, 25.756636, 21.399120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246262, 25.844015, 21.286852>,  <29.470570, 25.896442, 21.219490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246262, 25.844015, 21.286852>,  <28.872416, 25.756636, 21.399120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246262, 25.844015, 21.286852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333433, 0.263551, -0.905187,
		-0.123765, 0.939586, 0.319156,
		0.934615, 0.218448, -0.280671,
		29.526646, 25.909550, 21.202650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759031, 26.277443, 20.876244>,  <28.872416, 25.756636, 21.399120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759031, 26.277443, 20.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139921, 26.173754, 20.811661>,  <29.368456, 26.111540, 20.772911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139921, 26.173754, 20.811661>,  <28.759031, 26.277443, 20.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139921, 26.173754, 20.811661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127447, 0.143143, -0.981462,
		0.277527, 0.955152, 0.103268,
		0.952227, -0.259221, -0.161458,
		29.425589, 26.095987, 20.763224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185196, 26.892176, 20.532866>,  <28.759031, 26.277443, 20.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185196, 26.892176, 20.532866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348963, 26.535046, 20.457771>,  <29.447222, 26.320768, 20.412716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348963, 26.535046, 20.457771>,  <29.185196, 26.892176, 20.532866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348963, 26.535046, 20.457771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050374, 0.227578, -0.972456,
		0.910956, 0.388682, 0.138149,
		0.409416, -0.892824, -0.187734,
		29.471786, 26.267199, 20.401451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707273, 27.031837, 20.144644>,  <29.185196, 26.892176, 20.532866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707273, 27.031837, 20.144644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662186, 26.643681, 20.059196>,  <29.635134, 26.410786, 20.007927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662186, 26.643681, 20.059196>,  <29.707273, 27.031837, 20.144644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662186, 26.643681, 20.059196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092786, 0.224331, -0.970086,
		0.989285, -0.089527, -0.115325,
		-0.112719, -0.970392, -0.213621,
		29.628370, 26.352564, 19.995110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053307, 26.854414, 19.542862>,  <29.707273, 27.031837, 20.144644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053307, 26.854414, 19.542862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797745, 26.546984, 19.556097>,  <29.644407, 26.362526, 19.564037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797745, 26.546984, 19.556097>,  <30.053307, 26.854414, 19.542862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797745, 26.546984, 19.556097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216261, 0.138166, -0.966510,
		0.738263, -0.624663, -0.254488,
		-0.638905, -0.768574, 0.033088,
		29.606073, 26.316412, 19.566023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158667, 26.528271, 18.970636>,  <30.053307, 26.854414, 19.542862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158667, 26.528271, 18.970636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801735, 26.377575, 19.070086>,  <29.587576, 26.287157, 19.129755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801735, 26.377575, 19.070086>,  <30.158667, 26.528271, 18.970636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801735, 26.377575, 19.070086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255361, -0.032843, -0.966288,
		0.372203, -0.925737, -0.066897,
		-0.892332, -0.376739, 0.248622,
		29.534035, 26.264553, 19.144672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080889, 26.078077, 18.461369>,  <30.158667, 26.528271, 18.970636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080889, 26.078077, 18.461369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712675, 26.118607, 18.612284>,  <29.491747, 26.142923, 18.702833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712675, 26.118607, 18.612284>,  <30.080889, 26.078077, 18.461369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712675, 26.118607, 18.612284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382583, -0.038489, -0.923119,
		-0.079013, -0.994109, 0.074195,
		-0.920536, 0.101324, 0.377288,
		29.436514, 26.149004, 18.725470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622631, 25.700571, 18.042467>,  <30.080889, 26.078077, 18.461369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622631, 25.700571, 18.042467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333132, 25.915491, 18.215673>,  <29.159433, 26.044443, 18.319597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333132, 25.915491, 18.215673>,  <29.622631, 25.700571, 18.042467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333132, 25.915491, 18.215673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515910, -0.004569, -0.856631,
		-0.458289, -0.843379, 0.280504,
		-0.723746, 0.537299, 0.433014,
		29.116009, 26.076681, 18.345577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907902, 25.473339, 17.732986>,  <29.622631, 25.700571, 18.042467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907902, 25.473339, 17.732986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850914, 25.847103, 17.863571>,  <28.816721, 26.071362, 17.941921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850914, 25.847103, 17.863571>,  <28.907902, 25.473339, 17.732986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850914, 25.847103, 17.863571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544885, 0.201309, -0.813987,
		-0.826319, -0.293851, 0.480467,
		-0.142469, 0.934412, 0.326460,
		28.808174, 26.127426, 17.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276873, 25.639771, 17.410563>,  <28.907902, 25.473339, 17.732986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276873, 25.639771, 17.410563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398087, 26.004526, 17.521286>,  <28.470816, 26.223381, 17.587721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398087, 26.004526, 17.521286>,  <28.276873, 25.639771, 17.410563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398087, 26.004526, 17.521286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583033, 0.407167, -0.703056,
		-0.753818, 0.051663, 0.655049,
		0.303036, 0.911891, 0.276808,
		28.488997, 26.278093, 17.604328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671877, 25.960026, 17.388979>,  <28.276873, 25.639771, 17.410563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671877, 25.960026, 17.388979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951664, 26.243067, 17.348888>,  <28.119535, 26.412891, 17.324835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951664, 26.243067, 17.348888>,  <27.671877, 25.960026, 17.388979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951664, 26.243067, 17.348888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592696, 0.495996, -0.634586,
		-0.399324, 0.503274, 0.766326,
		0.699466, 0.707604, -0.100226,
		28.161503, 26.455347, 17.318821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318678, 26.569580, 17.592253>,  <27.671877, 25.960026, 17.388979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318678, 26.569580, 17.592253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633575, 26.655518, 17.361050>,  <27.822514, 26.707079, 17.222328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633575, 26.655518, 17.361050>,  <27.318678, 26.569580, 17.592253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633575, 26.655518, 17.361050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509205, 0.755163, -0.412842,
		0.347795, 0.619331, 0.703895,
		0.787242, 0.214842, -0.578008,
		27.869747, 26.719971, 17.187647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321060, 27.076756, 18.155985>,  <27.318678, 26.569580, 17.592253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321060, 27.076756, 18.155985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969862, 27.021187, 17.972757>,  <26.759144, 26.987846, 17.862822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969862, 27.021187, 17.972757>,  <27.321060, 27.076756, 18.155985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969862, 27.021187, 17.972757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357226, -0.446809, 0.820214,
		-0.318613, 0.883778, 0.342670,
		-0.877995, -0.138920, -0.458067,
		26.706463, 26.979511, 17.835337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777523, 27.337128, 18.611353>,  <27.321060, 27.076756, 18.155985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777523, 27.337128, 18.611353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595060, 27.081049, 18.364105>,  <26.485582, 26.927402, 18.215757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595060, 27.081049, 18.364105>,  <26.777523, 27.337128, 18.611353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595060, 27.081049, 18.364105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418042, -0.459024, 0.783925,
		-0.785596, 0.615993, -0.058242,
		-0.456158, -0.640196, -0.618118,
		26.458214, 26.888990, 18.178669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015186, 27.358492, 18.766329>,  <26.777523, 27.337128, 18.611353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015186, 27.358492, 18.766329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095060, 27.010117, 18.586735>,  <26.142984, 26.801090, 18.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095060, 27.010117, 18.586735>,  <26.015186, 27.358492, 18.766329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095060, 27.010117, 18.586735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431546, -0.489550, 0.757699,
		-0.879713, 0.042459, -0.473606,
		0.199683, -0.870940, -0.448987,
		26.154964, 26.748835, 18.452038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495773, 27.013395, 18.869810>,  <26.015186, 27.358492, 18.766329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495773, 27.013395, 18.869810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760555, 26.724195, 18.790733>,  <25.919424, 26.550674, 18.743286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760555, 26.724195, 18.790733>,  <25.495773, 27.013395, 18.869810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760555, 26.724195, 18.790733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305494, -0.501095, 0.809677,
		-0.684462, -0.475576, -0.552575,
		0.661955, -0.723002, -0.197695,
		25.959143, 26.507296, 18.731424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065712, 26.401806, 19.060896>,  <25.495773, 27.013395, 18.869810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065712, 26.401806, 19.060896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460951, 26.340534, 19.055256>,  <25.698093, 26.303770, 19.051872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460951, 26.340534, 19.055256>,  <25.065712, 26.401806, 19.060896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460951, 26.340534, 19.055256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043783, -0.367930, 0.928822,
		-0.147464, -0.917150, -0.370257,
		0.988098, -0.153179, -0.014101,
		25.757380, 26.294580, 19.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188353, 25.720348, 19.395166>,  <25.065712, 26.401806, 19.060896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188353, 25.720348, 19.395166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549789, 25.889685, 19.421406>,  <25.766651, 25.991285, 19.437149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549789, 25.889685, 19.421406>,  <25.188353, 25.720348, 19.395166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549789, 25.889685, 19.421406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094619, -0.346574, 0.933239,
		0.417812, -0.837061, -0.353218,
		0.903593, 0.423340, 0.065601,
		25.820868, 26.016687, 19.441086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591633, 25.265459, 19.627073>,  <25.188353, 25.720348, 19.395166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591633, 25.265459, 19.627073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759375, 25.609861, 19.742178>,  <25.860020, 25.816504, 19.811241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759375, 25.609861, 19.742178>,  <25.591633, 25.265459, 19.627073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759375, 25.609861, 19.742178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034565, -0.301609, 0.952805,
		0.907164, -0.409511, -0.096721,
		0.419356, 0.861007, 0.287763,
		25.885181, 25.868164, 19.828506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008793, 25.088757, 20.195633>,  <25.591633, 25.265459, 19.627073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008793, 25.088757, 20.195633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017347, 25.487116, 20.230797>,  <26.022480, 25.726131, 20.251894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017347, 25.487116, 20.230797>,  <26.008793, 25.088757, 20.195633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017347, 25.487116, 20.230797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242497, -0.090470, 0.965925,
		0.969917, 0.000660, -0.243437,
		0.021386, 0.995899, 0.087909,
		26.023764, 25.785885, 20.257170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575838, 25.217449, 20.613541>,  <26.008793, 25.088757, 20.195633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575838, 25.217449, 20.613541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329821, 25.526875, 20.674622>,  <26.182209, 25.712530, 20.711271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329821, 25.526875, 20.674622>,  <26.575838, 25.217449, 20.613541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329821, 25.526875, 20.674622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140217, -0.083278, 0.986613,
		0.775925, 0.628222, -0.057247,
		-0.615045, 0.773564, 0.152704,
		26.145308, 25.758944, 20.720432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874071, 25.516850, 21.115423>,  <26.575838, 25.217449, 20.613541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874071, 25.516850, 21.115423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523357, 25.708033, 21.136593>,  <26.312929, 25.822742, 21.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523357, 25.708033, 21.136593>,  <26.874071, 25.516850, 21.115423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523357, 25.708033, 21.136593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122421, 0.115419, 0.985744,
		0.465037, 0.870766, -0.159710,
		-0.876786, 0.477960, 0.052926,
		26.260323, 25.851421, 21.152472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021214, 26.224434, 21.444944>,  <26.874071, 25.516850, 21.115423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021214, 26.224434, 21.444944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631361, 26.142326, 21.480627>,  <26.397449, 26.093061, 21.502037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631361, 26.142326, 21.480627>,  <27.021214, 26.224434, 21.444944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631361, 26.142326, 21.480627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049955, 0.189005, 0.980704,
		-0.218167, 0.960282, -0.173956,
		-0.974632, -0.205268, 0.089206,
		26.338972, 26.080746, 21.507389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772760, 26.795782, 21.794308>,  <27.021214, 26.224434, 21.444944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772760, 26.795782, 21.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500275, 26.505867, 21.835543>,  <26.336782, 26.331917, 21.860283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500275, 26.505867, 21.835543>,  <26.772760, 26.795782, 21.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500275, 26.505867, 21.835543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075357, 0.209487, 0.974903,
		-0.728194, 0.656351, -0.197323,
		-0.681215, -0.724789, 0.103087,
		26.295910, 26.288431, 21.866468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280874, 27.039463, 22.333784>,  <26.772760, 26.795782, 21.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280874, 27.039463, 22.333784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254715, 26.640388, 22.326378>,  <26.239019, 26.400944, 22.321934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254715, 26.640388, 22.326378>,  <26.280874, 27.039463, 22.333784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254715, 26.640388, 22.326378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013995, -0.019471, 0.999712,
		-0.997761, 0.065118, 0.015236,
		-0.065396, -0.997688, -0.018516,
		26.235096, 26.341082, 22.320824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831285, 26.861582, 22.932306>,  <26.280874, 27.039463, 22.333784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831285, 26.861582, 22.932306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024126, 26.526930, 22.828285>,  <26.139832, 26.326139, 22.765873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024126, 26.526930, 22.828285>,  <25.831285, 26.861582, 22.932306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024126, 26.526930, 22.828285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303518, -0.118952, 0.945372,
		-0.821860, -0.534697, 0.196585,
		0.482103, -0.836630, -0.260052,
		26.168756, 26.275940, 22.750269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720749, 26.445198, 23.517309>,  <25.831285, 26.861582, 22.932306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720749, 26.445198, 23.517309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033976, 26.306414, 23.310843>,  <26.221910, 26.223143, 23.186962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033976, 26.306414, 23.310843>,  <25.720749, 26.445198, 23.517309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033976, 26.306414, 23.310843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485933, -0.176667, 0.855954,
		-0.388174, -0.921090, 0.030259,
		0.783065, -0.346963, -0.516165,
		26.268894, 26.202326, 23.155993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848467, 25.883760, 23.947554>,  <25.720749, 26.445198, 23.517309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848467, 25.883760, 23.947554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192366, 25.914991, 23.745668>,  <26.398705, 25.933729, 23.624537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192366, 25.914991, 23.745668>,  <25.848467, 25.883760, 23.947554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192366, 25.914991, 23.745668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510277, -0.172359, 0.842561,
		-0.021207, -0.981935, -0.188027,
		0.859748, 0.078077, -0.504714,
		26.450291, 25.938416, 23.594254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220085, 25.315042, 24.086966>,  <25.848467, 25.883760, 23.947554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220085, 25.315042, 24.086966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494871, 25.583843, 23.976339>,  <26.659742, 25.745125, 23.909964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494871, 25.583843, 23.976339>,  <26.220085, 25.315042, 24.086966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494871, 25.583843, 23.976339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505122, -0.167969, 0.846545,
		0.522427, -0.721247, -0.454833,
		0.686965, 0.672004, -0.276566,
		26.700960, 25.785444, 23.893370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806793, 25.073776, 24.391483>,  <26.220085, 25.315042, 24.086966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806793, 25.073776, 24.391483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926258, 25.437126, 24.274418>,  <26.997938, 25.655136, 24.204178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926258, 25.437126, 24.274418>,  <26.806793, 25.073776, 24.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926258, 25.437126, 24.274418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577610, 0.072065, 0.813125,
		0.759714, -0.411898, -0.503164,
		0.298664, 0.908376, -0.292665,
		27.015858, 25.709639, 24.186619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579428, 25.150679, 24.407213>,  <26.806793, 25.073776, 24.391483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579428, 25.150679, 24.407213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431984, 25.516773, 24.472288>,  <27.343517, 25.736431, 24.511333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431984, 25.516773, 24.472288>,  <27.579428, 25.150679, 24.407213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431984, 25.516773, 24.472288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550618, 0.073962, 0.831475,
		0.748965, 0.396065, -0.531210,
		-0.368608, 0.915239, 0.162686,
		27.321402, 25.791346, 24.521093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141724, 25.603117, 24.593536>,  <27.579428, 25.150679, 24.407213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141724, 25.603117, 24.593536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843983, 25.827480, 24.738489>,  <27.665339, 25.962099, 24.825460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843983, 25.827480, 24.738489>,  <28.141724, 25.603117, 24.593536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843983, 25.827480, 24.738489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539398, 0.185096, 0.821456,
		0.393685, 0.806921, -0.440329,
		-0.744353, 0.560908, 0.362382,
		27.620676, 25.995752, 24.847204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396931, 26.277763, 24.961115>,  <28.141724, 25.603117, 24.593536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396931, 26.277763, 24.961115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032887, 26.227161, 25.118946>,  <27.814459, 26.196800, 25.213644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032887, 26.227161, 25.118946>,  <28.396931, 26.277763, 24.961115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032887, 26.227161, 25.118946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362453, 0.218426, 0.906045,
		-0.200807, 0.967619, -0.152939,
		-0.910112, -0.126507, 0.394578,
		27.759853, 26.189209, 25.237320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333887, 26.780151, 25.510139>,  <28.396931, 26.277763, 24.961115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333887, 26.780151, 25.510139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034510, 26.527895, 25.592237>,  <27.854883, 26.376541, 25.641497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034510, 26.527895, 25.592237>,  <28.333887, 26.780151, 25.510139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034510, 26.527895, 25.592237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194194, 0.087515, 0.977052,
		-0.634128, 0.771126, 0.056966,
		-0.748445, -0.630639, 0.205243,
		27.809977, 26.338703, 25.653811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157120, 27.033321, 26.163776>,  <28.333887, 26.780151, 25.510139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157120, 27.033321, 26.163776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955368, 26.689264, 26.133425>,  <27.834316, 26.482830, 26.115213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955368, 26.689264, 26.133425>,  <28.157120, 27.033321, 26.163776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955368, 26.689264, 26.133425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075065, -0.131220, 0.988507,
		-0.860213, 0.492886, 0.130751,
		-0.504379, -0.860142, -0.075878,
		27.804054, 26.431221, 26.110661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667553, 27.153896, 26.668722>,  <28.157120, 27.033321, 26.163776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667553, 27.153896, 26.668722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710276, 26.767752, 26.573500>,  <27.735909, 26.536066, 26.516365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710276, 26.767752, 26.573500>,  <27.667553, 27.153896, 26.668722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710276, 26.767752, 26.573500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015279, -0.237806, 0.971193,
		-0.994163, -0.107367, -0.010649,
		0.106807, -0.965361, -0.238058,
		27.742317, 26.478144, 26.502083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215155, 26.808340, 27.146458>,  <27.667553, 27.153896, 26.668722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215155, 26.808340, 27.146458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485357, 26.544212, 27.015207>,  <27.647478, 26.385736, 26.936457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485357, 26.544212, 27.015207>,  <27.215155, 26.808340, 27.146458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485357, 26.544212, 27.015207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247773, -0.215855, 0.944465,
		-0.694477, -0.719294, 0.017797,
		0.675507, -0.660320, -0.328128,
		27.688009, 26.346117, 26.916769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042870, 26.124275, 27.396845>,  <27.215155, 26.808340, 27.146458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042870, 26.124275, 27.396845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437185, 26.149927, 27.334743>,  <27.673775, 26.165318, 27.297482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437185, 26.149927, 27.334743>,  <27.042870, 26.124275, 27.396845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437185, 26.149927, 27.334743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, -0.117447, 0.979785,
		0.044599, -0.991006, -0.126164,
		0.985791, 0.064129, -0.155254,
		27.732924, 26.169167, 27.288168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317169, 25.617067, 27.766199>,  <27.042870, 26.124275, 27.396845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317169, 25.617067, 27.766199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619553, 25.873297, 27.712250>,  <27.800983, 26.027035, 27.679880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619553, 25.873297, 27.712250>,  <27.317169, 25.617067, 27.766199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619553, 25.873297, 27.712250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391824, -0.277720, 0.877123,
		0.524405, -0.715916, -0.460938,
		0.755958, 0.640575, -0.134875,
		27.846340, 26.065470, 27.671787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838062, 25.280138, 28.129684>,  <27.317169, 25.617067, 27.766199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838062, 25.280138, 28.129684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019217, 25.631353, 28.067795>,  <28.127909, 25.842083, 28.030661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019217, 25.631353, 28.067795>,  <27.838062, 25.280138, 28.129684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019217, 25.631353, 28.067795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426309, -0.060850, 0.902529,
		0.783041, -0.474704, -0.401875,
		0.452888, 0.878040, -0.154722,
		28.155083, 25.894766, 28.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485622, 25.079517, 28.215105>,  <27.838062, 25.280138, 28.129684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485622, 25.079517, 28.215105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414053, 25.468317, 28.276035>,  <28.371111, 25.701597, 28.312593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414053, 25.468317, 28.276035>,  <28.485622, 25.079517, 28.215105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414053, 25.468317, 28.276035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515158, -0.039348, 0.856192,
		0.838212, 0.231663, -0.493693,
		-0.178922, 0.972000, 0.152325,
		28.360376, 25.759916, 28.321733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072021, 25.310204, 28.505156>,  <28.485622, 25.079517, 28.215105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072021, 25.310204, 28.505156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811382, 25.597372, 28.603144>,  <28.654999, 25.769674, 28.661936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811382, 25.597372, 28.603144>,  <29.072021, 25.310204, 28.505156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811382, 25.597372, 28.603144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457926, 0.114820, 0.881544,
		0.604753, 0.686589, -0.403572,
		-0.651596, 0.717922, 0.244969,
		28.615904, 25.812748, 28.676634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404102, 25.964758, 28.661413>,  <29.072021, 25.310204, 28.505156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404102, 25.964758, 28.661413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053900, 26.021523, 28.846174>,  <28.843779, 26.055582, 28.957031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053900, 26.021523, 28.846174>,  <29.404102, 25.964758, 28.661413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053900, 26.021523, 28.846174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483184, 0.247190, 0.839899,
		0.005013, 0.958519, -0.284985,
		-0.875504, 0.141911, 0.461902,
		28.791248, 26.064096, 28.984745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342386, 26.729034, 29.044331>,  <29.404102, 25.964758, 28.661413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342386, 26.729034, 29.044331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084206, 26.478207, 29.218767>,  <28.929298, 26.327709, 29.323429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084206, 26.478207, 29.218767>,  <29.342386, 26.729034, 29.044331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084206, 26.478207, 29.218767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218462, 0.395535, 0.892091,
		-0.731894, 0.671070, -0.118307,
		-0.645450, -0.627071, 0.436093,
		28.890572, 26.290085, 29.349594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922970, 27.150995, 29.491432>,  <29.342386, 26.729034, 29.044331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922970, 27.150995, 29.491432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883940, 26.777201, 29.628376>,  <28.860521, 26.552923, 29.710543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883940, 26.777201, 29.628376>,  <28.922970, 27.150995, 29.491432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883940, 26.777201, 29.628376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536320, 0.240406, 0.809052,
		-0.838356, 0.262557, 0.477727,
		-0.097574, -0.934488, 0.342361,
		28.854668, 26.496855, 29.731085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741781, 27.257238, 30.251324>,  <28.922970, 27.150995, 29.491432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741781, 27.257238, 30.251324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815052, 26.864698, 30.228022>,  <28.859015, 26.629173, 30.214041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815052, 26.864698, 30.228022>,  <28.741781, 27.257238, 30.251324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815052, 26.864698, 30.228022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463951, 0.034052, 0.885206,
		-0.866715, -0.189179, 0.461537,
		0.183178, -0.981352, -0.058256,
		28.870007, 26.570293, 30.210545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524347, 26.992336, 30.886621>,  <28.741781, 27.257238, 30.251324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524347, 26.992336, 30.886621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791260, 26.728584, 30.748083>,  <28.951406, 26.570333, 30.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791260, 26.728584, 30.748083>,  <28.524347, 26.992336, 30.886621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791260, 26.728584, 30.748083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439413, -0.026946, 0.897881,
		-0.601375, -0.751329, 0.271758,
		0.667281, -0.659378, -0.346348,
		28.991444, 26.530771, 30.644178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580023, 26.562315, 31.404842>,  <28.524347, 26.992336, 30.886621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580023, 26.562315, 31.404842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919153, 26.491335, 31.204962>,  <29.122631, 26.448746, 31.085033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919153, 26.491335, 31.204962>,  <28.580023, 26.562315, 31.404842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919153, 26.491335, 31.204962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501045, -0.040465, 0.864475,
		-0.173623, -0.983298, 0.054604,
		0.847826, -0.177451, -0.499701,
		29.173502, 26.438099, 31.055052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953705, 26.219444, 31.903666>,  <28.580023, 26.562315, 31.404842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953705, 26.219444, 31.903666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230959, 26.277548, 31.621258>,  <29.397310, 26.312410, 31.451813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230959, 26.277548, 31.621258>,  <28.953705, 26.219444, 31.903666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230959, 26.277548, 31.621258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720291, -0.102423, 0.686069,
		0.027345, -0.984078, -0.175623,
		0.693133, 0.145260, -0.706021,
		29.438898, 26.321125, 31.409451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374327, 25.651472, 31.879383>,  <28.953705, 26.219444, 31.903666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374327, 25.651472, 31.879383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579866, 25.945320, 31.702164>,  <29.703190, 26.121630, 31.595833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579866, 25.945320, 31.702164>,  <29.374327, 25.651472, 31.879383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579866, 25.945320, 31.702164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742362, -0.121939, 0.658809,
		0.429949, -0.667431, -0.608012,
		0.513850, 0.734620, -0.443048,
		29.734022, 26.165707, 31.569248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051424, 25.391779, 31.650120>,  <29.374327, 25.651472, 31.879383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051424, 25.391779, 31.650120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094002, 25.785110, 31.709093>,  <30.119549, 26.021109, 31.744478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094002, 25.785110, 31.709093>,  <30.051424, 25.391779, 31.650120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094002, 25.785110, 31.709093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649217, -0.181041, 0.738743,
		0.753118, 0.017082, -0.657664,
		0.106446, 0.983327, 0.147435,
		30.125935, 26.080109, 31.753325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675110, 25.463118, 31.753372>,  <30.051424, 25.391779, 31.650120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675110, 25.463118, 31.753372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543396, 25.796688, 31.930525>,  <30.464369, 25.996830, 32.036816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543396, 25.796688, 31.930525>,  <30.675110, 25.463118, 31.753372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543396, 25.796688, 31.930525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530954, -0.224329, 0.817168,
		0.780807, 0.504229, -0.368907,
		-0.329284, 0.833924, 0.442880,
		30.444611, 26.046865, 32.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279642, 26.058695, 31.966883>,  <30.675110, 25.463118, 31.753372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279642, 26.058695, 31.966883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942049, 26.084127, 32.179916>,  <30.739492, 26.099388, 32.307735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942049, 26.084127, 32.179916>,  <31.279642, 26.058695, 31.966883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942049, 26.084127, 32.179916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530777, -0.043988, 0.846369,
		0.077242, 0.997007, 0.003377,
		-0.843984, 0.063583, 0.532586,
		30.688854, 26.103203, 32.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282291, 26.723352, 32.413624>,  <31.279642, 26.058695, 31.966883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282291, 26.723352, 32.413624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143595, 26.369188, 32.537441>,  <31.060377, 26.156691, 32.611732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143595, 26.369188, 32.537441>,  <31.282291, 26.723352, 32.413624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143595, 26.369188, 32.537441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561360, 0.068495, 0.824733,
		-0.751429, 0.459735, 0.473284,
		-0.346741, -0.885411, 0.309546,
		31.039572, 26.103565, 32.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949064, 26.683958, 33.192169>,  <31.282291, 26.723352, 32.413624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949064, 26.683958, 33.192169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080259, 26.319521, 33.092304>,  <31.158978, 26.100859, 33.032383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080259, 26.319521, 33.092304>,  <30.949064, 26.683958, 33.192169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080259, 26.319521, 33.092304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507866, -0.052787, 0.859817,
		-0.796553, -0.408808, 0.445399,
		0.327989, -0.911093, -0.249667,
		31.178656, 26.046194, 33.017403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578236, 26.285477, 33.660450>,  <30.949064, 26.683958, 33.192169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578236, 26.285477, 33.660450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935045, 26.190557, 33.506577>,  <31.149132, 26.133606, 33.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935045, 26.190557, 33.506577>,  <30.578236, 26.285477, 33.660450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935045, 26.190557, 33.506577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351016, -0.172483, 0.920346,
		-0.284750, -0.956001, -0.070562,
		0.892023, -0.237300, -0.384686,
		31.202652, 26.119368, 33.391171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880503, 25.743345, 34.034813>,  <30.578236, 26.285477, 33.660450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880503, 25.743345, 34.034813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185751, 25.926893, 33.852787>,  <31.368900, 26.037022, 33.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185751, 25.926893, 33.852787>,  <30.880503, 25.743345, 34.034813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185751, 25.926893, 33.852787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501648, 0.023325, 0.864757,
		0.407426, -0.888197, -0.212392,
		0.763121, 0.458870, -0.455065,
		31.414688, 26.064554, 33.716267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463778, 25.453997, 34.355026>,  <30.880503, 25.743345, 34.034813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463778, 25.453997, 34.355026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522331, 25.817017, 34.197582>,  <31.557465, 26.034828, 34.103115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522331, 25.817017, 34.197582>,  <31.463778, 25.453997, 34.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522331, 25.817017, 34.197582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619818, 0.225957, 0.751511,
		0.770972, -0.353974, -0.529438,
		0.146385, 0.907549, -0.393606,
		31.566246, 26.089281, 34.079502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092419, 25.698027, 34.031013>,  <31.463778, 25.453997, 34.355026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092419, 25.698027, 34.031013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892513, 25.977030, 34.236427>,  <31.772570, 26.144432, 34.359676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892513, 25.977030, 34.236427>,  <32.092419, 25.698027, 34.031013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892513, 25.977030, 34.236427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735138, 0.028040, 0.677337,
		0.458049, 0.716027, -0.526779,
		-0.499763, 0.697509, 0.513535,
		31.742584, 26.186283, 34.390488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466385, 26.299355, 33.943279>,  <32.092419, 25.698027, 34.031013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466385, 26.299355, 33.943279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283165, 26.229895, 34.292000>,  <32.173233, 26.188219, 34.501232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283165, 26.229895, 34.292000>,  <32.466385, 26.299355, 33.943279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283165, 26.229895, 34.292000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888586, -0.062304, 0.454460,
		-0.024600, 0.982834, 0.182843,
		-0.458050, -0.173651, 0.871800,
		32.145748, 26.177799, 34.553539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381714, 26.884525, 34.404228>,  <32.466385, 26.299355, 33.943279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381714, 26.884525, 34.404228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448994, 26.522364, 34.560154>,  <32.489361, 26.305067, 34.653709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448994, 26.522364, 34.560154>,  <32.381714, 26.884525, 34.404228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448994, 26.522364, 34.560154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932931, 0.273925, 0.233677,
		-0.318352, 0.324363, 0.890753,
		0.168203, -0.905402, 0.389813,
		32.499454, 26.250744, 34.677097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583801, 26.945250, 33.573364>,  <32.381714, 26.884525, 34.404228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583801, 26.945250, 33.573364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768139, 26.810215, 33.901672>,  <32.878742, 26.729195, 34.098656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768139, 26.810215, 33.901672>,  <32.583801, 26.945250, 33.573364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768139, 26.810215, 33.901672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030745, 0.918199, 0.394924,
		-0.886949, -0.207233, 0.412766,
		0.460842, -0.337587, 0.820768,
		32.906391, 26.708939, 34.147903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925743, 27.594917, 33.500416>,  <32.583801, 26.945250, 33.573364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925743, 27.594917, 33.500416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794769, 27.897087, 33.727440>,  <32.716187, 28.078388, 33.863655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794769, 27.897087, 33.727440>,  <32.925743, 27.594917, 33.500416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794769, 27.897087, 33.727440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250522, -0.648582, 0.718735,
		0.911057, 0.093153, 0.401618,
		-0.327434, 0.755423, 0.567558,
		32.696541, 28.123714, 33.897709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132629, 27.656282, 34.288589>,  <32.925743, 27.594917, 33.500416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132629, 27.656282, 34.288589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761528, 27.779606, 34.204472>,  <32.538868, 27.853600, 34.153999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761528, 27.779606, 34.204472>,  <33.132629, 27.656282, 34.288589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761528, 27.779606, 34.204472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342674, -0.480518, 0.807265,
		0.147835, 0.821004, 0.551450,
		-0.927750, 0.308309, -0.210299,
		32.483204, 27.872099, 34.141380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761250, 27.350321, 35.016720>,  <33.132629, 27.656282, 34.288589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761250, 27.350321, 35.016720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136143, 27.259754, 34.910641>,  <33.361080, 27.205414, 34.846992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136143, 27.259754, 34.910641>,  <32.761250, 27.350321, 35.016720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136143, 27.259754, 34.910641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301495, 0.908279, 0.290051,
		0.175205, -0.351802, 0.919532,
		0.937232, -0.226416, -0.265202,
		33.417313, 27.191830, 34.831081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049797, 27.955669, 35.041142>,  <32.761250, 27.350321, 35.016720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049797, 27.955669, 35.041142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387241, 27.778255, 34.920082>,  <33.589710, 27.671808, 34.847446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387241, 27.778255, 34.920082>,  <33.049797, 27.955669, 35.041142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387241, 27.778255, 34.920082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452494, 0.890681, -0.043999,
		0.289077, -0.099828, 0.952087,
		0.843613, -0.443533, -0.302648,
		33.640324, 27.645195, 34.829288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545574, 28.414265, 35.276085>,  <33.049797, 27.955669, 35.041142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545574, 28.414265, 35.276085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734756, 28.184563, 35.008793>,  <33.848267, 28.046741, 34.848415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734756, 28.184563, 35.008793>,  <33.545574, 28.414265, 35.276085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734756, 28.184563, 35.008793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645591, 0.741994, -0.180710,
		0.599601, -0.345937, 0.721669,
		0.472960, -0.574257, -0.668235,
		33.876644, 28.012285, 34.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190453, 28.347301, 35.496712>,  <33.545574, 28.414265, 35.276085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190453, 28.347301, 35.496712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138962, 28.332645, 35.100311>,  <34.108067, 28.323853, 34.862469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138962, 28.332645, 35.100311>,  <34.190453, 28.347301, 35.496712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138962, 28.332645, 35.100311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572503, 0.813225, -0.104431,
		0.809735, -0.580795, -0.083709,
		-0.128727, -0.036638, -0.991003,
		34.100346, 28.321653, 34.803009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826023, 28.247232, 35.127102>,  <34.190453, 28.347301, 35.496712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826023, 28.247232, 35.127102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575417, 28.440121, 34.882175>,  <34.425053, 28.555853, 34.735218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575417, 28.440121, 34.882175>,  <34.826023, 28.247232, 35.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575417, 28.440121, 34.882175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572992, 0.817538, 0.057558,
		0.528350, -0.314794, -0.788512,
		-0.626519, 0.482221, -0.612320,
		34.387463, 28.584787, 34.698479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064949, 28.643917, 34.530411>,  <34.826023, 28.247232, 35.127102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064949, 28.643917, 34.530411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761044, 28.873991, 34.651684>,  <34.578701, 29.012035, 34.724445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761044, 28.873991, 34.651684>,  <35.064949, 28.643917, 34.530411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761044, 28.873991, 34.651684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605787, 0.795579, 0.008749,
		-0.236170, 0.190308, -0.952894,
		-0.759767, 0.575184, 0.303178,
		34.533112, 29.046547, 34.742638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832417, 29.221903, 34.073738>,  <35.064949, 28.643917, 34.530411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832417, 29.221903, 34.073738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822685, 29.293097, 34.467232>,  <34.816845, 29.335812, 34.703327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822685, 29.293097, 34.467232>,  <34.832417, 29.221903, 34.073738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822685, 29.293097, 34.467232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670578, 0.732717, -0.115981,
		-0.741440, 0.656848, -0.137179,
		-0.024331, 0.177982, 0.983733,
		34.815384, 29.346491, 34.762352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491955, 29.603392, 33.504124>,  <34.832417, 29.221903, 34.073738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491955, 29.603392, 33.504124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207432, 29.613373, 33.785099>,  <34.036720, 29.619362, 33.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207432, 29.613373, 33.785099>,  <34.491955, 29.603392, 33.504124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207432, 29.613373, 33.785099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155186, 0.980283, 0.122322,
		-0.685537, 0.196017, -0.701153,
		-0.711306, 0.024953, 0.702440,
		33.994041, 29.620859, 33.995831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139820, 30.119673, 33.295033>,  <34.491955, 29.603392, 33.504124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139820, 30.119673, 33.295033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128620, 30.078959, 33.692799>,  <34.121899, 30.054529, 33.931458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128620, 30.078959, 33.692799>,  <34.139820, 30.119673, 33.295033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128620, 30.078959, 33.692799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281071, 0.953865, 0.105551,
		-0.959279, 0.282455, 0.001902,
		-0.027999, -0.101787, 0.994412,
		34.120220, 30.048422, 33.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758442, 30.574799, 33.427074>,  <34.139820, 30.119673, 33.295033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758442, 30.574799, 33.427074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926025, 30.491295, 33.780548>,  <34.026573, 30.441193, 33.992634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926025, 30.491295, 33.780548>,  <33.758442, 30.574799, 33.427074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926025, 30.491295, 33.780548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083126, 0.960307, 0.266270,
		-0.904194, -0.185012, 0.384972,
		0.418954, -0.208759, 0.883684,
		34.051712, 30.428667, 34.045654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305286, 31.027494, 33.885067>,  <33.758442, 30.574799, 33.427074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305286, 31.027494, 33.885067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643379, 30.927896, 34.074207>,  <33.846233, 30.868137, 34.187691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643379, 30.927896, 34.074207>,  <33.305286, 31.027494, 33.885067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643379, 30.927896, 34.074207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064541, 0.925907, 0.372198,
		-0.530491, -0.284075, 0.798674,
		0.845230, -0.248995, 0.472850,
		33.896950, 30.853197, 34.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287800, 31.411945, 34.446182>,  <33.305286, 31.027494, 33.885067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287800, 31.411945, 34.446182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675446, 31.313957, 34.457504>,  <33.908035, 31.255163, 34.464298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675446, 31.313957, 34.457504>,  <33.287800, 31.411945, 34.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675446, 31.313957, 34.457504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202303, 0.855409, 0.476811,
		-0.141018, -0.456359, 0.878550,
		0.969117, -0.244972, 0.028306,
		33.966179, 31.240465, 34.465996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444946, 31.847279, 35.019634>,  <33.287800, 31.411945, 34.446182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444946, 31.847279, 35.019634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788761, 31.724682, 34.856045>,  <33.995049, 31.651123, 34.757893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788761, 31.724682, 34.856045>,  <33.444946, 31.847279, 35.019634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788761, 31.724682, 34.856045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442639, 0.846455, 0.295946,
		0.255470, -0.435404, 0.863226,
		0.859538, -0.306491, -0.408971,
		34.046623, 31.632734, 34.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919727, 32.007637, 35.421230>,  <33.444946, 31.847279, 35.019634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919727, 32.007637, 35.421230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121315, 31.985308, 35.076462>,  <34.242268, 31.971910, 34.869602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121315, 31.985308, 35.076462>,  <33.919727, 32.007637, 35.421230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121315, 31.985308, 35.076462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445450, 0.871756, 0.203998,
		0.739995, -0.486749, 0.464201,
		0.503966, -0.055821, -0.861918,
		34.272503, 31.968561, 34.817886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606300, 32.237762, 35.431675>,  <33.919727, 32.007637, 35.421230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606300, 32.237762, 35.431675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520058, 32.290150, 35.044613>,  <34.468311, 32.321583, 34.812374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520058, 32.290150, 35.044613>,  <34.606300, 32.237762, 35.431675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520058, 32.290150, 35.044613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216690, 0.972674, 0.083371,
		0.952135, -0.191706, -0.238094,
		-0.215605, 0.130972, -0.967657,
		34.455376, 32.329441, 34.754314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482059, 33.023666, 35.467815>,  <34.606300, 32.237762, 35.431675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482059, 33.023666, 35.467815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778023, 33.132298, 35.221638>,  <34.955601, 33.197475, 35.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778023, 33.132298, 35.221638>,  <34.482059, 33.023666, 35.467815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778023, 33.132298, 35.221638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573688, 0.732521, -0.366463,
		0.351304, 0.624225, 0.697802,
		0.739910, 0.271581, -0.615448,
		34.999996, 33.213772, 35.037003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510525, 33.860630, 35.521717>,  <34.482059, 33.023666, 35.467815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510525, 33.860630, 35.521717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664928, 33.671860, 35.204659>,  <34.757568, 33.558598, 35.014423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664928, 33.671860, 35.204659>,  <34.510525, 33.860630, 35.521717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664928, 33.671860, 35.204659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398434, 0.689675, -0.604648,
		0.832015, 0.549215, 0.078189,
		0.386007, -0.471923, -0.792646,
		34.780731, 33.530281, 34.966866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646622, 34.365131, 35.033413>,  <34.510525, 33.860630, 35.521717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646622, 34.365131, 35.033413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549294, 34.013733, 34.868954>,  <34.490894, 33.802895, 34.770279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549294, 34.013733, 34.868954>,  <34.646622, 34.365131, 35.033413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549294, 34.013733, 34.868954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691377, 0.454390, -0.561720,
		0.680289, 0.147580, -0.717933,
		-0.243323, -0.878494, -0.411149,
		34.476295, 33.750183, 34.745609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714649, 34.506054, 34.354843>,  <34.646622, 34.365131, 35.033413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714649, 34.506054, 34.354843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410152, 34.255424, 34.421673>,  <34.227455, 34.105045, 34.461773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410152, 34.255424, 34.421673>,  <34.714649, 34.506054, 34.354843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410152, 34.255424, 34.421673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621269, 0.630856, -0.464807,
		0.185833, -0.457632, -0.869505,
		-0.761243, -0.626573, 0.167079,
		34.181778, 34.067451, 34.471798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352348, 34.136597, 34.456547>,  <34.714649, 34.506054, 34.354843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352348, 34.136597, 34.456547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503937, 34.038742, 34.099552>,  <35.594887, 33.980030, 33.885353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503937, 34.038742, 34.099552>,  <35.352348, 34.136597, 34.456547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503937, 34.038742, 34.099552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879013, -0.206387, 0.429814,
		-0.289345, -0.947396, 0.136822,
		0.378966, -0.244633, -0.892490,
		35.617626, 33.965351, 33.831806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630013, 33.406246, 34.472309>,  <35.352348, 34.136597, 34.456547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630013, 33.406246, 34.472309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808582, 33.608612, 34.177078>,  <35.915722, 33.730034, 33.999939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808582, 33.608612, 34.177078>,  <35.630013, 33.406246, 34.472309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808582, 33.608612, 34.177078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886464, -0.137560, 0.441880,
		0.122025, -0.851543, -0.509887,
		0.446420, 0.505917, -0.738076,
		35.942509, 33.760387, 33.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191765, 33.039360, 34.329559>,  <35.630013, 33.406246, 34.472309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191765, 33.039360, 34.329559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274178, 33.408691, 34.199940>,  <36.323627, 33.630291, 34.122166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274178, 33.408691, 34.199940>,  <36.191765, 33.039360, 34.329559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274178, 33.408691, 34.199940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924196, -0.074783, 0.374526,
		0.321578, -0.376651, -0.868747,
		0.206034, 0.923332, -0.324051,
		36.335987, 33.685692, 34.102726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819370, 33.046581, 33.856857>,  <36.191765, 33.039360, 34.329559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819370, 33.046581, 33.856857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771420, 33.403381, 34.031197>,  <36.742649, 33.617462, 34.135799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771420, 33.403381, 34.031197>,  <36.819370, 33.046581, 33.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771420, 33.403381, 34.031197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940625, -0.038384, 0.337269,
		0.317574, 0.450399, -0.834439,
		-0.119876, 0.892002, 0.435846,
		36.735458, 33.670982, 34.161949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412945, 33.399235, 33.693989>,  <36.819370, 33.046581, 33.856857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412945, 33.399235, 33.693989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252064, 33.519920, 34.039753>,  <37.155533, 33.592331, 34.247211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252064, 33.519920, 34.039753>,  <37.412945, 33.399235, 33.693989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252064, 33.519920, 34.039753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887700, -0.102583, 0.448849,
		0.224097, 0.947864, -0.226571,
		-0.402206, 0.301713, 0.864407,
		37.131401, 33.610435, 34.299076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550545, 34.122326, 34.050201>,  <37.412945, 33.399235, 33.693989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550545, 34.122326, 34.050201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487434, 33.871059, 34.354965>,  <37.449570, 33.720299, 34.537823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487434, 33.871059, 34.354965>,  <37.550545, 34.122326, 34.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487434, 33.871059, 34.354965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966098, 0.061480, 0.250747,
		-0.204353, 0.775646, 0.597171,
		-0.157777, -0.628167, 0.761914,
		37.440102, 33.682610, 34.583538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738876, 34.451359, 34.631683>,  <37.550545, 34.122326, 34.050201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738876, 34.451359, 34.631683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785683, 34.054119, 34.634823>,  <37.813766, 33.815777, 34.636707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785683, 34.054119, 34.634823>,  <37.738876, 34.451359, 34.631683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785683, 34.054119, 34.634823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938542, 0.113162, 0.326088,
		-0.324726, -0.030791, 0.945307,
		0.117014, -0.993099, 0.007848,
		37.820786, 33.756187, 34.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981049, 34.269802, 35.319637>,  <37.738876, 34.451359, 34.631683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981049, 34.269802, 35.319637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039391, 33.956352, 35.078091>,  <38.074394, 33.768284, 34.933163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039391, 33.956352, 35.078091>,  <37.981049, 34.269802, 35.319637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039391, 33.956352, 35.078091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964744, -0.022510, 0.262226,
		-0.219080, -0.620826, 0.752714,
		0.145853, -0.783625, -0.603870,
		38.083145, 33.721264, 34.896931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204018, 33.572056, 35.494881>,  <37.981049, 34.269802, 35.319637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204018, 33.572056, 35.494881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308342, 33.727978, 35.141602>,  <38.370937, 33.821529, 34.929634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308342, 33.727978, 35.141602>,  <38.204018, 33.572056, 35.494881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308342, 33.727978, 35.141602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759352, 0.482083, 0.437013,
		0.596121, -0.784634, -0.170263,
		0.260814, 0.389802, -0.883193,
		38.386585, 33.844917, 34.876644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702831, 33.386166, 35.876160>,  <38.204018, 33.572056, 35.494881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702831, 33.386166, 35.876160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019016, 33.239098, 35.680202>,  <39.208725, 33.150856, 35.562630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019016, 33.239098, 35.680202>,  <38.702831, 33.386166, 35.876160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019016, 33.239098, 35.680202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280522, 0.928300, -0.244062,
		0.544502, 0.055495, 0.836922,
		0.790459, -0.367668, -0.489893,
		39.256153, 33.128796, 35.533234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237545, 33.799820, 36.087082>,  <38.702831, 33.386166, 35.876160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237545, 33.799820, 36.087082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333076, 33.664612, 35.722950>,  <39.390396, 33.583485, 35.504471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333076, 33.664612, 35.722950>,  <39.237545, 33.799820, 36.087082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333076, 33.664612, 35.722950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264785, 0.924604, -0.273855,
		0.934264, -0.175637, 0.310327,
		0.238830, -0.338022, -0.910330,
		39.404724, 33.563206, 35.449852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915394, 33.872196, 35.811348>,  <39.237545, 33.799820, 36.087082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915394, 33.872196, 35.811348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017250, 33.901196, 36.197075>,  <40.078362, 33.918594, 36.428509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017250, 33.901196, 36.197075>,  <39.915394, 33.872196, 35.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017250, 33.901196, 36.197075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740491, 0.626732, -0.242653,
		-0.621959, 0.775855, 0.105903,
		0.254636, 0.072500, 0.964315,
		40.093639, 33.922947, 36.486370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893101, 34.597679, 35.941544>,  <39.915394, 33.872196, 35.811348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893101, 34.597679, 35.941544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189949, 34.451149, 36.166069>,  <40.368057, 34.363232, 36.300785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189949, 34.451149, 36.166069>,  <39.893101, 34.597679, 35.941544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189949, 34.451149, 36.166069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559676, 0.799468, -0.218204,
		-0.368817, 0.476085, 0.798321,
		0.742116, -0.366324, 0.561311,
		40.412582, 34.341251, 36.334461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203003, 35.161278, 36.415134>,  <39.893101, 34.597679, 35.941544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203003, 35.161278, 36.415134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465069, 34.864719, 36.357033>,  <40.622307, 34.686787, 36.322174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465069, 34.864719, 36.357033>,  <40.203003, 35.161278, 36.415134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465069, 34.864719, 36.357033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725268, 0.671057, -0.153847,
		0.211533, -0.004551, 0.977360,
		0.655164, -0.741392, -0.145251,
		40.661617, 34.642303, 36.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776222, 35.122528, 36.852661>,  <40.203003, 35.161278, 36.415134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776222, 35.122528, 36.852661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914597, 34.959255, 36.514736>,  <40.997623, 34.861290, 36.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914597, 34.959255, 36.514736>,  <40.776222, 35.122528, 36.852661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914597, 34.959255, 36.514736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699286, 0.712494, -0.057902,
		0.625561, -0.570737, 0.531915,
		0.345939, -0.408182, -0.844816,
		41.018379, 34.836800, 36.261292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496441, 34.809238, 36.820004>,  <40.776222, 35.122528, 36.852661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496441, 34.809238, 36.820004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380283, 34.981598, 36.478245>,  <41.310589, 35.085014, 36.273190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380283, 34.981598, 36.478245>,  <41.496441, 34.809238, 36.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380283, 34.981598, 36.478245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685796, 0.716411, 0.128220,
		0.667350, -0.548709, -0.503550,
		-0.290393, 0.430900, -0.854399,
		41.293167, 35.110867, 36.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055050, 35.129402, 36.511242>,  <41.496441, 34.809238, 36.820004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055050, 35.129402, 36.511242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761398, 35.342522, 36.342873>,  <41.585205, 35.470394, 36.241852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761398, 35.342522, 36.342873>,  <42.055050, 35.129402, 36.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761398, 35.342522, 36.342873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469297, 0.846156, 0.252548,
		0.490723, -0.012134, -0.871231,
		-0.734133, 0.532797, -0.420922,
		41.541157, 35.502361, 36.216595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340786, 35.391930, 35.953598>,  <42.055050, 35.129402, 36.511242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340786, 35.391930, 35.953598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047085, 35.593796, 36.135227>,  <41.870865, 35.714916, 36.244205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047085, 35.593796, 36.135227>,  <42.340786, 35.391930, 35.953598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047085, 35.593796, 36.135227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642147, 0.733327, 0.223334,
		-0.220275, 0.455566, -0.862519,
		-0.734252, 0.504669, 0.454074,
		41.826809, 35.745197, 36.271450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422199, 36.105450, 35.819836>,  <42.340786, 35.391930, 35.953598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422199, 36.105450, 35.819836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236130, 36.089867, 36.173580>,  <42.124489, 36.080517, 36.385826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236130, 36.089867, 36.173580>,  <42.422199, 36.105450, 35.819836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236130, 36.089867, 36.173580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523645, 0.793381, 0.310391,
		-0.713729, 0.607477, -0.348658,
		-0.465174, -0.038962, 0.884362,
		42.096577, 36.078178, 36.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814362, 36.673275, 35.878181>,  <42.422199, 36.105450, 35.819836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814362, 36.673275, 35.878181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033882, 36.555195, 36.191021>,  <42.165592, 36.484348, 36.378727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033882, 36.555195, 36.191021>,  <41.814362, 36.673275, 35.878181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033882, 36.555195, 36.191021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341513, 0.933113, 0.112555,
		-0.763014, 0.205328, 0.612903,
		0.548797, -0.295196, 0.782101,
		42.198521, 36.466637, 36.425652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059891, 37.314621, 36.281269>,  <41.814362, 36.673275, 35.878181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059891, 37.314621, 36.281269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295353, 37.020031, 36.414593>,  <42.436630, 36.843277, 36.494587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295353, 37.020031, 36.414593>,  <42.059891, 37.314621, 36.281269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295353, 37.020031, 36.414593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754809, 0.648352, 0.099513,
		-0.289390, 0.193005, 0.937551,
		0.588657, -0.736471, 0.333308,
		42.471951, 36.799091, 36.514584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369175, 37.399082, 36.969646>,  <42.059891, 37.314621, 36.281269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369175, 37.399082, 36.969646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599545, 37.168484, 36.737797>,  <42.737766, 37.030125, 36.598686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599545, 37.168484, 36.737797>,  <42.369175, 37.399082, 36.969646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599545, 37.168484, 36.737797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716683, 0.697148, 0.018721,
		0.393288, -0.426186, 0.814671,
		0.575925, -0.576498, -0.579621,
		42.772324, 36.995533, 36.563911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026821, 37.180729, 37.261616>,  <42.369175, 37.399082, 36.969646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026821, 37.180729, 37.261616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123230, 37.150700, 36.874569>,  <43.181076, 37.132683, 36.642342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123230, 37.150700, 36.874569>,  <43.026821, 37.180729, 37.261616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123230, 37.150700, 36.874569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795196, 0.586852, 0.152540,
		0.556394, -0.806207, 0.201139,
		0.241017, -0.075072, -0.967613,
		43.195534, 37.128178, 36.584286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651306, 36.922405, 37.234627>,  <43.026821, 37.180729, 37.261616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651306, 36.922405, 37.234627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606693, 37.120918, 36.890240>,  <43.579926, 37.240028, 36.683609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606693, 37.120918, 36.890240>,  <43.651306, 36.922405, 37.234627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606693, 37.120918, 36.890240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819053, 0.536536, 0.203175,
		0.562772, -0.682516, -0.466325,
		-0.111530, 0.496286, -0.860965,
		43.573235, 37.269806, 36.631950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273079, 36.890564, 36.816654>,  <43.651306, 36.922405, 37.234627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273079, 36.890564, 36.816654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051231, 37.222942, 36.834251>,  <43.918125, 37.422367, 36.844810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051231, 37.222942, 36.834251>,  <44.273079, 36.890564, 36.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051231, 37.222942, 36.834251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777881, 0.498974, 0.382002,
		0.295471, 0.246084, -0.923114,
		-0.554615, 0.830944, 0.043992,
		43.884846, 37.472225, 36.847450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626904, 37.453159, 36.485622>,  <44.273079, 36.890564, 36.816654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626904, 37.453159, 36.485622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386440, 37.586506, 36.776134>,  <44.242161, 37.666512, 36.950439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386440, 37.586506, 36.776134>,  <44.626904, 37.453159, 36.485622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386440, 37.586506, 36.776134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738075, 0.580031, 0.344687,
		-0.306358, 0.743258, -0.594737,
		-0.601158, 0.333363, 0.726277,
		44.206093, 37.686516, 36.994019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995453, 36.825157, 36.291454>,  <44.626904, 37.453159, 36.485622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995453, 36.825157, 36.291454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965809, 36.497223, 36.518570>,  <44.948021, 36.300461, 36.654839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965809, 36.497223, 36.518570>,  <44.995453, 36.825157, 36.291454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965809, 36.497223, 36.518570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400925, -0.545806, -0.735768,
		0.913108, 0.173112, 0.369142,
		-0.074110, -0.819834, 0.567784,
		44.943577, 36.251274, 36.688904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.645157, 36.546246, 36.314285>,  <44.995453, 36.825157, 36.291454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.645157, 36.546246, 36.314285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368912, 36.259346, 36.351398>,  <45.203167, 36.087204, 36.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368912, 36.259346, 36.351398>,  <45.645157, 36.546246, 36.314285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368912, 36.259346, 36.351398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433476, -0.513196, -0.740762,
		0.578929, -0.471357, 0.665329,
		-0.690608, -0.717253, 0.092783,
		45.161728, 36.044170, 36.379234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915703, 35.810829, 36.435051>,  <45.645157, 36.546246, 36.314285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915703, 35.810829, 36.435051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607399, 35.866985, 36.186462>,  <45.422417, 35.900681, 36.037312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607399, 35.866985, 36.186462>,  <45.915703, 35.810829, 36.435051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607399, 35.866985, 36.186462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581276, -0.244421, -0.776129,
		-0.260867, -0.959451, 0.106779,
		-0.770757, 0.140398, -0.621467,
		45.376171, 35.909103, 36.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500042, 35.250252, 36.155548>,  <45.915703, 35.810829, 36.435051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500042, 35.250252, 36.155548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566261, 35.573784, 35.929844>,  <45.605991, 35.767902, 35.794422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566261, 35.573784, 35.929844>,  <45.500042, 35.250252, 36.155548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566261, 35.573784, 35.929844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561077, -0.547778, -0.620590,
		-0.811041, -0.213859, -0.544497,
		0.165545, 0.808829, -0.564262,
		45.615925, 35.816433, 35.760567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234798, 35.046749, 35.448456>,  <45.500042, 35.250252, 36.155548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234798, 35.046749, 35.448456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525318, 35.320206, 35.477116>,  <45.699631, 35.484280, 35.494312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525318, 35.320206, 35.477116>,  <45.234798, 35.046749, 35.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525318, 35.320206, 35.477116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654200, -0.655476, -0.377324,
		-0.210991, 0.320920, -0.923306,
		0.726295, 0.683639, 0.071646,
		45.743206, 35.525299, 35.498608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677711, 34.810535, 34.952427>,  <45.234798, 35.046749, 35.448456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677711, 34.810535, 34.952427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868580, 35.075035, 35.183964>,  <45.983101, 35.233734, 35.322887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868580, 35.075035, 35.183964>,  <45.677711, 34.810535, 34.952427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868580, 35.075035, 35.183964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867420, -0.460094, -0.189461,
		0.141040, 0.592504, -0.793125,
		0.477168, 0.661251, 0.578842,
		46.011730, 35.273411, 35.357616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227089, 35.052505, 34.583374>,  <45.677711, 34.810535, 34.952427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227089, 35.052505, 34.583374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312031, 35.068928, 34.973907>,  <46.362995, 35.078781, 35.208225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312031, 35.068928, 34.973907>,  <46.227089, 35.052505, 34.583374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312031, 35.068928, 34.973907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901618, -0.393502, -0.179557,
		0.376816, 0.918407, -0.120578,
		0.212354, 0.041055, 0.976330,
		46.375736, 35.081245, 35.266808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781116, 35.546043, 34.631153>,  <46.227089, 35.052505, 34.583374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781116, 35.546043, 34.631153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786091, 35.251713, 34.901978>,  <46.789078, 35.075115, 35.064472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.786091, 35.251713, 34.901978>,  <46.781116, 35.546043, 34.631153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.786091, 35.251713, 34.901978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950338, -0.201878, -0.236861,
		0.310971, 0.646382, 0.696769,
		0.012440, -0.735823, 0.677060,
		46.789822, 35.030968, 35.105095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245171, 35.527603, 35.332638>,  <46.781116, 35.546043, 34.631153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245171, 35.527603, 35.332638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169609, 35.183674, 35.142891>,  <47.124271, 34.977318, 35.029045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169609, 35.183674, 35.142891>,  <47.245171, 35.527603, 35.332638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169609, 35.183674, 35.142891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930382, -0.002161, -0.366584,
		0.314171, -0.510590, 0.800371,
		-0.188904, -0.859821, -0.474365,
		47.112938, 34.925728, 35.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723358, 34.896595, 35.519390>,  <47.245171, 35.527603, 35.332638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723358, 34.896595, 35.519390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621262, 34.898293, 35.132645>,  <47.560005, 34.899311, 34.900597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621262, 34.898293, 35.132645>,  <47.723358, 34.896595, 35.519390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621262, 34.898293, 35.132645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951036, 0.181375, -0.250266,
		0.174303, -0.983405, -0.050333,
		-0.255242, 0.004247, -0.966868,
		47.544689, 34.899567, 34.842583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.915554, 29.572336, 24.589266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255390, 29.671518, 24.403057>,  <30.459291, 29.731028, 24.291332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.255390, 29.671518, 24.403057>,  <29.915554, 29.572336, 24.589266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255390, 29.671518, 24.403057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453103, 0.108671, 0.884810,
		0.269984, -0.962656, -0.020025,
		0.849592, 0.247958, -0.465522,
		30.510267, 29.745905, 24.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470919, 29.125259, 24.924377>,  <29.915554, 29.572336, 24.589266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470919, 29.125259, 24.924377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645582, 29.447485, 24.764181>,  <30.750380, 29.640821, 24.668064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645582, 29.447485, 24.764181>,  <30.470919, 29.125259, 24.924377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645582, 29.447485, 24.764181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555029, 0.109120, 0.824643,
		0.708006, -0.582371, -0.399464,
		0.436659, 0.805566, -0.400490,
		30.776581, 29.689156, 24.644033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134302, 29.102461, 25.334476>,  <30.470919, 29.125259, 24.924377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134302, 29.102461, 25.334476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.158735, 29.465656, 25.168671>,  <31.173395, 29.683575, 25.069187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.158735, 29.465656, 25.168671>,  <31.134302, 29.102461, 25.334476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158735, 29.465656, 25.168671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640161, 0.282991, 0.714220,
		0.765809, -0.308982, -0.563974,
		0.061082, 0.907990, -0.414515,
		31.177059, 29.738054, 25.044315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822130, 29.285236, 25.182486>,  <31.134302, 29.102461, 25.334476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822130, 29.285236, 25.182486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619539, 29.626120, 25.234985>,  <31.497986, 29.830648, 25.266485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.619539, 29.626120, 25.234985>,  <31.822130, 29.285236, 25.182486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619539, 29.626120, 25.234985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472430, 0.146928, 0.869035,
		0.721313, 0.502153, -0.477023,
		-0.506477, 0.852206, 0.131250,
		31.467596, 29.881781, 25.274361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192600, 29.512276, 25.652460>,  <31.822130, 29.285236, 25.182486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192600, 29.512276, 25.652460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913683, 29.797747, 25.679140>,  <31.746332, 29.969028, 25.695148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.913683, 29.797747, 25.679140>,  <32.192600, 29.512276, 25.652460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913683, 29.797747, 25.679140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368123, 0.276717, 0.887644,
		0.615034, 0.643502, -0.455674,
		-0.697294, 0.713675, 0.066698,
		31.704494, 30.011848, 25.699150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469280, 30.132202, 25.913483>,  <32.192600, 29.512276, 25.652460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469280, 30.132202, 25.913483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083878, 30.183632, 26.007399>,  <31.852636, 30.214489, 26.063749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.083878, 30.183632, 26.007399>,  <32.469280, 30.132202, 25.913483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083878, 30.183632, 26.007399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256586, 0.193578, 0.946938,
		0.076300, 0.972624, -0.219503,
		-0.963505, 0.128573, 0.234791,
		31.794827, 30.222204, 26.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414726, 30.744160, 26.370388>,  <32.469280, 30.132202, 25.913483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414726, 30.744160, 26.370388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103111, 30.504189, 26.443253>,  <31.916142, 30.360207, 26.486971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103111, 30.504189, 26.443253>,  <32.414726, 30.744160, 26.370388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103111, 30.504189, 26.443253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137706, 0.119720, 0.983211,
		-0.611662, 0.791047, -0.010654,
		-0.779042, -0.599926, 0.182160,
		31.869398, 30.324211, 26.497900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032681, 31.126036, 26.839741>,  <32.414726, 30.744160, 26.370388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032681, 31.126036, 26.839741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909960, 30.747049, 26.875927>,  <31.836327, 30.519657, 26.897638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909960, 30.747049, 26.875927>,  <32.032681, 31.126036, 26.839741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909960, 30.747049, 26.875927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013146, 0.099261, 0.994975,
		-0.951683, 0.304070, -0.042909,
		-0.306802, -0.947464, 0.090468,
		31.817919, 30.462811, 26.903067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559387, 31.208950, 27.363241>,  <32.032681, 31.126036, 26.839741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559387, 31.208950, 27.363241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634680, 30.816168, 27.355989>,  <31.679855, 30.580498, 27.351639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.634680, 30.816168, 27.355989>,  <31.559387, 31.208950, 27.363241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634680, 30.816168, 27.355989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108030, -0.039046, 0.993380,
		-0.976165, -0.185026, -0.113431,
		0.188230, -0.981957, -0.018127,
		31.691149, 30.521580, 27.350552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152748, 30.931784, 27.870668>,  <31.559387, 31.208950, 27.363241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152748, 30.931784, 27.870668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.426212, 30.645966, 27.811289>,  <31.590290, 30.474476, 27.775661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.426212, 30.645966, 27.811289>,  <31.152748, 30.931784, 27.870668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426212, 30.645966, 27.811289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133614, -0.322520, 0.937085,
		-0.717466, -0.620813, -0.315966,
		0.683660, -0.714544, -0.148448,
		31.631310, 30.431602, 27.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856894, 30.335379, 28.095989>,  <31.152748, 30.931784, 27.870668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856894, 30.335379, 28.095989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248344, 30.254393, 28.081562>,  <31.483215, 30.205801, 28.072905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.248344, 30.254393, 28.081562>,  <30.856894, 30.335379, 28.095989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248344, 30.254393, 28.081562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019644, -0.266622, 0.963601,
		-0.204708, -0.942297, -0.264900,
		0.978626, -0.202460, -0.036069,
		31.541931, 30.193653, 28.070742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941591, 29.636816, 28.544107>,  <30.856894, 30.335379, 28.095989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941591, 29.636816, 28.544107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301516, 29.805546, 28.499554>,  <31.517469, 29.906784, 28.472820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.301516, 29.805546, 28.499554>,  <30.941591, 29.636816, 28.544107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301516, 29.805546, 28.499554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219407, -0.216842, 0.951231,
		0.377102, -0.880365, -0.287668,
		0.899808, 0.421827, -0.111387,
		31.571459, 29.932095, 28.466137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410513, 29.099939, 28.715174>,  <30.941591, 29.636816, 28.544107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410513, 29.099939, 28.715174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613832, 29.439043, 28.775757>,  <31.735825, 29.642506, 28.812107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613832, 29.439043, 28.775757>,  <31.410513, 29.099939, 28.715174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613832, 29.439043, 28.775757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190273, -0.282083, 0.940333,
		0.839898, -0.449152, -0.304688,
		0.508299, 0.847757, 0.151459,
		31.766323, 29.693371, 28.821194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079315, 28.929533, 28.968132>,  <31.410513, 29.099939, 28.715174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079315, 28.929533, 28.968132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977547, 29.294987, 29.094963>,  <31.916485, 29.514259, 29.171062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.977547, 29.294987, 29.094963>,  <32.079315, 28.929533, 28.968132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977547, 29.294987, 29.094963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294199, -0.239210, 0.925325,
		0.921258, 0.328709, -0.207930,
		-0.254423, 0.913635, 0.317079,
		31.901220, 29.569077, 29.190086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547325, 29.104122, 29.539783>,  <32.079315, 28.929533, 28.968132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547325, 29.104122, 29.539783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.265350, 29.375469, 29.622616>,  <32.096165, 29.538279, 29.672316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.265350, 29.375469, 29.622616>,  <32.547325, 29.104122, 29.539783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265350, 29.375469, 29.622616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142544, -0.150507, 0.978279,
		0.694801, 0.719141, 0.009401,
		-0.704935, 0.678369, 0.207081,
		32.053871, 29.578979, 29.684740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780994, 29.434195, 30.120312>,  <32.547325, 29.104122, 29.539783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780994, 29.434195, 30.120312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394646, 29.537508, 30.128145>,  <32.162838, 29.599495, 30.132845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394646, 29.537508, 30.128145>,  <32.780994, 29.434195, 30.120312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394646, 29.537508, 30.128145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006810, -0.050255, 0.998713,
		0.258934, 0.964761, 0.046781,
		-0.965871, 0.258282, 0.019583,
		32.104885, 29.614992, 30.134020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727020, 29.801826, 30.612171>,  <32.780994, 29.434195, 30.120312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727020, 29.801826, 30.612171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334702, 29.746708, 30.556969>,  <32.099308, 29.713636, 30.523848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334702, 29.746708, 30.556969>,  <32.727020, 29.801826, 30.612171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334702, 29.746708, 30.556969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132137, -0.050923, 0.989923,
		-0.143434, 0.989151, 0.031737,
		-0.980799, -0.137795, -0.138007,
		32.040462, 29.705370, 30.515566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478138, 30.223577, 31.145641>,  <32.727020, 29.801826, 30.612171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478138, 30.223577, 31.145641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.212738, 29.940996, 31.047102>,  <32.053497, 29.771448, 30.987978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.212738, 29.940996, 31.047102>,  <32.478138, 30.223577, 31.145641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212738, 29.940996, 31.047102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151578, -0.195512, 0.968917,
		-0.732659, 0.680220, 0.022639,
		-0.663502, -0.706453, -0.246350,
		32.013687, 29.729059, 30.973198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976917, 30.246983, 31.742735>,  <32.478138, 30.223577, 31.145641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976917, 30.246983, 31.742735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912979, 29.892065, 31.569689>,  <31.874617, 29.679113, 31.465860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912979, 29.892065, 31.569689>,  <31.976917, 30.246983, 31.742735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912979, 29.892065, 31.569689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121718, -0.417191, 0.900631,
		-0.979609, 0.196617, -0.041315,
		-0.159843, -0.887295, -0.432616,
		31.865026, 29.625877, 31.439903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365013, 29.962841, 32.012939>,  <31.976917, 30.246983, 31.742735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365013, 29.962841, 32.012939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.560032, 29.637335, 31.886398>,  <31.677044, 29.442030, 31.810472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.560032, 29.637335, 31.886398>,  <31.365013, 29.962841, 32.012939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560032, 29.637335, 31.886398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074882, -0.322030, 0.943763,
		-0.869879, -0.483819, -0.096068,
		0.487548, -0.813767, -0.316356,
		31.706297, 29.393206, 31.791491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098577, 29.381111, 32.414330>,  <31.365013, 29.962841, 32.012939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098577, 29.381111, 32.414330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.444489, 29.241709, 32.269718>,  <31.652035, 29.158068, 32.182953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.444489, 29.241709, 32.269718>,  <31.098577, 29.381111, 32.414330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444489, 29.241709, 32.269718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271689, -0.280755, 0.920523,
		-0.422311, -0.894270, -0.148105,
		0.864776, -0.348509, -0.361529,
		31.703922, 29.137156, 32.161259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472435, 29.685762, 32.558540>,  <31.098577, 29.381111, 32.414330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472435, 29.685762, 32.558540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.291109, 29.330397, 32.587463>,  <30.182314, 29.117178, 32.604816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.291109, 29.330397, 32.587463>,  <30.472435, 29.685762, 32.558540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291109, 29.330397, 32.587463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669106, 0.285572, -0.686109,
		0.588900, -0.359403, -0.723897,
		-0.453314, -0.888413, 0.072305,
		30.155115, 29.063873, 32.609154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489470, 29.335707, 31.889448>,  <30.472435, 29.685762, 32.558540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489470, 29.335707, 31.889448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170515, 29.193499, 32.084499>,  <29.979143, 29.108173, 32.201530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170515, 29.193499, 32.084499>,  <30.489470, 29.335707, 31.889448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170515, 29.193499, 32.084499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545879, 0.080437, -0.833994,
		0.257281, -0.931200, -0.258212,
		-0.797385, -0.355524, 0.487628,
		29.931299, 29.086842, 32.230789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270857, 28.833300, 31.433216>,  <30.489470, 29.335707, 31.889448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270857, 28.833300, 31.433216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.958206, 28.903959, 31.672501>,  <29.770617, 28.946354, 31.816072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.958206, 28.903959, 31.672501>,  <30.270857, 28.833300, 31.433216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958206, 28.903959, 31.672501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594781, 0.077802, -0.800114,
		-0.187880, -0.981195, 0.044254,
		-0.781625, 0.176647, 0.598213,
		29.723719, 28.956953, 31.851965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723122, 28.308887, 31.310246>,  <30.270857, 28.833300, 31.433216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723122, 28.308887, 31.310246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541988, 28.638094, 31.447407>,  <29.433308, 28.835617, 31.529703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541988, 28.638094, 31.447407>,  <29.723122, 28.308887, 31.310246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541988, 28.638094, 31.447407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588414, 0.013083, -0.808454,
		-0.669858, -0.567866, 0.478350,
		-0.452835, 0.823017, 0.342904,
		29.406137, 28.884998, 31.550278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961178, 28.203217, 31.178936>,  <29.723122, 28.308887, 31.310246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961178, 28.203217, 31.178936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.027626, 28.596348, 31.211075>,  <29.067495, 28.832226, 31.230358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.027626, 28.596348, 31.211075>,  <28.961178, 28.203217, 31.178936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027626, 28.596348, 31.211075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562270, 0.161341, -0.811062,
		-0.810096, 0.089560, 0.579416,
		0.166123, 0.982827, 0.080345,
		29.077463, 28.891195, 31.235178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309444, 28.422924, 31.226044>,  <28.961178, 28.203217, 31.178936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309444, 28.422924, 31.226044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.521208, 28.739553, 31.103968>,  <28.648266, 28.929531, 31.030722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.521208, 28.739553, 31.103968>,  <28.309444, 28.422924, 31.226044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521208, 28.739553, 31.103968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633607, 0.129701, -0.762705,
		-0.564154, 0.597151, 0.570211,
		0.529407, 0.791573, -0.305189,
		28.680031, 28.977026, 31.012411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831558, 28.900085, 30.953758>,  <28.309444, 28.422924, 31.226044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831558, 28.900085, 30.953758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.177299, 29.038610, 30.807903>,  <28.384745, 29.121725, 30.720390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.177299, 29.038610, 30.807903>,  <27.831558, 28.900085, 30.953758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177299, 29.038610, 30.807903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482733, 0.368194, -0.794608,
		-0.140926, 0.862844, 0.485427,
		0.864354, 0.346313, -0.364636,
		28.436605, 29.142504, 30.698513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740276, 29.626524, 30.805967>,  <27.831558, 28.900085, 30.953758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740276, 29.626524, 30.805967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.019129, 29.466696, 30.567858>,  <28.186440, 29.370800, 30.424992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.019129, 29.466696, 30.567858>,  <27.740276, 29.626524, 30.805967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019129, 29.466696, 30.567858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524117, 0.282506, -0.803425,
		0.489193, 0.872087, -0.012478,
		0.697131, -0.399569, -0.595275,
		28.228268, 29.346825, 30.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635448, 29.932177, 30.152672>,  <27.740276, 29.626524, 30.805967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635448, 29.932177, 30.152672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.907200, 29.660215, 30.042271>,  <28.070251, 29.497040, 29.976030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.907200, 29.660215, 30.042271>,  <27.635448, 29.932177, 30.152672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907200, 29.660215, 30.042271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333270, 0.049202, -0.941547,
		0.653739, 0.731651, -0.193165,
		0.679379, -0.679902, -0.276002,
		28.111013, 29.456245, 29.959471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023293, 30.198809, 29.583559>,  <27.635448, 29.932177, 30.152672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023293, 30.198809, 29.583559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.105993, 29.809757, 29.541138>,  <28.155613, 29.576326, 29.515686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.105993, 29.809757, 29.541138>,  <28.023293, 30.198809, 29.583559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105993, 29.809757, 29.541138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189755, 0.066473, -0.979578,
		0.959816, 0.222654, -0.170818,
		0.206752, -0.972629, -0.106051,
		28.168018, 29.517969, 29.509323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586796, 30.078260, 29.135677>,  <28.023293, 30.198809, 29.583559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586796, 30.078260, 29.135677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.362066, 29.747387, 29.131289>,  <28.227228, 29.548862, 29.128654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.362066, 29.747387, 29.131289>,  <28.586796, 30.078260, 29.135677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362066, 29.747387, 29.131289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014658, 0.023216, -0.999623,
		0.827127, -0.561451, -0.025168,
		-0.561824, -0.827184, -0.010973,
		28.193520, 29.499231, 29.127996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825966, 29.555243, 28.576498>,  <28.586796, 30.078260, 29.135677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825966, 29.555243, 28.576498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.461779, 29.399225, 28.631514>,  <28.243267, 29.305614, 28.664522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.461779, 29.399225, 28.631514>,  <28.825966, 29.555243, 28.576498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461779, 29.399225, 28.631514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057350, -0.210277, -0.975958,
		0.409586, -0.896466, 0.169081,
		-0.910467, -0.390043, 0.137539,
		28.188639, 29.282213, 28.672775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771954, 28.875854, 28.168804>,  <28.825966, 29.555243, 28.576498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771954, 28.875854, 28.168804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.387529, 28.963682, 28.235920>,  <28.156876, 29.016378, 28.276190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.387529, 28.963682, 28.235920>,  <28.771954, 28.875854, 28.168804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387529, 28.963682, 28.235920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198386, -0.125529, -0.972052,
		-0.192369, -0.967488, 0.164200,
		-0.961060, 0.219568, 0.167788,
		28.099211, 29.029552, 28.286257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375868, 28.296356, 27.935720>,  <28.771954, 28.875854, 28.168804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375868, 28.296356, 27.935720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.124853, 28.607790, 27.935492>,  <27.974243, 28.794651, 27.935354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.124853, 28.607790, 27.935492>,  <28.375868, 28.296356, 27.935720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124853, 28.607790, 27.935492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140767, -0.114182, -0.983437,
		-0.765754, -0.617064, 0.181253,
		-0.627539, 0.778585, -0.000573,
		27.936592, 28.841366, 27.935320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803379, 28.069633, 27.698151>,  <28.375868, 28.296356, 27.935720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803379, 28.069633, 27.698151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.749453, 28.461548, 27.639027>,  <27.717096, 28.696695, 27.603552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.749453, 28.461548, 27.639027>,  <27.803379, 28.069633, 27.698151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749453, 28.461548, 27.639027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227177, -0.175761, -0.957862,
		-0.964477, -0.095555, 0.246280,
		-0.134814, 0.979785, -0.147809,
		27.709009, 28.755484, 27.594685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241665, 28.035192, 27.349077>,  <27.803379, 28.069633, 27.698151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241665, 28.035192, 27.349077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.420448, 28.389141, 27.296576>,  <27.527719, 28.601511, 27.265076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.420448, 28.389141, 27.296576>,  <27.241665, 28.035192, 27.349077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420448, 28.389141, 27.296576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081631, -0.105767, -0.991035,
		-0.890821, 0.453668, 0.024959,
		0.446961, 0.884872, -0.131253,
		27.554537, 28.654602, 27.257200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744640, 28.351864, 26.946234>,  <27.241665, 28.035192, 27.349077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744640, 28.351864, 26.946234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.083477, 28.551834, 26.874115>,  <27.286779, 28.671816, 26.830845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.083477, 28.551834, 26.874115>,  <26.744640, 28.351864, 26.946234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083477, 28.551834, 26.874115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260287, 0.094498, -0.960896,
		-0.463339, 0.860897, 0.210173,
		0.847094, 0.499926, -0.180295,
		27.337605, 28.701813, 26.820026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606138, 28.923656, 26.460506>,  <26.744640, 28.351864, 26.946234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606138, 28.923656, 26.460506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.999210, 28.859457, 26.423458>,  <27.235054, 28.820938, 26.401228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.999210, 28.859457, 26.423458>,  <26.606138, 28.923656, 26.460506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999210, 28.859457, 26.423458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067049, 0.158013, -0.985158,
		0.172751, 0.974306, 0.144516,
		0.982681, -0.160497, -0.092623,
		27.294014, 28.811308, 26.395672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785561, 29.398615, 25.927395>,  <26.606138, 28.923656, 26.460506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785561, 29.398615, 25.927395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.103527, 29.156834, 25.906452>,  <27.294308, 29.011765, 25.893887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.103527, 29.156834, 25.906452>,  <26.785561, 29.398615, 25.927395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103527, 29.156834, 25.906452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043476, 0.029321, -0.998624,
		0.605158, 0.796100, -0.002971,
		0.794917, -0.604455, -0.052355,
		27.342003, 28.975498, 25.890745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.256615, 29.696285, 25.490135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361187, 29.310488, 25.505133>,  <27.423931, 29.079010, 25.514132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.361187, 29.310488, 25.505133>,  <27.256615, 29.696285, 25.490135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361187, 29.310488, 25.505133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119540, -0.006194, -0.992810,
		0.957791, 0.264035, 0.113676,
		0.261432, -0.964493, 0.037495,
		27.439617, 29.021139, 25.516382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793282, 29.667999, 24.922926>,  <27.256615, 29.696285, 25.490135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793282, 29.667999, 24.922926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691113, 29.283995, 24.968775>,  <27.629812, 29.053593, 24.996284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691113, 29.283995, 24.968775>,  <27.793282, 29.667999, 24.922926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691113, 29.283995, 24.968775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155209, -0.157734, -0.975208,
		0.954291, -0.231297, 0.189291,
		-0.255421, -0.960011, 0.114624,
		27.614487, 28.995991, 25.003162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357479, 29.269321, 24.652264>,  <27.793282, 29.667999, 24.922926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357479, 29.269321, 24.652264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043415, 29.022167, 24.668951>,  <27.854977, 28.873875, 24.678963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043415, 29.022167, 24.668951>,  <28.357479, 29.269321, 24.652264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043415, 29.022167, 24.668951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148689, -0.253481, -0.955845,
		0.601175, -0.744290, 0.290896,
		-0.785162, -0.617883, 0.041719,
		27.807867, 28.836802, 24.681467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607471, 28.734671, 24.331831>,  <28.357479, 29.269321, 24.652264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607471, 28.734671, 24.331831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208136, 28.735119, 24.308807>,  <27.968534, 28.735388, 24.294994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208136, 28.735119, 24.308807>,  <28.607471, 28.734671, 24.331831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208136, 28.735119, 24.308807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056174, -0.199754, -0.978235,
		-0.012594, -0.979846, 0.199360,
		-0.998342, 0.001121, -0.057558,
		27.908632, 28.735456, 24.291540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518126, 28.127876, 24.020805>,  <28.607471, 28.734671, 24.331831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518126, 28.127876, 24.020805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182699, 28.342127, 23.980980>,  <27.981443, 28.470676, 23.957085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182699, 28.342127, 23.980980>,  <28.518126, 28.127876, 24.020805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182699, 28.342127, 23.980980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001275, -0.184679, -0.982798,
		-0.544799, -0.824014, 0.155548,
		-0.838566, 0.535626, -0.099562,
		27.931129, 28.502815, 23.951111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096025, 27.668331, 23.674776>,  <28.518126, 28.127876, 24.020805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096025, 27.668331, 23.674776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967237, 28.041718, 23.611567>,  <27.889965, 28.265749, 23.573641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.967237, 28.041718, 23.611567>,  <28.096025, 27.668331, 23.674776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967237, 28.041718, 23.611567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047422, -0.150801, -0.987426,
		-0.945561, -0.325417, 0.004287,
		-0.321972, 0.933468, -0.158023,
		27.870646, 28.321758, 23.564159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537815, 27.615641, 23.160694>,  <28.096025, 27.668331, 23.674776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537815, 27.615641, 23.160694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.653816, 27.998436, 23.157339>,  <27.723417, 28.228113, 23.155327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.653816, 27.998436, 23.157339>,  <27.537815, 27.615641, 23.160694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653816, 27.998436, 23.157339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062145, 0.010086, -0.998016,
		-0.955006, 0.289949, 0.062397,
		0.290003, 0.956989, -0.008387,
		27.740816, 28.285532, 23.154823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134638, 28.042044, 22.748632>,  <27.537815, 27.615641, 23.160694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134638, 28.042044, 22.748632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470932, 28.258615, 22.750380>,  <27.672709, 28.388559, 22.751429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.470932, 28.258615, 22.750380>,  <27.134638, 28.042044, 22.748632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470932, 28.258615, 22.750380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096630, 0.157975, -0.982704,
		-0.532755, 0.825771, 0.185133,
		0.840735, 0.541430, 0.004367,
		27.723152, 28.421045, 22.751690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903795, 28.602612, 22.426167>,  <27.134638, 28.042044, 22.748632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903795, 28.602612, 22.426167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.303593, 28.615204, 22.428123>,  <27.543470, 28.622759, 22.429298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.303593, 28.615204, 22.428123>,  <26.903795, 28.602612, 22.426167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303593, 28.615204, 22.428123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005420, 0.319355, -0.947620,
		-0.031396, 0.947112, 0.319363,
		0.999492, 0.031483, 0.004893,
		27.603441, 28.624649, 22.429592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020857, 29.272894, 22.165939>,  <26.903795, 28.602612, 22.426167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020857, 29.272894, 22.165939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337334, 29.033073, 22.117682>,  <27.527220, 28.889181, 22.088726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337334, 29.033073, 22.117682>,  <27.020857, 29.272894, 22.165939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337334, 29.033073, 22.117682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068351, 0.109346, -0.991651,
		0.607737, 0.792832, 0.045534,
		0.791191, -0.599551, -0.120644,
		27.574692, 28.853209, 22.081488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367773, 29.604012, 21.648073>,  <27.020857, 29.272894, 22.165939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367773, 29.604012, 21.648073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.581972, 29.266598, 21.631638>,  <27.710491, 29.064150, 21.621777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.581972, 29.266598, 21.631638>,  <27.367773, 29.604012, 21.648073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581972, 29.266598, 21.631638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148322, -0.046038, -0.987867,
		0.831409, 0.535097, -0.149768,
		0.535499, -0.843535, -0.041091,
		27.742622, 29.013536, 21.619310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001575, 29.660978, 21.254030>,  <27.367773, 29.604012, 21.648073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001575, 29.660978, 21.254030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891924, 29.276327, 21.249605>,  <27.826134, 29.045536, 21.246950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891924, 29.276327, 21.249605>,  <28.001575, 29.660978, 21.254030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891924, 29.276327, 21.249605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012223, 0.014987, -0.999813,
		0.961615, -0.273943, -0.015862,
		-0.274129, -0.961629, -0.011064,
		27.809685, 28.987839, 21.246286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520910, 29.334150, 20.890997>,  <28.001575, 29.660978, 21.254030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520910, 29.334150, 20.890997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.195395, 29.103489, 20.862097>,  <28.000086, 28.965092, 20.844757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.195395, 29.103489, 20.862097>,  <28.520910, 29.334150, 20.890997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195395, 29.103489, 20.862097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060921, 0.038988, -0.997381,
		0.577961, -0.816057, 0.003402,
		-0.813787, -0.576654, -0.072249,
		27.951258, 28.930492, 20.840422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634979, 28.786350, 20.369518>,  <28.520910, 29.334150, 20.890997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634979, 28.786350, 20.369518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242371, 28.753401, 20.438602>,  <28.006805, 28.733631, 20.480053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242371, 28.753401, 20.438602>,  <28.634979, 28.786350, 20.369518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242371, 28.753401, 20.438602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171739, -0.018798, -0.984963,
		0.084386, -0.996424, 0.004303,
		-0.981521, -0.082378, 0.172711,
		27.947914, 28.728687, 20.490416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512426, 28.308420, 19.910080>,  <28.634979, 28.786350, 20.369518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512426, 28.308420, 19.910080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167074, 28.503294, 19.962574>,  <27.959862, 28.620218, 19.994070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.167074, 28.503294, 19.962574>,  <28.512426, 28.308420, 19.910080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167074, 28.503294, 19.962574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191627, -0.076008, -0.978520,
		-0.466745, -0.869985, 0.158982,
		-0.863382, 0.487185, 0.131237,
		27.908060, 28.649448, 20.001945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921860, 27.838278, 19.723207>,  <28.512426, 28.308420, 19.910080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921860, 27.838278, 19.723207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826412, 28.225111, 19.687843>,  <27.769144, 28.457211, 19.666626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.826412, 28.225111, 19.687843>,  <27.921860, 27.838278, 19.723207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826412, 28.225111, 19.687843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262396, -0.151860, -0.952936,
		-0.934992, -0.204189, 0.289995,
		-0.238617, 0.967081, -0.088409,
		27.754827, 28.515236, 19.661320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320704, 27.876408, 19.214228>,  <27.921860, 27.838278, 19.723207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320704, 27.876408, 19.214228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450731, 28.254295, 19.197086>,  <27.528748, 28.481028, 19.186802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450731, 28.254295, 19.197086>,  <27.320704, 27.876408, 19.214228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450731, 28.254295, 19.197086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347740, 0.077269, -0.934401,
		-0.879435, 0.318649, 0.353634,
		0.325071, 0.944718, -0.042854,
		27.548252, 28.537710, 19.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686253, 28.193800, 18.989983>,  <27.320704, 27.876408, 19.214228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686253, 28.193800, 18.989983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986486, 28.448336, 18.918772>,  <27.166628, 28.601057, 18.876045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986486, 28.448336, 18.918772>,  <26.686253, 28.193800, 18.989983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986486, 28.448336, 18.918772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377873, 0.192339, -0.905659,
		-0.542064, 0.747047, 0.384822,
		0.750586, 0.636339, -0.178029,
		27.211662, 28.639236, 18.865362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410038, 28.781412, 18.655064>,  <26.686253, 28.193800, 18.989983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410038, 28.781412, 18.655064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.797579, 28.793686, 18.556768>,  <27.030104, 28.801050, 18.497791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.797579, 28.793686, 18.556768>,  <26.410038, 28.781412, 18.655064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797579, 28.793686, 18.556768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247640, 0.114370, -0.962078,
		-0.001418, 0.992964, 0.118406,
		0.968851, 0.030686, -0.245736,
		27.088234, 28.802891, 18.483047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457365, 29.332901, 18.267855>,  <26.410038, 28.781412, 18.655064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457365, 29.332901, 18.267855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.799780, 29.150732, 18.170044>,  <27.005228, 29.041431, 18.111357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.799780, 29.150732, 18.170044>,  <26.457365, 29.332901, 18.267855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799780, 29.150732, 18.170044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174022, 0.191533, -0.965935,
		0.486744, 0.869428, 0.084706,
		0.856035, -0.455422, -0.244528,
		27.056591, 29.014105, 18.096685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752546, 29.757256, 17.752897>,  <26.457365, 29.332901, 18.267855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752546, 29.757256, 17.752897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.984762, 29.436440, 17.696745>,  <27.124092, 29.243950, 17.663054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.984762, 29.436440, 17.696745>,  <26.752546, 29.757256, 17.752897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984762, 29.436440, 17.696745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171700, 0.047947, -0.983982,
		0.795923, 0.595344, -0.109875,
		0.580539, -0.802039, -0.140382,
		27.158924, 29.195827, 17.654631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216782, 29.891792, 17.208948>,  <26.752546, 29.757256, 17.752897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216782, 29.891792, 17.208948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.166775, 29.495678, 17.233303>,  <27.136770, 29.258009, 17.247915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.166775, 29.495678, 17.233303>,  <27.216782, 29.891792, 17.208948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166775, 29.495678, 17.233303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241620, -0.029133, -0.969933,
		0.962284, -0.135972, -0.235631,
		-0.125019, -0.990284, 0.060888,
		27.129269, 29.198593, 17.251570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714880, 29.524551, 16.668585>,  <27.216782, 29.891792, 17.208948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714880, 29.524551, 16.668585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377848, 29.329359, 16.759739>,  <27.175629, 29.212244, 16.814432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.377848, 29.329359, 16.759739>,  <27.714880, 29.524551, 16.668585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377848, 29.329359, 16.759739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143679, -0.204128, -0.968343,
		0.519049, -0.848651, 0.101882,
		-0.842582, -0.487979, 0.227886,
		27.125072, 29.182966, 16.828104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299671, 29.849493, 16.859503>,  <27.714880, 29.524551, 16.668585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299671, 29.849493, 16.859503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211594, 29.511600, 17.054619>,  <28.158747, 29.308865, 17.171688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211594, 29.511600, 17.054619>,  <28.299671, 29.849493, 16.859503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211594, 29.511600, 17.054619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694187, -0.487012, -0.530022,
		0.685288, 0.221912, 0.693639,
		-0.220192, -0.844733, 0.487792,
		28.145536, 29.258181, 17.200956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011368, 29.843287, 16.832794>,  <28.299671, 29.849493, 16.859503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011368, 29.843287, 16.832794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193605, 30.191460, 16.758198>,  <29.302948, 30.400364, 16.713440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193605, 30.191460, 16.758198>,  <29.011368, 29.843287, 16.832794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193605, 30.191460, 16.758198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415975, -0.022951, 0.909086,
		0.787020, -0.491749, -0.372535,
		0.455592, 0.870435, -0.186493,
		29.330282, 30.452591, 16.702250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709406, 29.751993, 16.974756>,  <29.011368, 29.843287, 16.832794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709406, 29.751993, 16.974756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675245, 30.150393, 16.985277>,  <29.654749, 30.389433, 16.991590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675245, 30.150393, 16.985277>,  <29.709406, 29.751993, 16.974756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675245, 30.150393, 16.985277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611198, 0.031522, 0.790850,
		0.786857, 0.083618, -0.611444,
		-0.085403, 0.995999, 0.026304,
		29.649624, 30.449192, 16.993168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331388, 29.974550, 17.044113>,  <29.709406, 29.751993, 16.974756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331388, 29.974550, 17.044113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153463, 30.319561, 17.140602>,  <30.046709, 30.526567, 17.198496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153463, 30.319561, 17.140602>,  <30.331388, 29.974550, 17.044113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153463, 30.319561, 17.140602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651840, 0.127067, 0.747635,
		0.614204, 0.489797, -0.618751,
		-0.444812, 0.862527, 0.241224,
		30.020020, 30.578320, 17.212969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883541, 30.477980, 17.280052>,  <30.331388, 29.974550, 17.044113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883541, 30.477980, 17.280052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536871, 30.582930, 17.449774>,  <30.328869, 30.645899, 17.551607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.536871, 30.582930, 17.449774>,  <30.883541, 30.477980, 17.280052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536871, 30.582930, 17.449774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439379, -0.001349, 0.898301,
		0.236263, 0.964965, -0.114112,
		-0.866675, 0.262374, 0.424304,
		30.276869, 30.661642, 17.577065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131247, 30.912416, 17.819876>,  <30.883541, 30.477980, 17.280052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131247, 30.912416, 17.819876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754438, 30.837729, 17.931398>,  <30.528353, 30.792915, 17.998312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754438, 30.837729, 17.931398>,  <31.131247, 30.912416, 17.819876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754438, 30.837729, 17.931398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289108, -0.029846, 0.956831,
		-0.170338, 0.981960, 0.082098,
		-0.942020, -0.186720, 0.278808,
		30.471832, 30.781712, 18.015041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974358, 31.470198, 18.451752>,  <31.131247, 30.912416, 17.819876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974358, 31.470198, 18.451752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754158, 31.136488, 18.439524>,  <30.622038, 30.936262, 18.432186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.754158, 31.136488, 18.439524>,  <30.974358, 31.470198, 18.451752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754158, 31.136488, 18.439524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139975, -0.128341, 0.981802,
		-0.823018, 0.536202, 0.187429,
		-0.550499, -0.834276, -0.030572,
		30.589008, 30.886206, 18.430351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617872, 31.415663, 19.098499>,  <30.974358, 31.470198, 18.451752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617872, 31.415663, 19.098499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556625, 31.044046, 18.963774>,  <30.519878, 30.821077, 18.882938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556625, 31.044046, 18.963774>,  <30.617872, 31.415663, 19.098499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556625, 31.044046, 18.963774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125022, -0.319882, 0.939172,
		-0.980268, 0.185911, -0.067171,
		-0.153116, -0.929039, -0.336813,
		30.510691, 30.765335, 18.862730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987997, 31.277477, 19.251717>,  <30.617872, 31.415663, 19.098499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987997, 31.277477, 19.251717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199566, 30.938589, 19.231865>,  <30.326508, 30.735256, 19.219954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199566, 30.938589, 19.231865>,  <29.987997, 31.277477, 19.251717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199566, 30.938589, 19.231865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379502, -0.288421, 0.879086,
		-0.759092, -0.446133, -0.474073,
		0.528921, -0.847218, -0.049629,
		30.358242, 30.684423, 19.216976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527954, 30.764566, 19.556557>,  <29.987997, 31.277477, 19.251717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527954, 30.764566, 19.556557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880983, 30.576605, 19.562958>,  <30.092800, 30.463829, 19.566799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880983, 30.576605, 19.562958>,  <29.527954, 30.764566, 19.556557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880983, 30.576605, 19.562958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138517, -0.227334, 0.963915,
		-0.449309, -0.852942, -0.265729,
		0.882572, -0.469903, 0.016004,
		30.145756, 30.435635, 19.567759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384895, 30.180687, 19.856792>,  <29.527954, 30.764566, 19.556557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384895, 30.180687, 19.856792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783291, 30.185646, 19.892229>,  <30.022329, 30.188622, 19.913492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783291, 30.185646, 19.892229>,  <29.384895, 30.180687, 19.856792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783291, 30.185646, 19.892229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074113, -0.440264, 0.894804,
		0.050098, -0.897783, -0.437580,
		0.995991, 0.012397, 0.088594,
		30.082088, 30.189365, 19.918808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542007, 29.599098, 20.166542>,  <29.384895, 30.180687, 19.856792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542007, 29.599098, 20.166542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883608, 29.797483, 20.229406>,  <30.088568, 29.916515, 20.267126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883608, 29.797483, 20.229406>,  <29.542007, 29.599098, 20.166542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883608, 29.797483, 20.229406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039387, -0.362845, 0.931017,
		0.518775, -0.788901, -0.329405,
		0.854003, 0.495963, 0.157162,
		30.139809, 29.946272, 20.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059376, 29.119913, 20.353151>,  <29.542007, 29.599098, 20.166542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059376, 29.119913, 20.353151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171204, 29.484802, 20.472942>,  <30.238300, 29.703735, 20.544817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.171204, 29.484802, 20.472942>,  <30.059376, 29.119913, 20.353151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171204, 29.484802, 20.472942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131802, -0.345424, 0.929145,
		0.951035, -0.220290, -0.216803,
		0.279571, 0.912225, 0.299476,
		30.255075, 29.758471, 20.562784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665676, 29.070976, 20.731857>,  <30.059376, 29.119913, 20.353151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665676, 29.070976, 20.731857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504322, 29.410162, 20.869400>,  <30.407509, 29.613674, 20.951925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504322, 29.410162, 20.869400>,  <30.665676, 29.070976, 20.731857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504322, 29.410162, 20.869400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201070, -0.284459, 0.937365,
		0.892665, 0.447259, -0.055754,
		-0.403385, 0.847964, 0.343857,
		30.383307, 29.664551, 20.972557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930050, 29.108519, 21.340481>,  <30.665676, 29.070976, 20.731857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930050, 29.108519, 21.340481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680820, 29.418867, 21.380095>,  <30.531282, 29.605076, 21.403864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680820, 29.418867, 21.380095>,  <30.930050, 29.108519, 21.340481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680820, 29.418867, 21.380095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027425, -0.104868, 0.994108,
		0.781684, 0.622116, 0.044062,
		-0.623071, 0.775870, 0.099035,
		30.493898, 29.651628, 21.409805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201071, 29.581442, 21.795195>,  <30.930050, 29.108519, 21.340481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201071, 29.581442, 21.795195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802889, 29.619539, 21.795277>,  <30.563980, 29.642397, 21.795326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802889, 29.619539, 21.795277>,  <31.201071, 29.581442, 21.795195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802889, 29.619539, 21.795277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012943, 0.133145, 0.991012,
		0.094359, 0.986510, -0.133772,
		-0.995454, 0.095242, 0.000205,
		30.504253, 29.648111, 21.795338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109646, 30.104830, 22.189543>,  <31.201071, 29.581442, 21.795195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109646, 30.104830, 22.189543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737288, 29.958773, 22.185463>,  <30.513872, 29.871138, 22.183016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737288, 29.958773, 22.185463>,  <31.109646, 30.104830, 22.189543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737288, 29.958773, 22.185463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105870, 0.242969, 0.964239,
		-0.349609, 0.898685, -0.264836,
		-0.930895, -0.365145, -0.010200,
		30.458019, 29.849230, 22.182404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752033, 30.602615, 22.557234>,  <31.109646, 30.104830, 22.189543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752033, 30.602615, 22.557234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547546, 30.259851, 22.583651>,  <30.424854, 30.054193, 22.599501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547546, 30.259851, 22.583651>,  <30.752033, 30.602615, 22.557234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547546, 30.259851, 22.583651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157957, 0.169212, 0.972840,
		-0.844811, 0.486902, -0.221859,
		-0.511218, -0.856910, 0.066043,
		30.394180, 30.002779, 22.603464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464565, 30.714804, 23.174677>,  <30.752033, 30.602615, 22.557234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464565, 30.714804, 23.174677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404137, 30.322569, 23.124666>,  <30.367880, 30.087229, 23.094660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.404137, 30.322569, 23.124666>,  <30.464565, 30.714804, 23.174677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404137, 30.322569, 23.124666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103766, -0.110047, 0.988495,
		-0.983062, 0.162306, -0.085126,
		-0.151071, -0.980585, -0.125025,
		30.358816, 30.028393, 23.087158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008005, 30.591072, 23.648136>,  <30.464565, 30.714804, 23.174677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008005, 30.591072, 23.648136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172077, 30.234858, 23.569447>,  <30.270521, 30.021130, 23.522234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172077, 30.234858, 23.569447>,  <30.008005, 30.591072, 23.648136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172077, 30.234858, 23.569447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255071, -0.095076, 0.962237,
		-0.875609, -0.444868, 0.188152,
		0.410180, -0.890535, -0.196723,
		30.295132, 29.967697, 23.510429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711296, 30.184038, 24.124800>,  <30.008005, 30.591072, 23.648136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711296, 30.184038, 24.124800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056931, 30.020472, 24.007401>,  <30.264311, 29.922331, 23.936960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056931, 30.020472, 24.007401>,  <29.711296, 30.184038, 24.124800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056931, 30.020472, 24.007401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307076, -0.033755, 0.951086,
		-0.398822, -0.911947, 0.096401,
		0.864086, -0.408917, -0.293499,
		30.316156, 29.897797, 23.919352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.841061, 29.371836, 28.505381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.216141, 29.246672, 28.444973>,  <27.441189, 29.171574, 28.408728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.216141, 29.246672, 28.444973>,  <26.841061, 29.371836, 28.505381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216141, 29.246672, 28.444973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080499, -0.227170, 0.970522,
		-0.337993, -0.922215, -0.187828,
		0.937700, -0.312909, -0.151020,
		27.497450, 29.152800, 28.399668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053312, 28.783588, 28.926723>,  <26.841061, 29.371836, 28.505381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053312, 28.783588, 28.926723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.413795, 28.929665, 28.833378>,  <27.630085, 29.017311, 28.777370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.413795, 28.929665, 28.833378>,  <27.053312, 28.783588, 28.926723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413795, 28.929665, 28.833378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312808, -0.175422, 0.933477,
		0.299960, -0.914255, -0.272326,
		0.901207, 0.365191, -0.233366,
		27.684158, 29.039223, 28.763369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586525, 28.340918, 29.253889>,  <27.053312, 28.783588, 28.926723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586525, 28.340918, 29.253889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.776888, 28.689741, 29.208229>,  <27.891106, 28.899035, 29.180834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.776888, 28.689741, 29.208229>,  <27.586525, 28.340918, 29.253889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776888, 28.689741, 29.208229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455921, -0.133631, 0.879931,
		0.752096, -0.470808, -0.461184,
		0.475907, 0.872057, -0.114148,
		27.919661, 28.951359, 29.173985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213984, 28.260561, 29.412745>,  <27.586525, 28.340918, 29.253889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213984, 28.260561, 29.412745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.208685, 28.659575, 29.440310>,  <28.205505, 28.898983, 29.456848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.208685, 28.659575, 29.440310>,  <28.213984, 28.260561, 29.412745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208685, 28.659575, 29.440310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537705, -0.051000, 0.841589,
		0.843029, 0.048203, -0.535704,
		-0.013246, 0.997535, 0.068914,
		28.204712, 28.958836, 29.460983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831144, 28.417957, 29.571898>,  <28.213984, 28.260561, 29.412745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831144, 28.417957, 29.571898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.625780, 28.733511, 29.706997>,  <28.502562, 28.922842, 29.788057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.625780, 28.733511, 29.706997>,  <28.831144, 28.417957, 29.571898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625780, 28.733511, 29.706997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566949, 0.016365, 0.823590,
		0.644189, 0.614325, -0.455659,
		-0.513409, 0.788883, 0.337749,
		28.471758, 28.970177, 29.808321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285496, 28.874041, 29.789551>,  <28.831144, 28.417957, 29.571898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285496, 28.874041, 29.789551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.952171, 28.992720, 29.976124>,  <28.752176, 29.063927, 30.088068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.952171, 28.992720, 29.976124>,  <29.285496, 28.874041, 29.789551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952171, 28.992720, 29.976124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477718, -0.038066, 0.877688,
		0.278165, 0.954212, -0.110017,
		-0.833312, 0.296699, 0.466433,
		28.702177, 29.081730, 30.116055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579613, 29.449074, 30.200867>,  <29.285496, 28.874041, 29.789551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579613, 29.449074, 30.200867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.223541, 29.371435, 30.365746>,  <29.009897, 29.324852, 30.464672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.223541, 29.371435, 30.365746>,  <29.579613, 29.449074, 30.200867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223541, 29.371435, 30.365746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397705, 0.110361, 0.910852,
		-0.222285, 0.974755, -0.021048,
		-0.890180, -0.194098, 0.412196,
		28.956488, 29.313206, 30.489405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443527, 29.979540, 30.724007>,  <29.579613, 29.449074, 30.200867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443527, 29.979540, 30.724007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.223246, 29.657701, 30.812868>,  <29.091076, 29.464600, 30.866184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.223246, 29.657701, 30.812868>,  <29.443527, 29.979540, 30.724007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223246, 29.657701, 30.812868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417491, -0.035045, 0.908005,
		-0.722790, 0.592790, 0.355210,
		-0.550705, -0.804594, 0.222154,
		29.058035, 29.416323, 30.879515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243570, 30.161388, 31.403099>,  <29.443527, 29.979540, 30.724007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243570, 30.161388, 31.403099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.183580, 29.769075, 31.353182>,  <29.147587, 29.533688, 31.323233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.183580, 29.769075, 31.353182>,  <29.243570, 30.161388, 31.403099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183580, 29.769075, 31.353182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364004, -0.172127, 0.915354,
		-0.919244, 0.091855, 0.382824,
		-0.149974, -0.980783, -0.124791,
		29.138588, 29.474840, 31.315744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831825, 29.899225, 32.058678>,  <29.243570, 30.161388, 31.403099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831825, 29.899225, 32.058678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.028952, 29.604958, 31.872808>,  <29.147228, 29.428396, 31.761286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.028952, 29.604958, 31.872808>,  <28.831825, 29.899225, 32.058678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028952, 29.604958, 31.872808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447913, -0.243356, 0.860321,
		-0.745993, -0.632115, 0.209585,
		0.492818, -0.735669, -0.464674,
		29.176798, 29.384256, 31.733406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661808, 29.277788, 32.611153>,  <28.831825, 29.899225, 32.058678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661808, 29.277788, 32.611153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.971670, 29.160343, 32.387119>,  <29.157589, 29.089876, 32.252697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.971670, 29.160343, 32.387119>,  <28.661808, 29.277788, 32.611153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971670, 29.160343, 32.387119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465777, -0.334150, 0.819387,
		-0.427736, -0.895620, -0.122093,
		0.774657, -0.293614, -0.560087,
		29.204067, 29.072260, 32.219093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918661, 28.524950, 32.815884>,  <28.661808, 29.277788, 32.611153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918661, 28.524950, 32.815884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.232996, 28.703623, 32.644798>,  <29.421597, 28.810827, 32.542149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.232996, 28.703623, 32.644798>,  <28.918661, 28.524950, 32.815884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232996, 28.703623, 32.644798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601573, -0.391720, 0.696179,
		0.143427, -0.804382, -0.576540,
		0.785836, 0.446682, -0.427711,
		29.468746, 28.837627, 32.516483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379070, 28.023445, 32.728905>,  <28.918661, 28.524950, 32.815884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379070, 28.023445, 32.728905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.623138, 28.339016, 32.699818>,  <29.769579, 28.528358, 32.682365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.623138, 28.339016, 32.699818>,  <29.379070, 28.023445, 32.728905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623138, 28.339016, 32.699818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649109, -0.445177, 0.616826,
		0.454259, -0.423570, -0.783733,
		0.610169, 0.788927, -0.072717,
		29.806189, 28.575693, 32.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103319, 27.834625, 32.440365>,  <29.379070, 28.023445, 32.728905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103319, 27.834625, 32.440365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.125809, 28.157589, 32.675289>,  <30.139301, 28.351368, 32.816242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.125809, 28.157589, 32.675289>,  <30.103319, 27.834625, 32.440365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125809, 28.157589, 32.675289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705228, -0.448509, 0.549084,
		0.706748, 0.383315, -0.594624,
		0.056222, 0.807409, 0.587307,
		30.142675, 28.399813, 32.851482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114103, 27.101057, 32.502583>,  <30.103319, 27.834625, 32.440365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114103, 27.101057, 32.502583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.298601, 26.802961, 32.309971>,  <30.409300, 26.624104, 32.194405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.298601, 26.802961, 32.309971>,  <30.114103, 27.101057, 32.502583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298601, 26.802961, 32.309971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538306, 0.196376, -0.819551,
		0.705321, 0.637226, -0.310589,
		0.461247, -0.745238, -0.481530,
		30.436975, 26.579390, 32.165512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351677, 27.361340, 31.849789>,  <30.114103, 27.101057, 32.502583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351677, 27.361340, 31.849789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268770, 26.970181, 31.838787>,  <30.219027, 26.735485, 31.832186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268770, 26.970181, 31.838787>,  <30.351677, 27.361340, 31.849789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268770, 26.970181, 31.838787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652941, 0.159219, -0.740485,
		0.728498, -0.135520, -0.671510,
		-0.207268, -0.977897, -0.027504,
		30.206591, 26.676811, 31.830536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512886, 27.126486, 31.129784>,  <30.351677, 27.361340, 31.849789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512886, 27.126486, 31.129784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.250338, 26.863304, 31.277443>,  <30.092808, 26.705395, 31.366037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.250338, 26.863304, 31.277443>,  <30.512886, 27.126486, 31.129784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250338, 26.863304, 31.277443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480401, -0.012771, -0.876956,
		0.581712, -0.752949, -0.307700,
		-0.656373, -0.657955, 0.369147,
		30.053425, 26.665918, 31.388187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393034, 26.705605, 30.524708>,  <30.512886, 27.126486, 31.129784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393034, 26.705605, 30.524708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.109844, 26.596485, 30.785276>,  <29.939930, 26.531013, 30.941618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.109844, 26.596485, 30.785276>,  <30.393034, 26.705605, 30.524708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109844, 26.596485, 30.785276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659344, -0.075194, -0.748072,
		0.253056, -0.959128, -0.126634,
		-0.707975, -0.272800, 0.651423,
		29.897451, 26.514645, 30.980703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184116, 26.148756, 30.291655>,  <30.393034, 26.705605, 30.524708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184116, 26.148756, 30.291655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.867037, 26.203964, 30.529167>,  <29.676788, 26.237089, 30.671675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.867037, 26.203964, 30.529167>,  <30.184116, 26.148756, 30.291655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867037, 26.203964, 30.529167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608766, -0.127965, -0.782961,
		-0.032080, -0.982128, 0.185459,
		-0.792701, 0.138018, 0.593782,
		29.629227, 26.245371, 30.707302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773932, 25.548225, 30.186296>,  <30.184116, 26.148756, 30.291655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773932, 25.548225, 30.186296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.537500, 25.837236, 30.329731>,  <29.395641, 26.010643, 30.415791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.537500, 25.837236, 30.329731>,  <29.773932, 25.548225, 30.186296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537500, 25.837236, 30.329731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655740, -0.171549, -0.735238,
		-0.469715, -0.669721, 0.575189,
		-0.591077, 0.722527, 0.358584,
		29.360178, 26.053995, 30.437305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113253, 25.265587, 30.329224>,  <29.773932, 25.548225, 30.186296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113253, 25.265587, 30.329224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.049692, 25.655750, 30.268124>,  <29.011557, 25.889849, 30.231464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.049692, 25.655750, 30.268124>,  <29.113253, 25.265587, 30.329224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049692, 25.655750, 30.268124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605418, -0.218479, -0.765334,
		-0.779884, -0.029134, 0.625245,
		-0.158900, 0.975407, -0.152750,
		29.002022, 25.948372, 30.222298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493641, 25.321857, 30.130762>,  <29.113253, 25.265587, 30.329224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493641, 25.321857, 30.130762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.645205, 25.661907, 29.984493>,  <28.736143, 25.865936, 29.896732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.645205, 25.661907, 29.984493>,  <28.493641, 25.321857, 30.130762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645205, 25.661907, 29.984493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642524, -0.042709, -0.765074,
		-0.666026, 0.524847, 0.530043,
		0.378909, 0.850125, -0.365672,
		28.758877, 25.916945, 29.874792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885084, 25.629114, 29.826418>,  <28.493641, 25.321857, 30.130762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885084, 25.629114, 29.826418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.206179, 25.825727, 29.691359>,  <28.398836, 25.943695, 29.610323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.206179, 25.825727, 29.691359>,  <27.885084, 25.629114, 29.826418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206179, 25.825727, 29.691359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346739, -0.075931, -0.934883,
		-0.485165, 0.867542, 0.109482,
		0.802737, 0.491534, -0.337650,
		28.447001, 25.973188, 29.590063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625240, 26.259769, 29.521618>,  <27.885084, 25.629114, 29.826418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625240, 26.259769, 29.521618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.993454, 26.206184, 29.374830>,  <28.214382, 26.174034, 29.286757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.993454, 26.206184, 29.374830>,  <27.625240, 26.259769, 29.521618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993454, 26.206184, 29.374830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332394, 0.224951, -0.915921,
		0.205250, 0.965117, 0.162547,
		0.920536, -0.133963, -0.366970,
		28.269615, 26.165995, 29.264740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854572, 26.854019, 29.001230>,  <27.625240, 26.259769, 29.521618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854572, 26.854019, 29.001230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083260, 26.544849, 28.891155>,  <28.220472, 26.359348, 28.825109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.083260, 26.544849, 28.891155>,  <27.854572, 26.854019, 29.001230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083260, 26.544849, 28.891155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194614, 0.198080, -0.960672,
		0.797034, 0.602789, -0.037175,
		0.571719, -0.772923, -0.275187,
		28.254776, 26.312973, 28.808599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155502, 27.062910, 28.337021>,  <27.854572, 26.854019, 29.001230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155502, 27.062910, 28.337021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.226690, 26.669340, 28.342924>,  <28.269403, 26.433199, 28.346466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.226690, 26.669340, 28.342924>,  <28.155502, 27.062910, 28.337021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226690, 26.669340, 28.342924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099775, -0.032964, -0.994464,
		0.978965, 0.175511, -0.104038,
		0.177969, -0.983925, 0.014759,
		28.280081, 26.374163, 28.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773485, 26.969955, 27.916389>,  <28.155502, 27.062910, 28.337021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773485, 26.969955, 27.916389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.556082, 26.635878, 27.949978>,  <28.425640, 26.435431, 27.970131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.556082, 26.635878, 27.949978>,  <28.773485, 26.969955, 27.916389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556082, 26.635878, 27.949978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080950, -0.047419, -0.995590,
		0.835491, -0.547909, -0.041836,
		-0.543509, -0.835193, 0.083971,
		28.393028, 26.385321, 27.975170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957857, 26.629921, 27.383114>,  <28.773485, 26.969955, 27.916389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957857, 26.629921, 27.383114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.603567, 26.473839, 27.483700>,  <28.390993, 26.380190, 27.544052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.603567, 26.473839, 27.483700>,  <28.957857, 26.629921, 27.383114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603567, 26.473839, 27.483700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257657, -0.037369, -0.965514,
		0.386146, -0.919969, -0.067441,
		-0.885722, -0.390205, 0.251466,
		28.337851, 26.356777, 27.559139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563433, 26.026785, 27.322657>,  <28.957857, 26.629921, 27.383114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563433, 26.026785, 27.322657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.951565, 26.017334, 27.226410>,  <30.184444, 26.011663, 27.168661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.951565, 26.017334, 27.226410>,  <29.563433, 26.026785, 27.322657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951565, 26.017334, 27.226410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217935, -0.345450, 0.912781,
		-0.104689, -0.938140, -0.330052,
		0.970332, -0.023628, -0.240619,
		30.242664, 26.010246, 27.154224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787815, 25.420525, 27.539883>,  <29.563433, 26.026785, 27.322657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787815, 25.420525, 27.539883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.118929, 25.644827, 27.532635>,  <30.317596, 25.779408, 27.528286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.118929, 25.644827, 27.532635>,  <29.787815, 25.420525, 27.539883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118929, 25.644827, 27.532635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210733, -0.280825, 0.936338,
		0.519967, -0.778904, -0.350632,
		0.827783, 0.560754, -0.018121,
		30.367264, 25.813053, 27.527199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219011, 25.045893, 27.938013>,  <29.787815, 25.420525, 27.539883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219011, 25.045893, 27.938013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.400450, 25.400724, 27.903748>,  <30.509314, 25.613625, 27.883188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.400450, 25.400724, 27.903748>,  <30.219011, 25.045893, 27.938013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400450, 25.400724, 27.903748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477397, -0.160689, 0.863870,
		0.752558, -0.432743, -0.496378,
		0.453596, 0.887081, -0.085663,
		30.536528, 25.666849, 27.878048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020891, 24.987705, 27.935116>,  <30.219011, 25.045893, 27.938013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020891, 24.987705, 27.935116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.911110, 25.352987, 28.055601>,  <30.845242, 25.572157, 28.127892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.911110, 25.352987, 28.055601>,  <31.020891, 24.987705, 27.935116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911110, 25.352987, 28.055601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466919, -0.147278, 0.871949,
		0.840632, 0.379951, -0.385972,
		-0.274453, 0.913207, 0.301213,
		30.828773, 25.626949, 28.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680262, 25.342945, 28.045547>,  <31.020891, 24.987705, 27.935116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680262, 25.342945, 28.045547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411385, 25.549301, 28.257969>,  <31.250059, 25.673115, 28.385422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.411385, 25.549301, 28.257969>,  <31.680262, 25.342945, 28.045547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411385, 25.549301, 28.257969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545016, -0.140686, 0.826538,
		0.501114, 0.845023, -0.186601,
		-0.672192, 0.515890, 0.531051,
		31.209726, 25.704069, 28.417284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972738, 25.883533, 28.366009>,  <31.680262, 25.342945, 28.045547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972738, 25.883533, 28.366009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645531, 25.811813, 28.584620>,  <31.449205, 25.768782, 28.715786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.645531, 25.811813, 28.584620>,  <31.972738, 25.883533, 28.366009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645531, 25.811813, 28.584620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543373, 0.070734, 0.836506,
		-0.188645, 0.981248, 0.039566,
		-0.818021, -0.179302, 0.546528,
		31.400124, 25.758022, 28.748577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922604, 26.461021, 28.959883>,  <31.972738, 25.883533, 28.366009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922604, 26.461021, 28.959883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.717440, 26.134949, 29.067511>,  <31.594341, 25.939304, 29.132088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.717440, 26.134949, 29.067511>,  <31.922604, 26.461021, 28.959883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717440, 26.134949, 29.067511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531878, -0.055749, 0.844984,
		-0.673815, 0.576515, 0.462173,
		-0.512911, -0.815183, 0.269071,
		31.563566, 25.890394, 29.148232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005379, 26.458876, 29.599634>,  <31.922604, 26.461021, 28.959883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005379, 26.458876, 29.599634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.820139, 26.104738, 29.583120>,  <31.708996, 25.892256, 29.573212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.820139, 26.104738, 29.583120>,  <32.005379, 26.458876, 29.599634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820139, 26.104738, 29.583120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271524, -0.186060, 0.944275,
		-0.843692, 0.426080, 0.326557,
		-0.463096, -0.885346, -0.041286,
		31.681210, 25.839134, 29.570734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535393, 26.495699, 30.148104>,  <32.005379, 26.458876, 29.599634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535393, 26.495699, 30.148104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628838, 26.121042, 30.043701>,  <31.684904, 25.896248, 29.981060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.628838, 26.121042, 30.043701>,  <31.535393, 26.495699, 30.148104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628838, 26.121042, 30.043701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212310, -0.212820, 0.953747,
		-0.948868, -0.278220, 0.149141,
		0.233611, -0.936644, -0.261007,
		31.698921, 25.840050, 29.965399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174683, 26.025097, 30.648663>,  <31.535393, 26.495699, 30.148104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174683, 26.025097, 30.648663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473400, 25.824072, 30.474430>,  <31.652630, 25.703457, 30.369890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473400, 25.824072, 30.474430>,  <31.174683, 26.025097, 30.648663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473400, 25.824072, 30.474430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404171, -0.177177, 0.897359,
		-0.528153, -0.846192, 0.070806,
		0.746793, -0.502561, -0.435583,
		31.697437, 25.673304, 30.343756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159775, 25.483372, 30.931503>,  <31.174683, 26.025097, 30.648663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159775, 25.483372, 30.931503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.536648, 25.493883, 30.797876>,  <31.762772, 25.500191, 30.717701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.536648, 25.493883, 30.797876>,  <31.159775, 25.483372, 30.931503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536648, 25.493883, 30.797876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324631, -0.318813, 0.890490,
		-0.083104, -0.947453, -0.308911,
		0.942183, 0.026279, -0.334067,
		31.819304, 25.501766, 30.697657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534243, 24.838774, 31.155823>,  <31.159775, 25.483372, 30.931503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534243, 24.838774, 31.155823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.811680, 25.122200, 31.103872>,  <31.978142, 25.292255, 31.072702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.811680, 25.122200, 31.103872>,  <31.534243, 24.838774, 31.155823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811680, 25.122200, 31.103872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453233, -0.289098, 0.843209,
		0.559921, -0.643707, -0.521661,
		0.693591, 0.708564, -0.129877,
		32.019756, 25.334770, 31.064909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.456146, 25.147860, 23.493336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743830, 25.424149, 23.463293>,  <29.916441, 25.589922, 23.445267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743830, 25.424149, 23.463293>,  <29.456146, 25.147860, 23.493336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743830, 25.424149, 23.463293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138009, -0.036077, 0.989774,
		0.680948, -0.722221, -0.121272,
		0.719210, 0.690721, -0.075107,
		29.959593, 25.631365, 23.440762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986135, 24.839178, 23.828585>,  <29.456146, 25.147860, 23.493336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986135, 24.839178, 23.828585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105047, 25.221001, 23.820158>,  <30.176394, 25.450094, 23.815102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105047, 25.221001, 23.820158>,  <29.986135, 24.839178, 23.828585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105047, 25.221001, 23.820158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291112, -0.069606, 0.954153,
		0.909329, -0.289783, -0.298575,
		0.297280, 0.954558, -0.021065,
		30.194231, 25.507368, 23.813839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688131, 24.949432, 24.003399>,  <29.986135, 24.839178, 23.828585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688131, 24.949432, 24.003399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498230, 25.293835, 24.076372>,  <30.384289, 25.500477, 24.120155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498230, 25.293835, 24.076372>,  <30.688131, 24.949432, 24.003399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498230, 25.293835, 24.076372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507013, 0.098120, 0.856335,
		0.719409, 0.499042, -0.483124,
		-0.474751, 0.861005, 0.182432,
		30.355804, 25.552135, 24.131102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183153, 25.378401, 24.318560>,  <30.688131, 24.949432, 24.003399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183153, 25.378401, 24.318560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851511, 25.581051, 24.413145>,  <30.652527, 25.702641, 24.469896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851511, 25.581051, 24.413145>,  <31.183153, 25.378401, 24.318560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851511, 25.581051, 24.413145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268678, -0.009864, 0.963180,
		0.490305, 0.862109, -0.127941,
		-0.829104, 0.506626, 0.236466,
		30.602779, 25.733038, 24.484085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340132, 25.906546, 24.898048>,  <31.183153, 25.378401, 24.318560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340132, 25.906546, 24.898048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940561, 25.893633, 24.911360>,  <30.700819, 25.885885, 24.919346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940561, 25.893633, 24.911360>,  <31.340132, 25.906546, 24.898048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940561, 25.893633, 24.911360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034074, -0.024456, 0.999120,
		-0.031438, 0.999180, 0.025530,
		-0.998925, -0.032280, 0.033277,
		30.640884, 25.883949, 24.921343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081863, 26.560085, 25.260630>,  <31.340132, 25.906546, 24.898048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081863, 26.560085, 25.260630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810129, 26.271519, 25.314396>,  <30.647089, 26.098379, 25.346655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810129, 26.271519, 25.314396>,  <31.081863, 26.560085, 25.260630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810129, 26.271519, 25.314396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008263, 0.190678, 0.981618,
		-0.733783, 0.665736, -0.135495,
		-0.679334, -0.721414, 0.134415,
		30.606329, 26.055094, 25.354721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542717, 26.895599, 25.707439>,  <31.081863, 26.560085, 25.260630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542717, 26.895599, 25.707439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503759, 26.502310, 25.769131>,  <30.480385, 26.266336, 25.806147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503759, 26.502310, 25.769131>,  <30.542717, 26.895599, 25.707439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503759, 26.502310, 25.769131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104717, 0.164230, 0.980848,
		-0.989722, 0.079376, -0.118955,
		-0.097392, -0.983223, 0.154230,
		30.474543, 26.207342, 25.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988480, 26.808395, 26.164997>,  <30.542717, 26.895599, 25.707439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988480, 26.808395, 26.164997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201658, 26.471891, 26.201334>,  <30.329565, 26.269989, 26.223137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201658, 26.471891, 26.201334>,  <29.988480, 26.808395, 26.164997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201658, 26.471891, 26.201334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299993, -0.087472, 0.949922,
		-0.791185, -0.533509, -0.298990,
		0.532945, -0.841259, 0.090842,
		30.361542, 26.219513, 26.228586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591791, 26.362312, 26.622484>,  <29.988480, 26.808395, 26.164997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591791, 26.362312, 26.622484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965801, 26.224257, 26.654995>,  <30.190207, 26.141422, 26.674501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965801, 26.224257, 26.654995>,  <29.591791, 26.362312, 26.622484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965801, 26.224257, 26.654995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111691, -0.069128, 0.991336,
		-0.336533, -0.936001, -0.103185,
		0.935025, -0.345142, 0.081279,
		30.246309, 26.120714, 26.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923887, 26.124187, 26.897093>,  <29.591791, 26.362312, 26.622484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923887, 26.124187, 26.897093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545797, 26.113781, 27.027245>,  <28.318943, 26.107536, 27.105335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545797, 26.113781, 27.027245>,  <28.923887, 26.124187, 26.897093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545797, 26.113781, 27.027245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320380, -0.116879, -0.940051,
		0.062491, -0.992805, 0.102140,
		-0.945226, -0.026021, 0.325378,
		28.262230, 26.105976, 27.124859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638105, 25.575735, 26.497238>,  <28.923887, 26.124187, 26.897093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638105, 25.575735, 26.497238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317001, 25.774633, 26.628887>,  <28.124338, 25.893972, 26.707876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317001, 25.774633, 26.628887>,  <28.638105, 25.575735, 26.497238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317001, 25.774633, 26.628887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352851, 0.048829, -0.934405,
		-0.480698, -0.866235, 0.136255,
		-0.802761, 0.497245, 0.329123,
		28.076174, 25.923807, 26.727625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078508, 25.220802, 26.320204>,  <28.638105, 25.575735, 26.497238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078508, 25.220802, 26.320204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961092, 25.598814, 26.377823>,  <27.890642, 25.825621, 26.412394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961092, 25.598814, 26.377823>,  <28.078508, 25.220802, 26.320204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961092, 25.598814, 26.377823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530836, -0.035824, -0.846717,
		-0.795014, -0.325011, 0.512172,
		-0.293541, 0.945031, 0.144047,
		27.873030, 25.882324, 26.421038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315443, 25.279537, 26.283293>,  <28.078508, 25.220802, 26.320204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315443, 25.279537, 26.283293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472872, 25.640596, 26.213636>,  <27.567329, 25.857233, 26.171843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472872, 25.640596, 26.213636>,  <27.315443, 25.279537, 26.283293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472872, 25.640596, 26.213636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598067, 0.107552, -0.794197,
		-0.698153, 0.416720, 0.582175,
		0.393572, 0.902650, -0.174139,
		27.590942, 25.911392, 26.161394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763481, 25.614178, 25.975058>,  <27.315443, 25.279537, 26.283293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763481, 25.614178, 25.975058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075027, 25.845545, 25.878065>,  <27.261955, 25.984365, 25.819870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075027, 25.845545, 25.878065>,  <26.763481, 25.614178, 25.975058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075027, 25.845545, 25.878065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413641, 0.183113, -0.891836,
		-0.471454, 0.794921, 0.381879,
		0.778866, 0.578420, -0.242482,
		27.308687, 26.019072, 25.805321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541233, 26.200581, 25.533710>,  <26.763481, 25.614178, 25.975058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541233, 26.200581, 25.533710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932125, 26.163662, 25.457289>,  <27.166660, 26.141510, 25.411436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932125, 26.163662, 25.457289>,  <26.541233, 26.200581, 25.533710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932125, 26.163662, 25.457289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163058, 0.249496, -0.954549,
		0.135769, 0.963967, 0.228766,
		0.977230, -0.092296, -0.191056,
		27.225294, 26.135973, 25.399971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675610, 26.822706, 25.158203>,  <26.541233, 26.200581, 25.533710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675610, 26.822706, 25.158203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974478, 26.574205, 25.063730>,  <27.153799, 26.425106, 25.007048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974478, 26.574205, 25.063730>,  <26.675610, 26.822706, 25.158203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974478, 26.574205, 25.063730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276538, 0.032544, -0.960452,
		0.604367, 0.782936, -0.147483,
		0.747173, -0.621250, -0.236180,
		27.198629, 26.387831, 24.992876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843395, 26.994179, 24.507458>,  <26.675610, 26.822706, 25.158203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843395, 26.994179, 24.507458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992004, 26.622816, 24.509676>,  <27.081169, 26.399998, 24.511007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992004, 26.622816, 24.509676>,  <26.843395, 26.994179, 24.507458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992004, 26.622816, 24.509676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204465, -0.087646, -0.974942,
		0.905630, 0.361078, -0.222389,
		0.371522, -0.928408, 0.005547,
		27.103460, 26.344294, 24.511341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327604, 26.964645, 23.946327>,  <26.843395, 26.994179, 24.507458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327604, 26.964645, 23.946327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224798, 26.584244, 24.015068>,  <27.163115, 26.356003, 24.056313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224798, 26.584244, 24.015068>,  <27.327604, 26.964645, 23.946327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224798, 26.584244, 24.015068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098112, -0.151229, -0.983618,
		0.961415, -0.269664, -0.054437,
		-0.257014, -0.951006, 0.171851,
		27.147694, 26.298943, 24.066624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612762, 26.617727, 23.438395>,  <27.327604, 26.964645, 23.946327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612762, 26.617727, 23.438395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340633, 26.355440, 23.569359>,  <27.177357, 26.198069, 23.647938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340633, 26.355440, 23.569359>,  <27.612762, 26.617727, 23.438395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340633, 26.355440, 23.569359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320752, -0.135299, -0.937450,
		0.659001, -0.742784, -0.118276,
		-0.680320, -0.655717, 0.327411,
		27.136538, 26.158726, 23.667582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562315, 26.072941, 22.902372>,  <27.612762, 26.617727, 23.438395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562315, 26.072941, 22.902372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223026, 26.065626, 23.114103>,  <27.019453, 26.061237, 23.241142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223026, 26.065626, 23.114103>,  <27.562315, 26.072941, 22.902372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223026, 26.065626, 23.114103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518828, -0.172247, -0.837347,
		0.106487, -0.984884, 0.136615,
		-0.848221, -0.018287, 0.529327,
		26.968559, 26.060141, 23.272902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256878, 25.506113, 22.689146>,  <27.562315, 26.072941, 22.902372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256878, 25.506113, 22.689146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953192, 25.730715, 22.820782>,  <26.770979, 25.865477, 22.899763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953192, 25.730715, 22.820782>,  <27.256878, 25.506113, 22.689146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953192, 25.730715, 22.820782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508954, -0.197058, -0.837934,
		-0.405656, -0.803665, 0.435391,
		-0.759216, 0.561507, 0.329091,
		26.725426, 25.899166, 22.919510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726463, 25.148096, 22.388010>,  <27.256878, 25.506113, 22.689146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726463, 25.148096, 22.388010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554106, 25.486511, 22.513580>,  <26.450691, 25.689560, 22.588923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554106, 25.486511, 22.513580>,  <26.726463, 25.148096, 22.388010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554106, 25.486511, 22.513580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549015, 0.030311, -0.835262,
		-0.716179, -0.532261, 0.451427,
		-0.430894, 0.846038, 0.313927,
		26.424837, 25.740322, 22.607759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989178, 25.065367, 22.319574>,  <26.726463, 25.148096, 22.388010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989178, 25.065367, 22.319574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064985, 25.458017, 22.310686>,  <26.110470, 25.693607, 22.305353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064985, 25.458017, 22.310686>,  <25.989178, 25.065367, 22.319574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064985, 25.458017, 22.310686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514060, 0.079916, -0.854023,
		-0.836556, 0.173276, 0.519760,
		0.189519, 0.981626, -0.022220,
		26.121841, 25.752504, 22.304020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.793846, 28.695494, 22.615896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459576, 28.478645, 22.651112>,  <33.259014, 28.348536, 22.672241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459576, 28.478645, 22.651112>,  <33.793846, 28.695494, 22.615896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459576, 28.478645, 22.651112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003863, 0.154486, 0.987988,
		-0.549210, 0.825977, -0.127005,
		-0.835676, -0.542122, 0.088036,
		33.208874, 28.316010, 22.677523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422268, 29.055964, 22.989363>,  <33.793846, 28.695494, 22.615896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422268, 29.055964, 22.989363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.245258, 28.701693, 23.045574>,  <33.139053, 28.489130, 23.079302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.245258, 28.701693, 23.045574>,  <33.422268, 29.055964, 22.989363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245258, 28.701693, 23.045574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037016, 0.138535, 0.989665,
		-0.895991, 0.443155, -0.028521,
		-0.442526, -0.885676, 0.140530,
		33.112499, 28.435989, 23.087732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942799, 29.234533, 23.395964>,  <33.422268, 29.055964, 22.989363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942799, 29.234533, 23.395964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.969597, 28.840221, 23.457611>,  <32.985676, 28.603634, 23.494600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.969597, 28.840221, 23.457611>,  <32.942799, 29.234533, 23.395964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969597, 28.840221, 23.457611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092727, 0.159948, 0.982761,
		-0.993435, -0.051546, 0.102124,
		0.066992, -0.985779, 0.154118,
		32.989693, 28.544487, 23.503847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524010, 29.123232, 23.959988>,  <32.942799, 29.234533, 23.395964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524010, 29.123232, 23.959988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735893, 28.784014, 23.954000>,  <32.863026, 28.580482, 23.950409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735893, 28.784014, 23.954000>,  <32.524010, 29.123232, 23.959988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735893, 28.784014, 23.954000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142940, 0.071862, 0.987119,
		-0.836047, -0.525028, 0.159286,
		0.529711, -0.848046, -0.014967,
		32.894806, 28.529600, 23.949511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284298, 28.760216, 24.534565>,  <32.524010, 29.123232, 23.959988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284298, 28.760216, 24.534565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.645191, 28.598173, 24.475426>,  <32.861729, 28.500948, 24.439941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.645191, 28.598173, 24.475426>,  <32.284298, 28.760216, 24.534565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645191, 28.598173, 24.475426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050159, -0.241938, 0.968994,
		-0.428319, -0.881676, -0.197965,
		0.902234, -0.405109, -0.147851,
		32.915863, 28.476641, 24.431070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230240, 28.192976, 24.929401>,  <32.284298, 28.760216, 24.534565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230240, 28.192976, 24.929401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617790, 28.258654, 24.855305>,  <32.850323, 28.298059, 24.810846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617790, 28.258654, 24.855305>,  <32.230240, 28.192976, 24.929401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617790, 28.258654, 24.855305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212050, -0.164467, 0.963320,
		0.127705, -0.972621, -0.194166,
		0.968879, 0.164193, -0.185241,
		32.908455, 28.307911, 24.799732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546001, 27.721266, 25.345287>,  <32.230240, 28.192976, 24.929401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546001, 27.721266, 25.345287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842869, 27.973707, 25.255045>,  <33.020988, 28.125172, 25.200899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842869, 27.973707, 25.255045>,  <32.546001, 27.721266, 25.345287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842869, 27.973707, 25.255045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231264, 0.074795, 0.970012,
		0.629053, -0.772083, -0.090442,
		0.742165, 0.631105, -0.225605,
		33.065517, 28.163038, 25.187363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066944, 27.451437, 25.743565>,  <32.546001, 27.721266, 25.345287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066944, 27.451437, 25.743565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.175282, 27.824360, 25.647690>,  <33.240284, 28.048113, 25.590166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.175282, 27.824360, 25.647690>,  <33.066944, 27.451437, 25.743565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175282, 27.824360, 25.647690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302160, 0.154069, 0.940724,
		0.913971, -0.327211, -0.239978,
		0.270843, 0.932306, -0.239685,
		33.256535, 28.104052, 25.575785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770279, 27.547579, 26.046747>,  <33.066944, 27.451437, 25.743565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770279, 27.547579, 26.046747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.579220, 27.895071, 25.994349>,  <33.464584, 28.103567, 25.962910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.579220, 27.895071, 25.994349>,  <33.770279, 27.547579, 26.046747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579220, 27.895071, 25.994349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168661, 0.237003, 0.956756,
		0.862211, 0.434896, -0.259725,
		-0.477645, 0.868732, -0.130997,
		33.435925, 28.155691, 25.955050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246616, 28.076218, 26.106062>,  <33.770279, 27.547579, 26.046747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246616, 28.076218, 26.106062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895226, 28.251724, 26.181705>,  <33.684391, 28.357029, 26.227091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895226, 28.251724, 26.181705>,  <34.246616, 28.076218, 26.106062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895226, 28.251724, 26.181705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367771, 0.368321, 0.853864,
		0.304995, 0.819648, -0.484927,
		-0.878477, 0.438766, 0.189107,
		33.631683, 28.383354, 26.238438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407410, 28.755163, 26.339375>,  <34.246616, 28.076218, 26.106062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407410, 28.755163, 26.339375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025211, 28.706427, 26.446840>,  <33.795891, 28.677185, 26.511320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025211, 28.706427, 26.446840>,  <34.407410, 28.755163, 26.339375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025211, 28.706427, 26.446840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201808, 0.394311, 0.896544,
		-0.215175, 0.910864, -0.352174,
		-0.955496, -0.121842, 0.268666,
		33.738564, 28.669874, 26.527439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373070, 29.239237, 26.769066>,  <34.407410, 28.755163, 26.339375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373070, 29.239237, 26.769066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066620, 29.000647, 26.864790>,  <33.882751, 28.857492, 26.922224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.066620, 29.000647, 26.864790>,  <34.373070, 29.239237, 26.769066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066620, 29.000647, 26.864790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118316, 0.235095, 0.964744,
		-0.631708, 0.767428, -0.109539,
		-0.766124, -0.596476, 0.239311,
		33.836784, 28.821703, 26.936583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867722, 29.634138, 27.145535>,  <34.373070, 29.239237, 26.769066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867722, 29.634138, 27.145535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.795582, 29.251123, 27.235508>,  <33.752296, 29.021315, 27.289492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.795582, 29.251123, 27.235508>,  <33.867722, 29.634138, 27.145535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795582, 29.251123, 27.235508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087716, 0.212117, 0.973299,
		-0.979683, 0.195267, 0.045736,
		-0.180352, -0.957537, 0.224936,
		33.741478, 28.963861, 27.302988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441799, 29.690001, 27.670662>,  <33.867722, 29.634138, 27.145535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441799, 29.690001, 27.670662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.596519, 29.322803, 27.705706>,  <33.689350, 29.102486, 27.726732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.596519, 29.322803, 27.705706>,  <33.441799, 29.690001, 27.670662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596519, 29.322803, 27.705706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020962, 0.103732, 0.994384,
		-0.921926, -0.382790, 0.059367,
		0.386799, -0.917993, 0.087609,
		33.712559, 29.047405, 27.731989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688442, 29.626188, 27.536320>,  <33.441799, 29.690001, 27.670662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688442, 29.626188, 27.536320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344276, 29.811157, 27.621977>,  <32.137779, 29.922138, 27.673372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.344276, 29.811157, 27.621977>,  <32.688442, 29.626188, 27.536320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344276, 29.811157, 27.621977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291259, -0.101417, -0.951253,
		-0.418164, -0.880840, 0.221945,
		-0.860411, 0.462423, 0.214144,
		32.086151, 29.949884, 27.686220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056290, 29.277746, 27.232862>,  <32.688442, 29.626188, 27.536320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056290, 29.277746, 27.232862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917116, 29.650343, 27.275316>,  <31.833611, 29.873901, 27.300789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.917116, 29.650343, 27.275316>,  <32.056290, 29.277746, 27.232862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917116, 29.650343, 27.275316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454507, -0.068579, -0.888100,
		-0.819977, -0.357244, 0.447229,
		-0.347938, 0.931490, 0.106137,
		31.812735, 29.929790, 27.307158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273952, 29.234816, 27.049654>,  <32.056290, 29.277746, 27.232862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273952, 29.234816, 27.049654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435400, 29.599144, 27.015024>,  <31.532269, 29.817741, 26.994246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.435400, 29.599144, 27.015024>,  <31.273952, 29.234816, 27.049654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435400, 29.599144, 27.015024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304556, 0.044523, -0.951453,
		-0.862750, 0.410390, 0.295367,
		0.403617, 0.910823, -0.086575,
		31.556486, 29.872391, 26.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771921, 29.557320, 26.592438>,  <31.273952, 29.234816, 27.049654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771921, 29.557320, 26.592438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.075975, 29.816639, 26.575014>,  <31.258408, 29.972231, 26.564560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.075975, 29.816639, 26.575014>,  <30.771921, 29.557320, 26.592438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075975, 29.816639, 26.575014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229568, 0.205245, -0.951406,
		-0.607856, 0.733199, 0.304844,
		0.760138, 0.648300, -0.043560,
		31.304016, 30.011129, 26.561947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575693, 30.276674, 26.447981>,  <30.771921, 29.557320, 26.592438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575693, 30.276674, 26.447981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951502, 30.229086, 26.319513>,  <31.176987, 30.200533, 26.242434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951502, 30.229086, 26.319513>,  <30.575693, 30.276674, 26.447981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951502, 30.229086, 26.319513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279126, 0.277436, -0.919303,
		0.198474, 0.953349, 0.227448,
		0.939519, -0.118971, -0.321168,
		31.233358, 30.193394, 26.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616266, 30.704830, 25.933832>,  <30.575693, 30.276674, 26.447981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616266, 30.704830, 25.933832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.947372, 30.505083, 25.831512>,  <31.146036, 30.385235, 25.770121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.947372, 30.505083, 25.831512>,  <30.616266, 30.704830, 25.933832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947372, 30.505083, 25.831512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291433, 0.006909, -0.956566,
		0.479447, 0.866361, -0.139813,
		0.827766, -0.499369, -0.255799,
		31.195702, 30.355272, 25.754772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865292, 30.984056, 25.345583>,  <30.616266, 30.704830, 25.933832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865292, 30.984056, 25.345583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.034439, 30.621584, 25.347054>,  <31.135927, 30.404100, 25.347937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.034439, 30.621584, 25.347054>,  <30.865292, 30.984056, 25.345583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034439, 30.621584, 25.347054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169919, -0.083278, -0.981933,
		0.890117, 0.414606, -0.189193,
		0.422871, -0.906183, 0.003678,
		31.161301, 30.349730, 25.348156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011169, 30.954340, 24.671556>,  <30.865292, 30.984056, 25.345583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011169, 30.954340, 24.671556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072046, 30.567566, 24.753405>,  <31.108572, 30.335501, 24.802513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072046, 30.567566, 24.753405>,  <31.011169, 30.954340, 24.671556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072046, 30.567566, 24.753405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105113, -0.221693, -0.969434,
		0.982745, 0.126032, -0.135378,
		0.152192, -0.966937, 0.204621,
		31.117704, 30.277485, 24.814791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382883, 30.654470, 24.086885>,  <31.011169, 30.954340, 24.671556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382883, 30.654470, 24.086885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.205044, 30.348715, 24.273664>,  <31.098341, 30.165260, 24.385733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.205044, 30.348715, 24.273664>,  <31.382883, 30.654470, 24.086885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205044, 30.348715, 24.273664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425696, -0.278358, -0.860988,
		0.788109, -0.581571, -0.201641,
		-0.444597, -0.764390, 0.466949,
		31.071665, 30.119398, 24.413750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606194, 30.044939, 23.706512>,  <31.382883, 30.654470, 24.086885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606194, 30.044939, 23.706512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.267046, 29.933847, 23.887173>,  <31.063559, 29.867193, 23.995569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.267046, 29.933847, 23.887173>,  <31.606194, 30.044939, 23.706512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267046, 29.933847, 23.887173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303885, -0.443498, -0.843186,
		0.434484, -0.852160, 0.291629,
		-0.847867, -0.277729, 0.451651,
		31.012686, 29.850529, 24.022669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391111, 29.236656, 23.546135>,  <31.606194, 30.044939, 23.706512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391111, 29.236656, 23.546135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.079000, 29.466181, 23.645658>,  <30.891733, 29.603895, 23.705374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.079000, 29.466181, 23.645658>,  <31.391111, 29.236656, 23.546135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079000, 29.466181, 23.645658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528783, -0.392804, -0.752392,
		-0.333993, -0.718645, 0.609917,
		-0.780280, 0.573807, 0.248813,
		30.844917, 29.638325, 23.720301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890413, 28.840292, 23.295286>,  <31.391111, 29.236656, 23.546135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890413, 28.840292, 23.295286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.719824, 29.195181, 23.365660>,  <30.617470, 29.408115, 23.407885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.719824, 29.195181, 23.365660>,  <30.890413, 28.840292, 23.295286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719824, 29.195181, 23.365660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666119, -0.176493, -0.724662,
		-0.611886, -0.426244, 0.666267,
		-0.426474, 0.887224, 0.175936,
		30.591881, 29.461348, 23.418440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251900, 28.765320, 23.015884>,  <30.890413, 28.840292, 23.295286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251900, 28.765320, 23.015884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.298513, 29.161510, 23.045219>,  <30.326481, 29.399225, 23.062820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.298513, 29.161510, 23.045219>,  <30.251900, 28.765320, 23.015884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298513, 29.161510, 23.045219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411933, 0.115390, -0.903878,
		-0.903732, 0.075121, 0.421456,
		0.116532, 0.990475, 0.073336,
		30.333473, 29.458652, 23.067221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581608, 29.036753, 22.803455>,  <30.251900, 28.765320, 23.015884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581608, 29.036753, 22.803455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.862280, 29.308720, 22.718266>,  <30.030684, 29.471899, 22.667152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.862280, 29.308720, 22.718266>,  <29.581608, 29.036753, 22.803455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862280, 29.308720, 22.718266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333724, 0.049535, -0.941368,
		-0.629503, 0.731614, 0.261662,
		0.701680, 0.679917, -0.212975,
		30.072784, 29.512695, 22.654373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769241, 29.180962, 22.923588>,  <29.581608, 29.036753, 22.803455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769241, 29.180962, 22.923588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.430748, 28.977062, 22.861561>,  <28.227652, 28.854723, 22.824345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.430748, 28.977062, 22.861561>,  <28.769241, 29.180962, 22.923588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430748, 28.977062, 22.861561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247506, 0.118356, 0.961630,
		-0.471836, 0.852144, -0.226322,
		-0.846234, -0.509748, -0.155066,
		28.176878, 28.824139, 22.815041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151499, 29.531080, 23.198065>,  <28.769241, 29.180962, 22.923588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151499, 29.531080, 23.198065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.006302, 29.158514, 23.187441>,  <27.919184, 28.934975, 23.181067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.006302, 29.158514, 23.187441>,  <28.151499, 29.531080, 23.198065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006302, 29.158514, 23.187441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339876, 0.105809, 0.934499,
		-0.867595, 0.348244, -0.354973,
		-0.362993, -0.931413, -0.026561,
		27.897404, 28.879089, 23.179472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410282, 29.591860, 23.523005>,  <28.151499, 29.531080, 23.198065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410282, 29.591860, 23.523005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.552452, 29.218290, 23.538280>,  <27.637754, 28.994148, 23.547445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.552452, 29.218290, 23.538280>,  <27.410282, 29.591860, 23.523005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552452, 29.218290, 23.538280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227203, -0.046692, 0.972727,
		-0.906671, -0.354407, -0.228786,
		0.355423, -0.933925, 0.038188,
		27.659079, 28.938112, 23.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834274, 29.250338, 23.770504>,  <27.410282, 29.591860, 23.523005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834274, 29.250338, 23.770504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.152477, 29.013075, 23.820030>,  <27.343399, 28.870718, 23.849747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.152477, 29.013075, 23.820030>,  <26.834274, 29.250338, 23.770504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152477, 29.013075, 23.820030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192878, -0.054169, 0.979726,
		-0.574424, -0.803263, -0.157499,
		0.795509, -0.593157, 0.123816,
		27.391130, 28.835129, 23.857176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628012, 28.569304, 24.144289>,  <26.834274, 29.250338, 23.770504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628012, 28.569304, 24.144289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.020840, 28.623260, 24.196960>,  <27.256536, 28.655634, 24.228563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.020840, 28.623260, 24.196960>,  <26.628012, 28.569304, 24.144289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020840, 28.623260, 24.196960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108863, -0.164429, 0.980363,
		0.153894, -0.977122, -0.146797,
		0.982072, 0.134891, 0.131677,
		27.315462, 28.663727, 24.236464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741640, 28.046162, 24.657009>,  <26.628012, 28.569304, 24.144289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741640, 28.046162, 24.657009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.053606, 28.295713, 24.677032>,  <27.240786, 28.445444, 24.689047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.053606, 28.295713, 24.677032>,  <26.741640, 28.046162, 24.657009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053606, 28.295713, 24.677032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006251, -0.087738, 0.996124,
		0.625854, -0.776579, -0.072328,
		0.779915, 0.623880, 0.050057,
		27.287580, 28.482878, 24.692049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230436, 27.739939, 25.199310>,  <26.741640, 28.046162, 24.657009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230436, 27.739939, 25.199310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.358368, 28.116419, 25.155762>,  <27.435127, 28.342306, 25.129633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.358368, 28.116419, 25.155762>,  <27.230436, 27.739939, 25.199310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358368, 28.116419, 25.155762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159209, 0.059888, 0.985427,
		0.934002, -0.332504, -0.130693,
		0.319831, 0.941199, -0.108873,
		27.454317, 28.398779, 25.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926441, 27.794353, 25.488470>,  <27.230436, 27.739939, 25.199310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926441, 27.794353, 25.488470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752468, 28.154325, 25.500835>,  <27.648085, 28.370310, 25.508255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752468, 28.154325, 25.500835>,  <27.926441, 27.794353, 25.488470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752468, 28.154325, 25.500835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340260, 0.132467, 0.930954,
		0.833701, 0.415421, -0.363825,
		-0.434933, 0.899932, 0.030913,
		27.621988, 28.424305, 25.510109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347006, 28.181131, 25.929029>,  <27.926441, 27.794353, 25.488470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347006, 28.181131, 25.929029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.036552, 28.430922, 25.894049>,  <27.850281, 28.580795, 25.873060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.036552, 28.430922, 25.894049>,  <28.347006, 28.181131, 25.929029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036552, 28.430922, 25.894049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202613, 0.378311, 0.903232,
		0.597128, 0.683311, -0.420147,
		-0.776135, 0.624473, -0.087452,
		27.803713, 28.618263, 25.867813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554413, 28.876469, 26.070576>,  <28.347006, 28.181131, 25.929029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554413, 28.876469, 26.070576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.176142, 28.843851, 26.196459>,  <27.949179, 28.824282, 26.271990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.176142, 28.843851, 26.196459>,  <28.554413, 28.876469, 26.070576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176142, 28.843851, 26.196459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287737, 0.240648, 0.926982,
		-0.151323, 0.967181, -0.204113,
		-0.945679, -0.081543, 0.314709,
		27.892439, 28.819387, 26.290871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487885, 29.326181, 26.697397>,  <28.554413, 28.876469, 26.070576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487885, 29.326181, 26.697397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.129959, 29.149832, 26.725500>,  <27.915203, 29.044022, 26.742363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.129959, 29.149832, 26.725500>,  <28.487885, 29.326181, 26.697397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129959, 29.149832, 26.725500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047672, 0.250837, 0.966855,
		-0.443885, 0.861807, -0.245470,
		-0.894815, -0.440874, 0.070258,
		27.861515, 29.017569, 26.746578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061234, 29.841837, 26.921808>,  <28.487885, 29.326181, 26.697397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061234, 29.841837, 26.921808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.878469, 29.497814, 27.012615>,  <27.768810, 29.291401, 27.067101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.878469, 29.497814, 27.012615>,  <28.061234, 29.841837, 26.921808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878469, 29.497814, 27.012615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023893, 0.243258, 0.969667,
		-0.889191, 0.448477, -0.090598,
		-0.456912, -0.860054, 0.227019,
		27.741396, 29.239798, 27.080721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608696, 30.027111, 27.489660>,  <28.061234, 29.841837, 26.921808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608696, 30.027111, 27.489660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.644432, 29.628819, 27.498919>,  <27.665873, 29.389843, 27.504473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.644432, 29.628819, 27.498919>,  <27.608696, 30.027111, 27.489660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644432, 29.628819, 27.498919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188532, 0.005912, 0.982049,
		-0.977995, -0.092098, -0.187199,
		0.089338, -0.995733, 0.023145,
		27.671234, 29.330099, 27.505861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999510, 29.768494, 27.905302>,  <27.608696, 30.027111, 27.489660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999510, 29.768494, 27.905302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.302517, 29.508034, 27.923944>,  <27.484322, 29.351759, 27.935131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.302517, 29.508034, 27.923944>,  <26.999510, 29.768494, 27.905302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302517, 29.508034, 27.923944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066687, -0.006164, 0.997755,
		-0.649398, -0.758926, -0.048093,
		0.757519, -0.651147, 0.046608,
		27.529772, 29.312689, 27.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<25.373102, 25.354582, 22.078526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.653034, 25.631916, 22.009798>,  <25.820993, 25.798317, 21.968561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.653034, 25.631916, 22.009798>,  <25.373102, 25.354582, 22.078526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653034, 25.631916, 22.009798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212732, -0.027320, -0.976729,
		-0.681896, 0.720096, 0.128376,
		0.699831, 0.693337, -0.171817,
		25.862984, 25.839916, 21.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070547, 25.925495, 21.684542>,  <25.373102, 25.354582, 22.078526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070547, 25.925495, 21.684542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.464746, 25.942770, 21.618908>,  <25.701267, 25.953135, 21.579527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.464746, 25.942770, 21.618908>,  <25.070547, 25.925495, 21.684542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464746, 25.942770, 21.618908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169580, 0.218396, -0.961013,
		-0.005668, 0.974904, 0.222553,
		0.985500, 0.043188, -0.164086,
		25.760397, 25.955727, 21.569683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126099, 26.487753, 21.211517>,  <25.070547, 25.925495, 21.684542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126099, 26.487753, 21.211517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.471411, 26.286020, 21.203608>,  <25.678598, 26.164980, 21.198862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.471411, 26.286020, 21.203608>,  <25.126099, 26.487753, 21.211517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471411, 26.286020, 21.203608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170566, 0.328392, -0.929013,
		0.475027, 0.798628, 0.369517,
		0.863282, -0.504334, -0.019776,
		25.730396, 26.134720, 21.197674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564371, 26.919371, 20.797066>,  <25.126099, 26.487753, 21.211517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564371, 26.919371, 20.797066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.733446, 26.557304, 20.779112>,  <25.834890, 26.340065, 20.768339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.733446, 26.557304, 20.779112>,  <25.564371, 26.919371, 20.797066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733446, 26.557304, 20.779112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169059, 0.127411, -0.977336,
		0.890368, 0.405519, 0.206881,
		0.422687, -0.905163, -0.044885,
		25.860252, 26.285755, 20.765646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038073, 27.077402, 20.330851>,  <25.564371, 26.919371, 20.797066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038073, 27.077402, 20.330851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.042139, 26.677542, 20.321129>,  <26.044579, 26.437626, 20.315296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.042139, 26.677542, 20.321129>,  <26.038073, 27.077402, 20.330851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042139, 26.677542, 20.321129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240071, 0.026035, -0.970406,
		0.970702, 0.004032, 0.240253,
		0.010167, -0.999653, -0.024304,
		26.045189, 26.377645, 20.313837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744875, 26.835747, 20.150482>,  <26.038073, 27.077402, 20.330851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744875, 26.835747, 20.150482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.461910, 26.570915, 20.051512>,  <26.292131, 26.412016, 19.992130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.461910, 26.570915, 20.051512>,  <26.744875, 26.835747, 20.150482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461910, 26.570915, 20.051512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266546, 0.074323, -0.960952,
		0.654616, -0.745740, 0.123897,
		-0.707412, -0.662079, -0.247427,
		26.249687, 26.372292, 19.977283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047640, 26.530798, 19.515980>,  <26.744875, 26.835747, 20.150482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047640, 26.530798, 19.515980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.677372, 26.379589, 19.509829>,  <26.455212, 26.288864, 19.506138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.677372, 26.379589, 19.509829>,  <27.047640, 26.530798, 19.515980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677372, 26.379589, 19.509829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110975, -0.232433, -0.966260,
		0.361693, -0.896144, 0.257107,
		-0.925669, -0.378022, -0.015380,
		26.399672, 26.266182, 19.505215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069084, 26.016815, 19.051220>,  <27.047640, 26.530798, 19.515980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069084, 26.016815, 19.051220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.681122, 26.113178, 19.065342>,  <26.448345, 26.170996, 19.073816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.681122, 26.113178, 19.065342>,  <27.069084, 26.016815, 19.051220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681122, 26.113178, 19.065342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068911, -0.132528, -0.988781,
		-0.233525, -0.961457, 0.145141,
		-0.969906, 0.240907, 0.035307,
		26.390150, 26.185450, 19.075933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846323, 25.628548, 18.479305>,  <27.069084, 26.016815, 19.051220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846323, 25.628548, 18.479305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.574726, 25.912659, 18.553576>,  <26.411768, 26.083126, 18.598137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.574726, 25.912659, 18.553576>,  <26.846323, 25.628548, 18.479305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574726, 25.912659, 18.553576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006809, 0.258994, -0.965855,
		-0.734115, -0.654543, -0.180691,
		-0.678991, 0.710279, 0.185674,
		26.371029, 26.125742, 18.609278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404705, 25.605392, 17.870430>,  <26.846323, 25.628548, 18.479305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404705, 25.605392, 17.870430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.350988, 25.958998, 18.049534>,  <26.318758, 26.171162, 18.156996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.350988, 25.958998, 18.049534>,  <26.404705, 25.605392, 17.870430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350988, 25.958998, 18.049534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043853, 0.446106, -0.893905,
		-0.989971, -0.139678, -0.021141,
		-0.134290, 0.884013, 0.447758,
		26.310701, 26.224201, 18.183861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956501, 25.921932, 17.440277>,  <26.404705, 25.605392, 17.870430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956501, 25.921932, 17.440277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.114330, 26.212549, 17.665291>,  <26.209028, 26.386919, 17.800299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.114330, 26.212549, 17.665291>,  <25.956501, 25.921932, 17.440277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114330, 26.212549, 17.665291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079841, 0.582785, -0.808695,
		-0.915388, 0.364005, 0.171945,
		0.394576, 0.726542, 0.562537,
		26.232702, 26.430511, 17.834051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618557, 26.524347, 17.234106>,  <25.956501, 25.921932, 17.440277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618557, 26.524347, 17.234106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.973282, 26.606657, 17.399620>,  <26.186117, 26.656042, 17.498928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.973282, 26.606657, 17.399620>,  <25.618557, 26.524347, 17.234106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973282, 26.606657, 17.399620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261476, 0.514859, -0.816425,
		-0.381040, 0.832212, 0.402780,
		0.886814, 0.205773, 0.413785,
		26.239326, 26.668388, 17.523756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905031, 27.085257, 16.889351>,  <25.618557, 26.524347, 17.234106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905031, 27.085257, 16.889351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.233906, 26.945904, 17.069412>,  <26.431231, 26.862291, 17.177450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.233906, 26.945904, 17.069412>,  <25.905031, 27.085257, 16.889351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233906, 26.945904, 17.069412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568859, 0.474727, -0.671590,
		0.020270, 0.808247, 0.588495,
		0.822185, -0.348384, 0.450156,
		26.480562, 26.841389, 17.204458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334864, 27.683336, 17.083912>,  <25.905031, 27.085257, 16.889351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334864, 27.683336, 17.083912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549204, 27.351379, 17.021757>,  <26.677809, 27.152206, 16.984465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549204, 27.351379, 17.021757>,  <26.334864, 27.683336, 17.083912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549204, 27.351379, 17.021757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736652, 0.549467, -0.394246,
		0.412561, 0.096790, 0.905773,
		0.535851, -0.829890, -0.155388,
		26.709959, 27.102413, 16.975142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017326, 27.895229, 17.264748>,  <26.334864, 27.683336, 17.083912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017326, 27.895229, 17.264748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.046059, 28.294044, 17.253729>,  <27.063297, 28.533333, 17.247118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.046059, 28.294044, 17.253729>,  <27.017326, 27.895229, 17.264748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046059, 28.294044, 17.253729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194351, 0.013098, 0.980845,
		0.978299, -0.075806, -0.192834,
		0.071828, 0.997036, -0.027547,
		27.067608, 28.593155, 17.245464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662371, 27.999157, 17.491978>,  <27.017326, 27.895229, 17.264748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662371, 27.999157, 17.491978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.483946, 28.352242, 17.551102>,  <27.376890, 28.564093, 17.586576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.483946, 28.352242, 17.551102>,  <27.662371, 27.999157, 17.491978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483946, 28.352242, 17.551102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346692, 0.018161, 0.937803,
		0.825127, 0.469562, -0.314130,
		-0.446061, 0.882713, 0.147808,
		27.350128, 28.617056, 17.595444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089512, 28.295784, 17.888405>,  <27.662371, 27.999157, 17.491978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089512, 28.295784, 17.888405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.775797, 28.535793, 17.951477>,  <27.587568, 28.679798, 17.989321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.775797, 28.535793, 17.951477>,  <28.089512, 28.295784, 17.888405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775797, 28.535793, 17.951477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195241, -0.002531, 0.980752,
		0.588873, 0.799979, -0.115164,
		-0.784290, 0.600023, 0.157679,
		27.540510, 28.715799, 17.998781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378479, 28.898872, 18.274921>,  <28.089512, 28.295784, 17.888405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378479, 28.898872, 18.274921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.985228, 28.854559, 18.333141>,  <27.749277, 28.827971, 18.368073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.985228, 28.854559, 18.333141>,  <28.378479, 28.898872, 18.274921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985228, 28.854559, 18.333141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141491, 0.043684, 0.988975,
		-0.115922, 0.992884, -0.027272,
		-0.983129, -0.110785, 0.145548,
		27.690289, 28.821323, 18.376806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241831, 29.465498, 18.708773>,  <28.378479, 28.898872, 18.274921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241831, 29.465498, 18.708773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.917284, 29.236101, 18.754015>,  <27.722555, 29.098463, 18.781160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.917284, 29.236101, 18.754015>,  <28.241831, 29.465498, 18.708773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917284, 29.236101, 18.754015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140268, -0.003181, 0.990109,
		-0.567458, 0.819206, 0.083023,
		-0.811367, -0.573491, 0.113104,
		27.673874, 29.064054, 18.787947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814198, 29.809898, 19.243143>,  <28.241831, 29.465498, 18.708773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814198, 29.809898, 19.243143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.721827, 29.420851, 19.232649>,  <27.666405, 29.187422, 19.226353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.721827, 29.420851, 19.232649>,  <27.814198, 29.809898, 19.243143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721827, 29.420851, 19.232649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100076, -0.050563, 0.993694,
		-0.967810, 0.226847, 0.109012,
		-0.230928, -0.972617, -0.026234,
		27.652548, 29.129066, 19.224779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284273, 29.758707, 19.707949>,  <27.814198, 29.809898, 19.243143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284273, 29.758707, 19.707949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.422497, 29.384647, 19.676750>,  <27.505432, 29.160212, 19.658031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.422497, 29.384647, 19.676750>,  <27.284273, 29.758707, 19.707949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422497, 29.384647, 19.676750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065957, -0.107114, 0.992057,
		-0.936076, -0.337672, -0.098694,
		0.345561, -0.935150, -0.077995,
		27.526165, 29.104103, 19.653351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787081, 29.272514, 20.113420>,  <27.284273, 29.758707, 19.707949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787081, 29.272514, 20.113420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.124006, 29.057686, 20.095243>,  <27.326160, 28.928789, 20.084337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.124006, 29.057686, 20.095243>,  <26.787081, 29.272514, 20.113420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124006, 29.057686, 20.095243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038858, -0.144598, 0.988727,
		-0.537587, -0.831051, -0.142666,
		0.842313, -0.537071, -0.045441,
		27.376699, 28.896564, 20.081612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674049, 28.757507, 20.654816>,  <26.787081, 29.272514, 20.113420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674049, 28.757507, 20.654816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.067453, 28.725197, 20.590086>,  <27.303495, 28.705811, 20.551249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.067453, 28.725197, 20.590086>,  <26.674049, 28.757507, 20.654816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067453, 28.725197, 20.590086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138717, -0.237231, 0.961498,
		-0.116054, -0.968089, -0.222114,
		0.983509, -0.080774, -0.161822,
		27.362507, 28.700964, 20.541540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958891, 28.102957, 20.895576>,  <26.674049, 28.757507, 20.654816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958891, 28.102957, 20.895576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.252777, 28.373163, 20.870687>,  <27.429108, 28.535288, 20.855755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.252777, 28.373163, 20.870687>,  <26.958891, 28.102957, 20.895576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252777, 28.373163, 20.870687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323383, -0.268131, 0.907485,
		0.596339, -0.686863, -0.415450,
		0.734713, 0.675518, -0.062223,
		27.473190, 28.575819, 20.852020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604530, 27.714008, 21.129391>,  <26.958891, 28.102957, 20.895576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604530, 27.714008, 21.129391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.650524, 28.109985, 21.162354>,  <27.678120, 28.347572, 21.182131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.650524, 28.109985, 21.162354>,  <27.604530, 27.714008, 21.129391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650524, 28.109985, 21.162354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218373, -0.106120, 0.970078,
		0.969068, -0.093547, -0.228379,
		0.114983, 0.989943, 0.082409,
		27.685019, 28.406969, 21.187077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156582, 27.777416, 21.563265>,  <27.604530, 27.714008, 21.129391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156582, 27.777416, 21.563265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.041267, 28.160213, 21.576288>,  <27.972078, 28.389891, 21.584103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.041267, 28.160213, 21.576288>,  <28.156582, 27.777416, 21.563265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041267, 28.160213, 21.576288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118907, 0.002042, 0.992903,
		0.950133, 0.290110, -0.114382,
		-0.288285, 0.956991, 0.032556,
		27.954782, 28.447311, 21.586056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740499, 28.250072, 21.854813>,  <28.156582, 27.777416, 21.563265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740499, 28.250072, 21.854813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.395094, 28.440104, 21.922512>,  <28.187851, 28.554123, 21.963131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.395094, 28.440104, 21.922512>,  <28.740499, 28.250072, 21.854813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395094, 28.440104, 21.922512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179285, -0.024500, 0.983492,
		0.471382, 0.879603, -0.064018,
		-0.863514, 0.475078, 0.169249,
		28.136040, 28.582626, 21.973288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906643, 28.720940, 22.396519>,  <28.740499, 28.250072, 21.854813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906643, 28.720940, 22.396519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509243, 28.675655, 22.401236>,  <28.270803, 28.648485, 22.404066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.509243, 28.675655, 22.401236>,  <28.906643, 28.720940, 22.396519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509243, 28.675655, 22.401236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027179, -0.135357, 0.990424,
		-0.110531, 0.984308, 0.137554,
		-0.993501, -0.113211, 0.011791,
		28.211193, 28.641691, 22.404774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254271, 29.351328, 22.206860>,  <28.906643, 28.720940, 22.396519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254271, 29.351328, 22.206860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625154, 29.500525, 22.220474>,  <29.847685, 29.590042, 22.228643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.625154, 29.500525, 22.220474>,  <29.254271, 29.351328, 22.206860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625154, 29.500525, 22.220474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010153, 0.065814, -0.997780,
		-0.374405, 0.925497, 0.057237,
		0.927209, 0.372993, 0.034038,
		29.903316, 29.612423, 22.230686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255663, 29.846741, 21.783068>,  <29.254271, 29.351328, 22.206860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255663, 29.846741, 21.783068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647194, 29.766802, 21.800756>,  <29.882113, 29.718838, 21.811369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647194, 29.766802, 21.800756>,  <29.255663, 29.846741, 21.783068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647194, 29.766802, 21.800756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078021, 0.164562, -0.983276,
		0.189227, 0.965909, 0.176670,
		0.978829, -0.199846, 0.044222,
		29.940842, 29.706848, 21.814024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585264, 30.573896, 21.616056>,  <29.255663, 29.846741, 21.783068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585264, 30.573896, 21.616056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854572, 30.286777, 21.545090>,  <30.016157, 30.114506, 21.502510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854572, 30.286777, 21.545090>,  <29.585264, 30.573896, 21.616056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854572, 30.286777, 21.545090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137479, 0.357292, -0.923819,
		0.726505, 0.597587, 0.339236,
		0.673268, -0.717797, -0.177419,
		30.056553, 30.071438, 21.491863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887072, 30.857994, 21.105146>,  <29.585264, 30.573896, 21.616056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887072, 30.857994, 21.105146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055449, 30.495159, 21.104511>,  <30.156475, 30.277458, 21.104130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.055449, 30.495159, 21.104511>,  <29.887072, 30.857994, 21.105146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055449, 30.495159, 21.104511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306457, 0.143862, -0.940950,
		0.853751, 0.395601, 0.338541,
		0.420944, -0.907085, -0.001587,
		30.181732, 30.223034, 21.104034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585836, 30.910898, 20.969477>,  <29.887072, 30.857994, 21.105146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585836, 30.910898, 20.969477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.527008, 30.532078, 20.855310>,  <30.491711, 30.304785, 20.786810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.527008, 30.532078, 20.855310>,  <30.585836, 30.910898, 20.969477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527008, 30.532078, 20.855310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217058, 0.250619, -0.943438,
		0.965016, -0.200704, 0.168707,
		-0.147071, -0.947052, -0.285416,
		30.482887, 30.247963, 20.769686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059582, 30.828716, 20.487778>,  <30.585836, 30.910898, 20.969477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059582, 30.828716, 20.487778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.799881, 30.532228, 20.419582>,  <30.644060, 30.354336, 20.378666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.799881, 30.532228, 20.419582>,  <31.059582, 30.828716, 20.487778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799881, 30.532228, 20.419582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085152, 0.151909, -0.984720,
		0.755791, -0.653849, -0.035511,
		-0.649252, -0.741218, -0.170488,
		30.605104, 30.309862, 20.368437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391844, 30.180973, 20.132021>,  <31.059582, 30.828716, 20.487778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391844, 30.180973, 20.132021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997696, 30.204052, 20.067871>,  <30.761208, 30.217899, 20.029381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.997696, 30.204052, 20.067871>,  <31.391844, 30.180973, 20.132021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997696, 30.204052, 20.067871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162199, 0.028472, -0.986347,
		-0.052346, -0.997928, -0.037415,
		-0.985369, 0.057700, -0.160373,
		30.702085, 30.221361, 20.019760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574825, 29.407082, 20.238613>,  <31.391844, 30.180973, 20.132021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574825, 29.407082, 20.238613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851433, 29.127857, 20.164307>,  <32.017399, 28.960321, 20.119722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.851433, 29.127857, 20.164307>,  <31.574825, 29.407082, 20.238613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851433, 29.127857, 20.164307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028685, -0.230425, 0.972667,
		-0.721788, -0.677947, -0.139320,
		0.691519, -0.698063, -0.185765,
		32.058887, 28.918438, 20.108578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378412, 28.785093, 20.715136>,  <31.574825, 29.407082, 20.238613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378412, 28.785093, 20.715136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758812, 28.705389, 20.620569>,  <31.987053, 28.657566, 20.563829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758812, 28.705389, 20.620569>,  <31.378412, 28.785093, 20.715136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758812, 28.705389, 20.620569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160079, -0.336865, 0.927845,
		-0.264522, -0.920227, -0.288462,
		0.951001, -0.199258, -0.236417,
		32.044113, 28.645611, 20.549644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559244, 28.021374, 20.819813>,  <31.378412, 28.785093, 20.715136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559244, 28.021374, 20.819813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891865, 28.241760, 20.847965>,  <32.091438, 28.373993, 20.864857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.891865, 28.241760, 20.847965>,  <31.559244, 28.021374, 20.819813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891865, 28.241760, 20.847965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206264, -0.423956, 0.881882,
		0.515727, -0.718815, -0.466187,
		0.831553, 0.550968, 0.070380,
		32.141331, 28.407051, 20.869080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998013, 27.581203, 21.131096>,  <31.559244, 28.021374, 20.819813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998013, 27.581203, 21.131096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159328, 27.944649, 21.174509>,  <32.256119, 28.162716, 21.200558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159328, 27.944649, 21.174509>,  <31.998013, 27.581203, 21.131096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159328, 27.944649, 21.174509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400110, -0.281761, 0.872080,
		0.822964, -0.308274, -0.477176,
		0.403289, 0.908613, 0.108535,
		32.280315, 28.217232, 21.207069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800022, 27.412373, 21.313402>,  <31.998013, 27.581203, 21.131096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800022, 27.412373, 21.313402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722359, 27.778847, 21.453634>,  <32.675762, 27.998732, 21.537773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722359, 27.778847, 21.453634>,  <32.800022, 27.412373, 21.313402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722359, 27.778847, 21.453634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347007, -0.270132, 0.898117,
		0.917545, 0.296029, -0.265475,
		-0.194156, 0.916185, 0.350582,
		32.664112, 28.053703, 21.558809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400806, 27.572634, 21.627893>,  <32.800022, 27.412373, 21.313402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400806, 27.572634, 21.627893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142456, 27.846277, 21.763447>,  <32.987446, 28.010464, 21.844780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142456, 27.846277, 21.763447>,  <33.400806, 27.572634, 21.627893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142456, 27.846277, 21.763447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319125, -0.161325, 0.933881,
		0.693548, 0.711314, -0.114121,
		-0.645872, 0.684110, 0.338885,
		32.948696, 28.051510, 21.865112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786812, 28.071741, 22.009977>,  <33.400806, 27.572634, 21.627893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786812, 28.071741, 22.009977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414024, 28.088985, 22.153965>,  <33.190353, 28.099333, 22.240356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414024, 28.088985, 22.153965>,  <33.786812, 28.071741, 22.009977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414024, 28.088985, 22.153965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362295, 0.074193, 0.929106,
		0.013349, 0.996312, -0.084765,
		-0.931968, 0.043113, 0.359968,
		33.134434, 28.101919, 22.261955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.876570, 26.909180, 16.432777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568056, 26.901476, 16.687258>,  <28.382948, 26.896852, 16.839945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.568056, 26.901476, 16.687258>,  <28.876570, 26.909180, 16.432777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568056, 26.901476, 16.687258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630524, -0.159673, 0.759568,
		0.086954, 0.986982, 0.135298,
		-0.771284, -0.019261, 0.636200,
		28.336672, 26.895697, 16.878119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107346, 27.332142, 17.154093>,  <28.876570, 26.909180, 16.432777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107346, 27.332142, 17.154093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812889, 27.069769, 17.220844>,  <28.636215, 26.912346, 17.260895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812889, 27.069769, 17.220844>,  <29.107346, 27.332142, 17.154093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812889, 27.069769, 17.220844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397323, -0.219198, 0.891116,
		-0.547933, 0.722291, 0.421978,
		-0.736142, -0.655933, 0.166877,
		28.592047, 26.872990, 17.270906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902336, 27.441027, 17.765228>,  <29.107346, 27.332142, 17.154093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902336, 27.441027, 17.765228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765171, 27.067011, 17.729195>,  <28.682871, 26.842602, 17.707575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765171, 27.067011, 17.729195>,  <28.902336, 27.441027, 17.765228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765171, 27.067011, 17.729195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285927, -0.195244, 0.938150,
		-0.894794, 0.295947, 0.334304,
		-0.342914, -0.935037, -0.090084,
		28.662296, 26.786499, 17.702169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645782, 27.332151, 18.380796>,  <28.902336, 27.441027, 17.765228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645782, 27.332151, 18.380796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666786, 26.956535, 18.244886>,  <28.679388, 26.731165, 18.163342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666786, 26.956535, 18.244886>,  <28.645782, 27.332151, 18.380796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666786, 26.956535, 18.244886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167952, -0.327092, 0.929948,
		-0.984396, -0.105895, 0.140539,
		0.052508, -0.939040, -0.339774,
		28.682539, 26.674824, 18.142954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255438, 26.922266, 18.847475>,  <28.645782, 27.332151, 18.380796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255438, 26.922266, 18.847475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513414, 26.674376, 18.668592>,  <28.668200, 26.525640, 18.561264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.513414, 26.674376, 18.668592>,  <28.255438, 26.922266, 18.847475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513414, 26.674376, 18.668592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233258, -0.397619, 0.887406,
		-0.727767, -0.676637, -0.111884,
		0.644939, -0.619727, -0.447205,
		28.706896, 26.488457, 18.534431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255354, 26.409599, 19.310980>,  <28.255438, 26.922266, 18.847475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255354, 26.409599, 19.310980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585438, 26.313370, 19.106567>,  <28.783487, 26.255632, 18.983919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585438, 26.313370, 19.106567>,  <28.255354, 26.409599, 19.310980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585438, 26.313370, 19.106567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392666, -0.406009, 0.825209,
		-0.406009, -0.881635, -0.240576,
		-0.825209, 0.240576, 0.511031,
		28.833000, 26.241198, 18.953259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315989, 25.740374, 19.502148>,  <28.255354, 26.409599, 19.310980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315989, 25.740374, 19.502148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666416, 25.903753, 19.399639>,  <28.876673, 26.001781, 19.338133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.666416, 25.903753, 19.399639>,  <28.315989, 25.740374, 19.502148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666416, 25.903753, 19.399639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438704, -0.454595, 0.775166,
		0.200116, -0.791525, -0.577444,
		0.876067, 0.408450, -0.256273,
		28.929235, 26.026289, 19.322758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832230, 25.286627, 19.597322>,  <28.315989, 25.740374, 19.502148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832230, 25.286627, 19.597322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067789, 25.609720, 19.586252>,  <29.209126, 25.803576, 19.579609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067789, 25.609720, 19.586252>,  <28.832230, 25.286627, 19.597322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067789, 25.609720, 19.586252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391699, -0.255288, 0.883969,
		0.706945, -0.531408, -0.466727,
		0.588898, 0.807734, -0.027677,
		29.244459, 25.852039, 19.577950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594471, 25.086771, 19.655203>,  <28.832230, 25.286627, 19.597322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594471, 25.086771, 19.655203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597670, 25.472351, 19.761589>,  <29.599588, 25.703699, 19.825420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597670, 25.472351, 19.761589>,  <29.594471, 25.086771, 19.655203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597670, 25.472351, 19.761589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439143, -0.242339, 0.865115,
		0.898381, 0.109881, -0.425249,
		0.007994, 0.963949, 0.265966,
		29.600067, 25.761536, 19.841379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232121, 25.226877, 20.053593>,  <29.594471, 25.086771, 19.655203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232121, 25.226877, 20.053593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978409, 25.519426, 20.153820>,  <29.826181, 25.694956, 20.213957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978409, 25.519426, 20.153820>,  <30.232121, 25.226877, 20.053593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978409, 25.519426, 20.153820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143415, -0.207170, 0.967736,
		0.759685, 0.649751, 0.026514,
		-0.634280, 0.731371, 0.250568,
		29.788124, 25.738838, 20.228991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579033, 25.581110, 20.595341>,  <30.232121, 25.226877, 20.053593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579033, 25.581110, 20.595341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222279, 25.752954, 20.651875>,  <30.008226, 25.856062, 20.685795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.222279, 25.752954, 20.651875>,  <30.579033, 25.581110, 20.595341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222279, 25.752954, 20.651875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225074, 0.150570, 0.962637,
		0.392279, 0.890372, -0.230985,
		-0.891885, 0.429611, 0.141334,
		29.954714, 25.881838, 20.694275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738894, 26.122408, 20.831049>,  <30.579033, 25.581110, 20.595341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738894, 26.122408, 20.831049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.360386, 26.074415, 20.951170>,  <30.133282, 26.045620, 21.023243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.360386, 26.074415, 20.951170>,  <30.738894, 26.122408, 20.831049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360386, 26.074415, 20.951170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307744, -0.048801, 0.950217,
		-0.099354, 0.991576, 0.083102,
		-0.946268, -0.119982, 0.300303,
		30.076506, 26.038420, 21.041262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379040, 26.479891, 21.093031>,  <30.738894, 26.122408, 20.831049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379040, 26.479891, 21.093031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578505, 26.133175, 21.091955>,  <31.698183, 25.925144, 21.091311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.578505, 26.133175, 21.091955>,  <31.379040, 26.479891, 21.093031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578505, 26.133175, 21.091955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119145, 0.071615, -0.990291,
		0.858568, 0.493501, 0.138986,
		0.498663, -0.866792, -0.002688,
		31.728104, 25.873137, 21.091148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922987, 26.649544, 20.694504>,  <31.379040, 26.479891, 21.093031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922987, 26.649544, 20.694504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879772, 26.252510, 20.672205>,  <31.853844, 26.014290, 20.658825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879772, 26.252510, 20.672205>,  <31.922987, 26.649544, 20.694504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879772, 26.252510, 20.672205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143331, 0.039938, -0.988869,
		0.983760, -0.114827, 0.137953,
		-0.108039, -0.992582, -0.055748,
		31.847361, 25.954735, 20.655481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499584, 26.437292, 20.416759>,  <31.922987, 26.649544, 20.694504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499584, 26.437292, 20.416759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266521, 26.117914, 20.356108>,  <32.126682, 25.926287, 20.319717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266521, 26.117914, 20.356108>,  <32.499584, 26.437292, 20.416759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266521, 26.117914, 20.356108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126187, 0.095430, -0.987406,
		0.802859, -0.594457, 0.045150,
		-0.582661, -0.798445, -0.151629,
		32.091724, 25.878380, 20.310619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836685, 25.960045, 19.947935>,  <32.499584, 26.437292, 20.416759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836685, 25.960045, 19.947935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453514, 25.848534, 19.920652>,  <32.223610, 25.781628, 19.904284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.453514, 25.848534, 19.920652>,  <32.836685, 25.960045, 19.947935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453514, 25.848534, 19.920652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078423, -0.025652, -0.996590,
		0.276079, -0.960013, 0.046436,
		-0.957930, -0.278779, -0.068205,
		32.166134, 25.764900, 19.900190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801510, 25.406803, 19.535671>,  <32.836685, 25.960045, 19.947935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801510, 25.406803, 19.535671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.428692, 25.544662, 19.490931>,  <32.205002, 25.627378, 19.464087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.428692, 25.544662, 19.490931>,  <32.801510, 25.406803, 19.535671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428692, 25.544662, 19.490931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093337, -0.069912, -0.993177,
		-0.350120, -0.936124, 0.032993,
		-0.932043, 0.344651, -0.111852,
		32.149078, 25.648058, 19.457375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588741, 25.030993, 19.024067>,  <32.801510, 25.406803, 19.535671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588741, 25.030993, 19.024067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.316589, 25.323412, 19.044659>,  <32.153297, 25.498863, 19.057014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.316589, 25.323412, 19.044659>,  <32.588741, 25.030993, 19.024067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316589, 25.323412, 19.044659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012921, 0.082202, -0.996532,
		-0.732747, -0.677354, -0.065374,
		-0.680378, 0.731051, 0.051481,
		32.112476, 25.542727, 19.060102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953421, 24.924723, 18.672060>,  <32.588741, 25.030993, 19.024067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953421, 24.924723, 18.672060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.988100, 25.323212, 18.674191>,  <32.008907, 25.562305, 18.675468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.988100, 25.323212, 18.674191>,  <31.953421, 24.924723, 18.672060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988100, 25.323212, 18.674191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005740, 0.005847, -0.999966,
		-0.996218, 0.086664, 0.006225,
		0.086698, 0.996220, 0.005328,
		32.014111, 25.622078, 18.675789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547190, 25.142733, 18.093418>,  <31.953421, 24.924723, 18.672060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547190, 25.142733, 18.093418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.778004, 25.461882, 18.163197>,  <31.916492, 25.653370, 18.205063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.778004, 25.461882, 18.163197>,  <31.547190, 25.142733, 18.093418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778004, 25.461882, 18.163197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106683, 0.138129, -0.984652,
		-0.809721, 0.586789, -0.005414,
		0.577036, 0.797871, 0.174446,
		31.951115, 25.701242, 18.215530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308529, 25.588755, 17.646790>,  <31.547190, 25.142733, 18.093418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308529, 25.588755, 17.646790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670120, 25.737202, 17.731733>,  <31.887075, 25.826269, 17.782700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.670120, 25.737202, 17.731733>,  <31.308529, 25.588755, 17.646790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670120, 25.737202, 17.731733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146700, 0.197319, -0.969301,
		-0.401625, 0.907380, 0.123930,
		0.903978, 0.371115, 0.212361,
		31.941313, 25.848536, 17.795443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185141, 26.223669, 17.477421>,  <31.308529, 25.588755, 17.646790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185141, 26.223669, 17.477421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572292, 26.128000, 17.446421>,  <31.804583, 26.070599, 17.427820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572292, 26.128000, 17.446421>,  <31.185141, 26.223669, 17.477421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572292, 26.128000, 17.446421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000245, 0.307359, -0.951593,
		0.251416, 0.921046, 0.297428,
		0.967879, -0.239173, -0.077500,
		31.862656, 26.056248, 17.423170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383793, 26.565762, 17.000015>,  <31.185141, 26.223669, 17.477421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383793, 26.565762, 17.000015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.730457, 26.372660, 17.050371>,  <31.938456, 26.256798, 17.080584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.730457, 26.372660, 17.050371>,  <31.383793, 26.565762, 17.000015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730457, 26.372660, 17.050371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299338, 0.301299, -0.905326,
		0.399122, 0.822292, 0.405631,
		0.866659, -0.482757, 0.125888,
		31.990456, 26.227833, 17.088139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895815, 27.046631, 16.855825>,  <31.383793, 26.565762, 17.000015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895815, 27.046631, 16.855825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025272, 26.671677, 16.804340>,  <32.102947, 26.446705, 16.773449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025272, 26.671677, 16.804340>,  <31.895815, 27.046631, 16.855825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025272, 26.671677, 16.804340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185282, 0.196185, -0.962903,
		0.927861, 0.287788, 0.237175,
		0.323643, -0.937384, -0.128711,
		32.122364, 26.390461, 16.765728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260361, 27.209585, 16.283619>,  <31.895815, 27.046631, 16.855825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260361, 27.209585, 16.283619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269020, 26.809948, 16.298265>,  <32.274216, 26.570166, 16.307055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.269020, 26.809948, 16.298265>,  <32.260361, 27.209585, 16.283619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269020, 26.809948, 16.298265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215060, -0.031117, -0.976105,
		0.976361, 0.029004, 0.214192,
		0.021646, -0.999095, 0.036619,
		32.275513, 26.510220, 16.309252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565456, 27.533014, 16.831343>,  <32.260361, 27.209585, 16.283619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565456, 27.533014, 16.831343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788010, 27.340670, 16.560282>,  <32.921543, 27.225264, 16.397646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.788010, 27.340670, 16.560282>,  <32.565456, 27.533014, 16.831343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788010, 27.340670, 16.560282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145027, -0.746822, 0.649018,
		-0.818171, -0.459381, -0.345782,
		0.556384, -0.480860, -0.677650,
		32.954926, 27.196411, 16.356987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033890, 27.755869, 17.316063>,  <32.565456, 27.533014, 16.831343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033890, 27.755869, 17.316063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197140, 28.121038, 17.316877>,  <32.295090, 28.340141, 17.317366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197140, 28.121038, 17.316877>,  <32.033890, 27.755869, 17.316063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197140, 28.121038, 17.316877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016393, -0.009560, 0.999820,
		0.912780, -0.408015, -0.018867,
		0.408122, 0.912925, 0.002038,
		32.319576, 28.394917, 17.317488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616047, 27.707943, 17.853010>,  <32.033890, 27.755869, 17.316063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616047, 27.707943, 17.853010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.510777, 28.088085, 17.786600>,  <32.447617, 28.316170, 17.746754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.510777, 28.088085, 17.786600>,  <32.616047, 27.707943, 17.853010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510777, 28.088085, 17.786600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047704, 0.159060, 0.986116,
		0.963569, 0.267439, 0.003475,
		-0.263173, 0.950356, -0.166023,
		32.431824, 28.373192, 17.736794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150013, 28.102543, 18.205978>,  <32.616047, 27.707943, 17.853010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150013, 28.102543, 18.205978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812202, 28.312075, 18.161491>,  <32.609516, 28.437794, 18.134800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.812202, 28.312075, 18.161491>,  <33.150013, 28.102543, 18.205978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812202, 28.312075, 18.161491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001617, 0.205188, 0.978721,
		0.535504, 0.826740, -0.172441,
		-0.844531, 0.523830, -0.111216,
		32.558842, 28.469223, 18.128126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307545, 28.688948, 18.558510>,  <33.150013, 28.102543, 18.205978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307545, 28.688948, 18.558510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910297, 28.722897, 18.526215>,  <32.671951, 28.743267, 18.506838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910297, 28.722897, 18.526215>,  <33.307545, 28.688948, 18.558510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910297, 28.722897, 18.526215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043877, 0.369524, 0.928185,
		0.108612, 0.925337, -0.363256,
		-0.993115, 0.084873, -0.080736,
		32.612362, 28.748358, 18.501993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061920, 29.314819, 18.907602>,  <33.307545, 28.688948, 18.558510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061920, 29.314819, 18.907602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.747284, 29.068880, 18.884846>,  <32.558502, 28.921316, 18.871191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.747284, 29.068880, 18.884846>,  <33.061920, 29.314819, 18.907602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747284, 29.068880, 18.884846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167604, 0.123922, 0.978035,
		-0.594294, 0.778848, -0.200527,
		-0.786590, -0.614849, -0.056892,
		32.511307, 28.884426, 18.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489559, 29.726536, 19.187096>,  <33.061920, 29.314819, 18.907602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489559, 29.726536, 19.187096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371086, 29.349272, 19.247393>,  <32.300003, 29.122913, 19.283571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371086, 29.349272, 19.247393>,  <32.489559, 29.726536, 19.187096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371086, 29.349272, 19.247393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144326, 0.200206, 0.969065,
		-0.944165, 0.265260, -0.195420,
		-0.296179, -0.943162, 0.150744,
		32.282234, 29.066322, 19.292616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979218, 29.774454, 19.762333>,  <32.489559, 29.726536, 19.187096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979218, 29.774454, 19.762333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085640, 29.390480, 19.727139>,  <32.149494, 29.160095, 19.706022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085640, 29.390480, 19.727139>,  <31.979218, 29.774454, 19.762333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085640, 29.390480, 19.727139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126134, -0.055823, 0.990441,
		-0.955670, -0.274609, 0.106229,
		0.266054, -0.959934, -0.087986,
		32.165455, 29.102499, 19.700743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340557, 29.802082, 19.500526>,  <31.979218, 29.774454, 19.762333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340557, 29.802082, 19.500526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993277, 29.996992, 19.538031>,  <30.784908, 30.113937, 19.560534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993277, 29.996992, 19.538031>,  <31.340557, 29.802082, 19.500526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993277, 29.996992, 19.538031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015698, 0.161890, -0.986684,
		-0.495966, -0.858111, -0.132904,
		-0.868200, 0.487276, 0.093762,
		30.732817, 30.143175, 19.566158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827145, 29.483643, 19.102139>,  <31.340557, 29.802082, 19.500526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827145, 29.483643, 19.102139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675825, 29.852087, 19.138901>,  <30.585033, 30.073153, 19.160957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.675825, 29.852087, 19.138901>,  <30.827145, 29.483643, 19.102139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675825, 29.852087, 19.138901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105923, 0.055558, -0.992821,
		-0.919604, -0.385317, 0.076550,
		-0.378298, 0.921110, 0.091906,
		30.562336, 30.128420, 19.166473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269253, 29.513531, 18.688650>,  <30.827145, 29.483643, 19.102139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269253, 29.513531, 18.688650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332895, 29.904993, 18.740669>,  <30.371080, 30.139872, 18.771881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.332895, 29.904993, 18.740669>,  <30.269253, 29.513531, 18.688650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332895, 29.904993, 18.740669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383120, 0.182610, -0.905468,
		-0.909892, 0.094243, 0.403998,
		0.159108, 0.978658, 0.130049,
		30.380629, 30.198591, 18.779684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639444, 29.890343, 18.489422>,  <30.269253, 29.513531, 18.688650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639444, 29.890343, 18.489422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937267, 30.157112, 18.477789>,  <30.115961, 30.317175, 18.470810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.937267, 30.157112, 18.477789>,  <29.639444, 29.890343, 18.489422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937267, 30.157112, 18.477789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308923, 0.305607, -0.900650,
		-0.591778, 0.679570, 0.433571,
		0.744557, 0.666925, -0.029083,
		30.160635, 30.357189, 18.469065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312853, 30.520252, 18.474148>,  <29.639444, 29.890343, 18.489422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312853, 30.520252, 18.474148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672846, 30.591177, 18.314854>,  <29.888842, 30.633732, 18.219276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672846, 30.591177, 18.314854>,  <29.312853, 30.520252, 18.474148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672846, 30.591177, 18.314854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428105, 0.187213, -0.884125,
		-0.082212, 0.966184, 0.244397,
		0.899982, 0.177314, -0.398237,
		29.942841, 30.644371, 18.195383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231895, 31.151209, 18.131350>,  <29.312853, 30.520252, 18.474148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231895, 31.151209, 18.131350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557734, 30.973925, 17.981684>,  <29.753237, 30.867554, 17.891884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557734, 30.973925, 17.981684>,  <29.231895, 31.151209, 18.131350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557734, 30.973925, 17.981684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321389, 0.192106, -0.927256,
		0.482847, 0.875592, 0.014047,
		0.814597, -0.443208, -0.374163,
		29.802113, 30.840961, 17.869434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409693, 31.603121, 17.638182>,  <29.231895, 31.151209, 18.131350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409693, 31.603121, 17.638182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581566, 31.257343, 17.533792>,  <29.684689, 31.049877, 17.471159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581566, 31.257343, 17.533792>,  <29.409693, 31.603121, 17.638182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581566, 31.257343, 17.533792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339249, 0.113299, -0.933849,
		0.836829, 0.489793, -0.244580,
		0.429682, -0.864446, -0.260974,
		29.710470, 30.998009, 17.455500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318277, 31.724007, 17.004379>,  <29.409693, 31.603121, 17.638182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318277, 31.724007, 17.004379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.437021, 31.342134, 17.012959>,  <29.508266, 31.113010, 17.018106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.437021, 31.342134, 17.012959>,  <29.318277, 31.724007, 17.004379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437021, 31.342134, 17.012959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308329, -0.117082, -0.944047,
		0.903775, 0.273635, -0.329112,
		0.296858, -0.954681, 0.021447,
		29.526079, 31.055731, 17.019392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588739, 31.633562, 16.450190>,  <29.318277, 31.724007, 17.004379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588739, 31.633562, 16.450190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455908, 31.272306, 16.559048>,  <29.376209, 31.055553, 16.624363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455908, 31.272306, 16.559048>,  <29.588739, 31.633562, 16.450190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455908, 31.272306, 16.559048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363287, -0.143804, -0.920512,
		0.870486, -0.404549, -0.280345,
		-0.332078, -0.903139, 0.272147,
		29.356285, 31.001364, 16.640692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.491783, 28.967081, 31.519667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874260, 28.881485, 31.439772>,  <34.103748, 28.830128, 31.391834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874260, 28.881485, 31.439772>,  <33.491783, 28.967081, 31.519667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874260, 28.881485, 31.439772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113406, -0.899864, 0.421170,
		-0.269864, -0.380070, -0.884715,
		0.956197, -0.213991, -0.199739,
		34.161118, 28.817287, 31.379850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790504, 28.633446, 31.695621>,  <33.491783, 28.967081, 31.519667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790504, 28.633446, 31.695621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434666, 28.770132, 31.816847>,  <32.221161, 28.852144, 31.889582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434666, 28.770132, 31.816847>,  <32.790504, 28.633446, 31.695621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434666, 28.770132, 31.816847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222328, 0.255642, -0.940860,
		-0.398980, -0.904367, -0.151446,
		-0.889598, 0.341713, 0.303061,
		32.167786, 28.872646, 31.907764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307873, 28.351234, 31.233509>,  <32.790504, 28.633446, 31.695621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307873, 28.351234, 31.233509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154251, 28.680857, 31.400093>,  <32.062077, 28.878630, 31.500044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154251, 28.680857, 31.400093>,  <32.307873, 28.351234, 31.233509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154251, 28.680857, 31.400093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127894, 0.399223, -0.907890,
		-0.914411, -0.401940, -0.047932,
		-0.384053, 0.824054, 0.416460,
		32.039036, 28.928072, 31.525030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636589, 28.514404, 30.890039>,  <32.307873, 28.351234, 31.233509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636589, 28.514404, 30.890039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750374, 28.860407, 31.055372>,  <31.818645, 29.068008, 31.154572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750374, 28.860407, 31.055372>,  <31.636589, 28.514404, 30.890039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750374, 28.860407, 31.055372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408518, 0.499414, -0.764002,
		-0.867291, 0.048477, 0.495436,
		0.284464, 0.865006, 0.413333,
		31.835712, 29.119909, 31.179373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051701, 28.864803, 30.816257>,  <31.636589, 28.514404, 30.890039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051701, 28.864803, 30.816257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361256, 29.115944, 30.849483>,  <31.546988, 29.266628, 30.869419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361256, 29.115944, 30.849483>,  <31.051701, 28.864803, 30.816257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361256, 29.115944, 30.849483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218094, 0.387332, -0.895773,
		-0.594588, 0.675110, 0.436682,
		0.773886, 0.627853, 0.083065,
		31.593422, 29.304300, 30.874403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856878, 29.315716, 30.257410>,  <31.051701, 28.864803, 30.816257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856878, 29.315716, 30.257410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.218094, 29.459248, 30.351864>,  <31.434824, 29.545366, 30.408535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.218094, 29.459248, 30.351864>,  <30.856878, 29.315716, 30.257410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218094, 29.459248, 30.351864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127829, 0.300324, -0.945233,
		-0.410093, 0.883769, 0.225336,
		0.903041, 0.358829, 0.236132,
		31.489006, 29.566896, 30.422703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864021, 29.918587, 30.008724>,  <30.856878, 29.315716, 30.257410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864021, 29.918587, 30.008724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246964, 29.813103, 30.055933>,  <31.476728, 29.749813, 30.084259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246964, 29.813103, 30.055933>,  <30.864021, 29.918587, 30.008724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246964, 29.813103, 30.055933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233668, 0.466494, -0.853102,
		0.169913, 0.844299, 0.508220,
		0.957355, -0.263708, 0.118022,
		31.534170, 29.733990, 30.091339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295012, 30.583939, 29.931044>,  <30.864021, 29.918587, 30.008724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295012, 30.583939, 29.931044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501936, 30.255877, 29.833277>,  <31.626091, 30.059040, 29.774616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501936, 30.255877, 29.833277>,  <31.295012, 30.583939, 29.931044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501936, 30.255877, 29.833277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247292, 0.416673, -0.874775,
		0.819291, 0.392087, 0.418366,
		0.517310, -0.820153, -0.244416,
		31.657129, 30.009830, 29.759953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886259, 30.753740, 29.585926>,  <31.295012, 30.583939, 29.931044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886259, 30.753740, 29.585926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859919, 30.378725, 29.449289>,  <31.844114, 30.153715, 29.367308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859919, 30.378725, 29.449289>,  <31.886259, 30.753740, 29.585926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859919, 30.378725, 29.449289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061679, 0.337857, -0.939174,
		0.995921, -0.082914, 0.035578,
		-0.065850, -0.937538, -0.341593,
		31.840164, 30.097464, 29.346811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219822, 30.859732, 29.026501>,  <31.886259, 30.753740, 29.585926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219822, 30.859732, 29.026501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084362, 30.486610, 28.977201>,  <32.003086, 30.262737, 28.947622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084362, 30.486610, 28.977201>,  <32.219822, 30.859732, 29.026501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084362, 30.486610, 28.977201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196339, 0.058049, -0.978816,
		0.920198, -0.355678, 0.163487,
		-0.338653, -0.932804, -0.123250,
		31.982765, 30.206770, 28.940226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742741, 30.541189, 28.620199>,  <32.219822, 30.859732, 29.026501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742741, 30.541189, 28.620199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410439, 30.327269, 28.558447>,  <32.211056, 30.198915, 28.521397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410439, 30.327269, 28.558447>,  <32.742741, 30.541189, 28.620199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410439, 30.327269, 28.558447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236231, -0.087605, -0.967740,
		0.504025, -0.840424, 0.199115,
		-0.830755, -0.534802, -0.154379,
		32.161213, 30.166828, 28.512133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845165, 29.962669, 28.222837>,  <32.742741, 30.541189, 28.620199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845165, 29.962669, 28.222837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457909, 30.042450, 28.162281>,  <32.225555, 30.090319, 28.125948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457909, 30.042450, 28.162281>,  <32.845165, 29.962669, 28.222837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457909, 30.042450, 28.162281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134791, -0.094409, -0.986366,
		-0.211025, -0.975349, 0.064518,
		-0.968142, 0.199451, -0.151391,
		32.167465, 30.102285, 28.116863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992531, 29.250751, 28.309658>,  <32.845165, 29.962669, 28.222837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992531, 29.250751, 28.309658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326744, 29.033743, 28.274876>,  <33.527271, 28.903538, 28.254005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326744, 29.033743, 28.274876>,  <32.992531, 29.250751, 28.309658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326744, 29.033743, 28.274876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024878, -0.120744, 0.992372,
		-0.548881, -0.831320, -0.087388,
		0.835530, -0.542520, -0.086955,
		33.577404, 28.870987, 28.248789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933567, 28.744375, 28.842854>,  <32.992531, 29.250751, 28.309658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933567, 28.744375, 28.842854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319481, 28.718044, 28.740990>,  <33.551029, 28.702246, 28.679871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319481, 28.718044, 28.740990>,  <32.933567, 28.744375, 28.842854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319481, 28.718044, 28.740990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253662, -0.023257, 0.967013,
		-0.069580, -0.997560, -0.005739,
		0.964787, -0.065829, -0.254661,
		33.608917, 28.698298, 28.664591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287827, 28.116777, 29.092716>,  <32.933567, 28.744375, 28.842854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287827, 28.116777, 29.092716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571861, 28.391289, 29.029737>,  <33.742283, 28.555996, 28.991949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571861, 28.391289, 29.029737>,  <33.287827, 28.116777, 29.092716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571861, 28.391289, 29.029737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268897, -0.057649, 0.961442,
		0.650742, -0.725049, -0.225475,
		0.710091, 0.686280, -0.157448,
		33.784889, 28.597174, 28.982502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857849, 27.800604, 29.394445>,  <33.287827, 28.116777, 29.092716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857849, 27.800604, 29.394445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956367, 28.184721, 29.342028>,  <34.015480, 28.415192, 29.310577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.956367, 28.184721, 29.342028>,  <33.857849, 27.800604, 29.394445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956367, 28.184721, 29.342028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563765, -0.031970, 0.825316,
		0.788357, -0.277150, -0.549255,
		0.246296, 0.960295, -0.131043,
		34.030258, 28.472809, 29.302715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560093, 27.842083, 29.484257>,  <33.857849, 27.800604, 29.394445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560093, 27.842083, 29.484257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434021, 28.215637, 29.551807>,  <34.358376, 28.439770, 29.592337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434021, 28.215637, 29.551807>,  <34.560093, 27.842083, 29.484257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434021, 28.215637, 29.551807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605980, 0.061094, 0.793130,
		0.730375, 0.352317, -0.585172,
		-0.315184, 0.933885, 0.168875,
		34.339466, 28.495802, 29.602470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096802, 28.062737, 29.814056>,  <34.560093, 27.842083, 29.484257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096802, 28.062737, 29.814056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796776, 28.307747, 29.913834>,  <34.616760, 28.454752, 29.973700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796776, 28.307747, 29.913834>,  <35.096802, 28.062737, 29.814056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796776, 28.307747, 29.913834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287453, -0.037750, 0.957051,
		0.595633, 0.789550, -0.147757,
		-0.750061, 0.612524, 0.249443,
		34.571758, 28.491505, 29.988667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325871, 28.583248, 30.148106>,  <35.096802, 28.062737, 29.814056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325871, 28.583248, 30.148106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946125, 28.599417, 30.272738>,  <34.718277, 28.609118, 30.347517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946125, 28.599417, 30.272738>,  <35.325871, 28.583248, 30.148106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946125, 28.599417, 30.272738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311058, -0.018814, 0.950205,
		0.044270, 0.999006, 0.005288,
		-0.949359, 0.040420, 0.311581,
		34.661316, 28.611544, 30.366211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406208, 29.023954, 30.724972>,  <35.325871, 28.583248, 30.148106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406208, 29.023954, 30.724972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070610, 28.813858, 30.781832>,  <34.869251, 28.687799, 30.815948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070610, 28.813858, 30.781832>,  <35.406208, 29.023954, 30.724972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070610, 28.813858, 30.781832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303492, -0.234864, 0.923434,
		-0.451641, 0.817899, 0.356457,
		-0.838995, -0.525243, 0.142152,
		34.818913, 28.656284, 30.824478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173744, 29.128029, 31.404919>,  <35.406208, 29.023954, 30.724972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173744, 29.128029, 31.404919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995724, 28.784128, 31.304712>,  <34.888912, 28.577787, 31.244589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.995724, 28.784128, 31.304712>,  <35.173744, 29.128029, 31.404919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995724, 28.784128, 31.304712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179050, -0.359534, 0.915793,
		-0.877422, 0.362720, 0.313950,
		-0.445052, -0.859749, -0.250518,
		34.862209, 28.526203, 31.229557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724533, 28.816732, 32.075294>,  <35.173744, 29.128029, 31.404919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724533, 28.816732, 32.075294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754238, 28.485731, 31.852682>,  <34.772060, 28.287130, 31.719114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754238, 28.485731, 31.852682>,  <34.724533, 28.816732, 32.075294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754238, 28.485731, 31.852682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147203, -0.542861, 0.826821,
		-0.986315, -0.143324, 0.081498,
		0.074261, -0.827502, -0.556529,
		34.776516, 28.237480, 31.685722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338436, 28.280231, 32.385696>,  <34.724533, 28.816732, 32.075294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338436, 28.280231, 32.385696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566479, 28.047560, 32.153622>,  <34.703304, 27.907957, 32.014378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566479, 28.047560, 32.153622>,  <34.338436, 28.280231, 32.385696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566479, 28.047560, 32.153622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238106, -0.558905, 0.794312,
		-0.786307, -0.590992, -0.180136,
		0.570110, -0.581682, -0.580189,
		34.737511, 27.873055, 31.979565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082016, 27.588812, 32.430653>,  <34.338436, 28.280231, 32.385696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082016, 27.588812, 32.430653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467838, 27.572668, 32.326340>,  <34.699329, 27.562983, 32.263752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.467838, 27.572668, 32.326340>,  <34.082016, 27.588812, 32.430653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467838, 27.572668, 32.326340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202234, -0.521784, 0.828760,
		-0.169519, -0.852122, -0.495127,
		0.964554, -0.040358, -0.260781,
		34.757206, 27.560560, 32.248104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229301, 26.852972, 32.463924>,  <34.082016, 27.588812, 32.430653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229301, 26.852972, 32.463924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584972, 27.035734, 32.473721>,  <34.798374, 27.145391, 32.479599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584972, 27.035734, 32.473721>,  <34.229301, 26.852972, 32.463924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584972, 27.035734, 32.473721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367161, -0.744421, 0.557701,
		0.273053, -0.486901, -0.829680,
		0.889177, 0.456908, 0.024495,
		34.851727, 27.172806, 32.481068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764259, 26.459257, 32.350006>,  <34.229301, 26.852972, 32.463924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764259, 26.459257, 32.350006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945541, 26.754190, 32.550385>,  <35.054310, 26.931150, 32.670612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945541, 26.754190, 32.550385>,  <34.764259, 26.459257, 32.350006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945541, 26.754190, 32.550385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445592, -0.674112, 0.589085,
		0.772047, -0.043756, -0.634057,
		0.453201, 0.737332, 0.500949,
		35.081501, 26.975389, 32.700668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310970, 26.558371, 31.781725>,  <34.764259, 26.459257, 32.350006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310970, 26.558371, 31.781725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040997, 26.288431, 31.662369>,  <33.879013, 26.126467, 31.590755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040997, 26.288431, 31.662369>,  <34.310970, 26.558371, 31.781725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040997, 26.288431, 31.662369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547538, -0.186972, -0.815624,
		0.494633, -0.713875, 0.495701,
		-0.674936, -0.674850, -0.298391,
		33.838516, 26.085976, 31.572851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708401, 26.028622, 31.364166>,  <34.310970, 26.558371, 31.781725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708401, 26.028622, 31.364166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320099, 25.963636, 31.293461>,  <34.087120, 25.924644, 31.251038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320099, 25.963636, 31.293461>,  <34.708401, 26.028622, 31.364166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320099, 25.963636, 31.293461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228557, -0.400006, -0.887557,
		0.073490, -0.901998, 0.425439,
		-0.970753, -0.162463, -0.176761,
		34.028873, 25.914898, 31.240433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588184, 25.354753, 31.105186>,  <34.708401, 26.028622, 31.364166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588184, 25.354753, 31.105186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267483, 25.547958, 30.964390>,  <34.075062, 25.663881, 30.879911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267483, 25.547958, 30.964390>,  <34.588184, 25.354753, 31.105186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267483, 25.547958, 30.964390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114001, -0.454543, -0.883400,
		-0.586687, -0.748393, 0.309366,
		-0.801749, 0.483011, -0.351992,
		34.026958, 25.692862, 30.858793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403408, 24.919054, 30.668037>,  <34.588184, 25.354753, 31.105186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403408, 24.919054, 30.668037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191998, 25.236004, 30.546183>,  <34.065151, 25.426174, 30.473070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.191998, 25.236004, 30.546183>,  <34.403408, 24.919054, 30.668037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191998, 25.236004, 30.546183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034842, -0.378800, -0.924823,
		-0.848203, -0.478177, 0.227812,
		-0.528524, 0.792375, -0.304638,
		34.033440, 25.473717, 30.454792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756821, 24.665016, 30.176466>,  <34.403408, 24.919054, 30.668037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756821, 24.665016, 30.176466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858337, 25.044863, 30.102907>,  <33.919247, 25.272770, 30.058771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858337, 25.044863, 30.102907>,  <33.756821, 24.665016, 30.176466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858337, 25.044863, 30.102907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064566, -0.206332, -0.976349,
		-0.965101, 0.235916, -0.113678,
		0.253792, 0.949616, -0.183899,
		33.934475, 25.329748, 30.047737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368904, 24.854986, 29.611708>,  <33.756821, 24.665016, 30.176466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368904, 24.854986, 29.611708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646702, 25.142700, 29.604746>,  <33.813381, 25.315329, 29.600569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646702, 25.142700, 29.604746>,  <33.368904, 24.854986, 29.611708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646702, 25.142700, 29.604746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105495, -0.125730, -0.986439,
		-0.711721, 0.683242, -0.163200,
		0.694496, 0.719286, -0.017406,
		33.855049, 25.358486, 29.599524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174965, 25.285662, 29.058384>,  <33.368904, 24.854986, 29.611708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174965, 25.285662, 29.058384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560886, 25.385290, 29.092146>,  <33.792439, 25.445068, 29.112404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560886, 25.385290, 29.092146>,  <33.174965, 25.285662, 29.058384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560886, 25.385290, 29.092146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102805, -0.061783, -0.992781,
		-0.242060, 0.966512, -0.085215,
		0.964799, 0.249073, 0.084407,
		33.850327, 25.460012, 29.117468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273930, 25.799618, 28.662777>,  <33.174965, 25.285662, 29.058384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273930, 25.799618, 28.662777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649120, 25.665648, 28.698595>,  <33.874237, 25.585264, 28.720085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649120, 25.665648, 28.698595>,  <33.273930, 25.799618, 28.662777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649120, 25.665648, 28.698595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038330, -0.156511, -0.986932,
		0.344564, 0.929155, -0.133967,
		0.937980, -0.334927, 0.089543,
		33.930515, 25.565170, 28.725458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625404, 26.180077, 28.205055>,  <33.273930, 25.799618, 28.662777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625404, 26.180077, 28.205055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842346, 25.849648, 28.266312>,  <33.972511, 25.651390, 28.303066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842346, 25.849648, 28.266312>,  <33.625404, 26.180077, 28.205055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842346, 25.849648, 28.266312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112887, -0.108973, -0.987614,
		0.832530, 0.552926, 0.034151,
		0.542356, -0.826074, 0.153141,
		34.005054, 25.601826, 28.312254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281357, 26.310919, 27.788349>,  <33.625404, 26.180077, 28.205055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281357, 26.310919, 27.788349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277702, 25.920816, 27.876701>,  <34.275509, 25.686754, 27.929712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277702, 25.920816, 27.876701>,  <34.281357, 26.310919, 27.788349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277702, 25.920816, 27.876701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090622, -0.220789, -0.971102,
		0.995843, 0.011149, 0.090396,
		-0.009132, -0.975258, 0.220882,
		34.274963, 25.628239, 27.942966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719925, 25.998316, 27.252787>,  <34.281357, 26.310919, 27.788349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719925, 25.998316, 27.252787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497986, 25.693975, 27.387398>,  <34.364822, 25.511372, 27.468164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497986, 25.693975, 27.387398>,  <34.719925, 25.998316, 27.252787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497986, 25.693975, 27.387398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128352, -0.321377, -0.938213,
		0.821990, -0.563761, 0.080659,
		-0.554849, -0.760849, 0.336528,
		34.331532, 25.465721, 27.488356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984516, 25.340303, 27.017710>,  <34.719925, 25.998316, 27.252787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984516, 25.340303, 27.017710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593468, 25.300518, 27.091866>,  <34.358841, 25.276648, 27.136358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593468, 25.300518, 27.091866>,  <34.984516, 25.340303, 27.017710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593468, 25.300518, 27.091866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130945, -0.402030, -0.906215,
		0.164667, -0.910208, 0.380008,
		-0.977619, -0.099464, 0.185388,
		34.300182, 25.270679, 27.147482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784187, 24.596992, 26.734987>,  <34.984516, 25.340303, 27.017710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784187, 24.596992, 26.734987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442703, 24.796150, 26.796015>,  <34.237812, 24.915644, 26.832630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.442703, 24.796150, 26.796015>,  <34.784187, 24.596992, 26.734987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442703, 24.796150, 26.796015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332612, -0.295930, -0.895430,
		-0.400679, -0.815186, 0.418245,
		-0.853713, 0.497893, 0.152567,
		34.186588, 24.945518, 26.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307129, 24.137184, 26.487000>,  <34.784187, 24.596992, 26.734987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307129, 24.137184, 26.487000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130554, 24.495932, 26.498045>,  <34.024609, 24.711180, 26.504671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130554, 24.495932, 26.498045>,  <34.307129, 24.137184, 26.487000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130554, 24.495932, 26.498045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370900, -0.154363, -0.915754,
		-0.817048, -0.414488, 0.400790,
		-0.441436, 0.896868, 0.027612,
		33.998123, 24.764992, 26.506329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632977, 24.083605, 26.180376>,  <34.307129, 24.137184, 26.487000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632977, 24.083605, 26.180376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727329, 24.472111, 26.167692>,  <33.783939, 24.705214, 26.160082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727329, 24.472111, 26.167692>,  <33.632977, 24.083605, 26.180376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727329, 24.472111, 26.167692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446053, 0.079225, -0.891493,
		-0.863364, 0.224430, 0.451923,
		0.235882, 0.971264, -0.031707,
		33.798092, 24.763491, 26.158180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071270, 24.379284, 25.759722>,  <33.632977, 24.083605, 26.180376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071270, 24.379284, 25.759722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354454, 24.661736, 25.754435>,  <33.524364, 24.831207, 25.751263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354454, 24.661736, 25.754435>,  <33.071270, 24.379284, 25.759722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354454, 24.661736, 25.754435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286103, 0.269633, -0.919480,
		-0.645708, 0.654736, 0.392915,
		0.707959, 0.706129, -0.013218,
		33.566841, 24.873575, 25.750469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722065, 24.904472, 25.704006>,  <33.071270, 24.379284, 25.759722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722065, 24.904472, 25.704006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089958, 25.004480, 25.582956>,  <33.310696, 25.064486, 25.510326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089958, 25.004480, 25.582956>,  <32.722065, 24.904472, 25.704006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089958, 25.004480, 25.582956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367352, 0.276453, -0.888046,
		-0.138368, 0.927935, 0.346108,
		0.919732, 0.250021, -0.302627,
		33.365879, 25.079487, 25.492168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687855, 25.573368, 25.349318>,  <32.722065, 24.904472, 25.704006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687855, 25.573368, 25.349318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040974, 25.428410, 25.229759>,  <33.252846, 25.341434, 25.158024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040974, 25.428410, 25.229759>,  <32.687855, 25.573368, 25.349318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040974, 25.428410, 25.229759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187362, 0.311841, -0.931478,
		0.430773, 0.878307, 0.207392,
		0.882797, -0.362398, -0.298894,
		33.305813, 25.319691, 25.140091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118740, 26.184429, 25.013197>,  <32.687855, 25.573368, 25.349318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118740, 26.184429, 25.013197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222679, 25.836525, 24.845390>,  <33.285042, 25.627783, 24.744707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.222679, 25.836525, 24.845390>,  <33.118740, 26.184429, 25.013197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222679, 25.836525, 24.845390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216114, 0.371040, -0.903119,
		0.941155, 0.325340, -0.091552,
		0.259851, -0.869760, -0.419517,
		33.300636, 25.575598, 24.719536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469017, 26.356024, 24.367334>,  <33.118740, 26.184429, 25.013197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469017, 26.356024, 24.367334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323029, 25.984066, 24.349031>,  <33.235435, 25.760891, 24.338051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323029, 25.984066, 24.349031>,  <33.469017, 26.356024, 24.367334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323029, 25.984066, 24.349031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245259, 0.143437, -0.958788,
		0.898135, -0.338705, -0.280415,
		-0.364968, -0.929895, -0.045756,
		33.213539, 25.705097, 24.335304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601627, 26.197210, 23.643513>,  <33.469017, 26.356024, 24.367334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601627, 26.197210, 23.643513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359150, 25.899565, 23.755812>,  <33.213661, 25.720978, 23.823191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359150, 25.899565, 23.755812>,  <33.601627, 26.197210, 23.643513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359150, 25.899565, 23.755812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313143, -0.101173, -0.944301,
		0.731072, -0.660347, -0.171684,
		-0.606197, -0.744114, 0.280748,
		33.177292, 25.676331, 23.840036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646362, 25.744659, 23.079239>,  <33.601627, 26.197210, 23.643513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646362, 25.744659, 23.079239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326141, 25.605270, 23.274248>,  <33.134007, 25.521637, 23.391253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326141, 25.605270, 23.274248>,  <33.646362, 25.744659, 23.079239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326141, 25.605270, 23.274248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478471, -0.118115, -0.870123,
		0.360798, -0.929847, -0.072177,
		-0.800556, -0.348474, 0.487521,
		33.085976, 25.500729, 23.420504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417610, 25.110905, 22.755980>,  <33.646362, 25.744659, 23.079239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417610, 25.110905, 22.755980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085724, 25.229961, 22.944862>,  <32.886593, 25.301395, 23.058191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085724, 25.229961, 22.944862>,  <33.417610, 25.110905, 22.755980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085724, 25.229961, 22.944862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518154, -0.096117, -0.849869,
		-0.207571, -0.949826, 0.233975,
		-0.829718, 0.297643, 0.472205,
		32.836807, 25.319254, 23.086523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880905, 24.615482, 22.592171>,  <33.417610, 25.110905, 22.755980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880905, 24.615482, 22.592171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704926, 24.961363, 22.689116>,  <32.599339, 25.168890, 22.747282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704926, 24.961363, 22.689116>,  <32.880905, 24.615482, 22.592171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704926, 24.961363, 22.689116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602856, -0.084356, -0.793378,
		-0.665589, -0.495156, 0.558401,
		-0.439950, 0.864699, 0.242362,
		32.572941, 25.220772, 22.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065189, 24.545069, 22.406498>,  <32.880905, 24.615482, 22.592171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065189, 24.545069, 22.406498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141243, 24.936092, 22.442770>,  <32.186874, 25.170708, 22.464533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.141243, 24.936092, 22.442770>,  <32.065189, 24.545069, 22.406498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141243, 24.936092, 22.442770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513224, 0.177708, -0.839655,
		-0.836929, 0.113108, 0.535496,
		0.190134, 0.977561, 0.090679,
		32.198284, 25.229361, 22.469975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480873, 24.855469, 22.035046>,  <32.065189, 24.545069, 22.406498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480873, 24.855469, 22.035046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763725, 25.134476, 22.081411>,  <31.933437, 25.301880, 22.109230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763725, 25.134476, 22.081411>,  <31.480873, 24.855469, 22.035046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763725, 25.134476, 22.081411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330363, 0.470858, -0.818018,
		-0.625160, 0.540152, 0.563392,
		0.707132, 0.697516, 0.115915,
		31.975864, 25.343731, 22.116186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095894, 25.555414, 22.030563>,  <31.480873, 24.855469, 22.035046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095894, 25.555414, 22.030563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484098, 25.550959, 21.934242>,  <31.717020, 25.548285, 21.876450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484098, 25.550959, 21.934242>,  <31.095894, 25.555414, 22.030563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484098, 25.550959, 21.934242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224339, 0.323806, -0.919142,
		0.088212, 0.946058, 0.311758,
		0.970510, -0.011140, -0.240801,
		31.775251, 25.547617, 21.862001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153992, 26.134769, 21.679680>,  <31.095894, 25.555414, 22.030563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153992, 26.134769, 21.679680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455254, 25.893751, 21.574080>,  <31.636011, 25.749140, 21.510719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455254, 25.893751, 21.574080>,  <31.153992, 26.134769, 21.679680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455254, 25.893751, 21.574080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091511, 0.301447, -0.949081,
		0.651449, 0.738963, 0.171896,
		0.753153, -0.602548, -0.264001,
		31.681200, 25.712986, 21.494879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583267, 26.634718, 21.303511>,  <31.153992, 26.134769, 21.679680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583267, 26.634718, 21.303511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320511, 26.347975, 21.396986>,  <30.162857, 26.175928, 21.453072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.320511, 26.347975, 21.396986>,  <30.583267, 26.634718, 21.303511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320511, 26.347975, 21.396986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277870, 0.057954, 0.958869,
		-0.700916, 0.694807, 0.161124,
		-0.656891, -0.716858, 0.233687,
		30.123444, 26.132917, 21.467093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186033, 26.834213, 21.895046>,  <30.583267, 26.634718, 21.303511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186033, 26.834213, 21.895046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112785, 26.441298, 21.879177>,  <30.068836, 26.205547, 21.869656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112785, 26.441298, 21.879177>,  <30.186033, 26.834213, 21.895046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112785, 26.441298, 21.879177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128772, -0.016041, 0.991545,
		-0.974620, 0.186682, -0.123554,
		-0.183122, -0.982289, -0.039673,
		30.057848, 26.146610, 21.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544031, 26.728996, 22.315311>,  <30.186033, 26.834213, 21.895046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544031, 26.728996, 22.315311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.744482, 26.383528, 22.293619>,  <29.864752, 26.176247, 22.280603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.744482, 26.383528, 22.293619>,  <29.544031, 26.728996, 22.315311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744482, 26.383528, 22.293619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028623, -0.079174, 0.996450,
		-0.864900, -0.497795, -0.064397,
		0.501127, -0.863673, -0.054229,
		29.894819, 26.124426, 22.277351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250916, 26.313286, 22.819855>,  <29.544031, 26.728996, 22.315311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250916, 26.313286, 22.819855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588121, 26.107962, 22.755558>,  <29.790445, 25.984768, 22.716980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.588121, 26.107962, 22.755558>,  <29.250916, 26.313286, 22.819855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588121, 26.107962, 22.755558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039615, -0.238777, 0.970266,
		-0.536428, -0.824317, -0.180958,
		0.843016, -0.513310, -0.160742,
		29.841026, 25.953968, 22.707335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132036, 25.719460, 23.164648>,  <29.250916, 26.313286, 22.819855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132036, 25.719460, 23.164648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.522141, 25.806126, 23.147106>,  <29.756203, 25.858126, 23.136581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.522141, 25.806126, 23.147106>,  <29.132036, 25.719460, 23.164648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522141, 25.806126, 23.147106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113801, -0.321991, 0.939878,
		0.189520, -0.921616, -0.338682,
		0.975260, 0.216668, -0.043857,
		29.814718, 25.871126, 23.133949>
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
