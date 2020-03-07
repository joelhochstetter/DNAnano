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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.607121, 52.406670, 50.017204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955261, 52.579247, 49.922249>,  <37.164146, 52.682793, 49.865276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955261, 52.579247, 49.922249>,  <36.607121, 52.406670, 50.017204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955261, 52.579247, 49.922249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491578, 0.732792, -0.470495,
		-0.029033, 0.526190, 0.849871,
		0.870349, 0.431438, -0.237388,
		37.216366, 52.708679, 49.851032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608177, 53.078384, 50.229576>,  <36.607121, 52.406670, 50.017204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608177, 53.078384, 50.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873947, 53.059830, 49.931210>,  <37.033409, 53.048698, 49.752190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873947, 53.059830, 49.931210>,  <36.608177, 53.078384, 50.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873947, 53.059830, 49.931210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569895, 0.614239, -0.545829,
		0.483491, 0.787755, 0.381678,
		0.664422, -0.046387, -0.745917,
		37.073273, 53.045914, 49.707436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779072, 53.794441, 49.932732>,  <36.608177, 53.078384, 50.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779072, 53.794441, 49.932732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821339, 53.521450, 49.643440>,  <36.846699, 53.357655, 49.469864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821339, 53.521450, 49.643440>,  <36.779072, 53.794441, 49.932732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821339, 53.521450, 49.643440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582480, 0.546987, -0.601267,
		0.805947, 0.484803, -0.339728,
		0.105670, -0.682475, -0.723231,
		36.853039, 53.316708, 49.426472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314426, 53.968700, 50.622528>,  <36.779072, 53.794441, 49.932732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314426, 53.968700, 50.622528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228893, 54.308647, 50.815193>,  <36.177574, 54.512615, 50.930794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228893, 54.308647, 50.815193>,  <36.314426, 53.968700, 50.622528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228893, 54.308647, 50.815193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168868, -0.453490, 0.875118,
		0.962164, 0.268467, -0.046544,
		-0.213833, 0.849866, 0.481667,
		36.164742, 54.563606, 50.959694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716988, 54.399235, 51.050266>,  <36.314426, 53.968700, 50.622528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716988, 54.399235, 51.050266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355240, 54.468395, 51.206329>,  <36.138191, 54.509892, 51.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355240, 54.468395, 51.206329>,  <36.716988, 54.399235, 51.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355240, 54.468395, 51.206329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293853, -0.410685, 0.863127,
		0.309468, 0.895234, 0.320603,
		-0.904367, 0.172900, 0.390161,
		36.083931, 54.520264, 51.323380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042126, 55.074009, 51.220901>,  <36.716988, 54.399235, 51.050266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042126, 55.074009, 51.220901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124794, 55.091515, 51.611874>,  <37.174397, 55.102020, 51.846458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124794, 55.091515, 51.611874>,  <37.042126, 55.074009, 51.220901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124794, 55.091515, 51.611874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697203, -0.707469, -0.115741,
		0.686437, 0.705388, -0.176727,
		0.206671, 0.043766, 0.977431,
		37.186794, 55.104645, 51.905102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734901, 55.092552, 51.317516>,  <37.042126, 55.074009, 51.220901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734901, 55.092552, 51.317516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579235, 54.895081, 51.628601>,  <37.485836, 54.776600, 51.815250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579235, 54.895081, 51.628601>,  <37.734901, 55.092552, 51.317516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579235, 54.895081, 51.628601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644459, -0.749161, -0.153069,
		0.658199, 0.441636, 0.609698,
		-0.389161, -0.493675, 0.777714,
		37.462486, 54.746979, 51.861916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310448, 54.865875, 51.747494>,  <37.734901, 55.092552, 51.317516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310448, 54.865875, 51.747494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001366, 54.627716, 51.835526>,  <37.815918, 54.484821, 51.888344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001366, 54.627716, 51.835526>,  <38.310448, 54.865875, 51.747494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001366, 54.627716, 51.835526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551335, -0.801331, -0.232161,
		0.314585, -0.058053, 0.947452,
		-0.772701, -0.595398, 0.220080,
		37.769554, 54.449097, 51.901550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538864, 54.257690, 52.192692>,  <38.310448, 54.865875, 51.747494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538864, 54.257690, 52.192692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214012, 54.121410, 52.003227>,  <38.019100, 54.039642, 51.889549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214012, 54.121410, 52.003227>,  <38.538864, 54.257690, 52.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214012, 54.121410, 52.003227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480449, -0.851124, -0.211558,
		-0.331069, -0.399386, 0.854918,
		-0.812134, -0.340704, -0.473665,
		37.970371, 54.019199, 51.861126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225426, 54.509739, 52.890354>,  <38.538864, 54.257690, 52.192692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225426, 54.509739, 52.890354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608376, 54.472214, 52.781078>,  <38.838146, 54.449699, 52.715511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608376, 54.472214, 52.781078>,  <38.225426, 54.509739, 52.890354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608376, 54.472214, 52.781078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287117, 0.205636, 0.935563,
		-0.031591, -0.974121, 0.223807,
		0.957374, -0.093814, -0.273190,
		38.895588, 54.444069, 52.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661514, 53.911194, 53.176346>,  <38.225426, 54.509739, 52.890354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661514, 53.911194, 53.176346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899635, 54.223110, 53.098843>,  <39.042507, 54.410259, 53.052341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899635, 54.223110, 53.098843>,  <38.661514, 53.911194, 53.176346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899635, 54.223110, 53.098843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140440, 0.136456, 0.980641,
		0.791135, -0.610987, -0.028282,
		0.595300, 0.779792, -0.193762,
		39.078224, 54.457047, 53.040714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179325, 53.905704, 53.679424>,  <38.661514, 53.911194, 53.176346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179325, 53.905704, 53.679424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213268, 54.276569, 53.533459>,  <39.233635, 54.499088, 53.445877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213268, 54.276569, 53.533459>,  <39.179325, 53.905704, 53.679424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213268, 54.276569, 53.533459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222455, 0.339364, 0.913973,
		0.971243, -0.158733, -0.177456,
		0.084856, 0.927166, -0.364916,
		39.238724, 54.554718, 53.423985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662315, 54.227386, 54.106682>,  <39.179325, 53.905704, 53.679424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662315, 54.227386, 54.106682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516121, 54.550629, 53.921906>,  <39.428406, 54.744572, 53.811039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516121, 54.550629, 53.921906>,  <39.662315, 54.227386, 54.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516121, 54.550629, 53.921906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341252, 0.578051, 0.741218,
		0.866005, 0.113267, -0.487037,
		-0.365488, 0.808101, -0.461942,
		39.406475, 54.793060, 53.783321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206051, 54.736012, 54.195770>,  <39.662315, 54.227386, 54.106682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206051, 54.736012, 54.195770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849312, 54.907978, 54.139515>,  <39.635269, 55.011158, 54.105762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849312, 54.907978, 54.139515>,  <40.206051, 54.736012, 54.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849312, 54.907978, 54.139515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097832, 0.486886, 0.867969,
		0.441630, 0.760337, -0.476288,
		-0.891847, 0.429918, -0.140638,
		39.581757, 55.036953, 54.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824486, 54.522495, 53.818092>,  <40.206051, 54.736012, 54.195770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824486, 54.522495, 53.818092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165791, 54.660343, 53.974648>,  <41.370571, 54.743053, 54.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165791, 54.660343, 53.974648>,  <40.824486, 54.522495, 53.818092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165791, 54.660343, 53.974648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362501, -0.931503, 0.029922,
		0.374892, 0.116348, -0.919739,
		0.853258, 0.344624, 0.391389,
		41.421768, 54.763729, 54.092064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342327, 54.216881, 53.373119>,  <40.824486, 54.522495, 53.818092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342327, 54.216881, 53.373119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472977, 54.290668, 53.743912>,  <41.551365, 54.334942, 53.966385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472977, 54.290668, 53.743912>,  <41.342327, 54.216881, 53.373119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472977, 54.290668, 53.743912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273752, -0.957193, 0.094030,
		0.904643, 0.223051, -0.363139,
		0.326620, 0.184473, 0.926978,
		41.570961, 54.346012, 54.022007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940758, 53.683479, 53.530376>,  <41.342327, 54.216881, 53.373119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940758, 53.683479, 53.530376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814938, 53.823082, 53.883476>,  <41.739445, 53.906845, 54.095337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814938, 53.823082, 53.883476>,  <41.940758, 53.683479, 53.530376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814938, 53.823082, 53.883476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098226, -0.912997, 0.395964,
		0.944147, 0.211258, 0.252898,
		-0.314546, 0.349007, 0.882754,
		41.720573, 53.927784, 54.148304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145931, 53.164845, 52.946175>,  <41.940758, 53.683479, 53.530376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145931, 53.164845, 52.946175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203541, 53.554565, 53.015450>,  <42.238106, 53.788399, 53.057014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203541, 53.554565, 53.015450>,  <42.145931, 53.164845, 52.946175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203541, 53.554565, 53.015450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982864, -0.120493, -0.139496,
		-0.115043, 0.190312, -0.974960,
		0.144024, 0.974301, 0.173189,
		42.246746, 53.846855, 53.067406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738903, 53.329094, 52.527889>,  <42.145931, 53.164845, 52.946175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738903, 53.329094, 52.527889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706627, 53.664230, 52.743858>,  <42.687260, 53.865311, 52.873440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706627, 53.664230, 52.743858>,  <42.738903, 53.329094, 52.527889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706627, 53.664230, 52.743858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996160, 0.086258, 0.015026,
		-0.033983, 0.539061, -0.841581,
		-0.080693, 0.837838, 0.539922,
		42.682419, 53.915581, 52.905834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053242, 53.928925, 52.261490>,  <42.738903, 53.329094, 52.527889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053242, 53.928925, 52.261490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050159, 53.883568, 52.658897>,  <43.048309, 53.856354, 52.897343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050159, 53.883568, 52.658897>,  <43.053242, 53.928925, 52.261490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050159, 53.883568, 52.658897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991642, -0.128826, -0.007017,
		0.128787, 0.985163, 0.113438,
		-0.007701, -0.113393, 0.993520,
		43.047848, 53.849548, 52.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373016, 54.464321, 52.812778>,  <43.053242, 53.928925, 52.261490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373016, 54.464321, 52.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420643, 54.120907, 53.012276>,  <43.449219, 53.914860, 53.131973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420643, 54.120907, 53.012276>,  <43.373016, 54.464321, 52.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420643, 54.120907, 53.012276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992886, 0.102739, -0.060175,
		0.000422, 0.502363, 0.864657,
		0.119064, -0.858531, 0.498746,
		43.456364, 53.863346, 53.161900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908440, 54.567005, 53.315701>,  <43.373016, 54.464321, 52.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908440, 54.567005, 53.315701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897484, 54.177139, 53.226910>,  <43.890911, 53.943218, 53.173637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897484, 54.177139, 53.226910>,  <43.908440, 54.567005, 53.315701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897484, 54.177139, 53.226910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999036, -0.034310, 0.027388,
		-0.034310, -0.221011, 0.974668,
		-0.027388, -0.974668, -0.221975,
		43.889267, 53.884739, 53.160316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203499, 54.036980, 53.784306>,  <43.908440, 54.567005, 53.315701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203499, 54.036980, 53.784306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265503, 53.906582, 53.411274>,  <44.302704, 53.828342, 53.187454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265503, 53.906582, 53.411274>,  <44.203499, 54.036980, 53.784306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265503, 53.906582, 53.411274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987449, 0.022204, 0.156368,
		-0.030267, -0.945112, 0.325343,
		0.155009, -0.325993, -0.932578,
		44.312004, 53.808784, 53.131500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716240, 53.486080, 53.713081>,  <44.203499, 54.036980, 53.784306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716240, 53.486080, 53.713081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729523, 53.712021, 53.383274>,  <44.737492, 53.847588, 53.185390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729523, 53.712021, 53.383274>,  <44.716240, 53.486080, 53.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729523, 53.712021, 53.383274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997639, 0.030896, 0.061339,
		0.060122, -0.824611, -0.562496,
		0.033202, 0.564856, -0.824521,
		44.739483, 53.881477, 53.135918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917904, 53.163498, 53.041939>,  <44.716240, 53.486080, 53.713081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917904, 53.163498, 53.041939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037727, 53.545017, 53.051205>,  <45.109619, 53.773930, 53.056767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037727, 53.545017, 53.051205>,  <44.917904, 53.163498, 53.041939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037727, 53.545017, 53.051205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952911, -0.300301, 0.042192,
		0.047200, 0.009439, -0.998841,
		0.299555, 0.953798, 0.023169,
		45.127594, 53.831158, 53.058155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.319885, 53.275047, 52.434135>,  <44.917904, 53.163498, 53.041939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.319885, 53.275047, 52.434135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408859, 53.477753, 52.767296>,  <45.462242, 53.599377, 52.967190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408859, 53.477753, 52.767296>,  <45.319885, 53.275047, 52.434135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408859, 53.477753, 52.767296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934141, -0.355349, -0.033266,
		0.279111, 0.785443, -0.552428,
		0.222434, 0.506761, 0.832897,
		45.475590, 53.629780, 53.017166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987942, 53.804947, 52.419567>,  <45.319885, 53.275047, 52.434135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987942, 53.804947, 52.419567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919678, 53.646351, 52.780380>,  <45.878719, 53.551193, 52.996868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919678, 53.646351, 52.780380>,  <45.987942, 53.804947, 52.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919678, 53.646351, 52.780380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872502, -0.486184, -0.048626,
		0.457835, 0.778730, 0.428914,
		-0.170665, -0.396491, 0.902036,
		45.868477, 53.527405, 53.050991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607224, 53.828358, 52.874958>,  <45.987942, 53.804947, 52.419567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607224, 53.828358, 52.874958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358395, 53.531746, 52.975487>,  <46.209099, 53.353779, 53.035805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358395, 53.531746, 52.975487>,  <46.607224, 53.828358, 52.874958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358395, 53.531746, 52.975487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758122, -0.650672, -0.043329,
		0.195658, 0.163579, 0.966933,
		-0.622068, -0.741531, 0.251322,
		46.171776, 53.309288, 53.050884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935246, 53.496464, 53.386616>,  <46.607224, 53.828358, 52.874958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935246, 53.496464, 53.386616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682724, 53.226219, 53.234299>,  <46.531212, 53.064072, 53.142906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682724, 53.226219, 53.234299>,  <46.935246, 53.496464, 53.386616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682724, 53.226219, 53.234299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761343, -0.633407, -0.138394,
		-0.147698, -0.377284, 0.914244,
		-0.631302, -0.675612, -0.380796,
		46.493332, 53.023537, 53.120060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147720, 52.972408, 53.798241>,  <46.935246, 53.496464, 53.386616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147720, 52.972408, 53.798241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956669, 52.826759, 53.478420>,  <46.842037, 52.739368, 53.286526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956669, 52.826759, 53.478420>,  <47.147720, 52.972408, 53.798241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956669, 52.826759, 53.478420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543146, -0.837699, 0.057036,
		-0.690553, -0.407032, 0.597881,
		-0.477629, -0.364123, -0.799553,
		46.813381, 52.717522, 53.238556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818073, 52.314381, 54.014439>,  <47.147720, 52.972408, 53.798241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818073, 52.314381, 54.014439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962254, 52.315231, 53.641327>,  <47.048763, 52.315742, 53.417461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962254, 52.315231, 53.641327>,  <46.818073, 52.314381, 54.014439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962254, 52.315231, 53.641327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364162, -0.920961, 0.138627,
		-0.858755, -0.389649, -0.332735,
		0.360452, 0.002123, -0.932775,
		47.070389, 52.315868, 53.361496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805820, 51.554291, 53.693344>,  <46.818073, 52.314381, 54.014439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805820, 51.554291, 53.693344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082565, 51.823296, 53.588242>,  <47.248611, 51.984699, 53.525181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082565, 51.823296, 53.588242>,  <46.805820, 51.554291, 53.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082565, 51.823296, 53.588242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716512, -0.594613, 0.364756,
		0.089064, -0.440633, -0.893258,
		0.691866, 0.672516, -0.262760,
		47.290127, 52.025051, 53.509415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447212, 51.299286, 53.259331>,  <46.805820, 51.554291, 53.693344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447212, 51.299286, 53.259331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547611, 51.614540, 53.484131>,  <47.607849, 51.803692, 53.619011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547611, 51.614540, 53.484131>,  <47.447212, 51.299286, 53.259331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547611, 51.614540, 53.484131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790908, -0.501711, 0.350359,
		0.558091, 0.356551, -0.749270,
		0.250996, 0.788135, 0.561999,
		47.622910, 51.850979, 53.652729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.155888, 51.417492, 53.210075>,  <47.447212, 51.299286, 53.259331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.155888, 51.417492, 53.210075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032654, 51.563061, 53.561676>,  <47.958714, 51.650402, 53.772636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.032654, 51.563061, 53.561676>,  <48.155888, 51.417492, 53.210075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.032654, 51.563061, 53.561676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705085, -0.532953, 0.467778,
		0.638701, 0.763887, -0.092399,
		-0.308085, 0.363919, 0.879003,
		47.940228, 51.672237, 53.825378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.818562, 51.403194, 53.715317>,  <48.155888, 51.417492, 53.210075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.818562, 51.403194, 53.715317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.075497, 51.130177, 53.854767>,  <49.229656, 50.966366, 53.938438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.075497, 51.130177, 53.854767>,  <48.818562, 51.403194, 53.715317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.075497, 51.130177, 53.854767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754295, 0.643589, -0.129741,
		-0.135818, 0.346305, 0.928238,
		0.642334, -0.682544, 0.348627,
		49.268196, 50.925415, 53.959354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.239178, 51.661621, 54.316902>,  <48.818562, 51.403194, 53.715317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.239178, 51.661621, 54.316902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.430637, 51.375000, 54.113941>,  <49.545513, 51.203030, 53.992165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.430637, 51.375000, 54.113941>,  <49.239178, 51.661621, 54.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.430637, 51.375000, 54.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631485, 0.682459, -0.368070,
		0.610021, -0.144241, 0.779146,
		0.478645, -0.716550, -0.507401,
		49.574230, 51.160034, 53.961720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.860706, 51.455357, 54.601345>,  <49.239178, 51.661621, 54.316902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.860706, 51.455357, 54.601345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.860168, 51.429573, 54.202179>,  <49.859844, 51.414104, 53.962677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.860168, 51.429573, 54.202179>,  <49.860706, 51.455357, 54.601345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.860168, 51.429573, 54.202179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646848, 0.760976, -0.050023,
		0.762618, -0.645569, 0.040672,
		-0.001343, -0.064457, -0.997920,
		49.859764, 51.410236, 53.902802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.518028, 51.402660, 54.392239>,  <49.860706, 51.455357, 54.601345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.518028, 51.402660, 54.392239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.294254, 51.563148, 54.102119>,  <50.159988, 51.659439, 53.928047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.294254, 51.563148, 54.102119>,  <50.518028, 51.402660, 54.392239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.294254, 51.563148, 54.102119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576925, 0.816768, 0.006821,
		0.595134, -0.414625, -0.688404,
		-0.559439, 0.401218, -0.725295,
		50.126423, 51.683514, 53.884529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.040161, 51.691162, 53.856354>,  <50.518028, 51.402660, 54.392239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.040161, 51.691162, 53.856354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.681614, 51.865437, 53.889084>,  <50.466484, 51.970001, 53.908722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.681614, 51.865437, 53.889084>,  <51.040161, 51.691162, 53.856354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.681614, 51.865437, 53.889084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443042, 0.874110, 0.199111,
		0.015225, 0.214730, -0.976555,
		-0.896372, 0.435686, 0.081826,
		50.412701, 51.996143, 53.913631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.266766, 51.175537, 53.356022>,  <51.040161, 51.691162, 53.856354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.266766, 51.175537, 53.356022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.398121, 51.310253, 53.003040>,  <51.476933, 51.391083, 52.791252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.398121, 51.310253, 53.003040>,  <51.266766, 51.175537, 53.356022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.398121, 51.310253, 53.003040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150435, 0.940993, 0.303153,
		0.932486, 0.033200, 0.359678,
		0.328389, 0.336794, -0.882457,
		51.496635, 51.411293, 52.738304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.791580, 51.651192, 53.302265>,  <51.266766, 51.175537, 53.356022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.791580, 51.651192, 53.302265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.552891, 51.765011, 53.002144>,  <51.409676, 51.833302, 52.822071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.552891, 51.765011, 53.002144>,  <51.791580, 51.651192, 53.302265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.552891, 51.765011, 53.002144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095425, 0.903222, 0.418430,
		0.796753, 0.321284, -0.511820,
		-0.596723, 0.284545, -0.750304,
		51.373875, 51.850376, 52.777054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.661541, 52.378597, 53.083832>,  <51.791580, 51.651192, 53.302265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.661541, 52.378597, 53.083832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.819206, 52.316010, 53.446083>,  <51.913803, 52.278458, 53.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.819206, 52.316010, 53.446083>,  <51.661541, 52.378597, 53.083832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.819206, 52.316010, 53.446083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917340, 0.126932, -0.377327,
		-0.055912, 0.979492, 0.193568,
		0.394158, -0.156471, 0.905625,
		51.937454, 52.269070, 53.717770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.899166, 52.950611, 53.410683>,  <51.661541, 52.378597, 53.083832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.899166, 52.950611, 53.410683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.110180, 52.620384, 53.490841>,  <52.236786, 52.422249, 53.538937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.110180, 52.620384, 53.490841>,  <51.899166, 52.950611, 53.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.110180, 52.620384, 53.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827304, 0.445620, -0.342038,
		0.193075, 0.346221, 0.918070,
		0.527531, -0.825563, 0.200392,
		52.268440, 52.372715, 53.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.575520, 52.998737, 53.946980>,  <51.899166, 52.950611, 53.410683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.575520, 52.998737, 53.946980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.593651, 52.720013, 53.660652>,  <52.604530, 52.552780, 53.488853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.593651, 52.720013, 53.660652>,  <52.575520, 52.998737, 53.946980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.593651, 52.720013, 53.660652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963562, 0.219588, -0.152740,
		0.263617, -0.682816, 0.681372,
		0.045328, -0.696809, -0.715823,
		52.607250, 52.510971, 53.445904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.282475, 52.677246, 53.724216>,  <52.575520, 52.998737, 53.946980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.282475, 52.677246, 53.724216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.475662, 52.328758, 53.689056>,  <53.591576, 52.119667, 53.667961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.475662, 52.328758, 53.689056>,  <53.282475, 52.677246, 53.724216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.475662, 52.328758, 53.689056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765921, 0.371665, 0.524624,
		-0.424392, -0.320699, 0.846784,
		0.482967, -0.871216, -0.087899,
		53.620552, 52.067394, 53.662685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.604019, 52.683266, 54.327610>,  <53.282475, 52.677246, 53.724216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.604019, 52.683266, 54.327610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.781857, 52.407372, 54.099014>,  <53.888557, 52.241833, 53.961857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.781857, 52.407372, 54.099014>,  <53.604019, 52.683266, 54.327610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.781857, 52.407372, 54.099014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879059, 0.213443, 0.426259,
		-0.172027, -0.691883, 0.701217,
		0.444591, -0.689739, -0.571488,
		53.915234, 52.200451, 53.927567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.124195, 52.463387, 54.817177>,  <53.604019, 52.683266, 54.327610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.124195, 52.463387, 54.817177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.216331, 52.366066, 54.440296>,  <54.271614, 52.307674, 54.214169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.216331, 52.366066, 54.440296>,  <54.124195, 52.463387, 54.817177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.216331, 52.366066, 54.440296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972675, 0.028588, 0.230404,
		-0.029121, -0.969530, 0.243234,
		0.230338, -0.243297, -0.942205,
		54.285435, 52.293076, 54.157635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.646591, 51.927967, 54.928322>,  <54.124195, 52.463387, 54.817177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.646591, 51.927967, 54.928322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.649826, 52.087387, 54.561478>,  <54.651768, 52.183037, 54.341370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.649826, 52.087387, 54.561478>,  <54.646591, 51.927967, 54.928322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.649826, 52.087387, 54.561478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979798, 0.180117, 0.086914,
		0.199827, -0.899287, -0.389039,
		0.008088, 0.398548, -0.917112,
		54.652252, 52.206951, 54.286343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.120728, 51.634590, 54.424671>,  <54.646591, 51.927967, 54.928322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.120728, 51.634590, 54.424671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.036469, 52.025486, 54.414566>,  <54.985912, 52.260021, 54.408501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.036469, 52.025486, 54.414566>,  <55.120728, 51.634590, 54.424671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.036469, 52.025486, 54.414566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977284, 0.211133, 0.018390,
		0.023306, -0.020817, -0.999512,
		-0.210647, 0.977236, -0.025265,
		54.973274, 52.318657, 54.406986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.465443, 51.889137, 53.899502>,  <55.120728, 51.634590, 54.424671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.465443, 51.889137, 53.899502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655228, 51.539124, 53.937866>,  <55.769096, 51.329113, 53.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655228, 51.539124, 53.937866>,  <55.465443, 51.889137, 53.899502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.655228, 51.539124, 53.937866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735105, 0.333917, -0.590018,
		0.484262, 0.350443, 0.801674,
		0.474460, -0.875037, 0.095909,
		55.797565, 51.276611, 53.966640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.219627, 51.908081, 53.889519>,  <55.465443, 51.889137, 53.899502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.219627, 51.908081, 53.889519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163475, 51.557968, 53.704399>,  <56.129784, 51.347900, 53.593327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163475, 51.557968, 53.704399>,  <56.219627, 51.908081, 53.889519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.163475, 51.557968, 53.704399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814235, 0.163882, -0.556923,
		0.563307, -0.455006, 0.689677,
		-0.140378, -0.875279, -0.462797,
		56.121361, 51.295383, 53.565559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.731171, 51.340694, 53.994728>,  <56.219627, 51.908081, 53.889519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.731171, 51.340694, 53.994728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543991, 51.368092, 53.642288>,  <56.431683, 51.384529, 53.430824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.543991, 51.368092, 53.642288>,  <56.731171, 51.340694, 53.994728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.543991, 51.368092, 53.642288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793354, 0.471826, -0.384669,
		0.389378, -0.879027, -0.275129,
		-0.467948, 0.068493, -0.881098,
		56.403606, 51.388638, 53.377960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.199257, 50.924107, 53.469795>,  <56.731171, 51.340694, 53.994728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.199257, 50.924107, 53.469795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.011093, 51.257034, 53.352524>,  <56.898193, 51.456791, 53.282162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.011093, 51.257034, 53.352524>,  <57.199257, 50.924107, 53.469795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.011093, 51.257034, 53.352524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875725, 0.399372, -0.271307,
		-0.108727, -0.384371, -0.916754,
		-0.470409, 0.832322, -0.293181,
		56.869972, 51.506729, 53.264568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.272621, 51.042973, 52.721035>,  <57.199257, 50.924107, 53.469795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.272621, 51.042973, 52.721035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.242355, 51.361267, 52.961395>,  <57.224194, 51.552242, 53.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.242355, 51.361267, 52.961395>,  <57.272621, 51.042973, 52.721035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.242355, 51.361267, 52.961395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962961, 0.214727, -0.163088,
		-0.258804, 0.566301, -0.782511,
		-0.075669, 0.795736, 0.600898,
		57.219654, 51.599987, 53.141666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.626640, 51.573792, 52.421288>,  <57.272621, 51.042973, 52.721035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.626640, 51.573792, 52.421288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.619797, 51.652451, 52.813416>,  <57.615692, 51.699646, 53.048695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.619797, 51.652451, 52.813416>,  <57.626640, 51.573792, 52.421288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.619797, 51.652451, 52.813416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982035, 0.187582, -0.020490,
		-0.187920, 0.962363, -0.196325,
		-0.017108, 0.196649, 0.980325,
		57.614666, 51.711445, 53.107513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.184120, 51.785927, 52.444416>,  <57.626640, 51.573792, 52.421288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.184120, 51.785927, 52.444416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.063202, 51.848404, 52.820549>,  <57.990650, 51.885891, 53.046227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.063202, 51.848404, 52.820549>,  <58.184120, 51.785927, 52.444416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.063202, 51.848404, 52.820549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922872, 0.294873, 0.247703,
		-0.238587, 0.942684, -0.233289,
		-0.302297, 0.156197, 0.940329,
		57.972511, 51.895264, 53.102650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.613098, 52.415760, 52.671638>,  <58.184120, 51.785927, 52.444416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.613098, 52.415760, 52.671638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.543945, 52.204636, 53.004272>,  <58.502453, 52.077961, 53.203854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.543945, 52.204636, 53.004272>,  <58.613098, 52.415760, 52.671638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.543945, 52.204636, 53.004272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924331, 0.204661, 0.322065,
		-0.340181, 0.824339, 0.452485,
		-0.172885, -0.527807, 0.831583,
		58.492081, 52.046295, 53.253746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.293011, 52.458447, 52.870178>,  <58.613098, 52.415760, 52.671638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.293011, 52.458447, 52.870178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.079773, 52.305954, 53.172298>,  <58.951832, 52.214458, 53.353569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.079773, 52.305954, 53.172298>,  <59.293011, 52.458447, 52.870178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.079773, 52.305954, 53.172298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845437, -0.274164, 0.458334,
		0.032346, 0.882892, 0.468461,
		-0.533095, -0.381229, 0.755298,
		58.919846, 52.191586, 53.398888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.725357, 52.528534, 52.250378>,  <59.293011, 52.458447, 52.870178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.725357, 52.528534, 52.250378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.809448, 52.389053, 52.615719>,  <59.859905, 52.305363, 52.834923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.809448, 52.389053, 52.615719>,  <59.725357, 52.528534, 52.250378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.809448, 52.389053, 52.615719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888360, 0.458196, -0.029544,
		-0.408191, 0.817594, 0.406103,
		0.210230, -0.348706, 0.913350,
		59.872517, 52.284443, 52.889725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.099087, 53.069859, 52.694923>,  <59.725357, 52.528534, 52.250378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.099087, 53.069859, 52.694923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.208450, 52.723816, 52.863136>,  <60.274067, 52.516190, 52.964062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.208450, 52.723816, 52.863136>,  <60.099087, 53.069859, 52.694923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.208450, 52.723816, 52.863136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942709, 0.327879, 0.061606,
		-0.191178, 0.379591, 0.905186,
		0.273406, -0.865104, 0.420528,
		60.290474, 52.464283, 52.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.455956, 53.142654, 53.333984>,  <60.099087, 53.069859, 52.694923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.455956, 53.142654, 53.333984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.580658, 52.823460, 53.127674>,  <60.655479, 52.631943, 53.003887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.580658, 52.823460, 53.127674>,  <60.455956, 53.142654, 53.333984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.580658, 52.823460, 53.127674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925711, 0.377443, -0.024422,
		0.214163, -0.469844, 0.856376,
		0.311759, -0.797987, -0.515774,
		60.674187, 52.584064, 52.972942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.041027, 52.862061, 53.723804>,  <60.455956, 53.142654, 53.333984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.041027, 52.862061, 53.723804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.080673, 52.727390, 53.349247>,  <61.104462, 52.646587, 53.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.080673, 52.727390, 53.349247>,  <61.041027, 52.862061, 53.723804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.080673, 52.727390, 53.349247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990523, 0.123298, 0.060511,
		0.095082, -0.933513, 0.345707,
		0.099113, -0.336677, -0.936389,
		61.110409, 52.626389, 53.068329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.342442, 53.566948, 53.622646>,  <61.041027, 52.862061, 53.723804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.342442, 53.566948, 53.622646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487297, 53.206894, 53.525810>,  <61.574211, 52.990860, 53.467709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487297, 53.206894, 53.525810>,  <61.342442, 53.566948, 53.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.487297, 53.206894, 53.525810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151082, 0.199602, -0.968160,
		0.919799, 0.387183, -0.063711,
		0.362138, -0.900138, -0.242090,
		61.595940, 52.936852, 53.453182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.911118, 53.365784, 54.105293>,  <61.342442, 53.566948, 53.622646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.911118, 53.365784, 54.105293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.620407, 53.120312, 54.228706>,  <61.445980, 52.973026, 54.302753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.620407, 53.120312, 54.228706>,  <61.911118, 53.365784, 54.105293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.620407, 53.120312, 54.228706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394476, -0.740631, -0.543925,
		0.562307, -0.273602, 0.780355,
		-0.726774, -0.613684, 0.308533,
		61.402374, 52.936207, 54.321266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.482002, 53.151764, 54.564274>,  <61.911118, 53.365784, 54.105293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.482002, 53.151764, 54.564274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.114899, 53.191650, 54.718040>,  <61.894638, 53.215584, 54.810299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.114899, 53.191650, 54.718040>,  <62.482002, 53.151764, 54.564274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.114899, 53.191650, 54.718040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264431, -0.568748, 0.778847,
		0.296301, 0.816445, 0.495605,
		-0.917759, 0.099720, 0.384413,
		61.839569, 53.221565, 54.833366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.567558, 53.217464, 55.276447>,  <62.482002, 53.151764, 54.564274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.567558, 53.217464, 55.276447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.223816, 53.050304, 55.158562>,  <62.017570, 52.950008, 55.087830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.223816, 53.050304, 55.158562>,  <62.567558, 53.217464, 55.276447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.223816, 53.050304, 55.158562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056238, -0.495597, 0.866730,
		-0.508268, 0.761408, 0.402394,
		-0.859361, -0.417901, -0.294716,
		61.966007, 52.924934, 55.070148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.819321, 53.325100, 55.884617>,  <62.567558, 53.217464, 55.276447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.819321, 53.325100, 55.884617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.118660, 53.060791, 55.861427>,  <63.298264, 52.902206, 55.847511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.118660, 53.060791, 55.861427>,  <62.819321, 53.325100, 55.884617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.118660, 53.060791, 55.861427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275407, 0.230013, 0.933405,
		-0.603429, -0.714478, 0.354110,
		0.748348, -0.660768, -0.057976,
		63.343163, 52.862560, 55.844036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.326500, 53.845470, 55.630306>,  <62.819321, 53.325100, 55.884617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.326500, 53.845470, 55.630306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.318672, 54.181190, 55.847633>,  <63.313976, 54.382622, 55.978031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.318672, 54.181190, 55.847633>,  <63.326500, 53.845470, 55.630306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.318672, 54.181190, 55.847633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901194, -0.220526, 0.373118,
		0.432973, 0.496935, -0.752057,
		-0.019567, 0.839300, 0.543317,
		63.312801, 54.432980, 56.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.823486, 54.519154, 55.560329>,  <63.326500, 53.845470, 55.630306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.823486, 54.519154, 55.560329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.750031, 54.476242, 55.951180>,  <63.705956, 54.450497, 56.185688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.750031, 54.476242, 55.951180>,  <63.823486, 54.519154, 55.560329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.750031, 54.476242, 55.951180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980472, -0.091132, 0.174266,
		0.070353, 0.990044, 0.121915,
		-0.183642, -0.107274, 0.977122,
		63.694939, 54.444061, 56.244316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.200806, 55.112206, 55.936504>,  <63.823486, 54.519154, 55.560329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.200806, 55.112206, 55.936504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.124855, 54.784988, 56.153671>,  <64.079285, 54.588657, 56.283970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.124855, 54.784988, 56.153671>,  <64.200806, 55.112206, 55.936504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.124855, 54.784988, 56.153671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951419, -0.016788, 0.307442,
		-0.242385, 0.574914, 0.781488,
		-0.189872, -0.818041, 0.542915,
		64.067894, 54.539577, 56.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.780724, 54.766636, 55.594643>,  <64.200806, 55.112206, 55.936504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.780724, 54.766636, 55.594643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622871, 54.915970, 55.258812>,  <64.528160, 55.005569, 55.057312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622871, 54.915970, 55.258812>,  <64.780724, 54.766636, 55.594643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.622871, 54.915970, 55.258812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871341, -0.442042, 0.212988,
		-0.291614, 0.815611, 0.499741,
		-0.394622, 0.373334, -0.839581,
		64.504486, 55.027969, 55.006939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.796806, 55.056553, 56.315052>,  <64.780724, 54.766636, 55.594643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.796806, 55.056553, 56.315052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574440, 54.740524, 56.418388>,  <64.441017, 54.550907, 56.480389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.574440, 54.740524, 56.418388>,  <64.796806, 55.056553, 56.315052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.574440, 54.740524, 56.418388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754399, -0.349045, 0.555922,
		-0.349045, 0.503940, 0.790071,
		-0.555922, -0.790071, 0.258339,
		64.407661, 54.503502, 56.495892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.525841, 55.483337, 56.484562>,  <64.796806, 55.056553, 56.315052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.525841, 55.483337, 56.484562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.279625, 55.219383, 56.656914>,  <65.131897, 55.061012, 56.760326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.279625, 55.219383, 56.656914>,  <65.525841, 55.483337, 56.484562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.279625, 55.219383, 56.656914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651842, -0.118997, 0.748961,
		-0.442951, 0.741887, 0.503386,
		-0.615546, -0.659881, 0.430883,
		65.094963, 55.021420, 56.786179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.239250, 55.671093, 57.186180>,  <65.525841, 55.483337, 56.484562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.239250, 55.671093, 57.186180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.220078, 55.271759, 57.173363>,  <65.208572, 55.032158, 57.165672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.220078, 55.271759, 57.173363>,  <65.239250, 55.671093, 57.186180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.220078, 55.271759, 57.173363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728646, -0.056889, 0.682524,
		-0.683211, 0.009366, 0.730161,
		-0.047930, -0.998337, -0.032043,
		65.205696, 54.972260, 57.163750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.143372, 55.266621, 57.880657>,  <65.239250, 55.671093, 57.186180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.143372, 55.266621, 57.880657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385902, 55.049797, 57.647919>,  <65.531425, 54.919704, 57.508278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.385902, 55.049797, 57.647919>,  <65.143372, 55.266621, 57.880657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.385902, 55.049797, 57.647919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727717, 0.083228, 0.680809,
		-0.320610, -0.836212, 0.444926,
		0.606331, -0.542055, -0.581842,
		65.567802, 54.887180, 57.473366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.379868, 54.636559, 58.126064>,  <65.143372, 55.266621, 57.880657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.379868, 54.636559, 58.126064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.662758, 54.779434, 57.882019>,  <65.832497, 54.865158, 57.735592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.662758, 54.779434, 57.882019>,  <65.379868, 54.636559, 58.126064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.662758, 54.779434, 57.882019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641618, 0.038133, 0.766076,
		0.296900, -0.933253, -0.202211,
		0.707232, 0.357190, -0.610114,
		65.874924, 54.886593, 57.698986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.945129, 54.492340, 58.544262>,  <65.379868, 54.636559, 58.126064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.945129, 54.492340, 58.544262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.119713, 54.709648, 58.257385>,  <66.224464, 54.840031, 58.085258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.119713, 54.709648, 58.257385>,  <65.945129, 54.492340, 58.544262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.119713, 54.709648, 58.257385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868592, -0.046555, 0.493335,
		0.234624, -0.838269, -0.492197,
		0.436462, 0.543267, -0.717191,
		66.250648, 54.872627, 58.042229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.460648, 54.125908, 58.081554>,  <65.945129, 54.492340, 58.544262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.460648, 54.125908, 58.081554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.510010, 54.504143, 58.201973>,  <66.539627, 54.731083, 58.274223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.510010, 54.504143, 58.201973>,  <66.460648, 54.125908, 58.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.510010, 54.504143, 58.201973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861975, -0.252458, 0.439619,
		0.491701, 0.205237, -0.846232,
		0.123412, 0.945591, 0.301043,
		66.547035, 54.787819, 58.292286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.166840, 54.452782, 57.894917>,  <66.460648, 54.125908, 58.081554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.166840, 54.452782, 57.894917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013847, 54.561951, 58.248009>,  <66.922050, 54.627453, 58.459866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.013847, 54.561951, 58.248009>,  <67.166840, 54.452782, 57.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.013847, 54.561951, 58.248009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860805, -0.241891, 0.447777,
		0.335734, 0.931129, -0.142414,
		-0.382490, 0.272924, 0.882731,
		66.899101, 54.643829, 58.512829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.497658, 55.155106, 58.329334>,  <67.166840, 54.452782, 57.894917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.497658, 55.155106, 58.329334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.381645, 54.852413, 58.563683>,  <67.312035, 54.670799, 58.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.381645, 54.852413, 58.563683>,  <67.497658, 55.155106, 58.329334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.381645, 54.852413, 58.563683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880429, 0.028977, 0.473291,
		-0.375129, 0.653088, 0.657840,
		-0.290039, -0.756727, 0.585868,
		67.294632, 54.625397, 58.739445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.836205, 55.228264, 58.940956>,  <67.497658, 55.155106, 58.329334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.836205, 55.228264, 58.940956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.684059, 54.859566, 58.971169>,  <67.592773, 54.638348, 58.989296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.684059, 54.859566, 58.971169>,  <67.836205, 55.228264, 58.940956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.684059, 54.859566, 58.971169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738050, -0.253312, 0.625392,
		-0.557322, 0.293619, 0.776646,
		-0.380361, -0.921749, 0.075529,
		67.569954, 54.583042, 58.993828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.814240, 55.140160, 59.637653>,  <67.836205, 55.228264, 58.940956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.814240, 55.140160, 59.637653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.823647, 54.775627, 59.473251>,  <67.829292, 54.556908, 59.374611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.823647, 54.775627, 59.473251>,  <67.814240, 55.140160, 59.637653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.823647, 54.775627, 59.473251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748698, -0.256379, 0.611328,
		-0.662494, -0.322099, 0.676279,
		0.023525, -0.911330, -0.411004,
		67.830704, 54.502228, 59.349949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.089859, 55.015038, 60.362083>,  <67.814240, 55.140160, 59.637653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.089859, 55.015038, 60.362083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.920456, 55.089081, 60.716797>,  <67.818817, 55.133507, 60.929626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.920456, 55.089081, 60.716797>,  <68.089859, 55.015038, 60.362083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.920456, 55.089081, 60.716797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898781, -0.036589, 0.436868,
		0.113314, 0.982037, -0.150877,
		-0.423500, 0.185108, 0.886782,
		67.793404, 55.144615, 60.982830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.394501, 55.682720, 60.629929>,  <68.089859, 55.015038, 60.362083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.394501, 55.682720, 60.629929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.275803, 55.420334, 60.907532>,  <68.204582, 55.262901, 61.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.275803, 55.420334, 60.907532>,  <68.394501, 55.682720, 60.629929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.275803, 55.420334, 60.907532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939874, -0.071966, 0.333852,
		-0.169051, 0.751350, 0.637883,
		-0.296746, -0.655968, 0.694009,
		68.186775, 55.223545, 61.115734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.662544, 55.819595, 61.305984>,  <68.394501, 55.682720, 60.629929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.662544, 55.819595, 61.305984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.582298, 55.427952, 61.292747>,  <68.534149, 55.192966, 61.284805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.582298, 55.427952, 61.292747>,  <68.662544, 55.819595, 61.305984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.582298, 55.427952, 61.292747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900942, -0.197651, 0.386313,
		-0.384784, 0.047684, 0.921774,
		-0.200610, -0.979112, -0.033092,
		68.522118, 55.134216, 61.282818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.000305, 55.477600, 61.873966>,  <68.662544, 55.819595, 61.305984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.000305, 55.477600, 61.873966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.941376, 55.194000, 61.598106>,  <68.906021, 55.023842, 61.432590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.941376, 55.194000, 61.598106>,  <69.000305, 55.477600, 61.873966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.941376, 55.194000, 61.598106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864894, -0.430609, 0.257942,
		-0.479850, -0.558476, 0.676645,
		-0.147315, -0.709000, -0.689650,
		68.897179, 54.981300, 61.391212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.103851, 54.881344, 62.231564>,  <69.000305, 55.477600, 61.873966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.103851, 54.881344, 62.231564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.176727, 54.877041, 61.838280>,  <69.220451, 54.874458, 61.602310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.176727, 54.877041, 61.838280>,  <69.103851, 54.881344, 62.231564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.176727, 54.877041, 61.838280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971803, -0.150262, 0.181715,
		-0.149690, -0.988588, -0.016939,
		0.182187, -0.010740, -0.983205,
		69.231384, 54.873814, 61.543320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.726479, 54.651806, 62.091599>,  <69.103851, 54.881344, 62.231564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.726479, 54.651806, 62.091599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.704704, 54.767216, 61.709229>,  <69.691643, 54.836464, 61.479809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.704704, 54.767216, 61.709229>,  <69.726479, 54.651806, 62.091599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.704704, 54.767216, 61.709229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983719, 0.179702, -0.001776,
		0.171268, -0.940457, -0.293612,
		-0.054433, 0.288527, -0.955923,
		69.688377, 54.853775, 61.422451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.228226, 54.281364, 61.759220>,  <69.726479, 54.651806, 62.091599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.228226, 54.281364, 61.759220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.148003, 54.618587, 61.559608>,  <70.099869, 54.820919, 61.439842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.148003, 54.618587, 61.559608>,  <70.228226, 54.281364, 61.759220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.148003, 54.618587, 61.559608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946854, 0.297568, 0.122154,
		0.251478, -0.448009, -0.857932,
		-0.200567, 0.843055, -0.499030,
		70.087830, 54.871506, 61.409901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.798347, 54.472546, 61.218815>,  <70.228226, 54.281364, 61.759220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.798347, 54.472546, 61.218815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.649399, 54.821426, 61.345688>,  <70.560028, 55.030754, 61.421814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.649399, 54.821426, 61.345688>,  <70.798347, 54.472546, 61.218815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.649399, 54.821426, 61.345688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922372, 0.385654, 0.022393,
		-0.102794, 0.300903, -0.948099,
		-0.372376, 0.872198, 0.317187,
		70.537689, 55.083084, 61.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.222794, 54.948109, 60.859573>,  <70.798347, 54.472546, 61.218815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.222794, 54.948109, 60.859573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.031868, 55.153225, 61.145012>,  <70.917313, 55.276295, 61.316277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.031868, 55.153225, 61.145012>,  <71.222794, 54.948109, 60.859573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.031868, 55.153225, 61.145012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784829, 0.614033, 0.083710,
		-0.395245, 0.600006, -0.695539,
		-0.477310, 0.512793, 0.713595,
		70.888672, 55.307064, 61.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.023071, 54.381474, 60.413273>,  <71.222794, 54.948109, 60.859573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.023071, 54.381474, 60.413273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.776421, 54.688023, 60.485336>,  <70.628433, 54.871952, 60.528572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.776421, 54.688023, 60.485336>,  <71.023071, 54.381474, 60.413273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.776421, 54.688023, 60.485336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021991, 0.211983, -0.977026,
		-0.786955, -0.606414, -0.113860,
		-0.616619, 0.766371, 0.180157,
		70.591438, 54.917934, 60.539383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.413780, 54.416279, 59.898125>,  <71.023071, 54.381474, 60.413273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.413780, 54.416279, 59.898125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.438187, 54.790352, 60.037674>,  <70.452827, 55.014797, 60.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.438187, 54.790352, 60.037674>,  <70.413780, 54.416279, 59.898125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.438187, 54.790352, 60.037674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074596, 0.344272, -0.935902,
		-0.995346, 0.083121, -0.048758,
		0.061007, 0.935183, 0.348870,
		70.456490, 55.070908, 60.142334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.363106, 55.014473, 59.578564>,  <70.413780, 54.416279, 59.898125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.363106, 55.014473, 59.578564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.679008, 54.940487, 59.344620>,  <70.868553, 54.896095, 59.204254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.679008, 54.940487, 59.344620>,  <70.363106, 55.014473, 59.578564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.679008, 54.940487, 59.344620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539584, 0.662972, 0.518958,
		0.291752, -0.725434, 0.623399,
		0.789765, -0.184969, -0.584856,
		70.915939, 54.884995, 59.169163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.964256, 55.460079, 59.589478>,  <70.363106, 55.014473, 59.578564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.964256, 55.460079, 59.589478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.953148, 55.538937, 59.197487>,  <70.946480, 55.586250, 58.962292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.953148, 55.538937, 59.197487>,  <70.964256, 55.460079, 59.589478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.953148, 55.538937, 59.197487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999613, -0.006976, 0.026929,
		-0.001527, 0.980350, 0.197261,
		-0.027775, 0.197143, -0.979981,
		70.944817, 55.598080, 58.903492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.641762, 55.864422, 59.824451>,  <70.964256, 55.460079, 59.589478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.641762, 55.864422, 59.824451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.518631, 56.239346, 59.889801>,  <71.444756, 56.464302, 59.929008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.518631, 56.239346, 59.889801>,  <71.641762, 55.864422, 59.824451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.518631, 56.239346, 59.889801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392886, -0.031159, 0.919059,
		0.866535, 0.347098, -0.358665,
		-0.307828, 0.937311, 0.163371,
		71.426285, 56.520538, 59.938812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.275856, 56.276546, 60.016483>,  <71.641762, 55.864422, 59.824451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.275856, 56.276546, 60.016483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.921272, 56.388992, 60.163544>,  <71.708519, 56.456459, 60.251781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.921272, 56.388992, 60.163544>,  <72.275856, 56.276546, 60.016483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.921272, 56.388992, 60.163544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341431, -0.139061, 0.929563,
		0.312441, 0.949545, 0.027290,
		-0.886457, 0.281116, 0.367653,
		71.655334, 56.473328, 60.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.464561, 56.633450, 60.724655>,  <72.275856, 56.276546, 60.016483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.464561, 56.633450, 60.724655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.071053, 56.568607, 60.755440>,  <71.834946, 56.529701, 60.773911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.071053, 56.568607, 60.755440>,  <72.464561, 56.633450, 60.724655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.071053, 56.568607, 60.755440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079357, -0.008348, 0.996811,
		-0.160945, 0.986738, 0.021077,
		-0.983768, -0.162105, 0.076961,
		71.775925, 56.519978, 60.778526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.034737, 57.111927, 60.692497>,  <72.464561, 56.633450, 60.724655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.034737, 57.111927, 60.692497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.161522, 57.457394, 60.535721>,  <73.237595, 57.664673, 60.441654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.161522, 57.457394, 60.535721>,  <73.034737, 57.111927, 60.692497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.161522, 57.457394, 60.535721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941380, 0.336803, -0.019150,
		0.115467, 0.375033, 0.919792,
		0.316971, 0.863663, -0.391938,
		73.256615, 57.716492, 60.418140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.757050, 57.618851, 61.029144>,  <73.034737, 57.111927, 60.692497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.757050, 57.618851, 61.029144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.862434, 57.808002, 60.692818>,  <72.925667, 57.921494, 60.491020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.862434, 57.808002, 60.692818>,  <72.757050, 57.618851, 61.029144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.862434, 57.808002, 60.692818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897225, 0.440298, -0.033522,
		0.354358, 0.763233, 0.540283,
		0.263471, 0.472877, -0.840816,
		72.941475, 57.949867, 60.440575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
