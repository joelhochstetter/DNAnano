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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<39.956608, 33.986931, 50.378906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984329, 33.886631, 49.992680>,  <40.000961, 33.826450, 49.760944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984329, 33.886631, 49.992680>,  <39.956608, 33.986931, 50.378906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984329, 33.886631, 49.992680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963147, -0.235340, 0.130246,
		-0.259896, -0.939010, 0.225200,
		0.069304, -0.250751, -0.965568,
		40.005119, 33.811405, 49.703011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147396, 33.319908, 50.254871>,  <39.956608, 33.986931, 50.378906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147396, 33.319908, 50.254871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270523, 33.502655, 49.921040>,  <40.344398, 33.612305, 49.720741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270523, 33.502655, 49.921040>,  <40.147396, 33.319908, 50.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270523, 33.502655, 49.921040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951199, -0.167754, 0.258996,
		-0.021675, -0.873571, -0.486213,
		0.307816, 0.456872, -0.834576,
		40.362869, 33.639717, 49.670666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714020, 32.883186, 49.963482>,  <40.147396, 33.319908, 50.254871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714020, 32.883186, 49.963482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748417, 33.241222, 49.788475>,  <40.769054, 33.456043, 49.683472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748417, 33.241222, 49.788475>,  <40.714020, 32.883186, 49.963482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748417, 33.241222, 49.788475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975542, 0.013519, 0.219395,
		0.202293, -0.445684, -0.872034,
		0.085992, 0.895088, -0.437518,
		40.774216, 33.509750, 49.657219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262478, 32.876087, 49.353146>,  <40.714020, 32.883186, 49.963482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262478, 32.876087, 49.353146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231689, 33.247566, 49.498253>,  <41.213219, 33.470451, 49.585320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231689, 33.247566, 49.498253>,  <41.262478, 32.876087, 49.353146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231689, 33.247566, 49.498253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993314, 0.040026, 0.108285,
		0.086044, 0.368682, -0.925565,
		-0.076969, 0.928694, 0.362773,
		41.208599, 33.526173, 49.607086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713276, 33.271992, 48.919956>,  <41.262478, 32.876087, 49.353146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713276, 33.271992, 48.919956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664619, 33.536762, 49.215809>,  <41.635426, 33.695625, 49.393322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664619, 33.536762, 49.215809>,  <41.713276, 33.271992, 48.919956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664619, 33.536762, 49.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977110, 0.210879, -0.028029,
		-0.174526, 0.719293, -0.672427,
		-0.121639, 0.661927, 0.739633,
		41.628128, 33.735340, 49.437698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074913, 33.863720, 48.666321>,  <41.713276, 33.271992, 48.919956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074913, 33.863720, 48.666321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030384, 33.916100, 49.060368>,  <42.003666, 33.947529, 49.296795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030384, 33.916100, 49.060368>,  <42.074913, 33.863720, 48.666321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030384, 33.916100, 49.060368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992340, -0.038783, 0.117291,
		0.053565, 0.990630, -0.125630,
		-0.111320, 0.130950, 0.985119,
		41.996986, 33.955383, 49.355904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380196, 34.470425, 48.860577>,  <42.074913, 33.863720, 48.666321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380196, 34.470425, 48.860577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372707, 34.264904, 49.203659>,  <42.368214, 34.141590, 49.409508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372707, 34.264904, 49.203659>,  <42.380196, 34.470425, 48.860577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372707, 34.264904, 49.203659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974213, 0.183548, 0.131221,
		-0.224852, 0.838042, 0.497120,
		-0.018724, -0.513806, 0.857702,
		42.367092, 34.110764, 49.460968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645145, 34.954662, 49.422844>,  <42.380196, 34.470425, 48.860577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645145, 34.954662, 49.422844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704006, 34.579777, 49.549316>,  <42.739323, 34.354843, 49.625198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704006, 34.579777, 49.549316>,  <42.645145, 34.954662, 49.422844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704006, 34.579777, 49.549316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884266, 0.267883, 0.382508,
		-0.443192, 0.223300, 0.868169,
		0.147154, -0.937217, 0.316180,
		42.748154, 34.298611, 49.644169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943081, 35.058643, 50.052418>,  <42.645145, 34.954662, 49.422844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943081, 35.058643, 50.052418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040318, 34.682056, 49.959003>,  <43.098660, 34.456104, 49.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040318, 34.682056, 49.959003>,  <42.943081, 35.058643, 50.052418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040318, 34.682056, 49.959003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947260, 0.178584, 0.266094,
		-0.208813, -0.285907, 0.935230,
		0.243095, -0.941470, -0.233538,
		43.113247, 34.399616, 49.888943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363426, 34.854214, 50.594048>,  <42.943081, 35.058643, 50.052418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363426, 34.854214, 50.594048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450493, 34.575775, 50.320385>,  <43.502735, 34.408710, 50.156189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450493, 34.575775, 50.320385>,  <43.363426, 34.854214, 50.594048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450493, 34.575775, 50.320385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957008, 0.014532, 0.289697,
		-0.191715, -0.717800, 0.669335,
		0.217671, -0.696098, -0.684154,
		43.515793, 34.366947, 50.115139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735203, 34.372803, 50.980427>,  <43.363426, 34.854214, 50.594048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735203, 34.372803, 50.980427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839848, 34.292000, 50.602909>,  <43.902634, 34.243519, 50.376396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839848, 34.292000, 50.602909>,  <43.735203, 34.372803, 50.980427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839848, 34.292000, 50.602909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951462, -0.110260, 0.287337,
		-0.162109, -0.973157, 0.163361,
		0.261612, -0.202012, -0.943796,
		43.918331, 34.231396, 50.319771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137215, 33.778931, 50.935326>,  <43.735203, 34.372803, 50.980427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137215, 33.778931, 50.935326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229034, 34.009975, 50.621979>,  <44.284126, 34.148602, 50.433971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229034, 34.009975, 50.621979>,  <44.137215, 33.778931, 50.935326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229034, 34.009975, 50.621979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971521, -0.087380, 0.220254,
		0.058771, -0.811620, -0.581223,
		0.229550, 0.577614, -0.783370,
		44.297901, 34.183258, 50.386967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767906, 33.495480, 50.761097>,  <44.137215, 33.778931, 50.935326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767906, 33.495480, 50.761097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766823, 33.830719, 50.542892>,  <44.766174, 34.031864, 50.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766823, 33.830719, 50.542892>,  <44.767906, 33.495480, 50.761097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766823, 33.830719, 50.542892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987515, 0.088160, 0.130545,
		0.157502, -0.538349, -0.827873,
		-0.002707, 0.838098, -0.545513,
		44.766010, 34.082150, 50.379238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377975, 33.417267, 50.277794>,  <44.767906, 33.495480, 50.761097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377975, 33.417267, 50.277794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279934, 33.804073, 50.305523>,  <45.221107, 34.036156, 50.322159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.279934, 33.804073, 50.305523>,  <45.377975, 33.417267, 50.277794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.279934, 33.804073, 50.305523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968407, 0.247593, -0.029747,
		-0.045929, 0.059838, -0.997151,
		-0.245108, 0.967014, 0.069319,
		45.206402, 34.094177, 50.326317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786545, 33.666786, 49.733509>,  <45.377975, 33.417267, 50.277794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786545, 33.666786, 49.733509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709206, 33.982487, 49.966644>,  <45.662800, 34.171909, 50.106525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709206, 33.982487, 49.966644>,  <45.786545, 33.666786, 49.733509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709206, 33.982487, 49.966644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972455, 0.232980, 0.007112,
		-0.130175, 0.568155, -0.812561,
		-0.193352, 0.789253, 0.582834,
		45.651199, 34.219261, 50.141495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226418, 34.345188, 49.552498>,  <45.786545, 33.666786, 49.733509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226418, 34.345188, 49.552498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127052, 34.385464, 49.937862>,  <46.067432, 34.409630, 50.169079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127052, 34.385464, 49.937862>,  <46.226418, 34.345188, 49.552498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127052, 34.385464, 49.937862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924077, 0.322879, 0.204526,
		-0.290472, 0.941069, -0.173247,
		-0.248411, 0.100685, 0.963408,
		46.052528, 34.415668, 50.226883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593132, 34.880909, 49.711918>,  <46.226418, 34.345188, 49.552498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593132, 34.880909, 49.711918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494862, 34.719299, 50.064373>,  <46.435898, 34.622334, 50.275845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.494862, 34.719299, 50.064373>,  <46.593132, 34.880909, 49.711918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.494862, 34.719299, 50.064373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908365, 0.221374, 0.354777,
		-0.338400, 0.887557, 0.312615,
		-0.245680, -0.404025, 0.881139,
		46.421158, 34.598091, 50.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837112, 35.398983, 50.198452>,  <46.593132, 34.880909, 49.711918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837112, 35.398983, 50.198452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811695, 35.068138, 50.421822>,  <46.796444, 34.869629, 50.555843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811695, 35.068138, 50.421822>,  <46.837112, 35.398983, 50.198452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811695, 35.068138, 50.421822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829562, 0.267289, 0.490288,
		-0.554787, 0.494406, 0.669160,
		-0.063542, -0.827115, 0.558429,
		46.792633, 34.820004, 50.589352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868484, 35.634155, 50.858227>,  <46.837112, 35.398983, 50.198452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868484, 35.634155, 50.858227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992508, 35.255840, 50.896908>,  <47.066921, 35.028851, 50.920116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.992508, 35.255840, 50.896908>,  <46.868484, 35.634155, 50.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.992508, 35.255840, 50.896908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746394, 0.305163, 0.591415,
		-0.588861, -0.111199, 0.800548,
		0.310062, -0.945786, 0.096700,
		47.085526, 34.972103, 50.925919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159798, 35.644550, 51.559353>,  <46.868484, 35.634155, 50.858227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159798, 35.644550, 51.559353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291191, 35.327316, 51.354172>,  <47.370026, 35.136978, 51.231064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.291191, 35.327316, 51.354172>,  <47.159798, 35.644550, 51.559353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.291191, 35.327316, 51.354172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897697, 0.093290, 0.430625,
		-0.293668, -0.601929, 0.742591,
		0.328482, -0.793082, -0.512953,
		47.389736, 35.089390, 51.200287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489765, 35.243446, 52.104309>,  <47.159798, 35.644550, 51.559353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489765, 35.243446, 52.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657562, 35.161816, 51.750500>,  <47.758240, 35.112835, 51.538216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657562, 35.161816, 51.750500>,  <47.489765, 35.243446, 52.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657562, 35.161816, 51.750500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879259, 0.333585, 0.340035,
		0.225668, -0.920365, 0.319377,
		0.419496, -0.204080, -0.884519,
		47.783409, 35.100590, 51.485146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.228014, 34.506844, 52.080231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.229494, 34.896957, 51.991856>,  <24.230383, 35.131023, 51.938831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.229494, 34.896957, 51.991856>,  <24.228014, 34.506844, 52.080231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229494, 34.896957, 51.991856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900788, -0.099196, -0.422779,
		-0.434244, -0.197457, -0.878887,
		0.003702, 0.975280, -0.220942,
		24.230604, 35.189541, 51.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424658, 34.534462, 51.393158>,  <24.228014, 34.506844, 52.080231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424658, 34.534462, 51.393158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.544508, 34.873672, 51.568012>,  <24.616417, 35.077198, 51.672924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.544508, 34.873672, 51.568012>,  <24.424658, 34.534462, 51.393158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544508, 34.873672, 51.568012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905359, -0.108214, -0.410628,
		-0.300918, 0.518795, -0.800188,
		0.299623, 0.848022, 0.437132,
		24.634396, 35.128078, 51.699150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.786190, 34.959843, 50.923836>,  <24.424658, 34.534462, 51.393158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.786190, 34.959843, 50.923836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.919918, 35.073441, 51.283298>,  <25.000154, 35.141598, 51.498974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.919918, 35.073441, 51.283298>,  <24.786190, 34.959843, 50.923836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919918, 35.073441, 51.283298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942069, -0.128137, -0.309977,
		0.027120, 0.950226, -0.310380,
		0.334320, 0.283993, 0.898654,
		25.020214, 35.158638, 51.552895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459827, 35.469765, 50.810261>,  <24.786190, 34.959843, 50.923836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459827, 35.469765, 50.810261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.463383, 35.358833, 51.194553>,  <25.465517, 35.292274, 51.425129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.463383, 35.358833, 51.194553>,  <25.459827, 35.469765, 50.810261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463383, 35.358833, 51.194553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999531, 0.030608, -0.000413,
		-0.029292, 0.960286, 0.277474,
		0.008889, -0.277332, 0.960733,
		25.466049, 35.275635, 51.482773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096376, 35.884548, 51.095490>,  <25.459827, 35.469765, 50.810261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096376, 35.884548, 51.095490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.022551, 35.608047, 51.374950>,  <25.978254, 35.442146, 51.542625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.022551, 35.608047, 51.374950>,  <26.096376, 35.884548, 51.095490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022551, 35.608047, 51.374950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978136, -0.059867, 0.199165,
		-0.095847, 0.720133, 0.687184,
		-0.184565, -0.691249, 0.698649,
		25.967180, 35.400673, 51.584545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356777, 36.155018, 51.718555>,  <26.096376, 35.884548, 51.095490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356777, 36.155018, 51.718555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.338512, 35.755791, 51.701725>,  <26.327553, 35.516254, 51.691628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.338512, 35.755791, 51.701725>,  <26.356777, 36.155018, 51.718555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338512, 35.755791, 51.701725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989786, -0.050896, 0.133166,
		-0.135051, -0.035567, 0.990200,
		-0.045661, -0.998070, -0.042078,
		26.324814, 35.456371, 51.689102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684301, 35.932442, 52.301865>,  <26.356777, 36.155018, 51.718555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684301, 35.932442, 52.301865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.700266, 35.640537, 52.028851>,  <26.709845, 35.465397, 51.865040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.700266, 35.640537, 52.028851>,  <26.684301, 35.932442, 52.301865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700266, 35.640537, 52.028851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996193, -0.023920, 0.083827,
		-0.077501, -0.683286, 0.726026,
		0.039911, -0.729759, -0.682538,
		26.712238, 35.421608, 51.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265450, 35.663177, 52.423771>,  <26.684301, 35.932442, 52.301865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265450, 35.663177, 52.423771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.202917, 35.431522, 52.103733>,  <27.165398, 35.292530, 51.911709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.202917, 35.431522, 52.103733>,  <27.265450, 35.663177, 52.423771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202917, 35.431522, 52.103733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982637, -0.173144, -0.066672,
		-0.099920, -0.796629, 0.596152,
		-0.156333, -0.579140, -0.800098,
		27.156017, 35.257782, 51.863705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814705, 35.123924, 52.522377>,  <27.265450, 35.663177, 52.423771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814705, 35.123924, 52.522377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.710300, 35.120041, 52.136261>,  <27.647657, 35.117710, 51.904591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.710300, 35.120041, 52.136261>,  <27.814705, 35.123924, 52.522377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710300, 35.120041, 52.136261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955611, -0.144170, -0.256947,
		-0.136670, -0.989505, 0.046910,
		-0.261013, -0.009711, -0.965286,
		27.631996, 35.117126, 51.846676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116827, 34.494091, 52.188595>,  <27.814705, 35.123924, 52.522377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116827, 34.494091, 52.188595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.064676, 34.747822, 51.883797>,  <28.033386, 34.900059, 51.700920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.064676, 34.747822, 51.883797>,  <28.116827, 34.494091, 52.188595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064676, 34.747822, 51.883797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925630, -0.197514, -0.322796,
		-0.355262, -0.747409, -0.561399,
		-0.130377, 0.634325, -0.761993,
		28.025564, 34.938118, 51.655197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309296, 34.159153, 51.563004>,  <28.116827, 34.494091, 52.188595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309296, 34.159153, 51.563004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.325171, 34.550823, 51.483356>,  <28.334696, 34.785824, 51.435570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.325171, 34.550823, 51.483356>,  <28.309296, 34.159153, 51.563004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325171, 34.550823, 51.483356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920290, -0.113444, -0.374428,
		-0.389218, -0.168386, -0.905624,
		0.039689, 0.979171, -0.199119,
		28.337078, 34.844574, 51.423622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688173, 34.238522, 50.891632>,  <28.309296, 34.159153, 51.563004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688173, 34.238522, 50.891632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.722839, 34.601208, 51.056728>,  <28.743639, 34.818821, 51.155785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.722839, 34.601208, 51.056728>,  <28.688173, 34.238522, 50.891632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722839, 34.601208, 51.056728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987989, -0.025023, -0.152486,
		-0.127933, 0.421000, -0.897994,
		0.086666, 0.906716, 0.412742,
		28.748838, 34.873222, 51.180550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892548, 34.752380, 50.284344>,  <28.688173, 34.238522, 50.891632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892548, 34.752380, 50.284344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.997704, 34.888943, 50.645306>,  <29.060797, 34.970879, 50.861881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.997704, 34.888943, 50.645306>,  <28.892548, 34.752380, 50.284344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997704, 34.888943, 50.645306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954943, 0.041456, -0.293880,
		-0.137742, 0.939001, -0.315125,
		0.262890, 0.341406, 0.902403,
		29.076571, 34.991364, 50.916027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273748, 35.311249, 50.150467>,  <28.892548, 34.752380, 50.284344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273748, 35.311249, 50.150467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.369900, 35.213711, 50.526287>,  <29.427591, 35.155190, 50.751781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.369900, 35.213711, 50.526287>,  <29.273748, 35.311249, 50.150467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369900, 35.213711, 50.526287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970037, 0.095555, -0.223378,
		-0.035310, 0.965096, 0.259503,
		0.240378, -0.243840, 0.939553,
		29.442013, 35.140560, 50.808151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731411, 35.820843, 50.340626>,  <29.273748, 35.311249, 50.150467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731411, 35.820843, 50.340626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.813944, 35.510414, 50.579002>,  <29.863464, 35.324158, 50.722027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.813944, 35.510414, 50.579002>,  <29.731411, 35.820843, 50.340626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813944, 35.510414, 50.579002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962233, 0.050398, -0.267522,
		0.177581, 0.628633, 0.757156,
		0.206332, -0.776067, 0.595942,
		29.875843, 35.277596, 50.757786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364664, 36.008228, 50.660816>,  <29.731411, 35.820843, 50.340626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364664, 36.008228, 50.660816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.349394, 35.614052, 50.727077>,  <30.340233, 35.377544, 50.766834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.349394, 35.614052, 50.727077>,  <30.364664, 36.008228, 50.660816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349394, 35.614052, 50.727077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926384, -0.097053, -0.363860,
		0.374641, 0.139573, 0.916604,
		-0.038174, -0.985444, 0.165658,
		30.337942, 35.318420, 50.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040287, 35.788288, 50.768730>,  <30.364664, 36.008228, 50.660816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040287, 35.788288, 50.768730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883562, 35.429482, 50.686913>,  <30.789526, 35.214195, 50.637821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.883562, 35.429482, 50.686913>,  <31.040287, 35.788288, 50.768730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883562, 35.429482, 50.686913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866954, -0.285537, -0.408484,
		0.308013, -0.337380, 0.889552,
		-0.391814, -0.897019, -0.204544,
		30.766018, 35.160378, 50.625549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478098, 35.267479, 51.073975>,  <31.040287, 35.788288, 50.768730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478098, 35.267479, 51.073975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.303288, 35.088509, 50.761868>,  <31.198402, 34.981129, 50.574604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.303288, 35.088509, 50.761868>,  <31.478098, 35.267479, 51.073975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303288, 35.088509, 50.761868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884204, -0.372753, -0.281493,
		-0.164901, -0.812937, 0.558517,
		-0.437025, -0.447425, -0.780270,
		31.172180, 34.954281, 50.527786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914515, 34.742390, 50.963154>,  <31.478098, 35.267479, 51.073975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914515, 34.742390, 50.963154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713667, 34.757027, 50.617546>,  <31.593159, 34.765808, 50.410179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713667, 34.757027, 50.617546>,  <31.914515, 34.742390, 50.963154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713667, 34.757027, 50.617546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717758, -0.539672, -0.439975,
		-0.482389, -0.841080, 0.244714,
		-0.502120, 0.036594, -0.864024,
		31.563030, 34.768005, 50.358337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120659, 34.247723, 50.629787>,  <31.914515, 34.742390, 50.963154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120659, 34.247723, 50.629787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972349, 34.440784, 50.312405>,  <31.883364, 34.556622, 50.121975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972349, 34.440784, 50.312405>,  <32.120659, 34.247723, 50.629787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972349, 34.440784, 50.312405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752178, -0.345069, -0.561386,
		-0.544752, -0.804968, -0.235099,
		-0.370773, 0.482653, -0.793457,
		31.861116, 34.585579, 50.074368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171833, 33.778908, 50.029755>,  <32.120659, 34.247723, 50.629787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171833, 33.778908, 50.029755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180218, 34.158653, 49.904366>,  <32.185249, 34.386501, 49.829132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180218, 34.158653, 49.904366>,  <32.171833, 33.778908, 50.029755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180218, 34.158653, 49.904366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793444, -0.206562, -0.572519,
		-0.608282, -0.236719, -0.757600,
		0.020966, 0.949366, -0.313471,
		32.186508, 34.443462, 49.810326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.598587, 35.045620, 34.672642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.344158, 34.761757, 34.793835>,  <24.191502, 34.591438, 34.866550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.344158, 34.761757, 34.793835>,  <24.598587, 35.045620, 34.672642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344158, 34.761757, 34.793835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463197, -0.037118, 0.885478,
		-0.617141, 0.703567, 0.352321,
		-0.636071, -0.709658, 0.302983,
		24.153337, 34.548859, 34.884731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418072, 35.231789, 35.293877>,  <24.598587, 35.045620, 34.672642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418072, 35.231789, 35.293877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.399431, 34.832676, 35.274849>,  <24.388247, 34.593208, 35.263432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.399431, 34.832676, 35.274849>,  <24.418072, 35.231789, 35.293877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399431, 34.832676, 35.274849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504817, -0.064619, 0.860804,
		-0.861968, 0.016101, 0.506708,
		-0.046603, -0.997780, -0.047572,
		24.385450, 34.533340, 35.260578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.234619, 34.958904, 35.978966>,  <24.418072, 35.231789, 35.293877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.234619, 34.958904, 35.978966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.487352, 34.719578, 35.781860>,  <24.638992, 34.575981, 35.663597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.487352, 34.719578, 35.781860>,  <24.234619, 34.958904, 35.978966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487352, 34.719578, 35.781860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587743, -0.044632, 0.807815,
		-0.505318, -0.800019, 0.323454,
		0.631832, -0.598312, -0.492759,
		24.676903, 34.540085, 35.634033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728767, 34.727085, 36.483368>,  <24.234619, 34.958904, 35.978966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728767, 34.727085, 36.483368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.890917, 34.567463, 36.154388>,  <24.988207, 34.471691, 35.957001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.890917, 34.567463, 36.154388>,  <24.728767, 34.727085, 36.483368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890917, 34.567463, 36.154388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804385, -0.271743, 0.528318,
		-0.434324, -0.875734, 0.210837,
		0.405373, -0.399056, -0.822452,
		25.012529, 34.447746, 35.907654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553551, 35.381893, 36.503185>,  <24.728767, 34.727085, 36.483368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553551, 35.381893, 36.503185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.705643, 35.730629, 36.379684>,  <24.796898, 35.939869, 36.305584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.705643, 35.730629, 36.379684>,  <24.553551, 35.381893, 36.503185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705643, 35.730629, 36.379684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889153, -0.252669, 0.381530,
		0.254619, -0.419596, -0.871268,
		0.380231, 0.871836, -0.308751,
		24.819712, 35.992180, 36.287060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127932, 35.240616, 36.012440>,  <24.553551, 35.381893, 36.503185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127932, 35.240616, 36.012440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.172514, 35.604298, 36.172905>,  <25.199265, 35.822506, 36.269184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.172514, 35.604298, 36.172905>,  <25.127932, 35.240616, 36.012440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172514, 35.604298, 36.172905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952241, -0.213189, 0.218605,
		0.284280, 0.357639, -0.889539,
		0.111458, 0.909200, 0.401164,
		25.205952, 35.877056, 36.293255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661934, 35.609264, 35.512348>,  <25.127932, 35.240616, 36.012440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661934, 35.609264, 35.512348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.650972, 35.675274, 35.906712>,  <25.644396, 35.714882, 36.143330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.650972, 35.675274, 35.906712>,  <25.661934, 35.609264, 35.512348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650972, 35.675274, 35.906712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997853, -0.054168, 0.036804,
		0.059478, 0.984801, -0.163186,
		-0.027405, 0.165025, 0.985909,
		25.642752, 35.724781, 36.202484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041971, 36.225735, 35.575573>,  <25.661934, 35.609264, 35.512348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041971, 36.225735, 35.575573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.028620, 35.993179, 35.900749>,  <26.020609, 35.853645, 36.095856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.028620, 35.993179, 35.900749>,  <26.041971, 36.225735, 35.575573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028620, 35.993179, 35.900749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986352, 0.112059, 0.120638,
		-0.161234, 0.805873, 0.569712,
		-0.033378, -0.581387, 0.812942,
		26.018606, 35.818764, 36.144630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441298, 36.526756, 36.167297>,  <26.041971, 36.225735, 35.575573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441298, 36.526756, 36.167297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.418331, 36.130764, 36.218910>,  <26.404551, 35.893169, 36.249878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.418331, 36.130764, 36.218910>,  <26.441298, 36.526756, 36.167297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418331, 36.130764, 36.218910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987166, -0.037007, 0.155352,
		-0.149020, 0.136296, 0.979396,
		-0.057418, -0.989977, 0.129032,
		26.401106, 35.833771, 36.257622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737961, 36.338192, 36.760227>,  <26.441298, 36.526756, 36.167297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737961, 36.338192, 36.760227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766985, 36.036106, 36.499649>,  <26.784399, 35.854855, 36.343300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766985, 36.036106, 36.499649>,  <26.737961, 36.338192, 36.760227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766985, 36.036106, 36.499649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995376, 0.013613, 0.095087,
		-0.062942, -0.655337, 0.752710,
		0.072561, -0.755214, -0.651450,
		26.788754, 35.809544, 36.304214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268223, 35.898254, 36.987926>,  <26.737961, 36.338192, 36.760227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268223, 35.898254, 36.987926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.206203, 35.839661, 36.597134>,  <27.168991, 35.804504, 36.362656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.206203, 35.839661, 36.597134>,  <27.268223, 35.898254, 36.987926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206203, 35.839661, 36.597134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987801, -0.008467, -0.155494,
		0.014505, -0.989177, 0.146008,
		-0.155048, -0.146483, -0.976987,
		27.159689, 35.795715, 36.304039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761843, 35.481461, 36.892384>,  <27.268223, 35.898254, 36.987926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761843, 35.481461, 36.892384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683348, 35.639553, 36.533432>,  <27.636251, 35.734409, 36.318062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.683348, 35.639553, 36.533432>,  <27.761843, 35.481461, 36.892384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683348, 35.639553, 36.533432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980234, 0.102544, -0.169193,
		0.025149, -0.912839, -0.407545,
		-0.196237, 0.395235, -0.897374,
		27.624477, 35.758125, 36.264221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062420, 35.131321, 36.345543>,  <27.761843, 35.481461, 36.892384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062420, 35.131321, 36.345543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063784, 35.529430, 36.306713>,  <28.064602, 35.768295, 36.283413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063784, 35.529430, 36.306713>,  <28.062420, 35.131321, 36.345543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063784, 35.529430, 36.306713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996998, -0.010894, -0.076655,
		-0.077350, -0.096525, -0.992320,
		0.003411, 0.995271, -0.097078,
		28.064808, 35.828011, 36.277592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607313, 35.311420, 35.826542>,  <28.062420, 35.131321, 36.345543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607313, 35.311420, 35.826542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.508097, 35.607162, 36.076927>,  <28.448566, 35.784607, 36.227158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.508097, 35.607162, 36.076927>,  <28.607313, 35.311420, 35.826542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508097, 35.607162, 36.076927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966042, 0.237048, 0.102813,
		-0.072367, 0.630206, -0.773048,
		-0.248043, 0.739357, 0.625960,
		28.433683, 35.828968, 36.264717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037306, 35.928429, 35.671356>,  <28.607313, 35.311420, 35.826542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037306, 35.928429, 35.671356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.904015, 35.913479, 36.048199>,  <28.824039, 35.904507, 36.274303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.904015, 35.913479, 36.048199>,  <29.037306, 35.928429, 35.671356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904015, 35.913479, 36.048199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925850, 0.175895, 0.334458,
		-0.178212, 0.983699, -0.024008,
		-0.333229, -0.037376, 0.942105,
		28.804047, 35.902267, 36.330830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236607, 36.450714, 36.129986>,  <29.037306, 35.928429, 35.671356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236607, 36.450714, 36.129986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168783, 36.143585, 36.377113>,  <29.128088, 35.959309, 36.525391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168783, 36.143585, 36.377113>,  <29.236607, 36.450714, 36.129986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168783, 36.143585, 36.377113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871568, 0.175795, 0.457674,
		-0.460021, 0.616077, 0.639399,
		-0.169559, -0.767819, 0.617822,
		29.117916, 35.913239, 36.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350119, 36.797432, 36.723320>,  <29.236607, 36.450714, 36.129986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350119, 36.797432, 36.723320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404484, 36.403816, 36.769253>,  <29.437103, 36.167645, 36.796814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404484, 36.403816, 36.769253>,  <29.350119, 36.797432, 36.723320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404484, 36.403816, 36.769253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959592, 0.159583, 0.231770,
		-0.246397, 0.078693, 0.965969,
		0.135914, -0.984043, 0.114833,
		29.445257, 36.108604, 36.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634172, 36.642086, 37.486271>,  <29.350119, 36.797432, 36.723320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634172, 36.642086, 37.486271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745213, 36.384697, 37.200928>,  <29.811836, 36.230263, 37.029720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745213, 36.384697, 37.200928>,  <29.634172, 36.642086, 37.486271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745213, 36.384697, 37.200928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959645, 0.220464, 0.174575,
		0.044935, -0.733033, 0.678707,
		0.277600, -0.643473, -0.713358,
		29.828493, 36.191654, 36.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160830, 36.140766, 37.858330>,  <29.634172, 36.642086, 37.486271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160830, 36.140766, 37.858330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192358, 36.160748, 37.460075>,  <30.211275, 36.172737, 37.221123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192358, 36.160748, 37.460075>,  <30.160830, 36.140766, 37.858330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192358, 36.160748, 37.460075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918288, 0.385071, 0.092017,
		0.387988, -0.921534, -0.015520,
		0.078821, 0.049953, -0.995637,
		30.216003, 36.175732, 37.161385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796549, 35.750813, 37.673157>,  <30.160830, 36.140766, 37.858330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796549, 35.750813, 37.673157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694353, 36.041725, 37.418350>,  <30.633036, 36.216270, 37.265465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694353, 36.041725, 37.418350>,  <30.796549, 35.750813, 37.673157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694353, 36.041725, 37.418350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884032, 0.442491, 0.150628,
		0.391422, -0.524657, -0.755992,
		-0.255491, 0.727280, -0.637015,
		30.617706, 36.259911, 37.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044640, 35.035103, 37.879574>,  <30.796549, 35.750813, 37.673157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044640, 35.035103, 37.879574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234863, 35.350697, 38.035187>,  <31.348997, 35.540054, 38.128555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234863, 35.350697, 38.035187>,  <31.044640, 35.035103, 37.879574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234863, 35.350697, 38.035187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152768, -0.361453, 0.919790,
		0.866318, -0.496846, -0.051360,
		0.475558, 0.788984, 0.389036,
		31.377531, 35.587391, 38.151897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677582, 34.996807, 38.313828>,  <31.044640, 35.035103, 37.879574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677582, 34.996807, 38.313828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497862, 35.315407, 38.475677>,  <31.390030, 35.506565, 38.572788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497862, 35.315407, 38.475677>,  <31.677582, 34.996807, 38.313828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497862, 35.315407, 38.475677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001654, -0.453657, 0.891175,
		0.893380, 0.399735, 0.205146,
		-0.449299, 0.796497, 0.404627,
		31.363071, 35.554356, 38.597065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083904, 35.155716, 38.854397>,  <31.677582, 34.996807, 38.313828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083904, 35.155716, 38.854397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715162, 35.290123, 38.931614>,  <31.493916, 35.370770, 38.977943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.715162, 35.290123, 38.931614>,  <32.083904, 35.155716, 38.854397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715162, 35.290123, 38.931614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046388, -0.398872, 0.915833,
		0.384738, 0.853223, 0.352117,
		-0.921859, 0.336022, 0.193041,
		31.438604, 35.390930, 38.989525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001343, 35.528980, 39.622475>,  <32.083904, 35.155716, 38.854397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001343, 35.528980, 39.622475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662275, 35.360149, 39.493908>,  <31.458836, 35.258850, 39.416767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662275, 35.360149, 39.493908>,  <32.001343, 35.528980, 39.622475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662275, 35.360149, 39.493908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118842, -0.439379, 0.890406,
		-0.517044, 0.792967, 0.322287,
		-0.847669, -0.422078, -0.321416,
		31.407974, 35.233524, 39.397484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167229, 35.050369, 40.261509>,  <32.001343, 35.528980, 39.622475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167229, 35.050369, 40.261509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050869, 35.344887, 40.505886>,  <31.981054, 35.521599, 40.652512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050869, 35.344887, 40.505886>,  <32.167229, 35.050369, 40.261509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050869, 35.344887, 40.505886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152867, -0.594583, 0.789368,
		0.944463, 0.323018, 0.060407,
		-0.290897, 0.736295, 0.610941,
		31.963600, 35.565777, 40.689167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734425, 35.130699, 40.870956>,  <32.167229, 35.050369, 40.261509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734425, 35.130699, 40.870956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367619, 35.257538, 40.967728>,  <32.147533, 35.333641, 41.025791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367619, 35.257538, 40.967728>,  <32.734425, 35.130699, 40.870956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367619, 35.257538, 40.967728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016084, -0.635477, 0.771953,
		0.398524, 0.704002, 0.587843,
		-0.917017, 0.317097, 0.241929,
		32.092514, 35.352669, 41.040306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728001, 35.382843, 41.535202>,  <32.734425, 35.130699, 40.870956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728001, 35.382843, 41.535202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379383, 35.218220, 41.428600>,  <32.170212, 35.119446, 41.364639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379383, 35.218220, 41.428600>,  <32.728001, 35.382843, 41.535202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379383, 35.218220, 41.428600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062208, -0.631958, 0.772502,
		-0.486348, 0.656694, 0.576384,
		-0.871548, -0.411561, -0.266500,
		32.117920, 35.094753, 41.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379272, 35.640633, 41.711090>,  <32.728001, 35.382843, 41.535202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379272, 35.640633, 41.711090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405468, 35.880138, 42.030388>,  <33.421185, 36.023842, 42.221966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.405468, 35.880138, 42.030388>,  <33.379272, 35.640633, 41.711090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405468, 35.880138, 42.030388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702460, 0.595820, -0.389293,
		-0.708704, -0.535242, 0.459625,
		0.065488, 0.598761, 0.798246,
		33.425114, 36.059765, 42.269863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105556, 35.959217, 41.547615>,  <33.379272, 35.640633, 41.711090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105556, 35.959217, 41.547615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985889, 36.335140, 41.481567>,  <33.914089, 36.560692, 41.441940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985889, 36.335140, 41.481567>,  <34.105556, 35.959217, 41.547615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985889, 36.335140, 41.481567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946084, 0.269620, -0.179531,
		-0.124204, -0.209927, -0.969796,
		-0.299164, 0.939806, -0.165121,
		33.896141, 36.617081, 41.432030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782463, 36.254501, 41.337677>,  <34.105556, 35.959217, 41.547615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782463, 36.254501, 41.337677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557487, 35.984283, 41.146976>,  <34.422501, 35.822151, 41.032555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557487, 35.984283, 41.146976>,  <34.782463, 36.254501, 41.337677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557487, 35.984283, 41.146976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521154, -0.737288, 0.429891,
		-0.641916, -0.006673, 0.766746,
		-0.562443, -0.675546, -0.476755,
		34.388756, 35.781620, 41.003948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696362, 35.644550, 41.831039>,  <34.782463, 36.254501, 41.337677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696362, 35.644550, 41.831039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631622, 35.457031, 41.483700>,  <34.592781, 35.344521, 41.275295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631622, 35.457031, 41.483700>,  <34.696362, 35.644550, 41.831039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631622, 35.457031, 41.483700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511278, -0.792471, 0.332542,
		-0.844038, -0.390148, 0.367946,
		-0.161846, -0.468801, -0.868350,
		34.583069, 35.316391, 41.223194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763977, 35.001797, 42.385136>,  <34.696362, 35.644550, 41.831039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763977, 35.001797, 42.385136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854332, 35.266315, 42.671261>,  <34.908543, 35.425026, 42.842934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854332, 35.266315, 42.671261>,  <34.763977, 35.001797, 42.385136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854332, 35.266315, 42.671261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972326, 0.108081, 0.207125,
		0.059659, -0.742301, 0.667406,
		0.225883, 0.661293, 0.715310,
		34.922096, 35.464703, 42.885853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359737, 34.795105, 43.026192>,  <34.763977, 35.001797, 42.385136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359737, 34.795105, 43.026192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457947, 35.182137, 43.002476>,  <34.516872, 35.414356, 42.988247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457947, 35.182137, 43.002476>,  <34.359737, 34.795105, 43.026192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457947, 35.182137, 43.002476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968888, 0.246907, 0.017139,
		0.031221, 0.053233, 0.998094,
		0.245524, 0.967576, -0.059285,
		34.531605, 35.472408, 42.984692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318642, 35.230606, 43.633896>,  <34.359737, 34.795105, 43.026192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318642, 35.230606, 43.633896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224033, 35.396347, 43.282356>,  <34.167271, 35.495792, 43.071434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224033, 35.396347, 43.282356>,  <34.318642, 35.230606, 43.633896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224033, 35.396347, 43.282356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963275, 0.018347, 0.267888,
		0.127125, 0.909931, 0.394797,
		-0.236516, 0.414354, -0.878846,
		34.153080, 35.520653, 43.018703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002865, 35.866615, 43.756054>,  <34.318642, 35.230606, 43.633896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002865, 35.866615, 43.756054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884472, 35.681004, 43.422089>,  <33.813438, 35.569637, 43.221710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884472, 35.681004, 43.422089>,  <34.002865, 35.866615, 43.756054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884472, 35.681004, 43.422089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951361, 0.064988, 0.301144,
		-0.085481, 0.883433, -0.460694,
		-0.295980, -0.464029, -0.834909,
		33.795677, 35.541794, 43.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045448, 36.249943, 44.287418>,  <34.002865, 35.866615, 43.756054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045448, 36.249943, 44.287418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659760, 36.205212, 44.383556>,  <33.428345, 36.178371, 44.441238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659760, 36.205212, 44.383556>,  <34.045448, 36.249943, 44.287418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659760, 36.205212, 44.383556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259613, -0.581666, 0.770887,
		0.053590, 0.805704, 0.589889,
		-0.964225, -0.111831, 0.240343,
		33.370491, 36.171661, 44.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928120, 36.243313, 45.058796>,  <34.045448, 36.249943, 44.287418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928120, 36.243313, 45.058796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573917, 36.088860, 44.955425>,  <33.361397, 35.996185, 44.893402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573917, 36.088860, 44.955425>,  <33.928120, 36.243313, 45.058796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573917, 36.088860, 44.955425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173389, -0.790628, 0.587234,
		-0.431068, 0.475190, 0.767056,
		-0.885503, -0.386137, -0.258422,
		33.308266, 35.973019, 44.877899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576061, 36.037262, 45.697632>,  <33.928120, 36.243313, 45.058796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576061, 36.037262, 45.697632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423485, 35.825203, 45.394726>,  <33.331940, 35.697968, 45.212982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423485, 35.825203, 45.394726>,  <33.576061, 36.037262, 45.697632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423485, 35.825203, 45.394726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250131, -0.847833, 0.467561,
		-0.889910, -0.011070, 0.456002,
		-0.381438, -0.530147, -0.757264,
		33.309055, 35.666161, 45.167545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374565, 35.464085, 46.046764>,  <33.576061, 36.037262, 45.697632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374565, 35.464085, 46.046764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365417, 35.352238, 45.662830>,  <33.359928, 35.285130, 45.432468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365417, 35.352238, 45.662830>,  <33.374565, 35.464085, 46.046764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365417, 35.352238, 45.662830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348311, -0.902164, 0.254519,
		-0.937100, -0.328501, 0.118028,
		-0.022871, -0.279620, -0.959838,
		33.358555, 35.268353, 45.374878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870594, 34.958523, 46.449577>,  <33.374565, 35.464085, 46.046764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870594, 34.958523, 46.449577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116577, 34.733818, 46.670937>,  <33.264168, 34.598995, 46.803753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116577, 34.733818, 46.670937>,  <32.870594, 34.958523, 46.449577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116577, 34.733818, 46.670937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584392, 0.795845, 0.158482,
		-0.529448, 0.225941, 0.817701,
		0.614956, -0.561766, 0.553396,
		33.301064, 34.565289, 46.836956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977901, 35.193748, 47.202374>,  <32.870594, 34.958523, 46.449577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977901, 35.193748, 47.202374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310257, 34.988373, 47.116581>,  <33.509670, 34.865147, 47.065105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.310257, 34.988373, 47.116581>,  <32.977901, 35.193748, 47.202374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310257, 34.988373, 47.116581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549547, 0.817665, 0.171526,
		0.087309, -0.260388, 0.961548,
		0.830888, -0.513441, -0.214485,
		33.559525, 34.834339, 47.052235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920052, 35.436741, 48.009571>,  <32.977901, 35.193748, 47.202374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920052, 35.436741, 48.009571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971405, 35.172916, 48.305813>,  <33.002216, 35.014622, 48.483559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971405, 35.172916, 48.305813>,  <32.920052, 35.436741, 48.009571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971405, 35.172916, 48.305813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977205, -0.043184, -0.207860,
		0.169078, 0.750410, 0.638982,
		0.128386, -0.659561, 0.740606,
		33.009922, 34.975048, 48.527996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547291, 35.574150, 48.293247>,  <32.920052, 35.436741, 48.009571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547291, 35.574150, 48.293247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473648, 35.202881, 48.422615>,  <33.429462, 34.980118, 48.500237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473648, 35.202881, 48.422615>,  <33.547291, 35.574150, 48.293247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473648, 35.202881, 48.422615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963093, -0.236087, -0.129286,
		0.196355, 0.287681, 0.937381,
		-0.184110, -0.928172, 0.323421,
		33.418415, 34.924431, 48.519642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996143, 35.512314, 48.804478>,  <33.547291, 35.574150, 48.293247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996143, 35.512314, 48.804478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907658, 35.147026, 48.667603>,  <33.854568, 34.927853, 48.585480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907658, 35.147026, 48.667603>,  <33.996143, 35.512314, 48.804478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907658, 35.147026, 48.667603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973765, -0.187642, -0.128731,
		0.053352, -0.361685, 0.930772,
		-0.221212, -0.913222, -0.342185,
		33.841293, 34.873058, 48.564945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351040, 35.082603, 49.249073>,  <33.996143, 35.512314, 48.804478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351040, 35.082603, 49.249073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279640, 34.879051, 48.912224>,  <34.236801, 34.756920, 48.710114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279640, 34.879051, 48.912224>,  <34.351040, 35.082603, 49.249073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279640, 34.879051, 48.912224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976838, -0.194298, -0.089642,
		-0.118007, -0.838622, 0.531778,
		-0.178500, -0.508882, -0.842126,
		34.226089, 34.726387, 48.659584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708214, 34.424767, 49.317417>,  <34.351040, 35.082603, 49.249073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708214, 34.424767, 49.317417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635925, 34.461414, 48.925713>,  <34.592552, 34.483402, 48.690689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635925, 34.461414, 48.925713>,  <34.708214, 34.424767, 49.317417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635925, 34.461414, 48.925713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913370, -0.353684, -0.201649,
		-0.364822, -0.930867, -0.019762,
		-0.180719, 0.091616, -0.979258,
		34.581711, 34.488899, 48.631935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961891, 33.797722, 48.911079>,  <34.708214, 34.424767, 49.317417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961891, 33.797722, 48.911079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922962, 34.063030, 48.614269>,  <34.899605, 34.222214, 48.436184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922962, 34.063030, 48.614269>,  <34.961891, 33.797722, 48.911079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922962, 34.063030, 48.614269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893897, -0.269548, -0.358181,
		-0.437582, -0.698151, -0.566663,
		-0.097322, 0.663271, -0.742024,
		34.893764, 34.262012, 48.391663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124573, 33.406639, 48.269833>,  <34.961891, 33.797722, 48.911079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124573, 33.406639, 48.269833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181717, 33.796406, 48.200432>,  <35.216003, 34.030266, 48.158791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181717, 33.796406, 48.200432>,  <35.124573, 33.406639, 48.269833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181717, 33.796406, 48.200432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867240, -0.207716, -0.452491,
		-0.476954, -0.085826, -0.874728,
		0.142860, 0.974417, -0.173502,
		35.224575, 34.088730, 48.148380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250824, 33.463287, 47.626156>,  <35.124573, 33.406639, 48.269833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250824, 33.463287, 47.626156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417133, 33.804974, 47.751026>,  <35.516918, 34.009983, 47.825947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417133, 33.804974, 47.751026>,  <35.250824, 33.463287, 47.626156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417133, 33.804974, 47.751026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874296, -0.280881, -0.395868,
		-0.250471, 0.437526, -0.863617,
		0.415777, 0.854211, 0.312175,
		35.541866, 34.061237, 47.844677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592014, 33.904686, 46.966335>,  <35.250824, 33.463287, 47.626156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592014, 33.904686, 46.966335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757126, 34.050282, 47.300312>,  <35.856194, 34.137638, 47.500698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757126, 34.050282, 47.300312>,  <35.592014, 33.904686, 46.966335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757126, 34.050282, 47.300312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909664, -0.211120, -0.357686,
		0.046079, 0.907161, -0.418254,
		0.412781, 0.363989, 0.834940,
		35.880959, 34.159477, 47.550793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286129, 34.215111, 46.770767>,  <35.592014, 33.904686, 46.966335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286129, 34.215111, 46.770767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322613, 34.153221, 47.164261>,  <36.344501, 34.116089, 47.400356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322613, 34.153221, 47.164261>,  <36.286129, 34.215111, 46.770767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322613, 34.153221, 47.164261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961880, -0.242061, -0.127252,
		0.257814, 0.957845, 0.126748,
		0.091207, -0.154724, 0.983739,
		36.349976, 34.106804, 47.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847740, 34.567997, 46.983742>,  <36.286129, 34.215111, 46.770767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847740, 34.567997, 46.983742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790562, 34.281902, 47.257385>,  <36.756252, 34.110245, 47.421570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790562, 34.281902, 47.257385>,  <36.847740, 34.567997, 46.983742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790562, 34.281902, 47.257385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938407, -0.317639, -0.136007,
		0.314575, 0.622526, 0.716592,
		-0.142950, -0.715239, 0.684104,
		36.747677, 34.067329, 47.462616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381371, 34.709675, 47.396709>,  <36.847740, 34.567997, 46.983742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381371, 34.709675, 47.396709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270920, 34.337296, 47.492283>,  <37.204651, 34.113869, 47.549629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270920, 34.337296, 47.492283>,  <37.381371, 34.709675, 47.396709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270920, 34.337296, 47.492283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959779, -0.280219, 0.017375,
		0.050779, 0.234123, 0.970880,
		-0.276127, -0.930948, 0.238936,
		37.188084, 34.058010, 47.563965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729984, 34.487259, 47.929718>,  <37.381371, 34.709675, 47.396709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729984, 34.487259, 47.929718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636360, 34.156796, 47.724709>,  <37.580185, 33.958519, 47.601704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636360, 34.156796, 47.724709>,  <37.729984, 34.487259, 47.929718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636360, 34.156796, 47.724709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971960, -0.211081, -0.103623,
		-0.022576, -0.522411, 0.852395,
		-0.234058, -0.826155, -0.512528,
		37.566143, 33.908951, 47.570950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174339, 34.018131, 48.232597>,  <37.729984, 34.487259, 47.929718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174339, 34.018131, 48.232597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044357, 33.864685, 47.886826>,  <37.966366, 33.772617, 47.679363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044357, 33.864685, 47.886826>,  <38.174339, 34.018131, 48.232597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044357, 33.864685, 47.886826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944340, -0.181144, -0.274609,
		-0.051244, -0.905555, 0.421124,
		-0.324957, -0.383611, -0.864433,
		37.946869, 33.749603, 47.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246105, 33.194656, 48.128242>,  <38.174339, 34.018131, 48.232597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246105, 33.194656, 48.128242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291714, 33.464577, 47.836586>,  <38.319080, 33.626530, 47.661591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291714, 33.464577, 47.836586>,  <38.246105, 33.194656, 48.128242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291714, 33.464577, 47.836586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931175, -0.328406, -0.158315,
		-0.346285, -0.660907, -0.665799,
		0.114021, 0.674797, -0.729142,
		38.325920, 33.667015, 47.617844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767200, 32.966007, 47.747875>,  <38.246105, 33.194656, 48.128242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767200, 32.966007, 47.747875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751373, 33.345715, 47.623089>,  <38.741879, 33.573540, 47.548218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.751373, 33.345715, 47.623089>,  <38.767200, 32.966007, 47.747875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751373, 33.345715, 47.623089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939733, -0.070761, -0.334506,
		-0.339611, -0.306398, -0.889261,
		-0.039567, 0.949270, -0.311963,
		38.739502, 33.630497, 47.529499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348358, 32.580811, 48.118549>,  <38.767200, 32.966007, 47.747875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348358, 32.580811, 48.118549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611259, 32.599667, 48.419430>,  <39.769001, 32.610981, 48.599957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611259, 32.599667, 48.419430>,  <39.348358, 32.580811, 48.118549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611259, 32.599667, 48.419430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740413, 0.226775, 0.632741,
		-0.140752, -0.972806, 0.183950,
		0.657250, 0.047139, 0.752197,
		39.808434, 32.613808, 48.645088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219536, 32.070927, 48.689449>,  <39.348358, 32.580811, 48.118549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219536, 32.070927, 48.689449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391972, 32.411255, 48.809624>,  <39.495434, 32.615452, 48.881729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391972, 32.411255, 48.809624>,  <39.219536, 32.070927, 48.689449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391972, 32.411255, 48.809624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663860, 0.073564, 0.744229,
		0.611105, -0.520280, 0.596539,
		0.431091, 0.850822, 0.300438,
		39.521297, 32.666500, 48.899754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878677, 32.094742, 49.342548>,  <39.219536, 32.070927, 48.689449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878677, 32.094742, 49.342548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086159, 32.435509, 49.313728>,  <39.210648, 32.639969, 49.296436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086159, 32.435509, 49.313728>,  <38.878677, 32.094742, 49.342548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086159, 32.435509, 49.313728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326849, 0.275466, 0.904040,
		0.790014, -0.445374, 0.421332,
		0.518699, 0.851916, -0.072052,
		39.241768, 32.691082, 49.292114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094135, 32.385044, 50.084160>,  <38.878677, 32.094742, 49.342548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094135, 32.385044, 50.084160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071335, 32.716824, 49.861893>,  <39.057655, 32.915894, 49.728535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.071335, 32.716824, 49.861893>,  <39.094135, 32.385044, 50.084160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071335, 32.716824, 49.861893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312339, 0.513815, 0.799023,
		0.948259, 0.219100, 0.229783,
		-0.057000, 0.829451, -0.555663,
		39.054234, 32.965660, 49.695194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446102, 32.917332, 50.435379>,  <39.094135, 32.385044, 50.084160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446102, 32.917332, 50.435379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137539, 33.036400, 50.210411>,  <38.952400, 33.107841, 50.075428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137539, 33.036400, 50.210411>,  <39.446102, 32.917332, 50.435379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137539, 33.036400, 50.210411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319219, 0.583565, 0.746693,
		0.550480, 0.755542, -0.355145,
		-0.771408, 0.297671, -0.562425,
		38.906116, 33.125702, 50.041683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321602, 33.628304, 50.526131>,  <39.446102, 32.917332, 50.435379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321602, 33.628304, 50.526131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960228, 33.503021, 50.409031>,  <38.743404, 33.427853, 50.338772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.960228, 33.503021, 50.409031>,  <39.321602, 33.628304, 50.526131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960228, 33.503021, 50.409031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423564, 0.546526, 0.722428,
		-0.066271, 0.776668, -0.626414,
		-0.903439, -0.313203, -0.292750,
		38.689198, 33.409061, 50.321205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856838, 34.327065, 50.498520>,  <39.321602, 33.628304, 50.526131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856838, 34.327065, 50.498520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620903, 34.004578, 50.516880>,  <38.479340, 33.811085, 50.527897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.620903, 34.004578, 50.516880>,  <38.856838, 34.327065, 50.498520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620903, 34.004578, 50.516880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652497, 0.509327, 0.561100,
		-0.475747, 0.301008, -0.826474,
		-0.589841, -0.806213, 0.045904,
		38.443951, 33.762714, 50.530651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225220, 34.566090, 50.356354>,  <38.856838, 34.327065, 50.498520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225220, 34.566090, 50.356354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156960, 34.221966, 50.548496>,  <38.116005, 34.015491, 50.663784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156960, 34.221966, 50.548496>,  <38.225220, 34.566090, 50.356354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156960, 34.221966, 50.548496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652788, 0.463884, 0.598899,
		-0.738070, -0.211370, -0.640761,
		-0.170649, -0.860311, 0.480358,
		38.105766, 33.963871, 50.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487705, 34.469234, 50.420185>,  <38.225220, 34.566090, 50.356354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487705, 34.469234, 50.420185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627560, 34.237846, 50.714973>,  <37.711472, 34.099014, 50.891846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627560, 34.237846, 50.714973>,  <37.487705, 34.469234, 50.420185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627560, 34.237846, 50.714973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703556, 0.357333, 0.614266,
		-0.618679, -0.733269, -0.282051,
		0.349636, -0.578472, 0.736970,
		37.732449, 34.064304, 50.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881390, 34.316185, 50.824257>,  <37.487705, 34.469234, 50.420185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881390, 34.316185, 50.824257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177776, 34.178749, 51.055054>,  <37.355606, 34.096287, 51.193531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177776, 34.178749, 51.055054>,  <36.881390, 34.316185, 50.824257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177776, 34.178749, 51.055054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565926, 0.143070, 0.811947,
		-0.361526, -0.928158, -0.088436,
		0.740963, -0.343589, 0.576992,
		37.400066, 34.075672, 51.228153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592022, 33.754196, 51.254463>,  <36.881390, 34.316185, 50.824257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592022, 33.754196, 51.254463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904655, 33.919460, 51.441406>,  <37.092236, 34.018620, 51.553574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904655, 33.919460, 51.441406>,  <36.592022, 33.754196, 51.254463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904655, 33.919460, 51.441406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600689, 0.296456, 0.742486,
		0.168213, -0.861054, 0.479886,
		0.781586, 0.413158, 0.467358,
		37.139130, 34.043407, 51.581615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525200, 33.635231, 52.008575>,  <36.592022, 33.754196, 51.254463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525200, 33.635231, 52.008575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784866, 33.939194, 52.022011>,  <36.940666, 34.121571, 52.030071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784866, 33.939194, 52.022011>,  <36.525200, 33.635231, 52.008575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784866, 33.939194, 52.022011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542740, 0.431807, 0.720400,
		0.532936, -0.485884, 0.692745,
		0.649163, 0.759908, 0.033583,
		36.979614, 34.167168, 52.032085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664703, 33.747494, 52.680096>,  <36.525200, 33.635231, 52.008575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664703, 33.747494, 52.680096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789585, 34.084667, 52.504829>,  <36.864513, 34.286972, 52.399670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789585, 34.084667, 52.504829>,  <36.664703, 33.747494, 52.680096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789585, 34.084667, 52.504829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511021, 0.537817, 0.670530,
		0.800865, 0.014567, 0.598667,
		0.312206, 0.842936, -0.438164,
		36.883247, 34.337547, 52.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867146, 34.208309, 53.127392>,  <36.664703, 33.747494, 52.680096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867146, 34.208309, 53.127392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771542, 34.449005, 52.822556>,  <36.714180, 34.593422, 52.639652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.771542, 34.449005, 52.822556>,  <36.867146, 34.208309, 53.127392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771542, 34.449005, 52.822556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511444, 0.589134, 0.625576,
		0.825408, 0.539287, 0.166947,
		-0.239011, 0.601740, -0.762091,
		36.699837, 34.629528, 52.593929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976612, 34.806519, 53.475243>,  <36.867146, 34.208309, 53.127392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976612, 34.806519, 53.475243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779583, 34.901562, 53.140362>,  <36.661366, 34.958588, 52.939434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779583, 34.901562, 53.140362>,  <36.976612, 34.806519, 53.475243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779583, 34.901562, 53.140362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537667, 0.673359, 0.507447,
		0.684314, 0.700092, -0.203924,
		-0.492574, 0.237610, -0.837205,
		36.631809, 34.972843, 52.889198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069580, 35.495411, 53.318726>,  <36.976612, 34.806519, 53.475243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069580, 35.495411, 53.318726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723618, 35.371323, 53.160889>,  <36.516041, 35.296871, 53.066189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723618, 35.371323, 53.160889>,  <37.069580, 35.495411, 53.318726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723618, 35.371323, 53.160889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500787, 0.586432, 0.636640,
		0.033903, 0.748240, -0.662562,
		-0.864907, -0.310218, -0.394591,
		36.464146, 35.278255, 53.042511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791027, 36.074417, 53.196774>,  <37.069580, 35.495411, 53.318726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791027, 36.074417, 53.196774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489021, 35.812943, 53.176193>,  <36.307819, 35.656055, 53.163845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.489021, 35.812943, 53.176193>,  <36.791027, 36.074417, 53.196774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489021, 35.812943, 53.176193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496529, 0.518712, 0.695986,
		-0.428270, 0.551025, -0.716209,
		-0.755012, -0.653689, -0.051451,
		36.262516, 35.616837, 53.160759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319187, 36.527100, 53.157848>,  <36.791027, 36.074417, 53.196774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319187, 36.527100, 53.157848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144924, 36.185955, 53.272972>,  <36.040367, 35.981270, 53.342045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.144924, 36.185955, 53.272972>,  <36.319187, 36.527100, 53.157848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144924, 36.185955, 53.272972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599944, 0.513501, 0.613501,
		-0.671018, 0.094610, -0.735380,
		-0.435662, -0.852857, 0.287808,
		36.014225, 35.930099, 53.359314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634308, 36.660488, 53.115711>,  <36.319187, 36.527100, 53.157848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634308, 36.660488, 53.115711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707306, 36.366947, 53.377449>,  <35.751102, 36.190823, 53.534492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707306, 36.366947, 53.377449>,  <35.634308, 36.660488, 53.115711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707306, 36.366947, 53.377449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482760, 0.512891, 0.709849,
		-0.856528, -0.445431, -0.260674,
		0.182491, -0.733849, 0.654341,
		35.762054, 36.146793, 53.573753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995090, 36.540962, 53.446968>,  <35.634308, 36.660488, 53.115711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995090, 36.540962, 53.446968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278652, 36.391476, 53.686230>,  <35.448788, 36.301785, 53.829788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.278652, 36.391476, 53.686230>,  <34.995090, 36.540962, 53.446968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278652, 36.391476, 53.686230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480185, 0.365451, 0.797413,
		-0.516601, -0.852517, 0.079618,
		0.708905, -0.373713, 0.598158,
		35.491325, 36.279362, 53.865677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692215, 36.067020, 54.016743>,  <34.995090, 36.540962, 53.446968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692215, 36.067020, 54.016743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047916, 36.196209, 54.146301>,  <35.261337, 36.273724, 54.224037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047916, 36.196209, 54.146301>,  <34.692215, 36.067020, 54.016743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047916, 36.196209, 54.146301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411075, 0.253742, 0.875576,
		0.200605, -0.911756, 0.358410,
		0.889256, 0.322978, 0.323898,
		35.314693, 36.293102, 54.243469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769512, 35.823124, 54.757038>,  <34.692215, 36.067020, 54.016743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769512, 35.823124, 54.757038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037586, 36.115803, 54.707279>,  <35.198429, 36.291409, 54.677422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.037586, 36.115803, 54.707279>,  <34.769512, 35.823124, 54.757038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037586, 36.115803, 54.707279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273659, 0.399413, 0.874975,
		0.689904, -0.552348, 0.467914,
		0.670181, 0.731697, -0.124402,
		35.238640, 36.335312, 54.669960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148560, 35.878670, 55.374626>,  <34.769512, 35.823124, 54.757038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148560, 35.878670, 55.374626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195240, 36.230213, 55.189590>,  <35.223248, 36.441139, 55.078571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195240, 36.230213, 55.189590>,  <35.148560, 35.878670, 55.374626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195240, 36.230213, 55.189590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127485, 0.475170, 0.870610,
		0.984951, -0.042628, 0.167494,
		0.116701, 0.878861, -0.462585,
		35.230251, 36.493870, 55.050816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634384, 36.148918, 55.705959>,  <35.148560, 35.878670, 55.374626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634384, 36.148918, 55.705959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455357, 36.455940, 55.522423>,  <35.347939, 36.640156, 55.412300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455357, 36.455940, 55.522423>,  <35.634384, 36.148918, 55.705959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455357, 36.455940, 55.522423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117676, 0.458088, 0.881083,
		0.886473, 0.448340, -0.114703,
		-0.447569, 0.767559, -0.458842,
		35.321087, 36.686207, 55.384769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892937, 36.607578, 56.053135>,  <35.634384, 36.148918, 55.705959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892937, 36.607578, 56.053135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592625, 36.803505, 55.875862>,  <35.412437, 36.921062, 55.769501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.592625, 36.803505, 55.875862>,  <35.892937, 36.607578, 56.053135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592625, 36.803505, 55.875862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137737, 0.540086, 0.830262,
		0.646031, 0.684388, -0.338021,
		-0.750782, 0.489817, -0.443178,
		35.367390, 36.950451, 55.742908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047588, 37.351864, 56.094585>,  <35.892937, 36.607578, 56.053135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047588, 37.351864, 56.094585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652878, 37.312233, 56.043262>,  <35.416054, 37.288452, 56.012470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652878, 37.312233, 56.043262>,  <36.047588, 37.351864, 56.094585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652878, 37.312233, 56.043262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162093, 0.592703, 0.788942,
		-0.002122, 0.799304, -0.600923,
		-0.986773, -0.099079, -0.128304,
		35.356846, 37.282509, 56.004772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902351, 38.030933, 56.159336>,  <36.047588, 37.351864, 56.094585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902351, 38.030933, 56.159336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568859, 37.811886, 56.187626>,  <35.368763, 37.680458, 56.204601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568859, 37.811886, 56.187626>,  <35.902351, 38.030933, 56.159336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568859, 37.811886, 56.187626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380923, 0.663149, 0.644307,
		-0.399739, 0.510237, -0.761490,
		-0.833731, -0.547623, 0.070726,
		35.318741, 37.647598, 56.208843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271305, 38.565193, 55.940414>,  <35.902351, 38.030933, 56.159336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271305, 38.565193, 55.940414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139061, 38.259430, 56.161819>,  <35.059715, 38.075970, 56.294662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139061, 38.259430, 56.161819>,  <35.271305, 38.565193, 55.940414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139061, 38.259430, 56.161819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423764, 0.644280, 0.636653,
		-0.843279, -0.024072, -0.536937,
		-0.330613, -0.764410, 0.553509,
		35.039879, 38.030106, 56.327873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633442, 38.752171, 56.185318>,  <35.271305, 38.565193, 55.940414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633442, 38.752171, 56.185318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721268, 38.466946, 56.451653>,  <34.773964, 38.295811, 56.611454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721268, 38.466946, 56.451653>,  <34.633442, 38.752171, 56.185318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721268, 38.466946, 56.451653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441935, 0.535752, 0.719488,
		-0.869762, -0.452227, -0.197496,
		0.219563, -0.713064, 0.665832,
		34.787136, 38.253025, 56.651402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107998, 38.539124, 56.532146>,  <34.633442, 38.752171, 56.185318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107998, 38.539124, 56.532146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388374, 38.429356, 56.795471>,  <34.556599, 38.363495, 56.953468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388374, 38.429356, 56.795471>,  <34.107998, 38.539124, 56.532146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388374, 38.429356, 56.795471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569470, 0.340382, 0.748227,
		-0.429404, -0.899353, 0.082316,
		0.700939, -0.274416, 0.658316,
		34.598656, 38.347031, 56.992966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704678, 38.268387, 57.070850>,  <34.107998, 38.539124, 56.532146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704678, 38.268387, 57.070850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072495, 38.340023, 57.210781>,  <34.293182, 38.383003, 57.294739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072495, 38.340023, 57.210781>,  <33.704678, 38.268387, 57.070850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072495, 38.340023, 57.210781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388880, 0.286067, 0.875750,
		0.056760, -0.941326, 0.332692,
		0.919538, 0.179085, 0.349826,
		34.348354, 38.393749, 57.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832134, 37.884892, 57.685280>,  <33.704678, 38.268387, 57.070850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832134, 37.884892, 57.685280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054585, 38.217094, 57.697819>,  <34.188053, 38.416416, 57.705341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054585, 38.217094, 57.697819>,  <33.832134, 37.884892, 57.685280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054585, 38.217094, 57.697819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583867, 0.363571, 0.725890,
		0.591464, -0.421983, 0.687097,
		0.556121, 0.830510, 0.031342,
		34.221420, 38.466248, 57.707222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934273, 38.100750, 58.371510>,  <33.832134, 37.884892, 57.685280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934273, 38.100750, 58.371510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043987, 38.437382, 58.185390>,  <34.109818, 38.639362, 58.073719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043987, 38.437382, 58.185390>,  <33.934273, 38.100750, 58.371510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043987, 38.437382, 58.185390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475199, 0.539271, 0.695250,
		0.836033, 0.030410, 0.547836,
		0.274289, 0.841583, -0.465299,
		34.126274, 38.689857, 58.045799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934746, 38.532227, 58.999126>,  <33.934273, 38.100750, 58.371510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934746, 38.532227, 58.999126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007183, 38.793686, 58.705204>,  <34.050644, 38.950562, 58.528851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007183, 38.793686, 58.705204>,  <33.934746, 38.532227, 58.999126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007183, 38.793686, 58.705204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400915, 0.731327, 0.551749,
		0.898039, 0.194679, 0.394496,
		0.181091, 0.653651, -0.734810,
		34.061512, 38.989780, 58.484760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405411, 39.008919, 59.161839>,  <33.934746, 38.532227, 58.999126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405411, 39.008919, 59.161839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172966, 39.163960, 58.875603>,  <34.033501, 39.256985, 58.703861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.172966, 39.163960, 58.875603>,  <34.405411, 39.008919, 59.161839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172966, 39.163960, 58.875603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285793, 0.726098, 0.625382,
		0.761990, 0.567929, -0.311171,
		-0.581113, 0.387605, -0.715590,
		33.998631, 39.280243, 58.660927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453789, 39.680065, 59.258213>,  <34.405411, 39.008919, 59.161839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453789, 39.680065, 59.258213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137432, 39.662098, 59.014091>,  <33.947617, 39.651318, 58.867619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137432, 39.662098, 59.014091>,  <34.453789, 39.680065, 59.258213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137432, 39.662098, 59.014091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387156, 0.809073, 0.442166,
		0.473921, 0.585988, -0.657279,
		-0.790891, -0.044918, -0.610306,
		33.900166, 39.648624, 58.831001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263851, 40.293427, 59.196114>,  <34.453789, 39.680065, 59.258213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263851, 40.293427, 59.196114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922691, 40.111637, 59.093338>,  <33.717995, 40.002563, 59.031673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922691, 40.111637, 59.093338>,  <34.263851, 40.293427, 59.196114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922691, 40.111637, 59.093338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521084, 0.771318, 0.365432,
		0.032102, 0.445563, -0.894675,
		-0.852902, -0.454470, -0.256937,
		33.666821, 39.975296, 59.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843155, 40.745644, 58.671467>,  <34.263851, 40.293427, 59.196114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843155, 40.745644, 58.671467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584629, 40.504066, 58.858025>,  <33.429512, 40.359119, 58.969959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584629, 40.504066, 58.858025>,  <33.843155, 40.745644, 58.671467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584629, 40.504066, 58.858025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606763, 0.777393, 0.165829,
		-0.462722, -0.175811, -0.868895,
		-0.646318, -0.603946, 0.466393,
		33.390732, 40.322884, 58.997944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196648, 40.743500, 58.281113>,  <33.843155, 40.745644, 58.671467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196648, 40.743500, 58.281113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085251, 40.640732, 58.651287>,  <33.018414, 40.579071, 58.873390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085251, 40.640732, 58.651287>,  <33.196648, 40.743500, 58.281113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085251, 40.640732, 58.651287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704905, 0.709137, -0.015262,
		-0.652341, -0.656596, -0.378593,
		-0.278495, -0.256917, 0.925437,
		33.001701, 40.563656, 58.928917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505058, 40.834621, 58.335728>,  <33.196648, 40.743500, 58.281113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505058, 40.834621, 58.335728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.612381, 40.823349, 58.720898>,  <32.676773, 40.816586, 58.952000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.612381, 40.823349, 58.720898>,  <32.505058, 40.834621, 58.335728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612381, 40.823349, 58.720898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516924, 0.839265, 0.168591,
		-0.812898, -0.542991, 0.210611,
		0.268302, -0.028178, 0.962922,
		32.692871, 40.814896, 59.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940008, 40.987827, 58.698738>,  <32.505058, 40.834621, 58.335728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940008, 40.987827, 58.698738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251965, 41.089520, 58.927521>,  <32.439140, 41.150536, 59.064789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251965, 41.089520, 58.927521>,  <31.940008, 40.987827, 58.698738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251965, 41.089520, 58.927521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390281, 0.911919, 0.126823,
		-0.489334, -0.322132, 0.810422,
		0.779893, 0.254234, 0.571955,
		32.485931, 41.165791, 59.099106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625422, 41.333485, 59.325855>,  <31.940008, 40.987827, 58.698738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625422, 41.333485, 59.325855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011467, 41.436493, 59.306915>,  <32.243095, 41.498299, 59.295551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011467, 41.436493, 59.306915>,  <31.625422, 41.333485, 59.325855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011467, 41.436493, 59.306915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238997, 0.940272, 0.242424,
		0.106953, -0.222649, 0.969014,
		0.965112, 0.257520, -0.047353,
		32.301003, 41.513748, 59.292709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643137, 41.760605, 59.865444>,  <31.625422, 41.333485, 59.325855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643137, 41.760605, 59.865444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.994738, 41.819290, 59.683968>,  <32.205696, 41.854504, 59.575081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.994738, 41.819290, 59.683968>,  <31.643137, 41.760605, 59.865444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994738, 41.819290, 59.683968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039915, 0.970786, 0.236603,
		0.475149, -0.189865, 0.859177,
		0.879000, 0.146716, -0.453690,
		32.258438, 41.863304, 59.547859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114132, 42.224640, 60.354343>,  <31.643137, 41.760605, 59.865444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114132, 42.224640, 60.354343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237480, 42.272358, 59.976841>,  <32.311489, 42.300987, 59.750340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237480, 42.272358, 59.976841>,  <32.114132, 42.224640, 60.354343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237480, 42.272358, 59.976841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092251, 0.983679, 0.154482,
		0.946781, -0.134701, 0.292337,
		0.308375, 0.119292, -0.943756,
		32.329994, 42.308147, 59.693714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759796, 42.597008, 60.389740>,  <32.114132, 42.224640, 60.354343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759796, 42.597008, 60.389740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617653, 42.656433, 60.020599>,  <32.532368, 42.692089, 59.799114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617653, 42.656433, 60.020599>,  <32.759796, 42.597008, 60.389740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617653, 42.656433, 60.020599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192780, 0.977712, 0.083162,
		0.914636, -0.148355, -0.376075,
		-0.355355, 0.148563, -0.922850,
		32.511047, 42.701000, 59.743744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380600, 42.949612, 60.343060>,  <32.759796, 42.597008, 60.389740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380600, 42.949612, 60.343060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172726, 43.227398, 60.144005>,  <33.048000, 43.394070, 60.024570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172726, 43.227398, 60.144005>,  <33.380600, 42.949612, 60.343060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172726, 43.227398, 60.144005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826360, -0.260684, 0.499171,
		0.216933, 0.670639, 0.709355,
		-0.519681, 0.694469, -0.497639,
		33.016823, 43.435738, 59.994713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916306, 43.463593, 60.671581>,  <33.380600, 42.949612, 60.343060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916306, 43.463593, 60.671581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742203, 43.320259, 60.341213>,  <32.637741, 43.234261, 60.142990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.742203, 43.320259, 60.341213>,  <32.916306, 43.463593, 60.671581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742203, 43.320259, 60.341213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806577, -0.252361, 0.534554,
		-0.399977, 0.898841, -0.179177,
		-0.435262, -0.358329, -0.825922,
		32.611626, 43.212761, 60.093437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199276, 43.731937, 60.897152>,  <32.916306, 43.463593, 60.671581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199276, 43.731937, 60.897152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225559, 43.400646, 60.674541>,  <32.241329, 43.201870, 60.540974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.225559, 43.400646, 60.674541>,  <32.199276, 43.731937, 60.897152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225559, 43.400646, 60.674541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756788, -0.404867, 0.513181,
		-0.650350, 0.387454, -0.653395,
		0.065704, -0.828229, -0.556525,
		32.245270, 43.152176, 60.507584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598221, 44.295307, 61.085705>,  <32.199276, 43.731937, 60.897152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598221, 44.295307, 61.085705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590221, 44.695210, 61.089451>,  <32.585423, 44.935150, 61.091698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590221, 44.695210, 61.089451>,  <32.598221, 44.295307, 61.085705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590221, 44.695210, 61.089451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571377, -0.003740, -0.820679,
		-0.820444, -0.021768, 0.571312,
		-0.020001, 0.999756, 0.009369,
		32.584221, 44.995136, 61.092262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991493, 44.305840, 60.572624>,  <32.598221, 44.295307, 61.085705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991493, 44.305840, 60.572624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647686, 44.510273, 60.570965>,  <32.441402, 44.632935, 60.569969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647686, 44.510273, 60.570965>,  <32.991493, 44.305840, 60.572624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647686, 44.510273, 60.570965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142853, -0.232426, 0.962066,
		0.490735, 0.827507, 0.272785,
		-0.859518, 0.511088, -0.004152,
		32.389832, 44.663601, 60.569717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237682, 44.378174, 59.852383>,  <32.991493, 44.305840, 60.572624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237682, 44.378174, 59.852383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935921, 44.496517, 60.086765>,  <32.754864, 44.567524, 60.227394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.935921, 44.496517, 60.086765>,  <33.237682, 44.378174, 59.852383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935921, 44.496517, 60.086765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631498, -0.083507, -0.770867,
		-0.179136, -0.951575, 0.249832,
		-0.754401, 0.295859, 0.585959,
		32.709602, 44.585274, 60.262554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627659, 44.021389, 59.684258>,  <33.237682, 44.378174, 59.852383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627659, 44.021389, 59.684258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446995, 44.322380, 59.875999>,  <32.338596, 44.502975, 59.991043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446995, 44.322380, 59.875999>,  <32.627659, 44.021389, 59.684258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446995, 44.322380, 59.875999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786583, -0.082285, -0.611977,
		-0.421055, -0.653457, 0.629052,
		-0.451662, 0.752478, 0.479352,
		32.311497, 44.548122, 60.019806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001274, 43.796928, 59.806877>,  <32.627659, 44.021389, 59.684258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001274, 43.796928, 59.806877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004177, 44.193066, 59.751507>,  <32.005917, 44.430748, 59.718285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.004177, 44.193066, 59.751507>,  <32.001274, 43.796928, 59.806877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004177, 44.193066, 59.751507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775220, -0.081874, -0.626362,
		-0.631649, 0.111856, 0.767143,
		0.007253, 0.990346, -0.138429,
		32.006351, 44.490170, 59.709980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331760, 44.276619, 59.899097>,  <32.001274, 43.796928, 59.806877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331760, 44.276619, 59.899097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.578856, 44.451881, 59.637894>,  <31.727112, 44.557037, 59.481171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.578856, 44.451881, 59.637894>,  <31.331760, 44.276619, 59.899097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578856, 44.451881, 59.637894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670227, -0.141010, -0.728637,
		-0.411335, 0.887772, 0.206555,
		0.617737, 0.438153, -0.653011,
		31.764177, 44.583328, 59.441990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958363, 44.631493, 59.409451>,  <31.331760, 44.276619, 59.899097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958363, 44.631493, 59.409451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.305294, 44.543743, 59.230736>,  <31.513453, 44.491093, 59.123508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.305294, 44.543743, 59.230736>,  <30.958363, 44.631493, 59.409451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305294, 44.543743, 59.230736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483489, -0.158087, -0.860957,
		0.118240, 0.962748, -0.243178,
		0.867328, -0.219374, -0.446786,
		31.565493, 44.477932, 59.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031912, 45.005764, 58.734367>,  <30.958363, 44.631493, 59.409451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031912, 45.005764, 58.734367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262106, 44.679928, 58.705349>,  <31.400223, 44.484425, 58.687939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262106, 44.679928, 58.705349>,  <31.031912, 45.005764, 58.734367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262106, 44.679928, 58.705349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297028, -0.125544, -0.946579,
		0.761966, 0.566289, -0.314204,
		0.575484, -0.814589, -0.072544,
		31.434752, 44.435551, 58.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403284, 45.035946, 58.103809>,  <31.031912, 45.005764, 58.734367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403284, 45.035946, 58.103809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464176, 44.651043, 58.194035>,  <31.500711, 44.420101, 58.248169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464176, 44.651043, 58.194035>,  <31.403284, 45.035946, 58.103809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464176, 44.651043, 58.194035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105054, -0.242688, -0.964399,
		0.982746, 0.123113, -0.138034,
		0.152229, -0.962261, 0.225567,
		31.509846, 44.362366, 58.261703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938013, 44.692772, 57.601433>,  <31.403284, 45.035946, 58.103809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938013, 44.692772, 57.601433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703424, 44.409565, 57.758789>,  <31.562672, 44.239639, 57.853203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703424, 44.409565, 57.758789>,  <31.938013, 44.692772, 57.601433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703424, 44.409565, 57.758789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193056, -0.349498, -0.916832,
		0.786625, -0.613644, 0.068283,
		-0.586473, -0.708020, 0.393391,
		31.527483, 44.197159, 57.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189377, 43.956379, 57.328800>,  <31.938013, 44.692772, 57.601433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189377, 43.956379, 57.328800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809235, 43.936859, 57.451721>,  <31.581148, 43.925148, 57.525475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809235, 43.936859, 57.451721>,  <32.189377, 43.956379, 57.328800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809235, 43.936859, 57.451721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250815, -0.464338, -0.849401,
		0.184140, -0.884313, 0.429050,
		-0.950360, -0.048796, 0.307302,
		31.524126, 43.922222, 57.543911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974569, 43.232540, 57.228146>,  <32.189377, 43.956379, 57.328800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974569, 43.232540, 57.228146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634193, 43.441975, 57.244896>,  <31.429968, 43.567635, 57.254948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634193, 43.441975, 57.244896>,  <31.974569, 43.232540, 57.228146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634193, 43.441975, 57.244896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326070, -0.464063, -0.823604,
		-0.411794, -0.714495, 0.565617,
		-0.850943, 0.523586, 0.041877,
		31.378910, 43.599052, 57.257458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469866, 42.843296, 57.049881>,  <31.974569, 43.232540, 57.228146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469866, 42.843296, 57.049881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279888, 43.190437, 56.991566>,  <31.165901, 43.398724, 56.956577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279888, 43.190437, 56.991566>,  <31.469866, 42.843296, 57.049881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279888, 43.190437, 56.991566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434806, -0.375454, -0.818522,
		-0.765097, -0.325360, 0.555668,
		-0.474942, 0.867857, -0.145791,
		31.137405, 43.450794, 56.947830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803371, 42.712486, 56.953323>,  <31.469866, 42.843296, 57.049881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803371, 42.712486, 56.953323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848854, 43.074341, 56.789024>,  <30.876144, 43.291454, 56.690445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848854, 43.074341, 56.789024>,  <30.803371, 42.712486, 56.953323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848854, 43.074341, 56.789024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429086, -0.328164, -0.841542,
		-0.896078, 0.271933, 0.350851,
		0.113706, 0.904633, -0.410744,
		30.882965, 43.345730, 56.665802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116934, 42.904213, 56.652805>,  <30.803371, 42.712486, 56.953323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116934, 42.904213, 56.652805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394136, 43.138638, 56.484863>,  <30.560459, 43.279293, 56.384098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394136, 43.138638, 56.484863>,  <30.116934, 42.904213, 56.652805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394136, 43.138638, 56.484863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485010, -0.051874, -0.872969,
		-0.533389, 0.808607, 0.248295,
		0.693009, 0.586058, -0.419852,
		30.602039, 43.314453, 56.358910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716024, 43.373363, 56.153320>,  <30.116934, 42.904213, 56.652805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716024, 43.373363, 56.153320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097710, 43.355370, 56.035030>,  <30.326721, 43.344574, 55.964058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097710, 43.355370, 56.035030>,  <29.716024, 43.373363, 56.153320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097710, 43.355370, 56.035030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278320, 0.228772, -0.932846,
		0.109616, 0.972440, 0.205778,
		0.954213, -0.044983, -0.295726,
		30.383974, 43.341873, 55.946312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685137, 43.541794, 55.386379>,  <29.716024, 43.373363, 56.153320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685137, 43.541794, 55.386379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074081, 43.458431, 55.428490>,  <30.307447, 43.408413, 55.453754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.074081, 43.458431, 55.428490>,  <29.685137, 43.541794, 55.386379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074081, 43.458431, 55.428490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107730, 0.000442, -0.994180,
		0.207145, 0.978043, 0.022882,
		0.972361, -0.208404, 0.105273,
		30.365789, 43.395908, 55.460072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045927, 43.999771, 54.985802>,  <29.685137, 43.541794, 55.386379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045927, 43.999771, 54.985802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274942, 43.676952, 55.043594>,  <30.412352, 43.483261, 55.078270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.274942, 43.676952, 55.043594>,  <30.045927, 43.999771, 54.985802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274942, 43.676952, 55.043594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119221, -0.092402, -0.988559,
		0.811164, 0.583213, 0.043313,
		0.572538, -0.807047, 0.144484,
		30.446703, 43.434837, 55.086941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519657, 44.036491, 54.421963>,  <30.045927, 43.999771, 54.985802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519657, 44.036491, 54.421963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.525932, 43.655884, 54.544838>,  <30.529697, 43.427521, 54.618565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.525932, 43.655884, 54.544838>,  <30.519657, 44.036491, 54.421963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525932, 43.655884, 54.544838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325567, -0.285627, -0.901345,
		0.945389, 0.114153, 0.305302,
		0.015689, -0.951518, 0.307193,
		30.530640, 43.370430, 54.636997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194288, 43.768574, 54.200710>,  <30.519657, 44.036491, 54.421963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194288, 43.768574, 54.200710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.929209, 43.476597, 54.267658>,  <30.770161, 43.301411, 54.307827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.929209, 43.476597, 54.267658>,  <31.194288, 43.768574, 54.200710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929209, 43.476597, 54.267658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262229, -0.435523, -0.861136,
		0.701474, -0.526785, 0.480033,
		-0.662699, -0.729943, 0.167370,
		30.730398, 43.257614, 54.317867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538492, 43.053261, 54.182930>,  <31.194288, 43.768574, 54.200710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538492, 43.053261, 54.182930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153679, 42.998333, 54.088585>,  <30.922791, 42.965378, 54.031979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153679, 42.998333, 54.088585>,  <31.538492, 43.053261, 54.182930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153679, 42.998333, 54.088585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272581, -0.526862, -0.805056,
		-0.013723, -0.838785, 0.544289,
		-0.962035, -0.137315, -0.235867,
		30.865068, 42.957138, 54.017826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338161, 42.336624, 54.201145>,  <31.538492, 43.053261, 54.182930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338161, 42.336624, 54.201145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148363, 42.555428, 53.925278>,  <31.034485, 42.686710, 53.759758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148363, 42.555428, 53.925278>,  <31.338161, 42.336624, 54.201145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148363, 42.555428, 53.925278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448822, -0.523650, -0.724120,
		-0.757241, -0.653129, 0.002961,
		-0.474495, 0.547004, -0.689668,
		31.006014, 42.719528, 53.718376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063887, 41.893974, 53.650188>,  <31.338161, 42.336624, 54.201145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063887, 41.893974, 53.650188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143923, 42.260174, 53.510574>,  <31.191944, 42.479893, 53.426807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143923, 42.260174, 53.510574>,  <31.063887, 41.893974, 53.650188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143923, 42.260174, 53.510574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534136, -0.400572, -0.744474,
		-0.821379, -0.037472, -0.569151,
		0.200088, 0.915499, -0.349036,
		31.203949, 42.534824, 53.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965519, 41.863056, 52.910252>,  <31.063887, 41.893974, 53.650188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965519, 41.863056, 52.910252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196957, 42.183620, 52.970871>,  <31.335819, 42.375961, 53.007244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196957, 42.183620, 52.970871>,  <30.965519, 41.863056, 52.910252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196957, 42.183620, 52.970871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616284, -0.307865, -0.724854,
		-0.534252, 0.512792, -0.672027,
		0.578593, 0.801414, 0.151548,
		31.370535, 42.424046, 53.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018831, 42.149563, 52.182289>,  <30.965519, 41.863056, 52.910252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018831, 42.149563, 52.182289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307970, 42.306526, 52.409801>,  <31.481453, 42.400703, 52.546307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307970, 42.306526, 52.409801>,  <31.018831, 42.149563, 52.182289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307970, 42.306526, 52.409801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640960, -0.073206, -0.764076,
		-0.258193, 0.916873, -0.304436,
		0.722847, 0.392410, 0.568777,
		31.524824, 42.424248, 52.580433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369102, 42.619411, 51.739250>,  <31.018831, 42.149563, 52.182289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369102, 42.619411, 51.739250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623793, 42.539360, 52.037117>,  <31.776608, 42.491329, 52.215836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623793, 42.539360, 52.037117>,  <31.369102, 42.619411, 51.739250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623793, 42.539360, 52.037117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644645, -0.391740, -0.656485,
		0.423097, 0.898047, -0.120419,
		0.636728, -0.200130, 0.744665,
		31.814812, 42.479321, 52.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006325, 42.888943, 51.472553>,  <31.369102, 42.619411, 51.739250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006325, 42.888943, 51.472553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100029, 42.664791, 51.790321>,  <32.156250, 42.530300, 51.980980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100029, 42.664791, 51.790321>,  <32.006325, 42.888943, 51.472553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100029, 42.664791, 51.790321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813510, -0.334415, -0.475781,
		0.532283, 0.757721, 0.377535,
		0.234256, -0.560379, 0.794418,
		32.170307, 42.496677, 52.028648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706867, 43.020699, 51.635120>,  <32.006325, 42.888943, 51.472553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706867, 43.020699, 51.635120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.614399, 42.652008, 51.759693>,  <32.558918, 42.430794, 51.834435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.614399, 42.652008, 51.759693>,  <32.706867, 43.020699, 51.635120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614399, 42.652008, 51.759693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741808, -0.374097, -0.556572,
		0.629510, 0.102360, 0.770220,
		-0.231167, -0.921723, 0.311429,
		32.545048, 42.375492, 51.853123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351063, 42.676491, 51.692734>,  <32.706867, 43.020699, 51.635120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351063, 42.676491, 51.692734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083145, 42.379677, 51.681679>,  <32.922394, 42.201588, 51.675045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083145, 42.379677, 51.681679>,  <33.351063, 42.676491, 51.692734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083145, 42.379677, 51.681679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674329, -0.592251, -0.441044,
		0.310900, -0.314045, 0.897060,
		-0.669793, -0.742034, -0.027639,
		32.882206, 42.157066, 51.673386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722370, 42.130100, 51.959129>,  <33.351063, 42.676491, 51.692734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722370, 42.130100, 51.959129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410782, 41.965401, 51.769955>,  <33.223827, 41.866581, 51.656448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410782, 41.965401, 51.769955>,  <33.722370, 42.130100, 51.959129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410782, 41.965401, 51.769955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582295, -0.754833, -0.301925,
		-0.232675, -0.510581, 0.827750,
		-0.778970, -0.411744, -0.472940,
		33.177090, 41.841877, 51.628071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691734, 41.402534, 52.142815>,  <33.722370, 42.130100, 51.959129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691734, 41.402534, 52.142815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481850, 41.423210, 51.802929>,  <33.355919, 41.435616, 51.598999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481850, 41.423210, 51.802929>,  <33.691734, 41.402534, 52.142815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481850, 41.423210, 51.802929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451292, -0.829461, -0.329135,
		-0.721813, -0.556168, 0.411900,
		-0.524710, 0.051687, -0.849710,
		33.324436, 41.438717, 51.548016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534328, 40.681606, 51.986816>,  <33.691734, 41.402534, 52.142815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534328, 40.681606, 51.986816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459297, 40.867928, 51.640903>,  <33.414276, 40.979721, 51.433357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459297, 40.867928, 51.640903>,  <33.534328, 40.681606, 51.986816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459297, 40.867928, 51.640903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377512, -0.778599, -0.501267,
		-0.906807, -0.420492, -0.029795,
		-0.187581, 0.465800, -0.864780,
		33.403023, 41.007668, 51.381470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145622, 40.105896, 51.522243>,  <33.534328, 40.681606, 51.986816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145622, 40.105896, 51.522243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301243, 40.399445, 51.299503>,  <33.394615, 40.575573, 51.165859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301243, 40.399445, 51.299503>,  <33.145622, 40.105896, 51.522243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301243, 40.399445, 51.299503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416813, -0.679285, -0.604019,
		-0.821529, 0.002891, -0.570160,
		0.389047, 0.733869, -0.556847,
		33.417957, 40.619606, 51.132450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017006, 39.902599, 50.803238>,  <33.145622, 40.105896, 51.522243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017006, 39.902599, 50.803238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322247, 40.160622, 50.819157>,  <33.505390, 40.315434, 50.828709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322247, 40.160622, 50.819157>,  <33.017006, 39.902599, 50.803238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322247, 40.160622, 50.819157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552835, -0.619632, -0.557162,
		-0.334741, 0.447171, -0.829450,
		0.763100, 0.645053, 0.039795,
		33.551178, 40.354137, 50.831097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347313, 39.756111, 50.137119>,  <33.017006, 39.902599, 50.803238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347313, 39.756111, 50.137119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625374, 39.964344, 50.335415>,  <33.792210, 40.089283, 50.454391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625374, 39.964344, 50.335415>,  <33.347313, 39.756111, 50.137119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625374, 39.964344, 50.335415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714646, -0.425922, -0.554861,
		-0.077704, 0.739991, -0.668113,
		0.695157, 0.520580, 0.495736,
		33.833920, 40.120518, 50.484135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805794, 40.056835, 49.651649>,  <33.347313, 39.756111, 50.137119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805794, 40.056835, 49.651649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011509, 40.060921, 49.994675>,  <34.134937, 40.063374, 50.200489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.011509, 40.060921, 49.994675>,  <33.805794, 40.056835, 49.651649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011509, 40.060921, 49.994675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743757, -0.503178, -0.440043,
		0.427010, 0.864123, -0.266372,
		0.514284, 0.010214, 0.857559,
		34.165794, 40.063984, 50.251942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574615, 40.197495, 49.413094>,  <33.805794, 40.056835, 49.651649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574615, 40.197495, 49.413094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558731, 40.047028, 49.783375>,  <34.549202, 39.956745, 50.005543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.558731, 40.047028, 49.783375>,  <34.574615, 40.197495, 49.413094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558731, 40.047028, 49.783375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675660, -0.692632, -0.252476,
		0.736143, 0.615432, 0.281668,
		-0.039710, -0.376171, 0.925699,
		34.546818, 39.934177, 50.061085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178978, 39.854614, 49.455894>,  <34.574615, 40.197495, 49.413094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178978, 39.854614, 49.455894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983490, 39.682201, 49.759304>,  <34.866199, 39.578754, 49.941349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983490, 39.682201, 49.759304>,  <35.178978, 39.854614, 49.455894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983490, 39.682201, 49.759304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388600, -0.885969, -0.253079,
		0.781118, 0.171080, 0.600488,
		-0.488717, -0.431034, 0.758528,
		34.836876, 39.552891, 49.986862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654774, 39.454956, 49.895866>,  <35.178978, 39.854614, 49.455894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654774, 39.454956, 49.895866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301521, 39.277485, 49.956825>,  <35.089569, 39.171001, 49.993401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301521, 39.277485, 49.956825>,  <35.654774, 39.454956, 49.895866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301521, 39.277485, 49.956825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365219, -0.854128, -0.370244,
		0.294437, -0.271316, 0.916348,
		-0.883132, -0.443682, 0.152397,
		35.036583, 39.144379, 50.002544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853294, 38.855900, 50.090733>,  <35.654774, 39.454956, 49.895866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853294, 38.855900, 50.090733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473541, 38.790943, 49.983173>,  <35.245689, 38.751968, 49.918636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473541, 38.790943, 49.983173>,  <35.853294, 38.855900, 50.090733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473541, 38.790943, 49.983173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253561, -0.901460, -0.350822,
		-0.185434, -0.401246, 0.897004,
		-0.949379, -0.162391, -0.268902,
		35.188728, 38.742226, 49.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640205, 38.145203, 50.394135>,  <35.853294, 38.855900, 50.090733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640205, 38.145203, 50.394135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372314, 38.227085, 50.108601>,  <35.211582, 38.276215, 49.937279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372314, 38.227085, 50.108601>,  <35.640205, 38.145203, 50.394135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372314, 38.227085, 50.108601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134548, -0.911897, -0.387738,
		-0.730319, -0.355723, 0.583177,
		-0.669724, 0.204707, -0.713837,
		35.171398, 38.288498, 49.894451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249065, 37.591694, 50.361191>,  <35.640205, 38.145203, 50.394135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249065, 37.591694, 50.361191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241478, 37.750919, 49.994328>,  <35.236923, 37.846455, 49.774208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.241478, 37.750919, 49.994328>,  <35.249065, 37.591694, 50.361191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241478, 37.750919, 49.994328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268584, -0.881578, -0.388180,
		-0.963070, -0.253699, -0.090188,
		-0.018973, 0.398068, -0.917160,
		35.235786, 37.870338, 49.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888542, 37.169437, 49.990360>,  <35.249065, 37.591694, 50.361191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888542, 37.169437, 49.990360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054661, 37.358528, 49.679478>,  <35.154331, 37.471981, 49.492947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054661, 37.358528, 49.679478>,  <34.888542, 37.169437, 49.990360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054661, 37.358528, 49.679478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296029, -0.878100, -0.375908,
		-0.860171, -0.073963, -0.504615,
		0.415299, 0.472726, -0.777211,
		35.179249, 37.500347, 49.446316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542431, 37.012463, 49.287430>,  <34.888542, 37.169437, 49.990360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542431, 37.012463, 49.287430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907196, 37.128422, 49.171238>,  <35.126053, 37.197998, 49.101524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907196, 37.128422, 49.171238>,  <34.542431, 37.012463, 49.287430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907196, 37.128422, 49.171238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053164, -0.785293, -0.616837,
		-0.406930, 0.547058, -0.731530,
		0.911911, 0.289900, -0.290475,
		35.180771, 37.215393, 49.084095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596340, 36.897316, 48.595497>,  <34.542431, 37.012463, 49.287430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596340, 36.897316, 48.595497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978516, 36.902664, 48.713451>,  <35.207821, 36.905872, 48.784222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.978516, 36.902664, 48.713451>,  <34.596340, 36.897316, 48.595497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978516, 36.902664, 48.713451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218597, -0.703382, -0.676365,
		0.198370, 0.710686, -0.674963,
		0.955440, 0.013375, 0.294884,
		35.265148, 36.906677, 48.801918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996841, 36.784500, 47.998730>,  <34.596340, 36.897316, 48.595497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996841, 36.784500, 47.998730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260597, 36.676922, 48.279549>,  <35.418850, 36.612373, 48.448040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260597, 36.676922, 48.279549>,  <34.996841, 36.784500, 47.998730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260597, 36.676922, 48.279549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399689, -0.665507, -0.630356,
		0.636751, 0.696252, -0.331332,
		0.659391, -0.268950, 0.702047,
		35.458416, 36.596237, 48.490162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891567, 37.118160, 47.347733>,  <34.996841, 36.784500, 47.998730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891567, 37.118160, 47.347733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785511, 37.355579, 47.043785>,  <34.721878, 37.498032, 46.861416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785511, 37.355579, 47.043785>,  <34.891567, 37.118160, 47.347733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785511, 37.355579, 47.043785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955158, -0.053960, 0.291138,
		0.131801, 0.802990, 0.581236,
		-0.265144, 0.593544, -0.759870,
		34.705967, 37.533642, 46.815823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643665, 37.863674, 47.560642>,  <34.891567, 37.118160, 47.347733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643665, 37.863674, 47.560642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480755, 37.654575, 47.261078>,  <34.383011, 37.529118, 47.081341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480755, 37.654575, 47.261078>,  <34.643665, 37.863674, 47.560642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480755, 37.654575, 47.261078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904793, 0.119238, 0.408817,
		-0.124411, 0.844107, -0.521542,
		-0.407273, -0.522749, -0.748908,
		34.358574, 37.497749, 47.036407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194675, 38.336132, 47.216480>,  <34.643665, 37.863674, 47.560642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194675, 38.336132, 47.216480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073330, 37.970631, 47.108391>,  <34.000523, 37.751331, 47.043537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073330, 37.970631, 47.108391>,  <34.194675, 38.336132, 47.216480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073330, 37.970631, 47.108391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939382, 0.239243, 0.245608,
		-0.159776, 0.328352, -0.930944,
		-0.303368, -0.913754, -0.270223,
		33.982319, 37.696503, 47.027325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610386, 38.535122, 46.828297>,  <34.194675, 38.336132, 47.216480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610386, 38.535122, 46.828297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589317, 38.151928, 46.941074>,  <33.576675, 37.922012, 47.008739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589317, 38.151928, 46.941074>,  <33.610386, 38.535122, 46.828297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589317, 38.151928, 46.941074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949262, 0.135692, 0.283707,
		-0.310044, -0.252692, -0.916526,
		-0.052675, -0.957985, 0.281941,
		33.573517, 37.864532, 47.025658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947201, 38.337723, 46.670109>,  <33.610386, 38.535122, 46.828297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947201, 38.337723, 46.670109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090851, 38.090431, 46.949772>,  <33.177040, 37.942055, 47.117569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.090851, 38.090431, 46.949772>,  <32.947201, 38.337723, 46.670109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090851, 38.090431, 46.949772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885007, 0.012248, 0.465417,
		-0.296297, -0.785903, -0.542739,
		0.359125, -0.618229, 0.699158,
		33.198589, 37.904961, 47.159519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395233, 37.917961, 46.784176>,  <32.947201, 38.337723, 46.670109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395233, 37.917961, 46.784176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637047, 37.899254, 47.102257>,  <32.782135, 37.888031, 47.293106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637047, 37.899254, 47.102257>,  <32.395233, 37.917961, 46.784176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637047, 37.899254, 47.102257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795967, 0.003601, 0.605330,
		-0.031173, -0.998899, -0.035048,
		0.604537, -0.046767, 0.795203,
		32.818409, 37.885223, 47.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102707, 37.389839, 47.119148>,  <32.395233, 37.917961, 46.784176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102707, 37.389839, 47.119148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300430, 37.596573, 47.398731>,  <32.419064, 37.720612, 47.566483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300430, 37.596573, 47.398731>,  <32.102707, 37.389839, 47.119148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300430, 37.596573, 47.398731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865923, 0.222099, 0.448162,
		0.076387, -0.826775, 0.557323,
		0.494310, 0.516832, 0.698958,
		32.448723, 37.751621, 47.608418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705788, 37.372456, 47.722569>,  <32.102707, 37.389839, 47.119148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705788, 37.372456, 47.722569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959215, 37.671257, 47.803139>,  <32.111271, 37.850540, 47.851482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.959215, 37.671257, 47.803139>,  <31.705788, 37.372456, 47.722569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959215, 37.671257, 47.803139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730216, 0.491309, 0.474763,
		0.255689, -0.447878, 0.856754,
		0.633567, 0.747007, 0.201426,
		32.149284, 37.895359, 47.863567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754351, 37.393127, 48.379108>,  <31.705788, 37.372456, 47.722569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754351, 37.393127, 48.379108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854870, 37.757904, 48.249367>,  <31.915182, 37.976772, 48.171520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854870, 37.757904, 48.249367>,  <31.754351, 37.393127, 48.379108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854870, 37.757904, 48.249367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729572, 0.398683, 0.555677,
		0.636061, 0.096999, 0.765518,
		0.251298, 0.911945, -0.324354,
		31.930260, 38.031487, 48.152061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856613, 37.717701, 48.921829>,  <31.754351, 37.393127, 48.379108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856613, 37.717701, 48.921829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813234, 38.010849, 48.653160>,  <31.787207, 38.186737, 48.491959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813234, 38.010849, 48.653160>,  <31.856613, 37.717701, 48.921829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813234, 38.010849, 48.653160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613183, 0.482498, 0.625461,
		0.782461, 0.479686, 0.397058,
		-0.108446, 0.732869, -0.671672,
		31.780701, 38.230709, 48.451660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811983, 38.206947, 49.563633>,  <31.856613, 37.717701, 48.921829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811983, 38.206947, 49.563633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649612, 38.366619, 49.234787>,  <31.552189, 38.462421, 49.037479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.649612, 38.366619, 49.234787>,  <31.811983, 38.206947, 49.563633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649612, 38.366619, 49.234787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647799, 0.508863, 0.566935,
		0.644654, 0.762702, 0.052026,
		-0.405928, 0.399179, -0.822118,
		31.527834, 38.486374, 48.988152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692322, 39.001648, 49.605152>,  <31.811983, 38.206947, 49.563633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692322, 39.001648, 49.605152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447477, 38.928696, 49.297371>,  <31.300570, 38.884926, 49.112701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447477, 38.928696, 49.297371>,  <31.692322, 39.001648, 49.605152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447477, 38.928696, 49.297371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681272, 0.615645, 0.396042,
		0.401480, 0.766629, -0.501092,
		-0.612112, -0.182377, -0.769452,
		31.263844, 38.873981, 49.066536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560453, 39.684250, 49.350647>,  <31.692322, 39.001648, 49.605152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560453, 39.684250, 49.350647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264301, 39.445904, 49.226204>,  <31.086611, 39.302898, 49.151539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264301, 39.445904, 49.226204>,  <31.560453, 39.684250, 49.350647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264301, 39.445904, 49.226204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666439, 0.590297, 0.455420,
		-0.087724, 0.544516, -0.834150,
		-0.740380, -0.595861, -0.311104,
		31.042187, 39.267147, 49.132874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031147, 40.015495, 48.869938>,  <31.560453, 39.684250, 49.350647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031147, 40.015495, 48.869938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848259, 39.706505, 49.046223>,  <30.738525, 39.521111, 49.151993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848259, 39.706505, 49.046223>,  <31.031147, 40.015495, 48.869938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848259, 39.706505, 49.046223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705125, 0.616861, 0.349688,
		-0.541984, -0.150871, -0.826735,
		-0.457223, -0.772477, 0.440712,
		30.711092, 39.474762, 49.178436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277756, 40.094139, 48.618610>,  <31.031147, 40.015495, 48.869938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277756, 40.094139, 48.618610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273472, 39.837921, 48.925747>,  <30.270901, 39.684189, 49.110031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273472, 39.837921, 48.925747>,  <30.277756, 40.094139, 48.618610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273472, 39.837921, 48.925747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778660, 0.487108, 0.395493,
		-0.627355, -0.593652, -0.503986,
		-0.010710, -0.640548, 0.767843,
		30.270258, 39.645756, 49.156101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566126, 39.907955, 48.674950>,  <30.277756, 40.094139, 48.618610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566126, 39.907955, 48.674950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771124, 39.866142, 49.015873>,  <29.894123, 39.841057, 49.220425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.771124, 39.866142, 49.015873>,  <29.566126, 39.907955, 48.674950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771124, 39.866142, 49.015873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671054, 0.570530, 0.473479,
		-0.535757, -0.814598, 0.222249,
		0.512494, -0.104528, 0.852304,
		29.924871, 39.834785, 49.271564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028660, 40.024151, 49.095276>,  <29.566126, 39.907955, 48.674950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028660, 40.024151, 49.095276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351915, 40.039333, 49.330383>,  <29.545868, 40.048443, 49.471447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351915, 40.039333, 49.330383>,  <29.028660, 40.024151, 49.095276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351915, 40.039333, 49.330383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529467, 0.483978, 0.696728,
		-0.258024, -0.874257, 0.411217,
		0.808139, 0.037953, 0.587768,
		29.594357, 40.050720, 49.506714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717016, 39.826618, 49.716885>,  <29.028660, 40.024151, 49.095276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717016, 39.826618, 49.716885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056770, 40.018181, 49.805603>,  <29.260622, 40.133118, 49.858833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056770, 40.018181, 49.805603>,  <28.717016, 39.826618, 49.716885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056770, 40.018181, 49.805603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472257, 0.502044, 0.724517,
		0.235620, -0.720141, 0.652595,
		0.849386, 0.478903, 0.221800,
		29.311586, 40.161854, 49.872143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718023, 39.898544, 50.461411>,  <28.717016, 39.826618, 49.716885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718023, 39.898544, 50.461411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026497, 40.134026, 50.364494>,  <29.211582, 40.275314, 50.306347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026497, 40.134026, 50.364494>,  <28.718023, 39.898544, 50.461411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026497, 40.134026, 50.364494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218695, 0.602414, 0.767639,
		0.597825, -0.539038, 0.593332,
		0.771218, 0.588673, -0.242253,
		29.257853, 40.310635, 50.291809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013231, 40.151115, 51.212051>,  <28.718023, 39.898544, 50.461411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013231, 40.151115, 51.212051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164186, 40.400936, 50.938553>,  <29.254759, 40.550831, 50.774452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.164186, 40.400936, 50.938553>,  <29.013231, 40.151115, 51.212051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164186, 40.400936, 50.938553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181868, 0.773949, 0.606570,
		0.908022, -0.104560, 0.405664,
		0.377386, 0.624556, -0.683747,
		29.277403, 40.588303, 50.733429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526512, 40.500500, 51.517002>,  <29.013231, 40.151115, 51.212051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526512, 40.500500, 51.517002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354425, 40.721134, 51.231159>,  <29.251173, 40.853516, 51.059654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.354425, 40.721134, 51.231159>,  <29.526512, 40.500500, 51.517002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354425, 40.721134, 51.231159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182800, 0.721984, 0.667325,
		0.884023, 0.417726, -0.209781,
		-0.430218, 0.551583, -0.714611,
		29.225361, 40.886608, 51.016777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773010, 41.196964, 51.642418>,  <29.526512, 40.500500, 51.517002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773010, 41.196964, 51.642418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434753, 41.208382, 51.429222>,  <29.231800, 41.215233, 51.301304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434753, 41.208382, 51.429222>,  <29.773010, 41.196964, 51.642418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434753, 41.208382, 51.429222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440274, 0.527220, 0.726772,
		0.301746, 0.849249, -0.433273,
		-0.845641, 0.028542, -0.532989,
		29.181061, 41.216946, 51.269325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641016, 41.892822, 51.632732>,  <29.773010, 41.196964, 51.642418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641016, 41.892822, 51.632732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.293478, 41.703087, 51.576008>,  <29.084955, 41.589245, 51.541973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.293478, 41.703087, 51.576008>,  <29.641016, 41.892822, 51.632732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293478, 41.703087, 51.576008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459726, 0.666678, 0.586679,
		-0.183741, 0.574928, -0.797306,
		-0.868845, -0.474339, -0.141813,
		29.032825, 41.560783, 51.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270348, 42.472412, 51.518818>,  <29.641016, 41.892822, 51.632732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270348, 42.472412, 51.518818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996830, 42.182178, 51.549698>,  <28.832720, 42.008038, 51.568226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996830, 42.182178, 51.549698>,  <29.270348, 42.472412, 51.518818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996830, 42.182178, 51.549698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595008, 0.615706, 0.516596,
		-0.422367, 0.307307, -0.852741,
		-0.683792, -0.725581, 0.077204,
		28.791693, 41.964504, 51.572861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682602, 42.854485, 51.541779>,  <29.270348, 42.472412, 51.518818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682602, 42.854485, 51.541779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.596668, 42.499405, 51.704670>,  <28.545107, 42.286358, 51.802402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.596668, 42.499405, 51.704670>,  <28.682602, 42.854485, 51.541779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596668, 42.499405, 51.704670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512765, 0.457391, 0.726543,
		-0.831214, -0.052723, -0.553446,
		-0.214836, -0.887701, 0.407225,
		28.532217, 42.233093, 51.826836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209095, 43.081383, 51.999313>,  <28.682602, 42.854485, 51.541779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209095, 43.081383, 51.999313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271778, 42.707035, 52.125542>,  <28.309387, 42.482426, 52.201279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271778, 42.707035, 52.125542>,  <28.209095, 43.081383, 51.999313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271778, 42.707035, 52.125542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503938, 0.199027, 0.840496,
		-0.849405, -0.290740, -0.440433,
		0.156708, -0.935873, 0.315569,
		28.318790, 42.426273, 52.220211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580101, 42.789829, 52.196953>,  <28.209095, 43.081383, 51.999313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580101, 42.789829, 52.196953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833485, 42.562534, 52.407032>,  <27.985516, 42.426159, 52.533081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.833485, 42.562534, 52.407032>,  <27.580101, 42.789829, 52.196953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833485, 42.562534, 52.407032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632058, 0.011547, 0.774835,
		-0.446355, -0.822784, -0.351844,
		0.633459, -0.568237, 0.525201,
		28.023523, 42.392063, 52.564590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215088, 42.291668, 52.566967>,  <27.580101, 42.789829, 52.196953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215088, 42.291668, 52.566967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550337, 42.348148, 52.777721>,  <27.751486, 42.382038, 52.904175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.550337, 42.348148, 52.777721>,  <27.215088, 42.291668, 52.566967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550337, 42.348148, 52.777721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532940, 0.006027, 0.846132,
		0.116304, -0.989962, 0.080306,
		0.838122, 0.141207, 0.526889,
		27.801773, 42.390511, 52.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029837, 42.028084, 53.234264>,  <27.215088, 42.291668, 52.566967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029837, 42.028084, 53.234264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376831, 42.210629, 53.313461>,  <27.585028, 42.320156, 53.360981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376831, 42.210629, 53.313461>,  <27.029837, 42.028084, 53.234264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376831, 42.210629, 53.313461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237629, 0.030486, 0.970877,
		0.437034, -0.889273, 0.134891,
		0.867487, 0.456361, 0.197994,
		27.637077, 42.347538, 53.372860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384087, 41.656532, 53.854061>,  <27.029837, 42.028084, 53.234264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384087, 41.656532, 53.854061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.521240, 42.030960, 53.822548>,  <27.603533, 42.255615, 53.803642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.521240, 42.030960, 53.822548>,  <27.384087, 41.656532, 53.854061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521240, 42.030960, 53.822548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126416, 0.129084, 0.983543,
		0.930832, -0.327283, 0.162595,
		0.342885, 0.936068, -0.078781,
		27.624105, 42.311779, 53.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945131, 41.712978, 54.437695>,  <27.384087, 41.656532, 53.854061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945131, 41.712978, 54.437695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820580, 42.073578, 54.317471>,  <27.745848, 42.289940, 54.245338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.820580, 42.073578, 54.317471>,  <27.945131, 41.712978, 54.437695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820580, 42.073578, 54.317471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179366, 0.254841, 0.950202,
		0.933204, 0.349784, 0.082347,
		-0.311381, 0.901503, -0.300558,
		27.727165, 42.344028, 54.227303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185827, 42.153217, 54.889225>,  <27.945131, 41.712978, 54.437695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185827, 42.153217, 54.889225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.900543, 42.378819, 54.722740>,  <27.729372, 42.514179, 54.622849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.900543, 42.378819, 54.722740>,  <28.185827, 42.153217, 54.889225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900543, 42.378819, 54.722740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243293, 0.357690, 0.901591,
		0.657372, 0.744287, -0.117891,
		-0.713211, 0.563999, -0.416215,
		27.686581, 42.548019, 54.597874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352585, 42.839878, 55.058887>,  <28.185827, 42.153217, 54.889225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352585, 42.839878, 55.058887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963913, 42.811832, 54.968620>,  <27.730711, 42.795006, 54.914459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963913, 42.811832, 54.968620>,  <28.352585, 42.839878, 55.058887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963913, 42.811832, 54.968620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236035, 0.333736, 0.912638,
		0.011328, 0.940056, -0.340832,
		-0.971678, -0.070110, -0.225667,
		27.672409, 42.790798, 54.900921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084824, 43.570694, 55.264908>,  <28.352585, 42.839878, 55.058887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084824, 43.570694, 55.264908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777880, 43.316223, 55.232803>,  <27.593714, 43.163540, 55.213543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.777880, 43.316223, 55.232803>,  <28.084824, 43.570694, 55.264908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777880, 43.316223, 55.232803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360872, 0.325009, 0.874151,
		-0.530028, 0.699751, -0.478977,
		-0.767360, -0.636174, -0.080257,
		27.547672, 43.125370, 55.208725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515266, 44.004147, 55.397770>,  <28.084824, 43.570694, 55.264908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515266, 44.004147, 55.397770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382395, 43.635738, 55.479134>,  <27.302671, 43.414692, 55.527950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.382395, 43.635738, 55.479134>,  <27.515266, 44.004147, 55.397770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382395, 43.635738, 55.479134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381170, 0.328342, 0.864234,
		-0.862767, 0.209547, -0.460134,
		-0.332179, -0.921022, 0.203409,
		27.282742, 43.359432, 55.540157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940138, 44.118561, 55.800751>,  <27.515266, 44.004147, 55.397770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940138, 44.118561, 55.800751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.964272, 43.724602, 55.865677>,  <26.978752, 43.488228, 55.904633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.964272, 43.724602, 55.865677>,  <26.940138, 44.118561, 55.800751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964272, 43.724602, 55.865677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269976, 0.140446, 0.952569,
		-0.960975, -0.101292, -0.257424,
		0.060333, -0.984893, 0.162312,
		26.982372, 43.429134, 55.914371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331787, 43.939671, 56.108337>,  <26.940138, 44.118561, 55.800751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331787, 43.939671, 56.108337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.585394, 43.643108, 56.196285>,  <26.737558, 43.465172, 56.249054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.585394, 43.643108, 56.196285>,  <26.331787, 43.939671, 56.108337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585394, 43.643108, 56.196285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225476, 0.094736, 0.969632,
		-0.739719, -0.664338, -0.107105,
		0.634016, -0.741405, 0.219870,
		26.775599, 43.420689, 56.262245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994402, 43.549126, 56.546638>,  <26.331787, 43.939671, 56.108337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994402, 43.549126, 56.546638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.380722, 43.471035, 56.614899>,  <26.612514, 43.424183, 56.655853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.380722, 43.471035, 56.614899>,  <25.994402, 43.549126, 56.546638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380722, 43.471035, 56.614899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151099, 0.111097, 0.982256,
		-0.210717, -0.974446, 0.077800,
		0.965799, -0.195222, 0.170648,
		26.670462, 43.412468, 56.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004768, 43.065788, 57.011806>,  <25.994402, 43.549126, 56.546638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004768, 43.065788, 57.011806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361921, 43.238930, 57.061443>,  <26.576214, 43.342815, 57.091225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.361921, 43.238930, 57.061443>,  <26.004768, 43.065788, 57.011806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361921, 43.238930, 57.061443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185341, 0.102138, 0.977352,
		0.410376, -0.895659, 0.171423,
		0.892883, 0.432854, 0.124088,
		26.629786, 43.368786, 57.098671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278967, 42.439331, 57.170708>,  <26.004768, 43.065788, 57.011806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278967, 42.439331, 57.170708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.373165, 42.119461, 57.391636>,  <26.429684, 41.927540, 57.524193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.373165, 42.119461, 57.391636>,  <26.278967, 42.439331, 57.170708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373165, 42.119461, 57.391636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419517, -0.428987, -0.799985,
		0.876668, 0.420100, 0.234453,
		0.235496, -0.799679, 0.552318,
		26.443813, 41.879559, 57.557331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981291, 42.188835, 57.011902>,  <26.278967, 42.439331, 57.170708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981291, 42.188835, 57.011902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.820568, 41.853729, 57.159798>,  <26.724134, 41.652668, 57.248535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.820568, 41.853729, 57.159798>,  <26.981291, 42.188835, 57.011902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820568, 41.853729, 57.159798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468610, -0.535004, -0.702976,
		0.786738, -0.109198, 0.607552,
		-0.401807, -0.837762, 0.369737,
		26.700026, 41.602402, 57.270718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485783, 41.713966, 57.115578>,  <26.981291, 42.188835, 57.011902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485783, 41.713966, 57.115578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158730, 41.487743, 57.072449>,  <26.962498, 41.352009, 57.046570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.158730, 41.487743, 57.072449>,  <27.485783, 41.713966, 57.115578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158730, 41.487743, 57.072449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516312, -0.637389, -0.571976,
		0.254758, -0.523336, 0.813153,
		-0.817631, -0.565556, -0.107825,
		26.913441, 41.318077, 57.040100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744715, 41.135883, 56.962059>,  <27.485783, 41.713966, 57.115578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744715, 41.135883, 56.962059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359316, 41.073311, 56.875153>,  <27.128077, 41.035767, 56.823009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359316, 41.073311, 56.875153>,  <27.744715, 41.135883, 56.962059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359316, 41.073311, 56.875153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259782, -0.742494, -0.617427,
		-0.064734, -0.651330, 0.756028,
		-0.963495, -0.156434, -0.217268,
		27.070267, 41.026382, 56.809971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598808, 40.389668, 56.979259>,  <27.744715, 41.135883, 56.962059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598808, 40.389668, 56.979259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290800, 40.535583, 56.769878>,  <27.105995, 40.623135, 56.644249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.290800, 40.535583, 56.769878>,  <27.598808, 40.389668, 56.979259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290800, 40.535583, 56.769878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066482, -0.770085, -0.634468,
		-0.634547, -0.523352, 0.568728,
		-0.770019, 0.364790, -0.523449,
		27.059793, 40.645020, 56.612843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098635, 39.929928, 57.000504>,  <27.598808, 40.389668, 56.979259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098635, 39.929928, 57.000504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.038416, 40.140285, 56.665657>,  <27.002285, 40.266499, 56.464748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.038416, 40.140285, 56.665657>,  <27.098635, 39.929928, 57.000504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038416, 40.140285, 56.665657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058950, -0.840489, -0.538613,
		-0.986844, -0.130433, 0.095530,
		-0.150545, 0.525895, -0.837121,
		26.993252, 40.298054, 56.414520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629845, 39.571941, 56.493313>,  <27.098635, 39.929928, 57.000504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629845, 39.571941, 56.493313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.804996, 39.831467, 56.244377>,  <26.910088, 39.987183, 56.095016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.804996, 39.831467, 56.244377>,  <26.629845, 39.571941, 56.493313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804996, 39.831467, 56.244377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183489, -0.742155, -0.644622,
		-0.880110, 0.168074, -0.444024,
		0.437879, 0.648812, -0.622339,
		26.936359, 40.026112, 56.057674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357784, 39.395397, 55.885994>,  <26.629845, 39.571941, 56.493313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357784, 39.395397, 55.885994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.695129, 39.591343, 55.797657>,  <26.897537, 39.708908, 55.744656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.695129, 39.591343, 55.797657>,  <26.357784, 39.395397, 55.885994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695129, 39.591343, 55.797657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119897, -0.572181, -0.811316,
		-0.523795, 0.657756, -0.541290,
		0.843364, 0.489862, -0.220843,
		26.948139, 39.738300, 55.731403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363201, 39.501472, 55.094852>,  <26.357784, 39.395397, 55.885994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363201, 39.501472, 55.094852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.740524, 39.511772, 55.227222>,  <26.966917, 39.517952, 55.306644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.740524, 39.511772, 55.227222>,  <26.363201, 39.501472, 55.094852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740524, 39.511772, 55.227222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288659, -0.555821, -0.779576,
		0.163860, 0.830903, -0.531742,
		0.943306, 0.025751, 0.330925,
		27.023516, 39.519497, 55.326500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716871, 39.520905, 54.501896>,  <26.363201, 39.501472, 55.094852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716871, 39.520905, 54.501896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007927, 39.424110, 54.758640>,  <27.182560, 39.366032, 54.912685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.007927, 39.424110, 54.758640>,  <26.716871, 39.520905, 54.501896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007927, 39.424110, 54.758640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459583, -0.522666, -0.718056,
		0.509239, 0.817473, -0.269098,
		0.727640, -0.241989, 0.641858,
		27.226219, 39.351513, 54.951199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335228, 39.925797, 54.335556>,  <26.716871, 39.520905, 54.501896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335228, 39.925797, 54.335556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.385967, 39.573265, 54.517620>,  <27.416410, 39.361748, 54.626862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.385967, 39.573265, 54.517620>,  <27.335228, 39.925797, 54.335556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385967, 39.573265, 54.517620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141442, -0.438111, -0.887723,
		0.981786, 0.176986, 0.069083,
		0.126848, -0.881325, 0.455165,
		27.424021, 39.308868, 54.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668659, 39.603123, 53.878696>,  <27.335228, 39.925797, 54.335556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668659, 39.603123, 53.878696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586319, 39.292992, 54.117523>,  <27.536915, 39.106915, 54.260818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586319, 39.292992, 54.117523>,  <27.668659, 39.603123, 53.878696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586319, 39.292992, 54.117523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093770, -0.622957, -0.776616,
		0.974081, -0.103879, 0.200937,
		-0.205849, -0.775329, 0.597070,
		27.524565, 39.060394, 54.296642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283707, 39.143654, 53.797588>,  <27.668659, 39.603123, 53.878696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283707, 39.143654, 53.797588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934254, 38.962448, 53.868633>,  <27.724583, 38.853725, 53.911259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.934254, 38.962448, 53.868633>,  <28.283707, 39.143654, 53.797588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934254, 38.962448, 53.868633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106352, -0.533955, -0.838798,
		0.474826, -0.713910, 0.514659,
		-0.873630, -0.453018, 0.177610,
		27.672165, 38.826542, 53.921917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410189, 38.414207, 53.850437>,  <28.283707, 39.143654, 53.797588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410189, 38.414207, 53.850437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.033134, 38.496017, 53.744904>,  <27.806902, 38.545105, 53.681583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.033134, 38.496017, 53.744904>,  <28.410189, 38.414207, 53.850437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033134, 38.496017, 53.744904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134523, -0.490593, -0.860943,
		-0.305521, -0.847046, 0.434936,
		-0.942635, 0.204528, -0.263834,
		27.750343, 38.557377, 53.665752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072678, 37.740063, 53.572765>,  <28.410189, 38.414207, 53.850437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072678, 37.740063, 53.572765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837080, 38.035881, 53.442436>,  <27.695723, 38.213371, 53.364239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.837080, 38.035881, 53.442436>,  <28.072678, 37.740063, 53.572765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837080, 38.035881, 53.442436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011775, -0.395277, -0.918486,
		-0.808053, -0.544818, 0.224107,
		-0.588992, 0.739547, -0.325820,
		27.660383, 38.257744, 53.344688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605850, 37.435112, 53.141464>,  <28.072678, 37.740063, 53.572765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605850, 37.435112, 53.141464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607149, 37.812489, 53.008850>,  <27.607929, 38.038914, 52.929283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.607149, 37.812489, 53.008850>,  <27.605850, 37.435112, 53.141464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607149, 37.812489, 53.008850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137486, -0.328808, -0.934336,
		-0.990498, -0.042545, -0.130778,
		0.003250, 0.943438, -0.331533,
		27.608124, 38.095520, 52.909389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163914, 37.435539, 52.517311>,  <27.605850, 37.435112, 53.141464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163914, 37.435539, 52.517311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431055, 37.733128, 52.508495>,  <27.591339, 37.911678, 52.503204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.431055, 37.733128, 52.508495>,  <27.163914, 37.435539, 52.517311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431055, 37.733128, 52.508495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209254, -0.216099, -0.953684,
		-0.714273, 0.632308, -0.300000,
		0.667852, 0.743967, -0.022041,
		27.631411, 37.956318, 52.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141066, 37.616074, 51.865364>,  <27.163914, 37.435539, 52.517311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141066, 37.616074, 51.865364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.481323, 37.801632, 51.964321>,  <27.685478, 37.912968, 52.023697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.481323, 37.801632, 51.964321>,  <27.141066, 37.616074, 51.865364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481323, 37.801632, 51.964321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376449, -0.208957, -0.902565,
		-0.367004, 0.860892, -0.352381,
		0.850644, 0.463898, 0.247394,
		27.736517, 37.940800, 52.038540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150721, 38.203590, 51.409069>,  <27.141066, 37.616074, 51.865364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150721, 38.203590, 51.409069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531004, 38.168484, 51.528030>,  <27.759174, 38.147419, 51.599407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.531004, 38.168484, 51.528030>,  <27.150721, 38.203590, 51.409069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531004, 38.168484, 51.528030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297611, -0.011023, -0.954624,
		0.087063, 0.996080, 0.015641,
		0.950709, -0.087768, 0.297404,
		27.816217, 38.142155, 51.617252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556841, 38.536407, 50.931721>,  <27.150721, 38.203590, 51.409069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556841, 38.536407, 50.931721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.819382, 38.302654, 51.122593>,  <27.976906, 38.162403, 51.237114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.819382, 38.302654, 51.122593>,  <27.556841, 38.536407, 50.931721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819382, 38.302654, 51.122593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544927, -0.070220, -0.835538,
		0.521783, 0.808433, 0.272358,
		0.656352, -0.584384, 0.477177,
		28.016287, 38.127338, 51.265747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298710, 38.872768, 50.890846>,  <27.556841, 38.536407, 50.931721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298710, 38.872768, 50.890846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.338789, 38.478104, 50.942154>,  <28.362837, 38.241302, 50.972939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.338789, 38.478104, 50.942154>,  <28.298710, 38.872768, 50.890846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338789, 38.478104, 50.942154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546531, -0.053146, -0.835751,
		0.831423, 0.153841, 0.533918,
		0.100197, -0.986665, 0.128265,
		28.368849, 38.182102, 50.980633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786470, 38.725712, 50.355331>,  <28.298710, 38.872768, 50.890846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786470, 38.725712, 50.355331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697529, 38.362774, 50.498039>,  <28.644163, 38.145012, 50.583664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.697529, 38.362774, 50.498039>,  <28.786470, 38.725712, 50.355331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697529, 38.362774, 50.498039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632104, -0.412765, -0.655797,
		0.742296, 0.079697, 0.665316,
		-0.222354, -0.907344, 0.356771,
		28.630823, 38.090572, 50.605072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430262, 38.398071, 50.594883>,  <28.786470, 38.725712, 50.355331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430262, 38.398071, 50.594883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152843, 38.125072, 50.502636>,  <28.986393, 37.961273, 50.447289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.152843, 38.125072, 50.502636>,  <29.430262, 38.398071, 50.594883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152843, 38.125072, 50.502636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693078, -0.544779, -0.472079,
		0.196560, -0.487244, 0.850857,
		-0.693547, -0.682501, -0.230617,
		28.944778, 37.920322, 50.433453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601585, 37.747589, 50.823212>,  <29.430262, 38.398071, 50.594883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601585, 37.747589, 50.823212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364979, 37.714382, 50.502407>,  <29.223015, 37.694458, 50.309925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.364979, 37.714382, 50.502407>,  <29.601585, 37.747589, 50.823212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364979, 37.714382, 50.502407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696127, -0.554472, -0.456035,
		-0.406833, -0.828052, 0.385768,
		-0.591518, -0.083013, -0.802007,
		29.187523, 37.689480, 50.261806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812614, 37.147472, 50.584953>,  <29.601585, 37.747589, 50.823212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812614, 37.147472, 50.584953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611578, 37.286942, 50.268517>,  <29.490957, 37.370621, 50.078655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.611578, 37.286942, 50.268517>,  <29.812614, 37.147472, 50.584953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611578, 37.286942, 50.268517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582735, -0.539313, -0.607915,
		-0.638610, -0.766531, 0.067871,
		-0.502590, 0.348670, -0.791096,
		29.460800, 37.391544, 50.031189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564287, 36.600124, 50.247581>,  <29.812614, 37.147472, 50.584953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564287, 36.600124, 50.247581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578449, 36.907375, 49.991856>,  <29.586946, 37.091728, 49.838421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578449, 36.907375, 49.991856>,  <29.564287, 36.600124, 50.247581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578449, 36.907375, 49.991856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575279, -0.538759, -0.615461,
		-0.817191, -0.345993, -0.460965,
		0.035404, 0.768132, -0.639312,
		29.589069, 37.137814, 49.800060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487469, 36.318207, 49.591087>,  <29.564287, 36.600124, 50.247581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487469, 36.318207, 49.591087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638830, 36.672527, 49.483627>,  <29.729647, 36.885120, 49.419151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638830, 36.672527, 49.483627>,  <29.487469, 36.318207, 49.591087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638830, 36.672527, 49.483627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540101, -0.446997, -0.713081,
		-0.751732, 0.124732, -0.647565,
		0.378404, 0.885797, -0.268654,
		29.752352, 36.938267, 49.403030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170113, 36.528408, 48.869053>,  <29.487469, 36.318207, 49.591087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170113, 36.528408, 48.869053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524260, 36.706051, 48.924026>,  <29.736748, 36.812637, 48.957012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.524260, 36.706051, 48.924026>,  <29.170113, 36.528408, 48.869053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524260, 36.706051, 48.924026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407498, -0.599086, -0.689232,
		-0.223759, 0.666230, -0.711386,
		0.885369, 0.444110, 0.137437,
		29.789869, 36.839283, 48.965256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420864, 36.328537, 48.277359>,  <29.170113, 36.528408, 48.869053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420864, 36.328537, 48.277359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727200, 36.470325, 48.491962>,  <29.911001, 36.555397, 48.620724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727200, 36.470325, 48.491962>,  <29.420864, 36.328537, 48.277359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727200, 36.470325, 48.491962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636729, -0.534564, -0.555714,
		0.089815, 0.767198, -0.635090,
		0.765839, 0.354469, 0.536510,
		29.956951, 36.576668, 48.652916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870695, 36.617168, 47.812584>,  <29.420864, 36.328537, 48.277359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870695, 36.617168, 47.812584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091782, 36.505295, 48.126598>,  <30.224434, 36.438171, 48.315006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091782, 36.505295, 48.126598>,  <29.870695, 36.617168, 47.812584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091782, 36.505295, 48.126598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542077, -0.594832, -0.593572,
		0.632976, 0.753627, -0.177164,
		0.552715, -0.279680, 0.785038,
		30.257597, 36.421391, 48.362110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500248, 36.493408, 47.507923>,  <29.870695, 36.617168, 47.812584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500248, 36.493408, 47.507923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550228, 36.314392, 47.862122>,  <30.580215, 36.206982, 48.074638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550228, 36.314392, 47.862122>,  <30.500248, 36.493408, 47.507923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550228, 36.314392, 47.862122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550180, -0.711444, -0.437205,
		0.825645, 0.541809, 0.157332,
		0.124949, -0.447538, 0.885493,
		30.587713, 36.180130, 48.127769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224514, 36.210754, 47.511684>,  <30.500248, 36.493408, 47.507923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224514, 36.210754, 47.511684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006334, 36.026016, 47.791451>,  <30.875427, 35.915173, 47.959309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006334, 36.026016, 47.791451>,  <31.224514, 36.210754, 47.511684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006334, 36.026016, 47.791451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576447, -0.812493, -0.086964,
		0.608435, 0.355742, 0.709405,
		-0.545450, -0.461847, 0.699416,
		30.842699, 35.887463, 48.001274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706633, 35.727455, 47.874573>,  <31.224514, 36.210754, 47.511684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706633, 35.727455, 47.874573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.337982, 35.592869, 47.951923>,  <31.116791, 35.512119, 47.998333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.337982, 35.592869, 47.951923>,  <31.706633, 35.727455, 47.874573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337982, 35.592869, 47.951923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352938, -0.933898, 0.057177,
		0.161358, 0.120946, 0.979457,
		-0.921628, -0.336462, 0.193378,
		31.061493, 35.491932, 48.009937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787542, 35.241550, 48.362259>,  <31.706633, 35.727455, 47.874573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787542, 35.241550, 48.362259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437391, 35.160461, 48.186707>,  <31.227301, 35.111809, 48.081375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437391, 35.160461, 48.186707>,  <31.787542, 35.241550, 48.362259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437391, 35.160461, 48.186707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346783, -0.895836, -0.277885,
		-0.336833, -0.395451, 0.854495,
		-0.875377, -0.202724, -0.438883,
		31.174778, 35.099644, 48.055042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787125, 34.500568, 48.417030>,  <31.787542, 35.241550, 48.362259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787125, 34.500568, 48.417030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.489109, 34.574409, 48.160645>,  <31.310299, 34.618713, 48.006813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.489109, 34.574409, 48.160645>,  <31.787125, 34.500568, 48.417030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489109, 34.574409, 48.160645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124515, -0.905560, -0.405534,
		-0.655294, -0.381949, 0.651693,
		-0.745041, 0.184599, -0.640966,
		31.265596, 34.629787, 47.968353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277357, 33.939007, 48.461956>,  <31.787125, 34.500568, 48.417030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277357, 33.939007, 48.461956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288549, 34.109848, 48.100449>,  <31.295265, 34.212353, 47.883545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288549, 34.109848, 48.100449>,  <31.277357, 33.939007, 48.461956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288549, 34.109848, 48.100449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155362, -0.894996, -0.418145,
		-0.987461, -0.128712, -0.091399,
		0.027981, 0.427101, -0.903771,
		31.296944, 34.237980, 47.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935001, 33.488518, 48.084587>,  <31.277357, 33.939007, 48.461956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935001, 33.488518, 48.084587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121576, 33.695656, 47.797737>,  <31.233522, 33.819939, 47.625626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.121576, 33.695656, 47.797737>,  <30.935001, 33.488518, 48.084587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121576, 33.695656, 47.797737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211089, -0.852463, -0.478277,
		-0.858997, 0.071710, -0.506934,
		0.466439, 0.517847, -0.717126,
		31.261509, 33.851009, 47.582600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885786, 33.129868, 47.397053>,  <30.935001, 33.488518, 48.084587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885786, 33.129868, 47.397053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.155411, 33.402714, 47.283657>,  <31.317186, 33.566422, 47.215622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.155411, 33.402714, 47.283657>,  <30.885786, 33.129868, 47.397053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155411, 33.402714, 47.283657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406948, -0.663201, -0.628138,
		-0.616470, 0.308039, -0.724622,
		0.674061, 0.682112, -0.283487,
		31.357630, 33.607346, 47.198612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864452, 33.211029, 46.618252>,  <30.885786, 33.129868, 47.397053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864452, 33.211029, 46.618252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228373, 33.314613, 46.747990>,  <31.446724, 33.376766, 46.825832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228373, 33.314613, 46.747990>,  <30.864452, 33.211029, 46.618252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228373, 33.314613, 46.747990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412795, -0.645883, -0.642211,
		0.043182, 0.718173, -0.694523,
		0.909800, 0.258963, 0.324349,
		31.501312, 33.392303, 46.845295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156696, 33.239143, 46.000980>,  <30.864452, 33.211029, 46.618252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156696, 33.239143, 46.000980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453812, 33.220066, 46.268108>,  <31.632082, 33.208622, 46.428387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453812, 33.220066, 46.268108>,  <31.156696, 33.239143, 46.000980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453812, 33.220066, 46.268108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496260, -0.630349, -0.596982,
		0.449431, 0.774846, -0.444551,
		0.742791, -0.047690, 0.667823,
		31.676649, 33.205761, 46.468456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828922, 33.327477, 45.688038>,  <31.156696, 33.239143, 46.000980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828922, 33.327477, 45.688038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901602, 33.134064, 46.030544>,  <31.945210, 33.018017, 46.236046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.901602, 33.134064, 46.030544>,  <31.828922, 33.327477, 45.688038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901602, 33.134064, 46.030544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547121, -0.673827, -0.496604,
		0.817095, 0.558712, 0.142116,
		0.181697, -0.483527, 0.856264,
		31.956110, 32.989006, 46.287422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509899, 33.036095, 45.565384>,  <31.828922, 33.327477, 45.688038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509899, 33.036095, 45.565384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333473, 32.848736, 45.871601>,  <32.227615, 32.736320, 46.055332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333473, 32.848736, 45.871601>,  <32.509899, 33.036095, 45.565384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333473, 32.848736, 45.871601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374906, -0.871171, -0.317027,
		0.815417, 0.147178, 0.559852,
		-0.441067, -0.468401, 0.765545,
		32.201153, 32.708214, 46.101265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973251, 32.639030, 46.005043>,  <32.509899, 33.036095, 45.565384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973251, 32.639030, 46.005043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613655, 32.473442, 46.062225>,  <32.397896, 32.374088, 46.096535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613655, 32.473442, 46.062225>,  <32.973251, 32.639030, 46.005043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613655, 32.473442, 46.062225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396246, -0.907849, -0.137111,
		0.186544, -0.066615, 0.980186,
		-0.898994, -0.413972, 0.142958,
		32.343956, 32.349251, 46.105114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279636, 31.881062, 46.032463>,  <32.973251, 32.639030, 46.005043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279636, 31.881062, 46.032463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079582, 31.557028, 46.154858>,  <32.959549, 31.362608, 46.228294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079582, 31.557028, 46.154858>,  <33.279636, 31.881062, 46.032463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079582, 31.557028, 46.154858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821784, -0.332611, 0.462647,
		-0.273010, 0.482838, 0.832065,
		-0.500137, -0.810085, 0.305983,
		32.929543, 31.314003, 46.246651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108635, 31.913486, 46.794323>,  <33.279636, 31.881062, 46.032463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108635, 31.913486, 46.794323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162926, 31.561903, 46.611450>,  <33.195499, 31.350952, 46.501728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162926, 31.561903, 46.611450>,  <33.108635, 31.913486, 46.794323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162926, 31.561903, 46.611450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933114, -0.041681, 0.357157,
		-0.332982, -0.475074, 0.814511,
		0.135727, -0.878958, -0.457177,
		33.203644, 31.298216, 46.474297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227318, 31.323202, 47.256351>,  <33.108635, 31.913486, 46.794323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227318, 31.323202, 47.256351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365738, 31.396048, 46.888203>,  <33.448792, 31.439754, 46.667313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.365738, 31.396048, 46.888203>,  <33.227318, 31.323202, 47.256351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365738, 31.396048, 46.888203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936810, -0.013372, 0.349584,
		0.051356, -0.983187, -0.175232,
		0.346049, 0.182112, -0.920372,
		33.469551, 31.450682, 46.612091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760403, 30.733545, 46.973598>,  <33.227318, 31.323202, 47.256351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760403, 30.733545, 46.973598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828182, 31.098909, 46.825562>,  <33.868851, 31.318129, 46.736740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828182, 31.098909, 46.825562>,  <33.760403, 30.733545, 46.973598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828182, 31.098909, 46.825562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914989, -0.006281, 0.403429,
		0.366172, -0.406992, -0.836825,
		0.169449, 0.913410, -0.370093,
		33.879017, 31.372932, 46.714535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320297, 30.663754, 46.497490>,  <33.760403, 30.733545, 46.973598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320297, 30.663754, 46.497490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295002, 31.031160, 46.653606>,  <34.279823, 31.251604, 46.747276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295002, 31.031160, 46.653606>,  <34.320297, 30.663754, 46.497490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295002, 31.031160, 46.653606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935477, -0.081681, 0.343817,
		0.347681, 0.386850, -0.854087,
		-0.063243, 0.918518, 0.390288,
		34.276028, 31.306715, 46.770695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929379, 30.921133, 46.290848>,  <34.320297, 30.663754, 46.497490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929379, 30.921133, 46.290848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830193, 31.146666, 46.605965>,  <34.770683, 31.281984, 46.795033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830193, 31.146666, 46.605965>,  <34.929379, 30.921133, 46.290848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830193, 31.146666, 46.605965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953339, -0.002546, 0.301892,
		0.172222, 0.825886, -0.536891,
		-0.247961, 0.563832, 0.787787,
		34.755806, 31.315815, 46.842300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408100, 31.626385, 46.307362>,  <34.929379, 30.921133, 46.290848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408100, 31.626385, 46.307362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263367, 31.594372, 46.678883>,  <35.176529, 31.575165, 46.901794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263367, 31.594372, 46.678883>,  <35.408100, 31.626385, 46.307362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263367, 31.594372, 46.678883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928169, -0.123983, 0.350900,
		0.087073, 0.989052, 0.119142,
		-0.361830, -0.080030, 0.928802,
		35.154819, 31.570362, 46.957523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903831, 31.944408, 46.637032>,  <35.408100, 31.626385, 46.307362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903831, 31.944408, 46.637032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732300, 31.752583, 46.943268>,  <35.629379, 31.637487, 47.127010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732300, 31.752583, 46.943268>,  <35.903831, 31.944408, 46.637032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732300, 31.752583, 46.943268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882073, -0.039278, 0.469472,
		-0.195071, 0.876628, 0.439853,
		-0.428829, -0.479563, 0.765588,
		35.603653, 31.608713, 47.172943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032173, 32.330505, 47.301857>,  <35.903831, 31.944408, 46.637032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032173, 32.330505, 47.301857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989731, 31.936281, 47.354641>,  <35.964264, 31.699747, 47.386311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989731, 31.936281, 47.354641>,  <36.032173, 32.330505, 47.301857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989731, 31.936281, 47.354641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894858, -0.036783, 0.444832,
		-0.433555, 0.165286, 0.885839,
		-0.106108, -0.985559, 0.131960,
		35.957897, 31.640614, 47.394230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139545, 32.295818, 48.002300>,  <36.032173, 32.330505, 47.301857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139545, 32.295818, 48.002300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208225, 31.928820, 47.858795>,  <36.249435, 31.708620, 47.772694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208225, 31.928820, 47.858795>,  <36.139545, 32.295818, 48.002300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208225, 31.928820, 47.858795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867918, -0.031412, 0.495713,
		-0.466087, -0.396491, 0.790922,
		0.171702, -0.917501, -0.358762,
		36.259735, 31.653570, 47.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436707, 31.919840, 48.567383>,  <36.139545, 32.295818, 48.002300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436707, 31.919840, 48.567383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545959, 31.702415, 48.249908>,  <36.611511, 31.571960, 48.059425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.545959, 31.702415, 48.249908>,  <36.436707, 31.919840, 48.567383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545959, 31.702415, 48.249908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922400, -0.086232, 0.376488,
		-0.273085, -0.834929, 0.477827,
		0.273137, -0.543560, -0.793687,
		36.627899, 31.539347, 48.011803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775772, 31.298531, 48.727303>,  <36.436707, 31.919840, 48.567383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775772, 31.298531, 48.727303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890381, 31.319017, 48.344620>,  <36.959148, 31.331308, 48.115009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890381, 31.319017, 48.344620>,  <36.775772, 31.298531, 48.727303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890381, 31.319017, 48.344620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937391, -0.221350, 0.268892,
		-0.197994, -0.973849, -0.111432,
		0.286526, 0.051216, -0.956702,
		36.976337, 31.334381, 48.057610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096992, 30.685989, 48.482956>,  <36.775772, 31.298531, 48.727303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096992, 30.685989, 48.482956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266430, 30.971029, 48.259251>,  <37.368092, 31.142054, 48.125027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266430, 30.971029, 48.259251>,  <37.096992, 30.685989, 48.482956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266430, 30.971029, 48.259251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903791, -0.290827, 0.313977,
		0.061091, -0.638454, -0.767232,
		0.423592, 0.712598, -0.559262,
		37.393509, 31.184809, 48.091473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820316, 30.355192, 48.347569>,  <37.096992, 30.685989, 48.482956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820316, 30.355192, 48.347569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859371, 30.722208, 48.193378>,  <37.882805, 30.942417, 48.100864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.859371, 30.722208, 48.193378>,  <37.820316, 30.355192, 48.347569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859371, 30.722208, 48.193378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995052, -0.082846, 0.054843,
		0.018386, -0.388920, -0.921088,
		0.097638, 0.917539, -0.385472,
		37.888664, 30.997469, 48.077736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424999, 30.290138, 47.948593>,  <37.820316, 30.355192, 48.347569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424999, 30.290138, 47.948593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369045, 30.682680, 48.001320>,  <38.335472, 30.918205, 48.032955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369045, 30.682680, 48.001320>,  <38.424999, 30.290138, 47.948593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369045, 30.682680, 48.001320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989927, 0.135677, 0.040444,
		0.021805, 0.136149, -0.990448,
		-0.139888, 0.981354, 0.131819,
		38.327080, 30.977087, 48.040867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622353, 30.750151, 47.359322>,  <38.424999, 30.290138, 47.948593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622353, 30.750151, 47.359322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671257, 30.932922, 47.711746>,  <38.700600, 31.042585, 47.923203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671257, 30.932922, 47.711746>,  <38.622353, 30.750151, 47.359322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671257, 30.932922, 47.711746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988699, 0.021528, -0.148359,
		-0.086756, 0.889243, -0.449132,
		0.122259, 0.456928, 0.881062,
		38.707935, 31.070002, 47.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933109, 31.394100, 47.286232>,  <38.622353, 30.750151, 47.359322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933109, 31.394100, 47.286232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038521, 31.237823, 47.639030>,  <39.101768, 31.144058, 47.850708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038521, 31.237823, 47.639030>,  <38.933109, 31.394100, 47.286232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038521, 31.237823, 47.639030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962204, 0.041369, -0.269168,
		0.068675, 0.919592, 0.386827,
		0.263527, -0.390692, 0.881994,
		39.117580, 31.120617, 47.903629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496300, 31.833921, 47.706520>,  <38.933109, 31.394100, 47.286232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496300, 31.833921, 47.706520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.509113, 31.439117, 47.769493>,  <39.516800, 31.202234, 47.807278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.509113, 31.439117, 47.769493>,  <39.496300, 31.833921, 47.706520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509113, 31.439117, 47.769493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923549, -0.030992, -0.382227,
		0.382141, 0.157643, 0.910559,
		0.032036, -0.987010, 0.157435,
		39.518723, 31.143015, 47.816723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046036, 31.593065, 48.185486>,  <39.496300, 31.833921, 47.706520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046036, 31.593065, 48.185486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977867, 31.300623, 47.921230>,  <39.936966, 31.125158, 47.762676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977867, 31.300623, 47.921230>,  <40.046036, 31.593065, 48.185486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977867, 31.300623, 47.921230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960463, 0.026540, -0.277138,
		0.220150, -0.681750, 0.697676,
		-0.170423, -0.731104, -0.660639,
		39.926739, 31.081291, 47.723038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387897, 30.885355, 48.292599>,  <40.046036, 31.593065, 48.185486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387897, 30.885355, 48.292599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328812, 31.003344, 47.914989>,  <40.293362, 31.074137, 47.688423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328812, 31.003344, 47.914989>,  <40.387897, 30.885355, 48.292599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328812, 31.003344, 47.914989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988362, 0.008949, -0.151856,
		-0.036345, -0.955464, -0.292859,
		-0.147714, 0.294970, -0.944020,
		40.284496, 31.091835, 47.631783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679886, 30.444286, 47.757076>,  <40.387897, 30.885355, 48.292599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679886, 30.444286, 47.757076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707241, 30.824062, 47.634510>,  <40.723656, 31.051928, 47.560970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.707241, 30.824062, 47.634510>,  <40.679886, 30.444286, 47.757076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707241, 30.824062, 47.634510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969353, -0.135877, -0.204677,
		-0.235962, -0.283023, -0.929634,
		0.068387, 0.949439, -0.306411,
		40.727757, 31.108894, 47.542587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356182, 30.459951, 47.513729>,  <40.679886, 30.444286, 47.757076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356182, 30.459951, 47.513729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341667, 30.841133, 47.393353>,  <41.332958, 31.069841, 47.321129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341667, 30.841133, 47.393353>,  <41.356182, 30.459951, 47.513729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341667, 30.841133, 47.393353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798879, -0.153257, -0.581639,
		-0.600396, -0.261522, -0.755732,
		-0.036290, 0.952952, -0.300939,
		41.330780, 31.127018, 47.303070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311611, 30.423986, 46.715885>,  <41.356182, 30.459951, 47.513729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311611, 30.423986, 46.715885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477924, 30.746355, 46.884464>,  <41.577713, 30.939775, 46.985611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.477924, 30.746355, 46.884464>,  <41.311611, 30.423986, 46.715885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477924, 30.746355, 46.884464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748562, -0.040083, -0.661852,
		-0.516508, 0.590664, -0.619948,
		0.415781, 0.805921, 0.421446,
		41.602657, 30.988132, 47.010899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348679, 30.900602, 46.130432>,  <41.311611, 30.423986, 46.715885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348679, 30.900602, 46.130432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610485, 31.007895, 46.413177>,  <41.767570, 31.072269, 46.582825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610485, 31.007895, 46.413177>,  <41.348679, 30.900602, 46.130432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610485, 31.007895, 46.413177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659974, 0.253408, -0.707261,
		-0.368833, 0.929429, -0.011163,
		0.654520, 0.268229, 0.706864,
		41.806843, 31.088364, 46.625237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867786, 31.113970, 45.676483>,  <41.348679, 30.900602, 46.130432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867786, 31.113970, 45.676483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686588, 31.316410, 45.382912>,  <41.577869, 31.437874, 45.206768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686588, 31.316410, 45.382912>,  <41.867786, 31.113970, 45.676483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686588, 31.316410, 45.382912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890540, 0.295302, -0.346027,
		0.041608, -0.810346, -0.584472,
		-0.452997, 0.506099, -0.733933,
		41.550690, 31.468239, 45.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246170, 31.040802, 45.062492>,  <41.867786, 31.113970, 45.676483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246170, 31.040802, 45.062492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049213, 31.374439, 44.963020>,  <41.931038, 31.574621, 44.903339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.049213, 31.374439, 44.963020>,  <42.246170, 31.040802, 45.062492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049213, 31.374439, 44.963020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837819, 0.376804, -0.395067,
		-0.235820, -0.402873, -0.884354,
		-0.492391, 0.834093, -0.248677,
		41.901497, 31.624668, 44.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521076, 31.096085, 44.466145>,  <42.246170, 31.040802, 45.062492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521076, 31.096085, 44.466145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411404, 31.452988, 44.609646>,  <42.345600, 31.667130, 44.695747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.411404, 31.452988, 44.609646>,  <42.521076, 31.096085, 44.466145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411404, 31.452988, 44.609646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902336, 0.367705, -0.224907,
		-0.332589, 0.262050, -0.905933,
		-0.274179, 0.892257, 0.358751,
		42.329151, 31.720665, 44.717270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642128, 31.680405, 43.930637>,  <42.521076, 31.096085, 44.466145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642128, 31.680405, 43.930637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657463, 31.797920, 44.312679>,  <42.666664, 31.868429, 44.541904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657463, 31.797920, 44.312679>,  <42.642128, 31.680405, 43.930637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657463, 31.797920, 44.312679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892335, 0.420114, -0.165050,
		-0.449741, 0.858599, -0.246050,
		0.038342, 0.293789, 0.955101,
		42.668964, 31.886057, 44.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702106, 32.484245, 43.972923>,  <42.642128, 31.680405, 43.930637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702106, 32.484245, 43.972923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.909138, 32.303963, 44.263847>,  <43.033356, 32.195793, 44.438400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.909138, 32.303963, 44.263847>,  <42.702106, 32.484245, 43.972923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909138, 32.303963, 44.263847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836096, 0.447034, -0.317969,
		-0.181824, 0.772675, 0.608205,
		0.517575, -0.450704, 0.727312,
		43.064411, 32.168751, 44.482040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947044, 33.120087, 44.257545>,  <42.702106, 32.484245, 43.972923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947044, 33.120087, 44.257545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199425, 32.812218, 44.296562>,  <43.350853, 32.627499, 44.319973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.199425, 32.812218, 44.296562>,  <42.947044, 33.120087, 44.257545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199425, 32.812218, 44.296562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767793, 0.601411, -0.220905,
		0.111361, 0.214272, 0.970405,
		0.630946, -0.769670, 0.097543,
		43.388710, 32.581318, 44.325825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498116, 33.215931, 44.825890>,  <42.947044, 33.120087, 44.257545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498116, 33.215931, 44.825890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604019, 32.992256, 44.511639>,  <43.667561, 32.858051, 44.323090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604019, 32.992256, 44.511639>,  <43.498116, 33.215931, 44.825890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604019, 32.992256, 44.511639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646266, 0.707561, -0.285828,
		0.715710, -0.432046, 0.548721,
		0.264763, -0.559190, -0.785625,
		43.683449, 32.824501, 44.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232140, 33.180695, 44.790958>,  <43.498116, 33.215931, 44.825890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232140, 33.180695, 44.790958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.092720, 33.113331, 44.422142>,  <44.009068, 33.072914, 44.200851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.092720, 33.113331, 44.422142>,  <44.232140, 33.180695, 44.790958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092720, 33.113331, 44.422142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676192, 0.636036, -0.371782,
		0.649060, -0.753058, -0.107813,
		-0.348547, -0.168407, -0.922038,
		43.988155, 33.062809, 44.145531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817242, 32.874298, 44.453354>,  <44.232140, 33.180695, 44.790958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817242, 32.874298, 44.453354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554489, 33.078083, 44.231022>,  <44.396835, 33.200356, 44.097622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554489, 33.078083, 44.231022>,  <44.817242, 32.874298, 44.453354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554489, 33.078083, 44.231022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720748, 0.640759, -0.264480,
		0.221414, -0.574349, -0.788098,
		-0.656885, 0.509461, -0.555834,
		44.357422, 33.230923, 44.064270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104305, 32.947430, 43.732193>,  <44.817242, 32.874298, 44.453354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104305, 32.947430, 43.732193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.877872, 33.253345, 43.855251>,  <44.742012, 33.436893, 43.929089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.877872, 33.253345, 43.855251>,  <45.104305, 32.947430, 43.732193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877872, 33.253345, 43.855251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739397, 0.636067, -0.220705,
		-0.364479, 0.102539, -0.925549,
		-0.566081, 0.764790, 0.307650,
		44.708050, 33.482784, 43.947548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986141, 33.379383, 43.186760>,  <45.104305, 32.947430, 43.732193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986141, 33.379383, 43.186760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.985966, 33.591446, 43.525921>,  <44.985863, 33.718685, 43.729416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.985966, 33.591446, 43.525921>,  <44.986141, 33.379383, 43.186760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985966, 33.591446, 43.525921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682620, 0.619781, -0.387171,
		-0.730773, 0.578625, -0.362166,
		-0.000436, 0.530156, 0.847900,
		44.985836, 33.750492, 43.780293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265530, 33.174728, 42.519459>,  <44.986141, 33.379383, 43.186760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265530, 33.174728, 42.519459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.646194, 33.063976, 42.572636>,  <45.874592, 32.997524, 42.604542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.646194, 33.063976, 42.572636>,  <45.265530, 33.174728, 42.519459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646194, 33.063976, 42.572636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167056, 0.103396, -0.980511,
		0.257739, 0.955325, 0.144653,
		0.951663, -0.276881, 0.132943,
		45.931694, 32.980911, 42.612518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760391, 33.743927, 42.265007>,  <45.265530, 33.174728, 42.519459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760391, 33.743927, 42.265007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.887039, 33.365135, 42.243134>,  <45.963028, 33.137859, 42.230011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.887039, 33.365135, 42.243134>,  <45.760391, 33.743927, 42.265007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887039, 33.365135, 42.243134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052402, 0.075025, -0.995804,
		0.947104, 0.312425, 0.073378,
		0.316619, -0.946975, -0.054685,
		45.982025, 33.081043, 42.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480885, 33.732376, 42.035469>,  <45.760391, 33.743927, 42.265007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.480885, 33.732376, 42.035469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.255768, 33.411823, 41.954430>,  <46.120697, 33.219490, 41.905807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.255768, 33.411823, 41.954430>,  <46.480885, 33.732376, 42.035469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.255768, 33.411823, 41.954430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065731, 0.287708, -0.955460,
		0.823980, -0.524410, -0.214596,
		-0.562794, -0.801385, -0.202596,
		46.086929, 33.171410, 41.893650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843674, 33.420670, 41.523857>,  <46.480885, 33.732376, 42.035469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843674, 33.420670, 41.523857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.444786, 33.391968, 41.531868>,  <46.205452, 33.374748, 41.536674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.444786, 33.391968, 41.531868>,  <46.843674, 33.420670, 41.523857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444786, 33.391968, 41.531868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039402, 0.279899, -0.959221,
		0.063221, -0.957344, -0.281948,
		-0.997222, -0.071752, 0.020026,
		46.145618, 33.370441, 41.537876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660873, 33.040302, 40.983368>,  <46.843674, 33.420670, 41.523857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660873, 33.040302, 40.983368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.354710, 33.281498, 41.073299>,  <46.171013, 33.426216, 41.127258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.354710, 33.281498, 41.073299>,  <46.660873, 33.040302, 40.983368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354710, 33.281498, 41.073299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077160, 0.260858, -0.962289,
		-0.638903, -0.753891, -0.153136,
		-0.765408, 0.602994, 0.224833,
		46.125088, 33.462395, 41.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056561, 32.890053, 40.528805>,  <46.660873, 33.040302, 40.983368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056561, 32.890053, 40.528805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042088, 33.265938, 40.664829>,  <46.033401, 33.491467, 40.746445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.042088, 33.265938, 40.664829>,  <46.056561, 32.890053, 40.528805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042088, 33.265938, 40.664829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169007, 0.329626, -0.928861,
		-0.984950, -0.091084, 0.146890,
		-0.036186, 0.939708, 0.340059,
		46.031231, 33.547852, 40.766846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414349, 33.221077, 40.214905>,  <46.056561, 32.890053, 40.528805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414349, 33.221077, 40.214905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.737278, 33.449093, 40.275936>,  <45.931034, 33.585903, 40.312553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.737278, 33.449093, 40.275936>,  <45.414349, 33.221077, 40.214905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737278, 33.449093, 40.275936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098256, 0.384796, -0.917757,
		-0.581872, 0.725935, 0.366665,
		0.807323, 0.570045, 0.152575,
		45.979473, 33.620106, 40.321709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222019, 33.818497, 40.020309>,  <45.414349, 33.221077, 40.214905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222019, 33.818497, 40.020309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.618843, 33.793835, 39.976452>,  <45.856937, 33.779037, 39.950138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.618843, 33.793835, 39.976452>,  <45.222019, 33.818497, 40.020309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618843, 33.793835, 39.976452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075316, 0.407013, -0.910312,
		0.100756, 0.911339, 0.399136,
		0.992056, -0.061658, -0.109647,
		45.916458, 33.775337, 39.943558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636185, 34.480003, 39.992626>,  <45.222019, 33.818497, 40.020309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636185, 34.480003, 39.992626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.793629, 34.191673, 39.764420>,  <45.888096, 34.018677, 39.627495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.793629, 34.191673, 39.764420>,  <45.636185, 34.480003, 39.992626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793629, 34.191673, 39.764420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028301, 0.610814, -0.791268,
		0.918840, 0.327601, 0.220026,
		0.393615, -0.720821, -0.570512,
		45.911713, 33.975426, 39.593266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264668, 34.610050, 39.714954>,  <45.636185, 34.480003, 39.992626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264668, 34.610050, 39.714954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.069233, 34.361702, 39.469742>,  <45.951973, 34.212692, 39.322613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.069233, 34.361702, 39.469742>,  <46.264668, 34.610050, 39.714954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069233, 34.361702, 39.469742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057049, 0.678367, -0.732505,
		0.870651, -0.392862, -0.296018,
		-0.488582, -0.620869, -0.613033,
		45.922657, 34.175442, 39.285831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632851, 34.285255, 39.155849>,  <46.264668, 34.610050, 39.714954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632851, 34.285255, 39.155849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.247555, 34.347214, 39.068043>,  <46.016376, 34.384388, 39.015358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.247555, 34.347214, 39.068043>,  <46.632851, 34.285255, 39.155849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.247555, 34.347214, 39.068043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266593, 0.652198, -0.709623,
		0.033249, -0.742055, -0.669514,
		-0.963236, 0.154893, -0.219512,
		45.958584, 34.393681, 39.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401329, 34.246571, 38.439396>,  <46.632851, 34.285255, 39.155849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401329, 34.246571, 38.439396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.155903, 34.515858, 38.604473>,  <46.008648, 34.677429, 38.703518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.155903, 34.515858, 38.604473>,  <46.401329, 34.246571, 38.439396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155903, 34.515858, 38.604473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267911, 0.669108, -0.693194,
		-0.742808, -0.314754, -0.590903,
		-0.613563, 0.673219, 0.412693,
		45.971832, 34.717823, 38.728283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845947, 34.395058, 37.865627>,  <46.401329, 34.246571, 38.439396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845947, 34.395058, 37.865627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.924881, 34.666634, 38.148499>,  <45.972240, 34.829578, 38.318222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.924881, 34.666634, 38.148499>,  <45.845947, 34.395058, 37.865627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924881, 34.666634, 38.148499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127420, 0.697477, -0.705188,
		-0.972020, 0.229266, 0.051125,
		0.197334, 0.678942, 0.707175,
		45.984081, 34.870316, 38.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202152, 34.188084, 37.351414>,  <45.845947, 34.395058, 37.865627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202152, 34.188084, 37.351414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342728, 33.820019, 37.282379>,  <45.427071, 33.599178, 37.240959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.342728, 33.820019, 37.282379>,  <45.202152, 34.188084, 37.351414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342728, 33.820019, 37.282379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357226, 0.038603, -0.933220,
		0.865380, 0.389619, -0.315141,
		0.351435, -0.920166, -0.172588,
		45.448158, 33.543968, 37.230602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361412, 34.164204, 36.706814>,  <45.202152, 34.188084, 37.351414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361412, 34.164204, 36.706814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.301441, 33.775932, 36.781975>,  <45.265457, 33.542969, 36.827072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.301441, 33.775932, 36.781975>,  <45.361412, 34.164204, 36.706814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301441, 33.775932, 36.781975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212226, -0.154024, -0.965006,
		0.965651, -0.184559, -0.182911,
		-0.149927, -0.970677, 0.187902,
		45.256462, 33.484730, 36.838345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775032, 33.665836, 36.239391>,  <45.361412, 34.164204, 36.706814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775032, 33.665836, 36.239391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.449078, 33.480095, 36.378151>,  <45.253506, 33.368649, 36.461407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.449078, 33.480095, 36.378151>,  <45.775032, 33.665836, 36.239391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449078, 33.480095, 36.378151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186379, -0.356787, -0.915405,
		0.548841, -0.810603, 0.204194,
		-0.814884, -0.464355, 0.346899,
		45.204613, 33.340790, 36.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039570, 33.217045, 35.697529>,  <45.775032, 33.665836, 36.239391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039570, 33.217045, 35.697529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.150009, 33.151562, 35.318695>,  <46.216270, 33.112270, 35.091396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.150009, 33.151562, 35.318695>,  <46.039570, 33.217045, 35.697529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150009, 33.151562, 35.318695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283041, 0.927842, -0.242893,
		0.918509, 0.335126, 0.209837,
		0.276095, -0.163707, -0.947086,
		46.232838, 33.102451, 35.034569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416836, 33.817757, 35.516224>,  <46.039570, 33.217045, 35.697529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416836, 33.817757, 35.516224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.280987, 33.653595, 35.177704>,  <46.199478, 33.555099, 34.974590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.280987, 33.653595, 35.177704>,  <46.416836, 33.817757, 35.516224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280987, 33.653595, 35.177704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238607, 0.907943, -0.344538,
		0.909792, 0.084920, -0.406284,
		-0.339625, -0.410400, -0.846302,
		46.179100, 33.530476, 34.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.974545, 33.608002, 35.141167>,  <46.416836, 33.817757, 35.516224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.974545, 33.608002, 35.141167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.246853, 33.660618, 34.852928>,  <47.410236, 33.692188, 34.679985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.246853, 33.660618, 34.852928>,  <46.974545, 33.608002, 35.141167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246853, 33.660618, 34.852928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347154, 0.808312, 0.475516,
		0.645011, -0.573873, 0.504609,
		0.680767, 0.131536, -0.720593,
		47.451084, 33.700077, 34.636749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.636753, 33.718643, 35.401764>,  <46.974545, 33.608002, 35.141167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.636753, 33.718643, 35.401764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.585625, 33.915512, 35.057339>,  <47.554947, 34.033634, 34.850685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.585625, 33.915512, 35.057339>,  <47.636753, 33.718643, 35.401764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.585625, 33.915512, 35.057339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088761, 0.870376, 0.484321,
		0.987817, -0.014522, -0.154939,
		-0.127822, 0.492173, -0.861062,
		47.547279, 34.063164, 34.799019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.035183, 34.308334, 35.279705>,  <47.636753, 33.718643, 35.401764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.035183, 34.308334, 35.279705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.718628, 34.431694, 35.068573>,  <47.528694, 34.505711, 34.941895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.718628, 34.431694, 35.068573>,  <48.035183, 34.308334, 35.279705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718628, 34.431694, 35.068573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047465, 0.891815, 0.449903,
		0.609473, 0.330993, -0.720407,
		-0.791384, 0.308398, -0.527827,
		47.481213, 34.524212, 34.910225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054722, 34.967091, 35.045723>,  <48.035183, 34.308334, 35.279705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054722, 34.967091, 35.045723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.660610, 34.902908, 35.069321>,  <47.424145, 34.864399, 35.083481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.660610, 34.902908, 35.069321>,  <48.054722, 34.967091, 35.045723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660610, 34.902908, 35.069321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129779, 0.926634, 0.352855,
		-0.111287, 0.340004, -0.933816,
		-0.985278, -0.160458, 0.058997,
		47.365028, 34.854771, 35.087021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.385845, 35.128738, 56.749557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.740910, 35.270618, 56.867027>,  <32.953949, 35.355747, 56.937511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.740910, 35.270618, 56.867027>,  <32.385845, 35.128738, 56.749557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740910, 35.270618, 56.867027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444164, -0.491116, -0.749349,
		-0.121565, 0.795608, -0.593489,
		0.887660, 0.354701, 0.293678,
		33.007206, 35.377029, 56.955132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568771, 35.625751, 56.233364>,  <32.385845, 35.128738, 56.749557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568771, 35.625751, 56.233364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.886662, 35.497097, 56.439262>,  <33.077396, 35.419903, 56.562801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.886662, 35.497097, 56.439262>,  <32.568771, 35.625751, 56.233364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886662, 35.497097, 56.439262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379330, -0.398850, -0.834882,
		0.473835, 0.858759, -0.194969,
		0.794726, -0.321639, 0.514742,
		33.125080, 35.400604, 56.593685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984215, 35.782169, 55.780243>,  <32.568771, 35.625751, 56.233364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984215, 35.782169, 55.780243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.189114, 35.532013, 56.015694>,  <33.312054, 35.381920, 56.156963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.189114, 35.532013, 56.015694>,  <32.984215, 35.782169, 55.780243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189114, 35.532013, 56.015694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404220, -0.429157, -0.807732,
		0.757764, 0.651696, 0.032961,
		0.512251, -0.625393, 0.588628,
		33.342789, 35.344395, 56.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636227, 35.848328, 55.559231>,  <32.984215, 35.782169, 55.780243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636227, 35.848328, 55.559231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.609001, 35.497318, 55.749104>,  <33.592667, 35.286713, 55.863026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.609001, 35.497318, 55.749104>,  <33.636227, 35.848328, 55.559231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609001, 35.497318, 55.749104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460622, -0.449683, -0.765254,
		0.884983, 0.166562, 0.434813,
		-0.068066, -0.877521, 0.474683,
		33.588581, 35.234062, 55.891510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293266, 35.671467, 55.489544>,  <33.636227, 35.848328, 55.559231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293266, 35.671467, 55.489544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094051, 35.331913, 55.560375>,  <33.974522, 35.128181, 55.602875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.094051, 35.331913, 55.560375>,  <34.293266, 35.671467, 55.489544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094051, 35.331913, 55.560375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370867, -0.393102, -0.841385,
		0.783846, -0.353370, 0.510603,
		-0.498039, -0.848882, 0.177078,
		33.944641, 35.077248, 55.613499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826950, 35.105343, 55.507256>,  <34.293266, 35.671467, 55.489544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826950, 35.105343, 55.507256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.476562, 34.934273, 55.418022>,  <34.266331, 34.831631, 55.364483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.476562, 34.934273, 55.418022>,  <34.826950, 35.105343, 55.507256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476562, 34.934273, 55.418022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466277, -0.632335, -0.618657,
		0.123524, -0.645944, 0.753324,
		-0.875972, -0.427677, -0.223081,
		34.213772, 34.805969, 55.351097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939911, 34.410774, 55.511013>,  <34.826950, 35.105343, 55.507256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939911, 34.410774, 55.511013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.601017, 34.398964, 55.298855>,  <34.397682, 34.391880, 55.171558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.601017, 34.398964, 55.298855>,  <34.939911, 34.410774, 55.511013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601017, 34.398964, 55.298855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422519, -0.642633, -0.639141,
		-0.321983, -0.765605, 0.556934,
		-0.847234, -0.029523, -0.530399,
		34.346848, 34.390106, 55.139736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935425, 33.779510, 55.174309>,  <34.939911, 34.410774, 55.511013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935425, 33.779510, 55.174309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.652077, 33.956059, 54.953983>,  <34.482067, 34.061989, 54.821789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.652077, 33.956059, 54.953983>,  <34.935425, 33.779510, 55.174309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652077, 33.956059, 54.953983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242754, -0.580427, -0.777287,
		-0.662783, -0.684321, 0.304013,
		-0.708371, 0.441372, -0.550819,
		34.439564, 34.088470, 54.788738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652443, 33.170223, 54.849125>,  <34.935425, 33.779510, 55.174309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652443, 33.170223, 54.849125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.517368, 33.487751, 54.646812>,  <34.436325, 33.678268, 54.525425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.517368, 33.487751, 54.646812>,  <34.652443, 33.170223, 54.849125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517368, 33.487751, 54.646812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090542, -0.507457, -0.856907,
		-0.936894, -0.335159, 0.099486,
		-0.337685, 0.793824, -0.505780,
		34.416061, 33.725899, 54.495079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166805, 32.954842, 54.485470>,  <34.652443, 33.170223, 54.849125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166805, 32.954842, 54.485470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.276199, 33.286541, 54.290508>,  <34.341835, 33.485561, 54.173531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.276199, 33.286541, 54.290508>,  <34.166805, 32.954842, 54.485470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276199, 33.286541, 54.290508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019435, -0.501853, -0.864735,
		-0.961681, 0.245961, -0.121131,
		0.273481, 0.829245, -0.487403,
		34.358242, 33.535313, 54.144287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894073, 33.009064, 53.838913>,  <34.166805, 32.954842, 54.485470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894073, 33.009064, 53.838913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.213516, 33.244991, 53.791023>,  <34.405182, 33.386547, 53.762291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.213516, 33.244991, 53.791023>,  <33.894073, 33.009064, 53.838913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213516, 33.244991, 53.791023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055533, -0.270295, -0.961175,
		-0.599280, 0.760956, -0.248615,
		0.798611, 0.589819, -0.119724,
		34.453098, 33.421936, 53.755108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799038, 33.229614, 53.187775>,  <33.894073, 33.009064, 53.838913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799038, 33.229614, 53.187775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184345, 33.302696, 53.266491>,  <34.415531, 33.346546, 53.313721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184345, 33.302696, 53.266491>,  <33.799038, 33.229614, 53.187775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184345, 33.302696, 53.266491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224682, -0.147056, -0.963272,
		-0.147056, 0.972107, -0.182706,
		0.963272, 0.182706, 0.196790,
		34.473328, 33.357510, 53.325527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869545, 33.734966, 52.727722>,  <33.799038, 33.229614, 53.187775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869545, 33.734966, 52.727722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.211220, 33.570518, 52.855064>,  <34.416225, 33.471851, 52.931469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.211220, 33.570518, 52.855064>,  <33.869545, 33.734966, 52.727722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211220, 33.570518, 52.855064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241103, -0.229292, -0.943024,
		0.460689, 0.882274, -0.096737,
		0.854187, -0.411118, 0.318351,
		34.467476, 33.447182, 52.950569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455826, 33.992592, 52.323910>,  <33.869545, 33.734966, 52.727722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455826, 33.992592, 52.323910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.559319, 33.634605, 52.469296>,  <34.621414, 33.419815, 52.556526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.559319, 33.634605, 52.469296>,  <34.455826, 33.992592, 52.323910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559319, 33.634605, 52.469296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394412, -0.245598, -0.885506,
		0.881759, 0.372459, 0.289440,
		0.258729, -0.894961, 0.363460,
		34.636936, 33.366116, 52.578335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100014, 33.905636, 52.041161>,  <34.455826, 33.992592, 52.323910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100014, 33.905636, 52.041161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.998272, 33.535858, 52.154793>,  <34.937229, 33.313992, 52.222973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.998272, 33.535858, 52.154793>,  <35.100014, 33.905636, 52.041161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998272, 33.535858, 52.154793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333678, -0.359588, -0.871410,
		0.907725, -0.126852, 0.399930,
		-0.254350, -0.924449, 0.284079,
		34.921967, 33.258522, 52.240017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665958, 33.538593, 51.999046>,  <35.100014, 33.905636, 52.041161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665958, 33.538593, 51.999046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.356285, 33.285519, 51.991653>,  <35.170483, 33.133675, 51.987217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.356285, 33.285519, 51.991653>,  <35.665958, 33.538593, 51.999046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356285, 33.285519, 51.991653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364121, -0.421283, -0.830624,
		0.517741, -0.649786, 0.556527,
		-0.774184, -0.632691, -0.018485,
		35.124031, 33.095711, 51.986107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914425, 32.974895, 51.695782>,  <35.665958, 33.538593, 51.999046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914425, 32.974895, 51.695782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527008, 32.881340, 51.661808>,  <35.294556, 32.825207, 51.641426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.527008, 32.881340, 51.661808>,  <35.914425, 32.974895, 51.695782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527008, 32.881340, 51.661808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198677, -0.521376, -0.829876,
		0.149817, -0.820647, 0.551446,
		-0.968547, -0.233889, -0.084932,
		35.236443, 32.811172, 51.636330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767876, 32.235142, 51.702839>,  <35.914425, 32.974895, 51.695782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767876, 32.235142, 51.702839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469208, 32.407932, 51.500496>,  <35.290009, 32.511604, 51.379089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.469208, 32.407932, 51.500496>,  <35.767876, 32.235142, 51.702839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469208, 32.407932, 51.500496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284272, -0.480308, -0.829755,
		-0.601400, -0.763350, 0.235830,
		-0.746664, 0.431974, -0.505856,
		35.245209, 32.537525, 51.348740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456486, 31.668406, 51.205044>,  <35.767876, 32.235142, 51.702839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456486, 31.668406, 51.205044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326035, 32.010902, 51.044796>,  <35.247765, 32.216400, 50.948647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326035, 32.010902, 51.044796>,  <35.456486, 31.668406, 51.205044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326035, 32.010902, 51.044796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141425, -0.374825, -0.916245,
		-0.934688, -0.355467, 0.001146,
		-0.326124, 0.856241, -0.400617,
		35.228199, 32.267776, 50.924610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958477, 31.454092, 50.709709>,  <35.456486, 31.668406, 51.205044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958477, 31.454092, 50.709709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 31.822575, 50.607979>,  <35.146915, 32.043663, 50.546940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 31.822575, 50.607979>,  <34.958477, 31.454092, 50.709709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076252, 31.822575, 50.607979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138267, -0.304385, -0.942460,
		-0.945615, 0.242332, -0.216995,
		0.294439, 0.921208, -0.254325,
		35.164585, 32.098938, 50.531681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505306, 31.650057, 50.085968>,  <34.958477, 31.454092, 50.709709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505306, 31.650057, 50.085968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835060, 31.876425, 50.081512>,  <35.032913, 32.012245, 50.078838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.835060, 31.876425, 50.081512>,  <34.505306, 31.650057, 50.085968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835060, 31.876425, 50.081512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071521, -0.123670, -0.989743,
		-0.561494, 0.815132, -0.142427,
		0.824385, 0.565921, -0.011141,
		35.082375, 32.046200, 50.078171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490517, 32.124313, 49.528717>,  <34.505306, 31.650057, 50.085968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490517, 32.124313, 49.528717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884319, 32.097393, 49.593491>,  <35.120602, 32.081242, 49.632355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.884319, 32.097393, 49.593491>,  <34.490517, 32.124313, 49.528717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884319, 32.097393, 49.593491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161290, -0.014860, -0.986795,
		0.068815, 0.997622, -0.003775,
		0.984505, -0.067298, 0.161929,
		35.179672, 32.077206, 49.642071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200115, 32.205463, 48.913467>,  <34.490517, 32.124313, 49.528717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200115, 32.205463, 48.913467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831547, 32.108589, 48.791927>,  <33.610405, 32.050465, 48.719006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831547, 32.108589, 48.791927>,  <34.200115, 32.205463, 48.913467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831547, 32.108589, 48.791927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377086, 0.368752, 0.849605,
		-0.093720, 0.897423, -0.431103,
		-0.921424, -0.242188, -0.303846,
		33.555119, 32.035934, 48.700775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744270, 32.781353, 49.085197>,  <34.200115, 32.205463, 48.913467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744270, 32.781353, 49.085197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532177, 32.444599, 49.045044>,  <33.404919, 32.242546, 49.020950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532177, 32.444599, 49.045044>,  <33.744270, 32.781353, 49.085197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532177, 32.444599, 49.045044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538739, 0.243129, 0.806628,
		-0.654682, 0.481785, -0.582473,
		-0.530237, -0.841886, -0.100384,
		33.373104, 32.192032, 49.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104961, 32.990620, 49.259090>,  <33.744270, 32.781353, 49.085197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104961, 32.990620, 49.259090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101059, 32.592155, 49.293877>,  <33.098717, 32.353077, 49.314747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.101059, 32.592155, 49.293877>,  <33.104961, 32.990620, 49.259090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101059, 32.592155, 49.293877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473812, 0.081187, 0.876875,
		-0.880572, -0.032653, -0.472787,
		-0.009752, -0.996164, 0.086962,
		33.098133, 32.293304, 49.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388454, 32.836910, 49.387245>,  <33.104961, 32.990620, 49.259090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388454, 32.836910, 49.387245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598885, 32.517513, 49.504311>,  <32.725143, 32.325874, 49.574551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598885, 32.517513, 49.504311>,  <32.388454, 32.836910, 49.387245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598885, 32.517513, 49.504311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465655, 0.017505, 0.884793,
		-0.711626, -0.601748, -0.362614,
		0.526074, -0.798494, 0.292664,
		32.756706, 32.277966, 49.592110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830811, 32.498089, 49.817146>,  <32.388454, 32.836910, 49.387245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830811, 32.498089, 49.817146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.185135, 32.346058, 49.923641>,  <32.397728, 32.254841, 49.987537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.185135, 32.346058, 49.923641>,  <31.830811, 32.498089, 49.817146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185135, 32.346058, 49.923641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278355, 0.023846, 0.960182,
		-0.371290, -0.924648, -0.084673,
		0.885811, -0.380075, 0.266234,
		32.450878, 32.232037, 50.003510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646181, 32.042984, 50.339668>,  <31.830811, 32.498089, 49.817146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646181, 32.042984, 50.339668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.038498, 32.095196, 50.397652>,  <32.273888, 32.126522, 50.432442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.038498, 32.095196, 50.397652>,  <31.646181, 32.042984, 50.339668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038498, 32.095196, 50.397652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129678, -0.118818, 0.984411,
		0.145720, -0.984299, -0.099608,
		0.980790, 0.130532, 0.144956,
		32.332733, 32.134354, 50.441139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867037, 31.567013, 50.909184>,  <31.646181, 32.042984, 50.339668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867037, 31.567013, 50.909184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.145290, 31.853615, 50.888363>,  <32.312244, 32.025578, 50.875870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.145290, 31.853615, 50.888363>,  <31.867037, 31.567013, 50.909184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145290, 31.853615, 50.888363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002884, 0.069665, 0.997566,
		0.718390, -0.694092, 0.046395,
		0.695635, 0.716508, -0.052049,
		32.353981, 32.068565, 50.872749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300774, 31.429075, 51.460083>,  <31.867037, 31.567013, 50.909184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300774, 31.429075, 51.460083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.373947, 31.812599, 51.373165>,  <32.417850, 32.042713, 51.321014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.373947, 31.812599, 51.373165>,  <32.300774, 31.429075, 51.460083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373947, 31.812599, 51.373165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077569, 0.206262, 0.975417,
		0.980060, -0.195295, -0.036642,
		0.182937, 0.958810, -0.217298,
		32.428829, 32.100243, 51.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851448, 31.592869, 51.860302>,  <32.300774, 31.429075, 51.460083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851448, 31.592869, 51.860302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.646210, 31.927938, 51.785423>,  <32.523067, 32.128979, 51.740498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.646210, 31.927938, 51.785423>,  <32.851448, 31.592869, 51.860302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646210, 31.927938, 51.785423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006082, 0.214538, 0.976697,
		0.858312, 0.502274, -0.104983,
		-0.513092, 0.837672, -0.187195,
		32.492283, 32.179241, 51.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189945, 32.108963, 52.225113>,  <32.851448, 31.592869, 51.860302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189945, 32.108963, 52.225113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.832569, 32.272881, 52.151539>,  <32.618145, 32.371231, 52.107395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.832569, 32.272881, 52.151539>,  <33.189945, 32.108963, 52.225113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832569, 32.272881, 52.151539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030502, 0.353199, 0.935051,
		0.448147, 0.841022, -0.303062,
		-0.893440, 0.409796, -0.183938,
		32.564537, 32.395821, 52.096359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351597, 32.687187, 52.523933>,  <33.189945, 32.108963, 52.225113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351597, 32.687187, 52.523933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.952759, 32.665539, 52.502460>,  <32.713455, 32.652550, 52.489578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.952759, 32.665539, 52.502460>,  <33.351597, 32.687187, 52.523933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952759, 32.665539, 52.502460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071438, 0.417733, 0.905757,
		-0.026596, 0.906956, -0.420384,
		-0.997090, -0.054121, -0.053681,
		32.653633, 32.649303, 52.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130314, 33.357391, 52.617111>,  <33.351597, 32.687187, 52.523933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130314, 33.357391, 52.617111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.799049, 33.147247, 52.695236>,  <32.600292, 33.021160, 52.742111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.799049, 33.147247, 52.695236>,  <33.130314, 33.357391, 52.617111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799049, 33.147247, 52.695236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222285, 0.627747, 0.746005,
		-0.514529, 0.574396, -0.636655,
		-0.828160, -0.525360, 0.195315,
		32.550602, 32.989639, 52.753830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559078, 33.774418, 52.882790>,  <33.130314, 33.357391, 52.617111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559078, 33.774418, 52.882790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.374599, 33.434315, 52.984272>,  <32.263912, 33.230255, 53.045162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.374599, 33.434315, 52.984272>,  <32.559078, 33.774418, 52.882790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374599, 33.434315, 52.984272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565814, 0.502070, 0.654049,
		-0.683487, 0.158093, -0.712637,
		-0.461194, -0.850254, 0.253708,
		32.236240, 33.179237, 53.060383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828367, 33.952885, 52.874287>,  <32.559078, 33.774418, 52.882790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828367, 33.952885, 52.874287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.900427, 33.636311, 53.107929>,  <31.943663, 33.446365, 53.248116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.900427, 33.636311, 53.107929>,  <31.828367, 33.952885, 52.874287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900427, 33.636311, 53.107929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610756, 0.375482, 0.697130,
		-0.771053, -0.482332, -0.415731,
		0.180148, -0.791435, 0.584103,
		31.954472, 33.398880, 53.283161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220875, 33.921024, 53.195751>,  <31.828367, 33.952885, 52.874287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220875, 33.921024, 53.195751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.459705, 33.709122, 53.436703>,  <31.603004, 33.581982, 53.581272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.459705, 33.709122, 53.436703>,  <31.220875, 33.921024, 53.195751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459705, 33.709122, 53.436703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412996, 0.440751, 0.796977,
		-0.687702, -0.724636, 0.044375,
		0.597076, -0.529756, 0.602377,
		31.638828, 33.550194, 53.617416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686783, 33.652824, 53.714359>,  <31.220875, 33.921024, 53.195751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686783, 33.652824, 53.714359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.058592, 33.673218, 53.860447>,  <31.281677, 33.685452, 53.948101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.058592, 33.673218, 53.860447>,  <30.686783, 33.652824, 53.714359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058592, 33.673218, 53.860447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352019, 0.417711, 0.837616,
		-0.109856, -0.907148, 0.406218,
		0.929523, 0.050979, 0.365221,
		31.337448, 33.688511, 53.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.609264, 33.487408, 54.405418>,  <30.686783, 33.652824, 53.714359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.609264, 33.487408, 54.405418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.970396, 33.655716, 54.369980>,  <31.187077, 33.756702, 54.348717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.970396, 33.655716, 54.369980>,  <30.609264, 33.487408, 54.405418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970396, 33.655716, 54.369980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212409, 0.615552, 0.758933,
		0.373868, -0.666371, 0.645114,
		0.902832, 0.420769, -0.088592,
		31.241245, 33.781948, 54.343403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834560, 33.465603, 55.047352>,  <30.609264, 33.487408, 54.405418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834560, 33.465603, 55.047352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.026352, 33.757233, 54.851986>,  <31.141428, 33.932213, 54.734768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.026352, 33.757233, 54.851986>,  <30.834560, 33.465603, 55.047352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026352, 33.757233, 54.851986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151080, 0.616833, 0.772458,
		0.864450, -0.296588, 0.405908,
		0.479479, 0.729076, -0.488413,
		31.170197, 33.975956, 54.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.518911, 33.598705, 55.599056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466551, 33.888668, 55.328537>,  <31.435135, 34.062645, 55.166225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466551, 33.888668, 55.328537>,  <31.518911, 33.598705, 55.599056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466551, 33.888668, 55.328537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162416, 0.657270, 0.735947,
		0.978001, 0.206178, 0.031698,
		-0.130902, 0.724905, -0.676297,
		31.427280, 34.106140, 55.125648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883051, 34.148769, 55.905884>,  <31.518911, 33.598705, 55.599056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883051, 34.148769, 55.905884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629461, 34.315716, 55.645458>,  <31.477306, 34.415886, 55.489204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629461, 34.315716, 55.645458>,  <31.883051, 34.148769, 55.905884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629461, 34.315716, 55.645458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232382, 0.700148, 0.675123,
		0.737614, 0.579305, -0.346887,
		-0.633975, 0.417370, -0.651059,
		31.439268, 34.440926, 55.450142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061199, 34.841480, 55.959644>,  <31.883051, 34.148769, 55.905884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061199, 34.841480, 55.959644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700914, 34.872784, 55.788723>,  <31.484743, 34.891567, 55.686172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700914, 34.872784, 55.788723>,  <32.061199, 34.841480, 55.959644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700914, 34.872784, 55.788723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288596, 0.627396, 0.723247,
		0.324690, 0.774757, -0.542520,
		-0.900716, 0.078262, -0.427301,
		31.430700, 34.896263, 55.660534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989876, 35.603558, 55.706318>,  <32.061199, 34.841480, 55.959644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989876, 35.603558, 55.706318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629475, 35.433559, 55.741138>,  <31.413235, 35.331562, 55.762032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629475, 35.433559, 55.741138>,  <31.989876, 35.603558, 55.706318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629475, 35.433559, 55.741138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314819, 0.778611, 0.542821,
		-0.298471, 0.461678, -0.835325,
		-0.901002, -0.424993, 0.087048,
		31.359175, 35.306061, 55.767254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365379, 36.028408, 55.550159>,  <31.989876, 35.603558, 55.706318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365379, 36.028408, 55.550159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199039, 35.774178, 55.810349>,  <31.099236, 35.621639, 55.966461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199039, 35.774178, 55.810349>,  <31.365379, 36.028408, 55.550159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199039, 35.774178, 55.810349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432487, 0.767399, 0.473343,
		-0.800016, -0.084481, -0.594001,
		-0.415847, -0.635580, 0.650468,
		31.074286, 35.583504, 56.005489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698318, 36.342461, 55.626244>,  <31.365379, 36.028408, 55.550159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698318, 36.342461, 55.626244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704559, 36.067791, 55.916962>,  <30.708303, 35.902988, 56.091393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704559, 36.067791, 55.916962>,  <30.698318, 36.342461, 55.626244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704559, 36.067791, 55.916962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485349, 0.630305, 0.605931,
		-0.874182, -0.362202, -0.323445,
		0.015600, -0.686678, 0.726795,
		30.709240, 35.861790, 56.134998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030144, 36.157406, 55.760937>,  <30.698318, 36.342461, 55.626244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030144, 36.157406, 55.760937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229919, 36.065804, 56.095150>,  <30.349785, 36.010841, 56.295677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229919, 36.065804, 56.095150>,  <30.030144, 36.157406, 55.760937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229919, 36.065804, 56.095150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629419, 0.566796, 0.531577,
		-0.595310, -0.791392, 0.138941,
		0.499437, -0.229001, 0.835536,
		30.379751, 35.997105, 56.345810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541195, 36.022667, 56.247841>,  <30.030144, 36.157406, 55.760937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541195, 36.022667, 56.247841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841774, 36.091846, 56.502529>,  <30.022121, 36.133354, 56.655342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841774, 36.091846, 56.502529>,  <29.541195, 36.022667, 56.247841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841774, 36.091846, 56.502529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587797, 0.613828, 0.526982,
		-0.299699, -0.770263, 0.562917,
		0.751449, 0.172945, 0.636722,
		30.067209, 36.143730, 56.693546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280180, 36.030697, 56.898212>,  <29.541195, 36.022667, 56.247841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280180, 36.030697, 56.898212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624352, 36.225136, 56.959354>,  <29.830854, 36.341801, 56.996040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624352, 36.225136, 56.959354>,  <29.280180, 36.030697, 56.898212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624352, 36.225136, 56.959354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499888, 0.747027, 0.438249,
		0.098844, -0.453494, 0.885761,
		0.860431, 0.486100, 0.152857,
		29.882481, 36.370964, 57.005211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271910, 36.119942, 57.617832>,  <29.280180, 36.030697, 56.898212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271910, 36.119942, 57.617832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507912, 36.397743, 57.453125>,  <29.649513, 36.564426, 57.354301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507912, 36.397743, 57.453125>,  <29.271910, 36.119942, 57.617832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507912, 36.397743, 57.453125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346881, 0.678566, 0.647474,
		0.729087, -0.239179, 0.641269,
		0.590005, 0.694508, -0.411767,
		29.684914, 36.606094, 57.329594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658129, 36.402935, 58.187912>,  <29.271910, 36.119942, 57.617832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658129, 36.402935, 58.187912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673689, 36.672577, 57.892868>,  <29.683025, 36.834362, 57.715839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673689, 36.672577, 57.892868>,  <29.658129, 36.402935, 58.187912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673689, 36.672577, 57.892868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339223, 0.703243, 0.624801,
		0.939901, 0.225910, 0.256028,
		0.038901, 0.674102, -0.737613,
		29.685360, 36.874809, 57.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810108, 37.031094, 58.531784>,  <29.658129, 36.402935, 58.187912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810108, 37.031094, 58.531784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698359, 37.168304, 58.173058>,  <29.631310, 37.250629, 57.957821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698359, 37.168304, 58.173058>,  <29.810108, 37.031094, 58.531784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698359, 37.168304, 58.173058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337780, 0.839197, 0.426208,
		0.898807, 0.421999, -0.118583,
		-0.279374, 0.343024, -0.896819,
		29.614546, 37.271210, 57.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065458, 37.643696, 58.539455>,  <29.810108, 37.031094, 58.531784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065458, 37.643696, 58.539455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803360, 37.657051, 58.237583>,  <29.646101, 37.665066, 58.056461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803360, 37.657051, 58.237583>,  <30.065458, 37.643696, 58.539455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803360, 37.657051, 58.237583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426448, 0.808261, 0.406026,
		0.623534, 0.587878, -0.515370,
		-0.655247, 0.033393, -0.754677,
		29.606787, 37.667068, 58.011181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189075, 38.319862, 58.236149>,  <30.065458, 37.643696, 58.539455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189075, 38.319862, 58.236149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823090, 38.180099, 58.155396>,  <29.603498, 38.096241, 58.106941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823090, 38.180099, 58.155396>,  <30.189075, 38.319862, 58.236149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823090, 38.180099, 58.155396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399439, 0.855299, 0.330019,
		0.057362, 0.382596, -0.922134,
		-0.914963, -0.349406, -0.201885,
		29.548601, 38.075279, 58.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786341, 38.876110, 57.932354>,  <30.189075, 38.319862, 58.236149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786341, 38.876110, 57.932354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502815, 38.618309, 58.047039>,  <29.332701, 38.463627, 58.115849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502815, 38.618309, 58.047039>,  <29.786341, 38.876110, 57.932354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502815, 38.618309, 58.047039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530638, 0.754977, 0.385271,
		-0.464766, 0.120947, -0.877134,
		-0.708813, -0.644501, 0.286708,
		29.290171, 38.424957, 58.133053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155127, 39.112362, 57.798756>,  <29.786341, 38.876110, 57.932354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155127, 39.112362, 57.798756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052456, 38.837399, 58.070518>,  <28.990854, 38.672421, 58.233574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052456, 38.837399, 58.070518>,  <29.155127, 39.112362, 57.798756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052456, 38.837399, 58.070518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626466, 0.653621, 0.424642,
		-0.735974, -0.316628, -0.598405,
		-0.256677, -0.687406, 0.679404,
		28.975452, 38.631176, 58.274342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486526, 39.149055, 57.743507>,  <29.155127, 39.112362, 57.798756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486526, 39.149055, 57.743507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603912, 39.015343, 58.101757>,  <28.674343, 38.935116, 58.316708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603912, 39.015343, 58.101757>,  <28.486526, 39.149055, 57.743507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603912, 39.015343, 58.101757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539947, 0.715162, 0.443847,
		-0.788882, -0.613842, 0.029383,
		0.293465, -0.334277, 0.895621,
		28.691952, 38.915058, 58.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897890, 39.347355, 58.233433>,  <28.486526, 39.149055, 57.743507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897890, 39.347355, 58.233433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200842, 39.253429, 58.477150>,  <28.382612, 39.197075, 58.623383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200842, 39.253429, 58.477150>,  <27.897890, 39.347355, 58.233433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200842, 39.253429, 58.477150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385833, 0.591856, 0.707700,
		-0.526792, -0.771083, 0.357660,
		0.757379, -0.234813, 0.609295,
		28.428055, 39.182987, 58.659939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593475, 39.236835, 58.872017>,  <27.897890, 39.347355, 58.233433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593475, 39.236835, 58.872017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979265, 39.324661, 58.930782>,  <28.210739, 39.377357, 58.966042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979265, 39.324661, 58.930782>,  <27.593475, 39.236835, 58.872017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979265, 39.324661, 58.930782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260614, 0.881854, 0.392955,
		-0.043276, -0.417282, 0.907746,
		0.964473, 0.219566, 0.146912,
		28.268606, 39.390530, 58.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636833, 39.543514, 59.503109>,  <27.593475, 39.236835, 58.872017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636833, 39.543514, 59.503109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997225, 39.665329, 59.379501>,  <28.213459, 39.738419, 59.305336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997225, 39.665329, 59.379501>,  <27.636833, 39.543514, 59.503109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997225, 39.665329, 59.379501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220548, 0.934843, 0.278257,
		0.373628, -0.182549, 0.909438,
		0.900978, 0.304539, -0.309022,
		28.267519, 39.756691, 59.286793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926241, 39.932419, 60.010159>,  <27.636833, 39.543514, 59.503109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926241, 39.932419, 60.010159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101643, 40.051342, 59.670906>,  <28.206882, 40.122696, 59.467354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101643, 40.051342, 59.670906>,  <27.926241, 39.932419, 60.010159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101643, 40.051342, 59.670906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281984, 0.941558, 0.184264,
		0.853347, 0.158358, 0.496712,
		0.438503, 0.297306, -0.848130,
		28.233194, 40.140533, 59.416466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304335, 40.503090, 60.323795>,  <27.926241, 39.932419, 60.010159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304335, 40.503090, 60.323795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282440, 40.518738, 59.924702>,  <28.269302, 40.528126, 59.685246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282440, 40.518738, 59.924702>,  <28.304335, 40.503090, 60.323795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282440, 40.518738, 59.924702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127831, 0.990735, 0.045862,
		0.990284, 0.130052, -0.049229,
		-0.054737, 0.039124, -0.997734,
		28.266018, 40.530476, 59.625381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737532, 40.681549, 60.985264>,  <28.304335, 40.503090, 60.323795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737532, 40.681549, 60.985264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476759, 40.863216, 60.742378>,  <28.320295, 40.972218, 60.596645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476759, 40.863216, 60.742378>,  <28.737532, 40.681549, 60.985264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476759, 40.863216, 60.742378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757712, -0.421144, 0.498508,
		-0.029318, 0.785089, 0.618689,
		-0.651930, 0.454173, -0.607218,
		28.281179, 40.999470, 60.560211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629705, 39.963657, 61.119633>,  <28.737532, 40.681549, 60.985264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629705, 39.963657, 61.119633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942961, 39.854950, 61.343361>,  <29.130915, 39.789726, 61.477596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942961, 39.854950, 61.343361>,  <28.629705, 39.963657, 61.119633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942961, 39.854950, 61.343361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443534, -0.874542, 0.196093,
		0.435855, -0.401645, -0.805426,
		0.783139, -0.271766, 0.559317,
		29.177902, 39.773418, 61.511158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014223, 40.230186, 61.646793>,  <28.629705, 39.963657, 61.119633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014223, 40.230186, 61.646793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223486, 40.250320, 61.987095>,  <29.349043, 40.262402, 62.191277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223486, 40.250320, 61.987095>,  <29.014223, 40.230186, 61.646793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223486, 40.250320, 61.987095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837656, 0.153497, -0.524186,
		-0.156975, 0.986866, 0.038135,
		0.523155, 0.050340, 0.850749,
		29.380432, 40.265423, 62.242321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437897, 40.794693, 61.568665>,  <29.014223, 40.230186, 61.646793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437897, 40.794693, 61.568665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618303, 40.568012, 61.844471>,  <29.726547, 40.432003, 62.009956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618303, 40.568012, 61.844471>,  <29.437897, 40.794693, 61.568665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618303, 40.568012, 61.844471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848476, 0.032561, -0.528232,
		0.276899, 0.823278, 0.495520,
		0.451016, -0.566704, 0.689515,
		29.753609, 40.398003, 62.051327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195606, 41.042534, 61.505424>,  <29.437897, 40.794693, 61.568665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195606, 41.042534, 61.505424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129017, 40.692554, 61.687302>,  <30.089064, 40.482567, 61.796429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129017, 40.692554, 61.687302>,  <30.195606, 41.042534, 61.505424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129017, 40.692554, 61.687302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836055, -0.369728, -0.405355,
		0.522780, 0.312672, 0.793056,
		-0.166472, -0.874950, 0.454697,
		30.079075, 40.430069, 61.823711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916168, 40.810120, 61.499580>,  <30.195606, 41.042534, 61.505424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916168, 40.810120, 61.499580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671141, 40.502010, 61.570511>,  <30.524124, 40.317146, 61.613071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671141, 40.502010, 61.570511>,  <30.916168, 40.810120, 61.499580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671141, 40.502010, 61.570511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627013, -0.610144, -0.484334,
		0.481263, -0.185501, 0.856724,
		-0.612569, -0.770269, 0.177328,
		30.487370, 40.270931, 61.623711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385216, 40.294693, 61.602535>,  <30.916168, 40.810120, 61.499580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385216, 40.294693, 61.602535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027782, 40.139099, 61.512917>,  <30.813322, 40.045742, 61.459145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027782, 40.139099, 61.512917>,  <31.385216, 40.294693, 61.602535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027782, 40.139099, 61.512917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447019, -0.725519, -0.523255,
		0.040985, -0.567727, 0.822196,
		-0.893585, -0.388983, -0.224049,
		30.759706, 40.022404, 61.445702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516836, 39.564857, 61.792885>,  <31.385216, 40.294693, 61.602535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516836, 39.564857, 61.792885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218487, 39.638271, 61.536762>,  <31.039476, 39.682320, 61.383091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218487, 39.638271, 61.536762>,  <31.516836, 39.564857, 61.792885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218487, 39.638271, 61.536762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320222, -0.744107, -0.586312,
		-0.584063, -0.642354, 0.496238,
		-0.745874, 0.183537, -0.640301,
		30.994724, 39.693333, 61.344673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472759, 38.916153, 61.492374>,  <31.516836, 39.564857, 61.792885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472759, 38.916153, 61.492374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250578, 39.130230, 61.237801>,  <31.117270, 39.258675, 61.085056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250578, 39.130230, 61.237801>,  <31.472759, 38.916153, 61.492374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250578, 39.130230, 61.237801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255500, -0.618493, -0.743092,
		-0.791325, -0.575360, 0.206801,
		-0.555450, 0.535189, -0.636433,
		31.083942, 39.290787, 61.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175064, 38.457527, 61.094460>,  <31.472759, 38.916153, 61.492374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175064, 38.457527, 61.094460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169010, 38.780815, 60.858982>,  <31.165379, 38.974789, 60.717697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169010, 38.780815, 60.858982>,  <31.175064, 38.457527, 61.094460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169010, 38.780815, 60.858982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183951, -0.576458, -0.796152,
		-0.982819, -0.120339, -0.139948,
		-0.015134, 0.808217, -0.588690,
		31.164471, 39.023281, 60.682377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680508, 38.250710, 60.492371>,  <31.175064, 38.457527, 61.094460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680508, 38.250710, 60.492371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908552, 38.556774, 60.372700>,  <31.045380, 38.740414, 60.300896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908552, 38.556774, 60.372700>,  <30.680508, 38.250710, 60.492371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908552, 38.556774, 60.372700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333444, -0.548313, -0.766921,
		-0.750858, 0.337472, -0.567736,
		0.570112, 0.765157, -0.299177,
		31.079586, 38.786320, 60.282948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507978, 38.389324, 59.807610>,  <30.680508, 38.250710, 60.492371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507978, 38.389324, 59.807610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884050, 38.508411, 59.873852>,  <31.109694, 38.579865, 59.913597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884050, 38.508411, 59.873852>,  <30.507978, 38.389324, 59.807610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884050, 38.508411, 59.873852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303831, -0.512881, -0.802895,
		-0.154103, 0.805181, -0.572657,
		0.940180, 0.297719, 0.165603,
		31.166105, 38.597729, 59.923534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754360, 38.581532, 59.170643>,  <30.507978, 38.389324, 59.807610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754360, 38.581532, 59.170643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066116, 38.504864, 59.409245>,  <31.253170, 38.458862, 59.552406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066116, 38.504864, 59.409245>,  <30.754360, 38.581532, 59.170643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066116, 38.504864, 59.409245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399624, -0.581184, -0.708891,
		0.482548, 0.790879, -0.376374,
		0.779389, -0.191666, 0.596503,
		31.299932, 38.447365, 59.588196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312435, 38.565395, 58.729351>,  <30.754360, 38.581532, 59.170643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312435, 38.565395, 58.729351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482340, 38.386658, 59.044289>,  <31.584282, 38.279415, 59.233250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482340, 38.386658, 59.044289>,  <31.312435, 38.565395, 58.729351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482340, 38.386658, 59.044289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502477, -0.607073, -0.615613,
		0.753058, 0.657110, -0.033332,
		0.424760, -0.446844, 0.787343,
		31.609768, 38.252605, 59.280491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042610, 38.551655, 58.614639>,  <31.312435, 38.565395, 58.729351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042610, 38.551655, 58.614639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955088, 38.252205, 58.864975>,  <31.902575, 38.072533, 59.015179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955088, 38.252205, 58.864975>,  <32.042610, 38.551655, 58.614639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955088, 38.252205, 58.864975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504128, -0.635883, -0.584387,
		0.835452, 0.187638, 0.516538,
		-0.218804, -0.748629, 0.625843,
		31.889446, 38.027615, 59.052727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614326, 38.108593, 58.609612>,  <32.042610, 38.551655, 58.614639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614326, 38.108593, 58.609612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357765, 37.854359, 58.781490>,  <32.203831, 37.701820, 58.884617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357765, 37.854359, 58.781490>,  <32.614326, 38.108593, 58.609612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357765, 37.854359, 58.781490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466298, -0.767715, -0.439522,
		0.609238, -0.081542, 0.788784,
		-0.641401, -0.635582, 0.429698,
		32.165344, 37.663685, 58.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021053, 37.546524, 58.790440>,  <32.614326, 38.108593, 58.609612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021053, 37.546524, 58.790440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655903, 37.383286, 58.786140>,  <32.436813, 37.285343, 58.783562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655903, 37.383286, 58.786140>,  <33.021053, 37.546524, 58.790440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655903, 37.383286, 58.786140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372067, -0.820878, -0.433273,
		0.167991, -0.399525, 0.901199,
		-0.912877, -0.408092, -0.010750,
		32.382038, 37.260857, 58.782917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092876, 36.966305, 59.063660>,  <33.021053, 37.546524, 58.790440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092876, 36.966305, 59.063660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787312, 36.910492, 58.811638>,  <32.603973, 36.877003, 58.660423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787312, 36.910492, 58.811638>,  <33.092876, 36.966305, 59.063660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787312, 36.910492, 58.811638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489451, -0.761582, -0.424771,
		-0.420570, -0.632868, 0.650076,
		-0.763910, -0.139534, -0.630057,
		32.558140, 36.868633, 58.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880119, 36.207157, 59.151485>,  <33.092876, 36.966305, 59.063660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880119, 36.207157, 59.151485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748661, 36.350109, 58.801796>,  <32.669785, 36.435879, 58.591984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748661, 36.350109, 58.801796>,  <32.880119, 36.207157, 59.151485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748661, 36.350109, 58.801796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486942, -0.729010, -0.481073,
		-0.809245, -0.583802, 0.065565,
		-0.328649, 0.357379, -0.874225,
		32.650066, 36.457321, 58.539528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011246, 35.638741, 58.769653>,  <32.880119, 36.207157, 59.151485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011246, 35.638741, 58.769653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899139, 35.886425, 58.476250>,  <32.831875, 36.035034, 58.300209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899139, 35.886425, 58.476250>,  <33.011246, 35.638741, 58.769653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899139, 35.886425, 58.476250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251770, -0.689962, -0.678649,
		-0.926317, -0.374877, 0.037474,
		-0.280266, 0.619209, -0.733507,
		32.815060, 36.072189, 58.256199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815418, 35.237961, 58.324806>,  <33.011246, 35.638741, 58.769653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815418, 35.237961, 58.324806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857128, 35.543697, 58.070274>,  <32.882153, 35.727139, 57.917557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857128, 35.543697, 58.070274>,  <32.815418, 35.237961, 58.324806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857128, 35.543697, 58.070274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240129, -0.640232, -0.729686,
		-0.965124, -0.076715, -0.250299,
		0.104272, 0.764341, -0.636325,
		32.888409, 35.772999, 57.879375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435963, 35.041107, 57.721287>,  <32.815418, 35.237961, 58.324806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435963, 35.041107, 57.721287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710972, 35.299339, 57.588303>,  <32.875977, 35.454277, 57.508511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710972, 35.299339, 57.588303>,  <32.435963, 35.041107, 57.721287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710972, 35.299339, 57.588303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250521, -0.640602, -0.725857,
		-0.681576, 0.415758, -0.602163,
		0.687528, 0.645581, -0.332463,
		32.917229, 35.493015, 57.488564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.232121, 34.675014, 50.330383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.117218, 34.781841, 50.698330>,  <48.048275, 34.845936, 50.919098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.117218, 34.781841, 50.698330>,  <48.232121, 34.675014, 50.330383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.117218, 34.781841, 50.698330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952198, -0.183816, -0.243989,
		0.103926, -0.945986, 0.307100,
		-0.287259, 0.267063, 0.919869,
		48.031040, 34.861961, 50.974289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.938408, 34.105358, 50.569576>,  <48.232121, 34.675014, 50.330383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.938408, 34.105358, 50.569576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.770374, 34.400684, 50.780636>,  <47.669552, 34.577881, 50.907272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.770374, 34.400684, 50.780636>,  <47.938408, 34.105358, 50.569576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770374, 34.400684, 50.780636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906948, -0.361565, -0.216140,
		0.031198, -0.569347, 0.821505,
		-0.420086, 0.738319, 0.527648,
		47.644348, 34.622181, 50.938931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477356, 33.755821, 51.053463>,  <47.938408, 34.105358, 50.569576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477356, 33.755821, 51.053463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.368156, 34.135284, 50.989559>,  <47.302635, 34.362961, 50.951218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.368156, 34.135284, 50.989559>,  <47.477356, 33.755821, 51.053463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368156, 34.135284, 50.989559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892094, -0.311796, -0.327034,
		-0.360055, 0.053240, 0.931411,
		-0.272999, 0.948656, -0.159759,
		47.286255, 34.419880, 50.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692459, 33.702438, 51.248600>,  <47.477356, 33.755821, 51.053463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692459, 33.702438, 51.248600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.721012, 34.042831, 51.040474>,  <46.738144, 34.247066, 50.915600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.721012, 34.042831, 51.040474>,  <46.692459, 33.702438, 51.248600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721012, 34.042831, 51.040474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972520, -0.056520, -0.225857,
		-0.221609, 0.522138, 0.823566,
		0.071380, 0.850986, -0.520315,
		46.742428, 34.298126, 50.884380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243732, 34.194771, 51.532673>,  <46.692459, 33.702438, 51.248600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243732, 34.194771, 51.532673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.279537, 34.312027, 51.151924>,  <46.301022, 34.382381, 50.923477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.279537, 34.312027, 51.151924>,  <46.243732, 34.194771, 51.532673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279537, 34.312027, 51.151924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994236, 0.082913, -0.067967,
		0.058999, 0.952468, 0.298871,
		0.089517, 0.293138, -0.951870,
		46.306393, 34.399967, 50.866364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692913, 34.635914, 51.427963>,  <46.243732, 34.194771, 51.532673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692913, 34.635914, 51.427963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.795033, 34.550190, 51.050838>,  <45.856304, 34.498756, 50.824562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.795033, 34.550190, 51.050838>,  <45.692913, 34.635914, 51.427963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795033, 34.550190, 51.050838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961264, 0.048517, -0.271327,
		0.103890, 0.975561, -0.193618,
		0.255302, -0.214306, -0.942812,
		45.871624, 34.485897, 50.767994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360249, 35.110306, 50.968616>,  <45.692913, 34.635914, 51.427963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360249, 35.110306, 50.968616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.448757, 34.831207, 50.696095>,  <45.501862, 34.663746, 50.532581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.448757, 34.831207, 50.696095>,  <45.360249, 35.110306, 50.968616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448757, 34.831207, 50.696095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963120, -0.046677, -0.264994,
		0.153098, 0.714819, -0.682345,
		0.221273, -0.697750, -0.681310,
		45.515141, 34.621883, 50.491703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983837, 35.353512, 50.375351>,  <45.360249, 35.110306, 50.968616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983837, 35.353512, 50.375351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.058079, 34.961014, 50.354534>,  <45.102623, 34.725513, 50.342045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.058079, 34.961014, 50.354534>,  <44.983837, 35.353512, 50.375351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058079, 34.961014, 50.354534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897216, -0.147632, -0.416182,
		0.400694, 0.123937, -0.907791,
		0.185599, -0.981246, -0.052043,
		45.113758, 34.666641, 50.338921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764893, 35.213989, 49.774837>,  <44.983837, 35.353512, 50.375351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764893, 35.213989, 49.774837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.775402, 34.863232, 49.966824>,  <44.781708, 34.652779, 50.082016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.775402, 34.863232, 49.966824>,  <44.764893, 35.213989, 49.774837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775402, 34.863232, 49.966824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836784, -0.281968, -0.469347,
		0.546902, -0.389293, -0.741181,
		0.026275, -0.876895, 0.479963,
		44.783283, 34.600163, 50.110813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621773, 34.686028, 49.269230>,  <44.764893, 35.213989, 49.774837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621773, 34.686028, 49.269230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.539684, 34.513863, 49.620827>,  <44.490433, 34.410564, 49.831783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.539684, 34.513863, 49.620827>,  <44.621773, 34.686028, 49.269230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539684, 34.513863, 49.620827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920701, -0.219714, -0.322545,
		0.331955, -0.875482, -0.351193,
		-0.205220, -0.430414, 0.878993,
		44.478119, 34.384739, 49.884525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185555, 34.188126, 49.004280>,  <44.621773, 34.686028, 49.269230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185555, 34.188126, 49.004280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.125050, 34.211010, 49.399014>,  <44.088745, 34.224739, 49.635853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.125050, 34.211010, 49.399014>,  <44.185555, 34.188126, 49.004280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125050, 34.211010, 49.399014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959735, -0.247556, -0.132761,
		0.236703, -0.967183, 0.092350,
		-0.151266, 0.057206, 0.986837,
		44.079670, 34.228172, 49.695065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842682, 33.538708, 49.197071>,  <44.185555, 34.188126, 49.004280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842682, 33.538708, 49.197071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.743652, 33.792744, 49.489746>,  <43.684235, 33.945168, 49.665352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.743652, 33.792744, 49.489746>,  <43.842682, 33.538708, 49.197071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743652, 33.792744, 49.489746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962636, -0.246763, -0.111535,
		0.109718, -0.731959, 0.672456,
		-0.247576, 0.635093, 0.731685,
		43.669380, 33.983273, 49.709251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261124, 33.163441, 49.595264>,  <43.842682, 33.538708, 49.197071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261124, 33.163441, 49.595264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.223728, 33.545013, 49.709301>,  <43.201290, 33.773956, 49.777721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.223728, 33.545013, 49.709301>,  <43.261124, 33.163441, 49.595264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223728, 33.545013, 49.709301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989091, -0.056244, -0.136148,
		-0.113841, -0.294709, 0.948782,
		-0.093488, 0.953930, 0.285091,
		43.195683, 33.831192, 49.794827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784527, 33.143116, 50.175320>,  <43.261124, 33.163441, 49.595264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784527, 33.143116, 50.175320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.768517, 33.510567, 50.018082>,  <42.758911, 33.731037, 49.923740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.768517, 33.510567, 50.018082>,  <42.784527, 33.143116, 50.175320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768517, 33.510567, 50.018082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998939, -0.027824, 0.036687,
		0.022765, 0.394145, 0.918766,
		-0.040024, 0.918627, -0.393093,
		42.756508, 33.786156, 49.900154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267853, 33.398399, 50.517845>,  <42.784527, 33.143116, 50.175320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267853, 33.398399, 50.517845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.302959, 33.656258, 50.214073>,  <42.324024, 33.810974, 50.031811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.302959, 33.656258, 50.214073>,  <42.267853, 33.398399, 50.517845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302959, 33.656258, 50.214073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996128, 0.052915, -0.070205,
		-0.005073, 0.762647, 0.646795,
		0.087767, 0.644647, -0.759426,
		42.329288, 33.849651, 49.986244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862396, 33.914818, 50.672810>,  <42.267853, 33.398399, 50.517845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862396, 33.914818, 50.672810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894703, 33.935246, 50.274639>,  <41.914085, 33.947502, 50.035736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894703, 33.935246, 50.274639>,  <41.862396, 33.914818, 50.672810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894703, 33.935246, 50.274639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988555, -0.123563, -0.086546,
		-0.127417, 0.991022, 0.040504,
		0.080764, 0.051068, -0.995424,
		41.918934, 33.950565, 49.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398567, 34.498310, 50.449791>,  <41.862396, 33.914818, 50.672810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398567, 34.498310, 50.449791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473660, 34.258633, 50.138477>,  <41.518715, 34.114826, 49.951691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.473660, 34.258633, 50.138477>,  <41.398567, 34.498310, 50.449791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473660, 34.258633, 50.138477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956149, 0.069867, -0.284423,
		0.224801, 0.797549, -0.559803,
		0.187730, -0.599194, -0.778283,
		41.529980, 34.078873, 49.904991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920818, 34.705353, 49.971611>,  <41.398567, 34.498310, 50.449791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920818, 34.705353, 49.971611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.023266, 34.338634, 49.849049>,  <41.084736, 34.118603, 49.775513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.023266, 34.338634, 49.849049>,  <40.920818, 34.705353, 49.971611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023266, 34.338634, 49.849049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903147, -0.113967, -0.413930,
		0.344570, 0.382744, -0.857193,
		0.256120, -0.916798, -0.306404,
		41.100101, 34.063595, 49.757126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795040, 34.671234, 49.126564>,  <40.920818, 34.705353, 49.971611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795040, 34.671234, 49.126564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794487, 34.298908, 49.272758>,  <40.794155, 34.075512, 49.360477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794487, 34.298908, 49.272758>,  <40.795040, 34.671234, 49.126564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794487, 34.298908, 49.272758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900271, -0.157947, -0.405666,
		0.435328, -0.329602, -0.837766,
		-0.001386, -0.930815, 0.365490,
		40.794071, 34.019665, 49.382404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664295, 34.226921, 48.600182>,  <40.795040, 34.671234, 49.126564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664295, 34.226921, 48.600182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562756, 34.041595, 48.939804>,  <40.501831, 33.930401, 49.143578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562756, 34.041595, 48.939804>,  <40.664295, 34.226921, 48.600182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562756, 34.041595, 48.939804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923536, -0.144794, -0.355129,
		0.287474, -0.874286, -0.391130,
		-0.253851, -0.463313, 0.849059,
		40.486599, 33.902603, 49.194523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214848, 33.727638, 48.399475>,  <40.664295, 34.226921, 48.600182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214848, 33.727638, 48.399475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148182, 33.769897, 48.791611>,  <40.108181, 33.795254, 49.026894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.148182, 33.769897, 48.791611>,  <40.214848, 33.727638, 48.399475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148182, 33.769897, 48.791611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983045, 0.059295, -0.173515,
		-0.076461, -0.992634, 0.093974,
		-0.166665, 0.105648, 0.980337,
		40.098183, 33.801590, 49.085712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566990, 33.246262, 48.437859>,  <40.214848, 33.727638, 48.399475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566990, 33.246262, 48.437859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637211, 33.517864, 48.722996>,  <39.679344, 33.680824, 48.894077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637211, 33.517864, 48.722996>,  <39.566990, 33.246262, 48.437859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637211, 33.517864, 48.722996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983555, 0.152183, 0.097258,
		-0.042444, -0.718190, 0.694551,
		0.175548, 0.679002, 0.712839,
		39.689877, 33.721565, 48.936848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063873, 33.103703, 48.870899>,  <39.566990, 33.246262, 48.437859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063873, 33.103703, 48.870899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181915, 33.478378, 48.946297>,  <39.252739, 33.703182, 48.991535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181915, 33.478378, 48.946297>,  <39.063873, 33.103703, 48.870899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181915, 33.478378, 48.946297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926725, 0.232580, 0.295104,
		0.232580, -0.261771, 0.936687,
		-0.295104, -0.936687, -0.188497,
		39.270447, 33.759384, 49.002846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298809, 32.849010, 48.971672>,  <39.063873, 33.103703, 48.870899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298809, 32.849010, 48.971672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167942, 32.475788, 49.031498>,  <38.089420, 32.251854, 49.067394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167942, 32.475788, 49.031498>,  <38.298809, 32.849010, 48.971672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167942, 32.475788, 49.031498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758814, -0.353731, -0.546879,
		0.563173, -0.065430, 0.823744,
		-0.327167, -0.933056, 0.149563,
		38.069794, 32.195873, 49.076366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221916, 32.263802, 48.392395>,  <38.298809, 32.849010, 48.971672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221916, 32.263802, 48.392395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255928, 31.886162, 48.264992>,  <38.276333, 31.659578, 48.188549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255928, 31.886162, 48.264992>,  <38.221916, 32.263802, 48.392395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255928, 31.886162, 48.264992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988131, -0.038851, -0.148622,
		0.127940, 0.327361, -0.936198,
		0.085026, -0.944100, -0.318505,
		38.281437, 31.602932, 48.169441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975163, 32.236713, 47.707455>,  <38.221916, 32.263802, 48.392395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975163, 32.236713, 47.707455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930927, 31.865936, 47.850868>,  <37.904388, 31.643471, 47.936916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930927, 31.865936, 47.850868>,  <37.975163, 32.236713, 47.707455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930927, 31.865936, 47.850868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907906, -0.052542, -0.415867,
		0.404323, -0.371505, -0.835767,
		-0.110584, -0.926943, 0.358536,
		37.897751, 31.587852, 47.958427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792946, 31.917154, 47.155571>,  <37.975163, 32.236713, 47.707455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792946, 31.917154, 47.155571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678398, 31.683077, 47.459030>,  <37.609669, 31.542631, 47.641106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678398, 31.683077, 47.459030>,  <37.792946, 31.917154, 47.155571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678398, 31.683077, 47.459030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857775, -0.196180, -0.475116,
		0.426865, -0.786806, -0.445783,
		-0.286370, -0.585192, 0.758645,
		37.592487, 31.507519, 47.686623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324314, 31.394699, 46.870941>,  <37.792946, 31.917154, 47.155571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324314, 31.394699, 46.870941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227528, 31.381298, 47.258823>,  <37.169456, 31.373257, 47.491554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.227528, 31.381298, 47.258823>,  <37.324314, 31.394699, 46.870941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227528, 31.381298, 47.258823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949310, -0.198500, -0.243737,
		0.200654, -0.979528, 0.016222,
		-0.241968, -0.033507, 0.969706,
		37.154938, 31.371246, 47.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881775, 30.875088, 46.905628>,  <37.324314, 31.394699, 46.870941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881775, 30.875088, 46.905628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819740, 31.076994, 47.245312>,  <36.782520, 31.198137, 47.449123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819740, 31.076994, 47.245312>,  <36.881775, 30.875088, 46.905628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819740, 31.076994, 47.245312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987416, -0.106147, -0.117231,
		0.030967, -0.856706, 0.514874,
		-0.155085, 0.504765, 0.849213,
		36.773216, 31.228424, 47.500076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433926, 30.489058, 47.304050>,  <36.881775, 30.875088, 46.905628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433926, 30.489058, 47.304050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393898, 30.860033, 47.448185>,  <36.369881, 31.082619, 47.534668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393898, 30.860033, 47.448185>,  <36.433926, 30.489058, 47.304050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393898, 30.860033, 47.448185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988034, -0.135342, 0.073968,
		0.117370, -0.348626, 0.929884,
		-0.100065, 0.927439, 0.360339,
		36.363880, 31.138266, 47.556286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710011, 30.368164, 47.586418>,  <36.433926, 30.489058, 47.304050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710011, 30.368164, 47.586418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771713, 30.759865, 47.533852>,  <35.808735, 30.994884, 47.502312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771713, 30.759865, 47.533852>,  <35.710011, 30.368164, 47.586418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771713, 30.759865, 47.533852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981405, 0.136480, -0.134975,
		-0.114239, 0.149793, 0.982095,
		0.154254, 0.979252, -0.131416,
		35.817989, 31.053640, 47.494427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080284, 30.709370, 47.919617>,  <35.710011, 30.368164, 47.586418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080284, 30.709370, 47.919617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241798, 31.014500, 47.717602>,  <35.338707, 31.197577, 47.596394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.241798, 31.014500, 47.717602>,  <35.080284, 30.709370, 47.919617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241798, 31.014500, 47.717602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906819, 0.406733, -0.110668,
		0.120994, 0.502662, 0.855974,
		0.403782, 0.762823, -0.505036,
		35.362934, 31.243347, 47.566090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633717, 31.253809, 48.076828>,  <35.080284, 30.709370, 47.919617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633717, 31.253809, 48.076828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.819630, 31.370283, 47.742359>,  <34.931179, 31.440168, 47.541676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.819630, 31.370283, 47.742359>,  <34.633717, 31.253809, 48.076828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819630, 31.370283, 47.742359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855677, 0.390452, -0.339653,
		0.227584, 0.873360, 0.430637,
		0.464782, 0.291187, -0.836174,
		34.959064, 31.457640, 47.491508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613300, 32.048508, 47.903332>,  <34.633717, 31.253809, 48.076828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613300, 32.048508, 47.903332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625206, 31.799837, 47.590248>,  <34.632351, 31.650635, 47.402397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625206, 31.799837, 47.590248>,  <34.613300, 32.048508, 47.903332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625206, 31.799837, 47.590248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812893, 0.440609, -0.380877,
		0.581651, 0.647596, -0.492242,
		0.029769, -0.621677, -0.782707,
		34.634136, 31.613335, 47.355434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273258, 32.467957, 47.400028>,  <34.613300, 32.048508, 47.903332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273258, 32.467957, 47.400028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271545, 32.111073, 47.219387>,  <34.270515, 31.896942, 47.111004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.271545, 32.111073, 47.219387>,  <34.273258, 32.467957, 47.400028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271545, 32.111073, 47.219387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866085, 0.229062, -0.444329,
		0.499879, 0.389220, -0.773711,
		-0.004286, -0.892210, -0.451601,
		34.270260, 31.843410, 47.083908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.495008, 32.201229, 52.758991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802246, 32.457340, 52.755573>,  <31.986588, 32.611008, 52.753525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.802246, 32.457340, 52.755573>,  <31.495008, 32.201229, 52.758991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802246, 32.457340, 52.755573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138265, -0.178860, -0.974111,
		-0.625233, 0.747027, -0.225910,
		0.768093, 0.640281, -0.008541,
		32.032673, 32.649426, 52.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364525, 32.677830, 52.253693>,  <31.495008, 32.201229, 52.758991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364525, 32.677830, 52.253693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757578, 32.690491, 52.326828>,  <31.993410, 32.698090, 52.370708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.757578, 32.690491, 52.326828>,  <31.364525, 32.677830, 52.253693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757578, 32.690491, 52.326828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184675, -0.070858, -0.980242,
		-0.018073, 0.996984, -0.075474,
		0.982634, 0.031654, 0.182837,
		32.052368, 32.699986, 52.381680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643642, 33.276646, 51.839691>,  <31.364525, 32.677830, 52.253693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643642, 33.276646, 51.839691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915848, 32.994473, 51.918957>,  <32.079170, 32.825169, 51.966515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915848, 32.994473, 51.918957>,  <31.643642, 33.276646, 51.839691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915848, 32.994473, 51.918957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117130, -0.162235, -0.979776,
		0.723315, 0.689959, -0.027775,
		0.680511, -0.705433, 0.198162,
		32.120003, 32.782841, 51.978405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102276, 33.397522, 51.353756>,  <31.643642, 33.276646, 51.839691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102276, 33.397522, 51.353756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216995, 33.029316, 51.459888>,  <32.285828, 32.808392, 51.523567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216995, 33.029316, 51.459888>,  <32.102276, 33.397522, 51.353756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216995, 33.029316, 51.459888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391218, -0.140277, -0.909544,
		0.874467, 0.364660, 0.319890,
		0.286802, -0.920513, 0.265329,
		32.303036, 32.753162, 51.539486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835159, 33.340393, 51.217361>,  <32.102276, 33.397522, 51.353756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835159, 33.340393, 51.217361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702179, 32.963223, 51.209671>,  <32.622391, 32.736919, 51.205059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702179, 32.963223, 51.209671>,  <32.835159, 33.340393, 51.217361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702179, 32.963223, 51.209671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473487, -0.149242, -0.868065,
		0.815652, -0.297688, 0.496078,
		-0.332448, -0.942926, -0.019222,
		32.602444, 32.680344, 51.203903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281155, 32.975300, 50.769211>,  <32.835159, 33.340393, 51.217361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281155, 32.975300, 50.769211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029518, 32.669025, 50.822842>,  <32.878536, 32.485260, 50.855019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029518, 32.669025, 50.822842>,  <33.281155, 32.975300, 50.769211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029518, 32.669025, 50.822842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205694, -0.330307, -0.921188,
		0.749623, -0.551932, 0.365289,
		-0.629090, -0.765682, 0.134077,
		32.840790, 32.439320, 50.863064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626873, 32.445702, 50.596943>,  <33.281155, 32.975300, 50.769211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626873, 32.445702, 50.596943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244411, 32.341930, 50.542572>,  <33.014935, 32.279667, 50.509949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244411, 32.341930, 50.542572>,  <33.626873, 32.445702, 50.596943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244411, 32.341930, 50.542572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200769, -0.242689, -0.949102,
		0.213238, -0.934772, 0.284132,
		-0.956149, -0.259430, -0.135923,
		32.957565, 32.264103, 50.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568172, 31.742762, 50.357376>,  <33.626873, 32.445702, 50.596943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568172, 31.742762, 50.357376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217003, 31.895393, 50.241692>,  <33.006302, 31.986973, 50.172279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217003, 31.895393, 50.241692>,  <33.568172, 31.742762, 50.357376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217003, 31.895393, 50.241692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197758, -0.261129, -0.944830,
		-0.436048, -0.886685, 0.153792,
		-0.877926, 0.381578, -0.289214,
		32.953625, 32.009865, 50.154926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315533, 31.218279, 50.055756>,  <33.568172, 31.742762, 50.357376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315533, 31.218279, 50.055756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130352, 31.533945, 49.894318>,  <33.019245, 31.723345, 49.797455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.130352, 31.533945, 49.894318>,  <33.315533, 31.218279, 50.055756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130352, 31.533945, 49.894318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357614, -0.250337, -0.899691,
		-0.811043, -0.560844, -0.166324,
		-0.462949, 0.789168, -0.403600,
		32.991467, 31.770695, 49.773239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903137, 31.051409, 49.533817>,  <33.315533, 31.218279, 50.055756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903137, 31.051409, 49.533817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987331, 31.434027, 49.453106>,  <33.037849, 31.663597, 49.404678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987331, 31.434027, 49.453106>,  <32.903137, 31.051409, 49.533817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987331, 31.434027, 49.453106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287755, -0.257883, -0.922331,
		-0.934286, 0.136079, -0.329532,
		0.210490, 0.956545, -0.201779,
		33.050480, 31.720991, 49.392570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525829, 31.187429, 48.890903>,  <32.903137, 31.051409, 49.533817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525829, 31.187429, 48.890903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814243, 31.461580, 48.931633>,  <32.987293, 31.626070, 48.956070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814243, 31.461580, 48.931633>,  <32.525829, 31.187429, 48.890903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814243, 31.461580, 48.931633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266341, -0.138485, -0.953879,
		-0.639665, 0.714900, -0.282396,
		0.721035, 0.685376, 0.101823,
		33.030556, 31.667192, 48.962181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433395, 31.505314, 48.295078>,  <32.525829, 31.187429, 48.890903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433395, 31.505314, 48.295078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773365, 31.671204, 48.425083>,  <32.977348, 31.770737, 48.503086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773365, 31.671204, 48.425083>,  <32.433395, 31.505314, 48.295078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773365, 31.671204, 48.425083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413184, -0.141814, -0.899537,
		-0.326969, 0.898828, -0.291888,
		0.849924, 0.414724, 0.325013,
		33.028343, 31.795622, 48.522587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617962, 31.890594, 47.785648>,  <32.433395, 31.505314, 48.295078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617962, 31.890594, 47.785648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959000, 31.861118, 47.992588>,  <33.163624, 31.843433, 48.116753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959000, 31.861118, 47.992588>,  <32.617962, 31.890594, 47.785648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959000, 31.861118, 47.992588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522423, 0.096680, -0.847188,
		0.012412, 0.992584, 0.120926,
		0.852596, -0.073689, 0.517349,
		33.214779, 31.839012, 48.147793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479393, 32.470440, 47.380146>,  <32.617962, 31.890594, 47.785648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479393, 32.470440, 47.380146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318104, 32.638096, 47.054760>,  <32.221333, 32.738689, 46.859528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318104, 32.638096, 47.054760>,  <32.479393, 32.470440, 47.380146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318104, 32.638096, 47.054760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442111, 0.689082, 0.574198,
		0.801218, 0.591172, -0.092545,
		-0.403221, 0.419143, -0.813469,
		32.197136, 32.763840, 46.810719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654305, 33.206203, 47.407490>,  <32.479393, 32.470440, 47.380146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654305, 33.206203, 47.407490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348217, 33.192284, 47.150356>,  <32.164566, 33.183933, 46.996078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.348217, 33.192284, 47.150356>,  <32.654305, 33.206203, 47.407490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348217, 33.192284, 47.150356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404774, 0.802477, 0.438394,
		0.500602, 0.595668, -0.628154,
		-0.765216, -0.034800, -0.642832,
		32.118652, 33.181843, 46.957508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659355, 33.828796, 47.039642>,  <32.654305, 33.206203, 47.407490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659355, 33.828796, 47.039642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289673, 33.677830, 47.016331>,  <32.067863, 33.587250, 47.002346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289673, 33.677830, 47.016331>,  <32.659355, 33.828796, 47.039642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289673, 33.677830, 47.016331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373957, 0.863492, 0.338433,
		-0.077409, 0.334575, -0.939184,
		-0.924210, -0.377413, -0.058274,
		32.012409, 33.564606, 46.998848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323421, 34.454750, 47.066494>,  <32.659355, 33.828796, 47.039642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323421, 34.454750, 47.066494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027748, 34.186100, 47.086578>,  <31.850344, 34.024910, 47.098629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027748, 34.186100, 47.086578>,  <32.323421, 34.454750, 47.066494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027748, 34.186100, 47.086578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620088, 0.707764, 0.338469,
		-0.262861, 0.219057, -0.939637,
		-0.739185, -0.671628, 0.050209,
		31.805992, 33.984612, 47.101643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801083, 34.644405, 46.697300>,  <32.323421, 34.454750, 47.066494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801083, 34.644405, 46.697300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636932, 34.410915, 46.977543>,  <31.538443, 34.270821, 47.145691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636932, 34.410915, 46.977543>,  <31.801083, 34.644405, 46.697300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636932, 34.410915, 46.977543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538655, 0.775093, 0.330274,
		-0.735828, -0.241851, -0.632508,
		-0.410375, -0.583728, 0.700609,
		31.513821, 34.235798, 47.187725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064123, 34.782906, 46.681797>,  <31.801083, 34.644405, 46.697300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064123, 34.782906, 46.681797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151287, 34.620113, 47.036625>,  <31.203585, 34.522438, 47.249519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151287, 34.620113, 47.036625>,  <31.064123, 34.782906, 46.681797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151287, 34.620113, 47.036625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566019, 0.687740, 0.454572,
		-0.795071, -0.601151, -0.080493,
		0.217908, -0.406978, 0.887066,
		31.216660, 34.498020, 47.302746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394520, 34.792210, 47.031361>,  <31.064123, 34.782906, 46.681797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394520, 34.792210, 47.031361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.673609, 34.769680, 47.317020>,  <30.841063, 34.756161, 47.488415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.673609, 34.769680, 47.317020>,  <30.394520, 34.792210, 47.031361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673609, 34.769680, 47.317020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552065, 0.593014, 0.586139,
		-0.456515, -0.803220, 0.382664,
		0.697724, -0.056326, 0.714149,
		30.882925, 34.752781, 47.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032391, 34.801521, 47.584919>,  <30.394520, 34.792210, 47.031361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032391, 34.801521, 47.584919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396776, 34.882378, 47.728745>,  <30.615408, 34.930893, 47.815041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396776, 34.882378, 47.728745>,  <30.032391, 34.801521, 47.584919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396776, 34.882378, 47.728745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373774, 0.773211, 0.512286,
		-0.174463, -0.601069, 0.779923,
		0.910964, 0.202140, 0.359560,
		30.670065, 34.943020, 47.836613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876263, 35.067230, 48.310539>,  <30.032391, 34.801521, 47.584919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876263, 35.067230, 48.310539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235437, 35.201778, 48.197006>,  <30.450943, 35.282505, 48.128887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235437, 35.201778, 48.197006>,  <29.876263, 35.067230, 48.310539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235437, 35.201778, 48.197006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159875, 0.850140, 0.501699,
		0.410056, -0.405117, 0.817150,
		0.897939, 0.336367, -0.283837,
		30.504820, 35.302689, 48.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158995, 35.295174, 48.905533>,  <29.876263, 35.067230, 48.310539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158995, 35.295174, 48.905533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389055, 35.475513, 48.632496>,  <30.527092, 35.583717, 48.468674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.389055, 35.475513, 48.632496>,  <30.158995, 35.295174, 48.905533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389055, 35.475513, 48.632496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071387, 0.858899, 0.507145,
		0.814925, -0.242958, 0.526183,
		0.575153, 0.450847, -0.682595,
		30.561602, 35.610767, 48.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709345, 35.664932, 49.307835>,  <30.158995, 35.295174, 48.905533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709345, 35.664932, 49.307835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653553, 35.832603, 48.948986>,  <30.620077, 35.933208, 48.733677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.653553, 35.832603, 48.948986>,  <30.709345, 35.664932, 49.307835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653553, 35.832603, 48.948986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271541, 0.855060, 0.441743,
		0.952266, 0.305221, -0.005441,
		-0.139482, 0.419180, -0.897125,
		30.611708, 35.958359, 48.679848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100298, 36.221554, 49.326874>,  <30.709345, 35.664932, 49.307835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100298, 36.221554, 49.326874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.846231, 36.308361, 49.030369>,  <30.693790, 36.360447, 48.852467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.846231, 36.308361, 49.030369>,  <31.100298, 36.221554, 49.326874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846231, 36.308361, 49.030369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396019, 0.732457, 0.553783,
		0.663122, 0.645298, -0.379289,
		-0.635168, 0.217020, -0.741258,
		30.655682, 36.373466, 48.807991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076122, 36.944637, 49.229904>,  <31.100298, 36.221554, 49.326874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076122, 36.944637, 49.229904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737953, 36.839260, 49.044060>,  <30.535051, 36.776035, 48.932552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737953, 36.839260, 49.044060>,  <31.076122, 36.944637, 49.229904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737953, 36.839260, 49.044060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456543, 0.807897, 0.372653,
		0.277185, 0.527163, -0.803285,
		-0.845421, -0.263440, -0.464609,
		30.484327, 36.760227, 48.904678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849171, 37.540997, 48.911564>,  <31.076122, 36.944637, 49.229904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849171, 37.540997, 48.911564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514585, 37.323368, 48.937832>,  <30.313835, 37.192791, 48.953594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514585, 37.323368, 48.937832>,  <30.849171, 37.540997, 48.911564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514585, 37.323368, 48.937832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418178, 0.711130, 0.565174,
		-0.354198, 0.445284, -0.822354,
		-0.836463, -0.544073, 0.065673,
		30.263647, 37.160145, 48.957535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402349, 38.015003, 49.068970>,  <30.849171, 37.540997, 48.911564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402349, 38.015003, 49.068970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.192549, 37.689407, 49.168823>,  <30.066668, 37.494049, 49.228737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.192549, 37.689407, 49.168823>,  <30.402349, 38.015003, 49.068970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192549, 37.689407, 49.168823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490462, 0.528533, 0.692893,
		-0.695948, 0.240988, -0.676448,
		-0.524503, -0.813989, 0.249636,
		30.035198, 37.445210, 49.243713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034773, 38.536488, 48.715206>,  <30.402349, 38.015003, 49.068970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034773, 38.536488, 48.715206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.338984, 38.760616, 48.846439>,  <30.521509, 38.895092, 48.925179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.338984, 38.760616, 48.846439>,  <30.034773, 38.536488, 48.715206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338984, 38.760616, 48.846439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635505, -0.538727, -0.553088,
		-0.133158, 0.629139, -0.765802,
		0.760527, 0.560319, 0.328086,
		30.567142, 38.928711, 48.944866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504742, 38.523018, 48.062431>,  <30.034773, 38.536488, 48.715206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504742, 38.523018, 48.062431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745310, 38.667343, 48.347557>,  <30.889650, 38.753937, 48.518631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745310, 38.667343, 48.347557>,  <30.504742, 38.523018, 48.062431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745310, 38.667343, 48.347557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797173, -0.330199, -0.505454,
		0.052996, 0.872228, -0.486220,
		0.601421, 0.360814, 0.712816,
		30.925735, 38.775589, 48.561401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969234, 38.948948, 47.781105>,  <30.504742, 38.523018, 48.062431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969234, 38.948948, 47.781105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161690, 38.814087, 48.104794>,  <31.277163, 38.733170, 48.299007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.161690, 38.814087, 48.104794>,  <30.969234, 38.948948, 47.781105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161690, 38.814087, 48.104794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744544, -0.330129, -0.580232,
		0.462774, 0.881669, 0.092190,
		0.481138, -0.337156, 0.809217,
		31.306030, 38.712940, 48.347557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639505, 39.130966, 47.549770>,  <30.969234, 38.948948, 47.781105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639505, 39.130966, 47.549770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667337, 38.865299, 47.847507>,  <31.684036, 38.705898, 48.026150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667337, 38.865299, 47.847507>,  <31.639505, 39.130966, 47.549770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667337, 38.865299, 47.847507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832321, -0.372661, -0.410325,
		0.549910, 0.648079, 0.526871,
		0.069578, -0.664167, 0.744339,
		31.688211, 38.666050, 48.070808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354778, 39.193794, 47.755383>,  <31.639505, 39.130966, 47.549770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354778, 39.193794, 47.755383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220787, 38.838776, 47.881908>,  <32.140392, 38.625767, 47.957825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220787, 38.838776, 47.881908>,  <32.354778, 39.193794, 47.755383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220787, 38.838776, 47.881908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833502, -0.435681, -0.339789,
		0.439391, 0.149830, 0.885712,
		-0.334977, -0.887543, 0.316318,
		32.120293, 38.572514, 47.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931229, 38.907837, 48.003796>,  <32.354778, 39.193794, 47.755383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931229, 38.907837, 48.003796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688633, 38.590580, 47.981544>,  <32.543076, 38.400227, 47.968193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.688633, 38.590580, 47.981544>,  <32.931229, 38.907837, 48.003796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688633, 38.590580, 47.981544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767368, -0.565601, -0.302062,
		0.208117, -0.225883, 0.951664,
		-0.606493, -0.793141, -0.055624,
		32.506683, 38.352638, 47.964859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245598, 38.431217, 48.378147>,  <32.931229, 38.907837, 48.003796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245598, 38.431217, 48.378147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995018, 38.211681, 48.156754>,  <32.844669, 38.079960, 48.023918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995018, 38.211681, 48.156754>,  <33.245598, 38.431217, 48.378147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995018, 38.211681, 48.156754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777496, -0.490411, -0.393695,
		-0.055358, -0.676958, 0.733937,
		-0.626446, -0.548839, -0.553480,
		32.807083, 38.047031, 47.990711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343399, 37.666931, 48.444683>,  <33.245598, 38.431217, 48.378147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343399, 37.666931, 48.444683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198021, 37.745674, 48.080452>,  <33.110794, 37.792919, 47.861912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.198021, 37.745674, 48.080452>,  <33.343399, 37.666931, 48.444683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198021, 37.745674, 48.080452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733022, -0.542806, -0.409927,
		-0.574964, -0.816462, 0.052984,
		-0.363449, 0.196855, -0.910578,
		33.088985, 37.804729, 47.807278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516827, 37.025414, 48.051815>,  <33.343399, 37.666931, 48.444683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516827, 37.025414, 48.051815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415615, 37.301159, 47.780300>,  <33.354889, 37.466606, 47.617390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415615, 37.301159, 47.780300>,  <33.516827, 37.025414, 48.051815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415615, 37.301159, 47.780300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646281, -0.401665, -0.648835,
		-0.719928, -0.602863, -0.343889,
		-0.253030, 0.689364, -0.678788,
		33.339706, 37.507969, 47.576664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380848, 36.606445, 47.387299>,  <33.516827, 37.025414, 48.051815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380848, 36.606445, 47.387299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457298, 36.985107, 47.283520>,  <33.503170, 37.212303, 47.221252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457298, 36.985107, 47.283520>,  <33.380848, 36.606445, 47.387299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457298, 36.985107, 47.283520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753774, -0.310859, -0.578956,
		-0.628724, -0.084909, -0.772979,
		0.191129, 0.946656, -0.259447,
		33.514637, 37.269104, 47.205685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573345, 36.528606, 46.710926>,  <33.380848, 36.606445, 47.387299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573345, 36.528606, 46.710926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711075, 36.890804, 46.810131>,  <33.793713, 37.108124, 46.869656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711075, 36.890804, 46.810131>,  <33.573345, 36.528606, 46.710926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711075, 36.890804, 46.810131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831187, -0.171181, -0.528986,
		-0.436541, 0.388288, -0.811581,
		0.344326, 0.905499, 0.248013,
		33.814373, 37.162453, 46.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814194, 36.805080, 46.094563>,  <33.573345, 36.528606, 46.710926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814194, 36.805080, 46.094563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965942, 37.013077, 46.400681>,  <34.056992, 37.137875, 46.584351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965942, 37.013077, 46.400681>,  <33.814194, 36.805080, 46.094563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965942, 37.013077, 46.400681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911971, -0.070553, -0.404143,
		-0.156158, 0.851251, -0.500985,
		0.379373, 0.519994, 0.765299,
		34.079754, 37.169075, 46.630272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.912323, 41.782349, 53.220482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617867, 41.948925, 53.007061>,  <28.441193, 42.048870, 52.879009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617867, 41.948925, 53.007061>,  <28.912323, 41.782349, 53.220482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617867, 41.948925, 53.007061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396360, -0.373753, -0.838575,
		-0.548632, -0.828786, 0.110075,
		-0.736140, 0.416440, -0.533551,
		28.397024, 42.073856, 52.846996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740917, 41.366825, 52.799103>,  <28.912323, 41.782349, 53.220482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740917, 41.366825, 52.799103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613304, 41.695103, 52.609497>,  <28.536736, 41.892067, 52.495735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613304, 41.695103, 52.609497>,  <28.740917, 41.366825, 52.799103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613304, 41.695103, 52.609497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286035, -0.393445, -0.873719,
		-0.903549, -0.414330, -0.109223,
		-0.319034, 0.820690, -0.474010,
		28.517593, 41.941311, 52.467293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401304, 41.074886, 52.359898>,  <28.740917, 41.366825, 52.799103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401304, 41.074886, 52.359898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464884, 41.434200, 52.196030>,  <28.503031, 41.649788, 52.097710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.464884, 41.434200, 52.196030>,  <28.401304, 41.074886, 52.359898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464884, 41.434200, 52.196030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247526, -0.437948, -0.864253,
		-0.955755, 0.035967, -0.291958,
		0.158947, 0.898281, -0.409668,
		28.512568, 41.703686, 52.073128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001968, 40.946522, 51.766411>,  <28.401304, 41.074886, 52.359898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001968, 40.946522, 51.766411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225910, 41.270100, 51.694668>,  <28.360275, 41.464245, 51.651623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225910, 41.270100, 51.694668>,  <28.001968, 40.946522, 51.766411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225910, 41.270100, 51.694668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222886, -0.355511, -0.907708,
		-0.798049, 0.468210, -0.379338,
		0.559856, 0.808945, -0.179358,
		28.393867, 41.512783, 51.640862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795397, 41.258251, 51.191261>,  <28.001968, 40.946522, 51.766411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795397, 41.258251, 51.191261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182734, 41.340221, 51.248280>,  <28.415136, 41.389404, 51.282490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182734, 41.340221, 51.248280>,  <27.795397, 41.258251, 51.191261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182734, 41.340221, 51.248280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205274, -0.328798, -0.921821,
		-0.142035, 0.921899, -0.360455,
		0.968343, 0.204923, 0.142542,
		28.473236, 41.401699, 51.291042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114462, 41.409500, 50.534519>,  <27.795397, 41.258251, 51.191261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114462, 41.409500, 50.534519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451679, 41.377529, 50.747269>,  <28.654011, 41.358349, 50.874916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451679, 41.377529, 50.747269>,  <28.114462, 41.409500, 50.534519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451679, 41.377529, 50.747269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454062, -0.424267, -0.783470,
		0.288274, 0.902003, -0.321385,
		0.843046, -0.079925, 0.531870,
		28.704594, 41.353550, 50.906830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724644, 41.601604, 50.084888>,  <28.114462, 41.409500, 50.534519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724644, 41.601604, 50.084888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879335, 41.366325, 50.368992>,  <28.972151, 41.225159, 50.539455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879335, 41.366325, 50.368992>,  <28.724644, 41.601604, 50.084888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879335, 41.366325, 50.368992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410953, -0.579565, -0.703720,
		0.825565, 0.564033, 0.017585,
		0.386730, -0.588193, 0.710260,
		28.995354, 41.189869, 50.582069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353518, 41.431179, 49.782906>,  <28.724644, 41.601604, 50.084888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353518, 41.431179, 49.782906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345146, 41.168777, 50.084694>,  <29.340122, 41.011337, 50.265766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345146, 41.168777, 50.084694>,  <29.353518, 41.431179, 49.782906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345146, 41.168777, 50.084694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481996, -0.667769, -0.567243,
		0.875924, 0.351780, 0.330165,
		-0.020930, -0.655999, 0.754471,
		29.338867, 40.971977, 50.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067261, 41.264748, 49.990353>,  <29.353518, 41.431179, 49.782906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067261, 41.264748, 49.990353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828087, 40.955509, 50.075012>,  <29.684582, 40.769966, 50.125809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828087, 40.955509, 50.075012>,  <30.067261, 41.264748, 49.990353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828087, 40.955509, 50.075012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590548, -0.603443, -0.535826,
		0.541964, -0.195400, 0.817370,
		-0.597937, -0.773095, 0.211651,
		29.648706, 40.723579, 50.138508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525829, 40.681496, 50.103516>,  <30.067261, 41.264748, 49.990353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525829, 40.681496, 50.103516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158319, 40.538403, 50.036720>,  <29.937815, 40.452549, 49.996643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158319, 40.538403, 50.036720>,  <30.525829, 40.681496, 50.103516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158319, 40.538403, 50.036720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377878, -0.674398, -0.634346,
		0.114306, -0.645922, 0.754797,
		-0.918772, -0.357730, -0.166992,
		29.882689, 40.431084, 49.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567459, 40.102715, 50.350616>,  <30.525829, 40.681496, 50.103516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567459, 40.102715, 50.350616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.256794, 40.074757, 50.100204>,  <30.070395, 40.057983, 49.949959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.256794, 40.074757, 50.100204>,  <30.567459, 40.102715, 50.350616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256794, 40.074757, 50.100204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473014, -0.721033, -0.506329,
		-0.415999, -0.689367, 0.593058,
		-0.776661, -0.069892, -0.626029,
		30.023796, 40.053787, 49.912395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330177, 39.496311, 50.416710>,  <30.567459, 40.102715, 50.350616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330177, 39.496311, 50.416710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210011, 39.608959, 50.052197>,  <30.137911, 39.676548, 49.833488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210011, 39.608959, 50.052197>,  <30.330177, 39.496311, 50.416710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210011, 39.608959, 50.052197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421304, -0.817981, -0.391676,
		-0.855718, -0.501594, 0.127085,
		-0.300415, 0.281623, -0.911284,
		30.119886, 39.693447, 49.778812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160347, 38.905342, 50.167156>,  <30.330177, 39.496311, 50.416710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160347, 38.905342, 50.167156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174498, 39.129509, 49.836174>,  <30.182987, 39.264008, 49.637585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.174498, 39.129509, 49.836174>,  <30.160347, 38.905342, 50.167156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174498, 39.129509, 49.836174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465342, -0.741977, -0.482625,
		-0.884424, -0.367978, -0.287032,
		0.035376, 0.560413, -0.827458,
		30.185110, 39.297634, 49.587936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979017, 38.474716, 49.529812>,  <30.160347, 38.905342, 50.167156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979017, 38.474716, 49.529812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194727, 38.790100, 49.411480>,  <30.324152, 38.979332, 49.340481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194727, 38.790100, 49.411480>,  <29.979017, 38.474716, 49.529812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194727, 38.790100, 49.411480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610326, -0.607970, -0.507814,
		-0.580247, 0.093297, -0.809079,
		0.539273, 0.788460, -0.295831,
		30.356508, 39.026638, 49.322731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478172, 38.172504, 49.005814>,  <29.979017, 38.474716, 49.529812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478172, 38.172504, 49.005814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538029, 37.859329, 49.247345>,  <29.573942, 37.671425, 49.392265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538029, 37.859329, 49.247345>,  <29.478172, 38.172504, 49.005814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538029, 37.859329, 49.247345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710400, 0.339631, 0.616427,
		-0.687706, -0.521204, -0.505378,
		0.149642, -0.782941, 0.603830,
		29.582922, 37.624447, 49.428493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764490, 38.119167, 49.148529>,  <29.478172, 38.172504, 49.005814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764490, 38.119167, 49.148529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964233, 37.877907, 49.397320>,  <29.084080, 37.733150, 49.546593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964233, 37.877907, 49.397320>,  <28.764490, 38.119167, 49.148529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964233, 37.877907, 49.397320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691340, 0.155295, 0.705644,
		-0.522200, -0.782362, -0.339436,
		0.499356, -0.603153, 0.621973,
		29.114040, 37.696960, 49.583912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276634, 37.606861, 49.384789>,  <28.764490, 38.119167, 49.148529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276634, 37.606861, 49.384789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565277, 37.606880, 49.661709>,  <28.738462, 37.606892, 49.827862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565277, 37.606880, 49.661709>,  <28.276634, 37.606861, 49.384789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565277, 37.606880, 49.661709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669429, 0.254980, 0.697746,
		-0.176491, -0.966946, 0.184027,
		0.721606, 0.000047, 0.692303,
		28.781759, 37.606895, 49.869400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161715, 37.085896, 49.900803>,  <28.276634, 37.606861, 49.384789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161715, 37.085896, 49.900803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388548, 37.371487, 50.065071>,  <28.524647, 37.542843, 50.163631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.388548, 37.371487, 50.065071>,  <28.161715, 37.085896, 49.900803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388548, 37.371487, 50.065071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630383, 0.055311, 0.774311,
		0.530128, -0.697979, 0.481446,
		0.567082, 0.713979, 0.410672,
		28.558672, 37.585682, 50.188274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154350, 36.941242, 50.606529>,  <28.161715, 37.085896, 49.900803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154350, 36.941242, 50.606529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306101, 37.310158, 50.636086>,  <28.397152, 37.531506, 50.653820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306101, 37.310158, 50.636086>,  <28.154350, 36.941242, 50.606529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306101, 37.310158, 50.636086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339944, 0.064667, 0.938220,
		0.860529, -0.381059, 0.338059,
		0.379378, 0.922287, 0.073891,
		28.419914, 37.586845, 50.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553190, 36.944271, 51.209599>,  <28.154350, 36.941242, 50.606529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553190, 36.944271, 51.209599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491371, 37.332024, 51.133270>,  <28.454279, 37.564674, 51.087475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.491371, 37.332024, 51.133270>,  <28.553190, 36.944271, 51.209599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491371, 37.332024, 51.133270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369564, 0.122398, 0.921109,
		0.916262, 0.212878, 0.339332,
		-0.154550, 0.969382, -0.190821,
		28.445005, 37.622837, 51.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754387, 37.254269, 51.841934>,  <28.553190, 36.944271, 51.209599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754387, 37.254269, 51.841934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547787, 37.537605, 51.649483>,  <28.423826, 37.707607, 51.534012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.547787, 37.537605, 51.649483>,  <28.754387, 37.254269, 51.841934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547787, 37.537605, 51.649483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389498, 0.306038, 0.868696,
		0.762573, 0.636081, 0.117827,
		-0.516502, 0.708337, -0.481128,
		28.392836, 37.750107, 51.505146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921705, 37.834602, 52.197472>,  <28.754387, 37.254269, 51.841934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921705, 37.834602, 52.197472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584185, 37.946190, 52.014091>,  <28.381672, 38.013142, 51.904064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584185, 37.946190, 52.014091>,  <28.921705, 37.834602, 52.197472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584185, 37.946190, 52.014091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337544, 0.388240, 0.857516,
		0.417210, 0.878320, -0.233432,
		-0.843801, 0.278970, -0.458449,
		28.331045, 38.029881, 51.876556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814859, 38.518940, 52.426456>,  <28.921705, 37.834602, 52.197472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814859, 38.518940, 52.426456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466608, 38.362804, 52.306694>,  <28.257658, 38.269123, 52.234837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.466608, 38.362804, 52.306694>,  <28.814859, 38.518940, 52.426456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466608, 38.362804, 52.306694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404968, 0.223131, 0.886687,
		-0.279303, 0.893223, -0.352339,
		-0.870627, -0.390340, -0.299405,
		28.205420, 38.245701, 52.216873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314411, 39.012753, 52.560772>,  <28.814859, 38.518940, 52.426456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314411, 39.012753, 52.560772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113216, 38.667721, 52.539036>,  <27.992498, 38.460701, 52.525993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.113216, 38.667721, 52.539036>,  <28.314411, 39.012753, 52.560772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113216, 38.667721, 52.539036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527932, 0.256849, 0.809516,
		-0.684318, 0.435866, -0.584577,
		-0.502988, -0.862583, -0.054341,
		27.962320, 38.408947, 52.522732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653961, 39.241875, 52.422977>,  <28.314411, 39.012753, 52.560772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653961, 39.241875, 52.422977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648136, 38.882915, 52.599373>,  <27.644642, 38.667542, 52.705208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648136, 38.882915, 52.599373>,  <27.653961, 39.241875, 52.422977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648136, 38.882915, 52.599373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438840, 0.402021, 0.803616,
		-0.898447, -0.181819, -0.399668,
		-0.014562, -0.897397, 0.440984,
		27.643768, 38.613697, 52.731667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033434, 39.248238, 52.846516>,  <27.653961, 39.241875, 52.422977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033434, 39.248238, 52.846516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231586, 38.930443, 52.987019>,  <27.350477, 38.739765, 53.071320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231586, 38.930443, 52.987019>,  <27.033434, 39.248238, 52.846516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231586, 38.930443, 52.987019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312215, 0.214499, 0.925480,
		-0.810630, -0.568132, -0.141794,
		0.495380, -0.794492, 0.351258,
		27.380199, 38.692097, 53.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564613, 38.933075, 53.340401>,  <27.033434, 39.248238, 52.846516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564613, 38.933075, 53.340401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934063, 38.813858, 53.436806>,  <27.155733, 38.742329, 53.494648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934063, 38.813858, 53.436806>,  <26.564613, 38.933075, 53.340401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934063, 38.813858, 53.436806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188735, 0.193628, 0.962750,
		-0.333610, -0.934707, 0.122588,
		0.923625, -0.298046, 0.241008,
		27.211151, 38.724445, 53.509109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503845, 38.435894, 53.925125>,  <26.564613, 38.933075, 53.340401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503845, 38.435894, 53.925125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867403, 38.602062, 53.939758>,  <27.085537, 38.701763, 53.948536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.867403, 38.602062, 53.939758>,  <26.503845, 38.435894, 53.925125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867403, 38.602062, 53.939758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192869, 0.340956, 0.920082,
		0.369759, -0.843307, 0.390015,
		0.908889, 0.415430, 0.036576,
		27.140072, 38.726688, 53.950733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.536247, 38.617302, 57.776119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159710, 38.556866, 57.655430>,  <34.933788, 38.520603, 57.583015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.159710, 38.556866, 57.655430>,  <35.536247, 38.617302, 57.776119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159710, 38.556866, 57.655430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308077, -0.749619, -0.585799,
		-0.137670, -0.644394, 0.752199,
		-0.941348, -0.151088, -0.301723,
		34.877304, 38.511539, 57.564915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455544, 37.830410, 57.763618>,  <35.536247, 38.617302, 57.776119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455544, 37.830410, 57.763618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162327, 37.979416, 57.535976>,  <34.986397, 38.068821, 57.399391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162327, 37.979416, 57.535976>,  <35.455544, 37.830410, 57.763618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162327, 37.979416, 57.535976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140103, -0.736063, -0.662255,
		-0.665599, -0.565194, 0.487375,
		-0.733041, 0.372514, -0.569108,
		34.942413, 38.091171, 57.365246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168037, 37.245312, 57.431576>,  <35.455544, 37.830410, 57.763618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168037, 37.245312, 57.431576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042244, 37.560196, 57.219391>,  <34.966766, 37.749126, 57.092079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.042244, 37.560196, 57.219391>,  <35.168037, 37.245312, 57.431576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042244, 37.560196, 57.219391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032011, -0.567295, -0.822893,
		-0.948722, -0.241807, 0.203606,
		-0.314486, 0.787214, -0.530464,
		34.947899, 37.796360, 57.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557228, 37.063240, 57.134487>,  <35.168037, 37.245312, 57.431576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557228, 37.063240, 57.134487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720516, 37.342800, 56.899578>,  <34.818489, 37.510536, 56.758633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720516, 37.342800, 56.899578>,  <34.557228, 37.063240, 57.134487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720516, 37.342800, 56.899578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046111, -0.626709, -0.777889,
		-0.911718, 0.344630, -0.223608,
		0.408221, 0.698904, -0.587273,
		34.842983, 37.552471, 56.723396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176983, 37.045471, 56.489902>,  <34.557228, 37.063240, 57.134487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176983, 37.045471, 56.489902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515484, 37.236607, 56.395645>,  <34.718586, 37.351288, 56.339092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515484, 37.236607, 56.395645>,  <34.176983, 37.045471, 56.489902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515484, 37.236607, 56.395645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048969, -0.510168, -0.858680,
		-0.530528, 0.715120, -0.455130,
		0.846252, 0.477841, -0.235640,
		34.769360, 37.379959, 56.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061783, 37.278576, 55.835396>,  <34.176983, 37.045471, 56.489902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061783, 37.278576, 55.835396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459988, 37.280682, 55.873207>,  <34.698910, 37.281944, 55.895893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459988, 37.280682, 55.873207>,  <34.061783, 37.278576, 55.835396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459988, 37.280682, 55.873207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083958, -0.510569, -0.855728,
		0.043757, 0.859820, -0.508718,
		0.995508, 0.005267, 0.094530,
		34.758640, 37.282261, 55.901566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285500, 37.504761, 55.269466>,  <34.061783, 37.278576, 55.835396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285500, 37.504761, 55.269466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614178, 37.332005, 55.418217>,  <34.811382, 37.228352, 55.507469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.614178, 37.332005, 55.418217>,  <34.285500, 37.504761, 55.269466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614178, 37.332005, 55.418217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257105, -0.301438, -0.918168,
		0.508642, 0.850065, -0.136649,
		0.821693, -0.431886, 0.371880,
		34.860687, 37.202438, 55.529781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718468, 37.692875, 54.798397>,  <34.285500, 37.504761, 55.269466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718468, 37.692875, 54.798397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914593, 37.395832, 54.980881>,  <35.032269, 37.217606, 55.090370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914593, 37.395832, 54.980881>,  <34.718468, 37.692875, 54.798397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914593, 37.395832, 54.980881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401130, -0.272426, -0.874573,
		0.773748, 0.611815, 0.164308,
		0.490315, -0.742608, 0.456206,
		35.061687, 37.173050, 55.117744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449207, 37.671890, 54.529835>,  <34.718468, 37.692875, 54.798397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449207, 37.671890, 54.529835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361778, 37.314178, 54.686035>,  <35.309319, 37.099552, 54.779755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361778, 37.314178, 54.686035>,  <35.449207, 37.671890, 54.529835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361778, 37.314178, 54.686035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244412, -0.437589, -0.865320,
		0.944716, -0.093695, 0.314219,
		-0.218575, -0.894280, 0.390497,
		35.296207, 37.045895, 54.803185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139198, 37.303707, 54.584133>,  <35.449207, 37.671890, 54.529835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139198, 37.303707, 54.584133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881870, 36.999844, 54.622196>,  <35.727474, 36.817524, 54.645035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881870, 36.999844, 54.622196>,  <36.139198, 37.303707, 54.584133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881870, 36.999844, 54.622196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356491, -0.407225, -0.840882,
		0.677534, -0.507036, 0.532788,
		-0.643321, -0.759660, 0.095155,
		35.688873, 36.771946, 54.650742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578472, 36.721478, 54.559727>,  <36.139198, 37.303707, 54.584133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578472, 36.721478, 54.559727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203766, 36.596947, 54.495796>,  <35.978943, 36.522228, 54.457439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203766, 36.596947, 54.495796>,  <36.578472, 36.721478, 54.559727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203766, 36.596947, 54.495796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329984, -0.633730, -0.699640,
		0.116530, -0.708140, 0.696390,
		-0.936766, -0.311327, -0.159826,
		35.922737, 36.503548, 54.447849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466579, 35.884056, 54.622803>,  <36.578472, 36.721478, 54.559727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466579, 35.884056, 54.622803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162758, 36.003052, 54.391430>,  <35.980465, 36.074448, 54.252605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162758, 36.003052, 54.391430>,  <36.466579, 35.884056, 54.622803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162758, 36.003052, 54.391430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268997, -0.666005, -0.695757,
		-0.592214, -0.684061, 0.425844,
		-0.759555, 0.297486, -0.578428,
		35.934891, 36.092297, 54.217903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089184, 35.269691, 54.402874>,  <36.466579, 35.884056, 54.622803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089184, 35.269691, 54.402874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961201, 35.529919, 54.127369>,  <35.884411, 35.686054, 53.962067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961201, 35.529919, 54.127369>,  <36.089184, 35.269691, 54.402874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961201, 35.529919, 54.127369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185911, -0.669730, -0.718957,
		-0.929013, -0.358083, 0.093337,
		-0.319957, 0.650567, -0.688759,
		35.865215, 35.725090, 53.920742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473667, 34.976906, 53.957279>,  <36.089184, 35.269691, 54.402874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473667, 34.976906, 53.957279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698990, 35.259502, 53.785904>,  <35.834183, 35.429062, 53.683079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698990, 35.259502, 53.785904>,  <35.473667, 34.976906, 53.957279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698990, 35.259502, 53.785904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273194, -0.648624, -0.710388,
		-0.779777, 0.283119, -0.558383,
		0.563305, 0.706491, -0.428436,
		35.867981, 35.471451, 53.657372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857285, 34.657753, 53.714058>,  <35.473667, 34.976906, 53.957279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857285, 34.657753, 53.714058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690262, 34.308708, 53.815399>,  <34.590046, 34.099281, 53.876205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690262, 34.308708, 53.815399>,  <34.857285, 34.657753, 53.714058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690262, 34.308708, 53.815399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508069, 0.455384, 0.731090,
		-0.753332, 0.176552, -0.633498,
		-0.417560, -0.872614, 0.253355,
		34.564995, 34.046925, 53.891407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174515, 34.806793, 53.718082>,  <34.857285, 34.657753, 53.714058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174515, 34.806793, 53.718082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235107, 34.487000, 53.950596>,  <34.271461, 34.295124, 54.090103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235107, 34.487000, 53.950596>,  <34.174515, 34.806793, 53.718082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235107, 34.487000, 53.950596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509330, 0.440856, 0.739073,
		-0.847135, -0.408016, -0.340420,
		0.151477, -0.799480, 0.581279,
		34.280552, 34.247154, 54.124981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608303, 34.624588, 54.025726>,  <34.174515, 34.806793, 53.718082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608303, 34.624588, 54.025726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846504, 34.432800, 54.283558>,  <33.989426, 34.317726, 54.438255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846504, 34.432800, 54.283558>,  <33.608303, 34.624588, 54.025726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846504, 34.432800, 54.283558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542252, 0.352101, 0.762881,
		-0.592735, -0.803825, -0.050315,
		0.595507, -0.479470, 0.644578,
		34.025158, 34.288960, 54.476933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231659, 34.279835, 54.523285>,  <33.608303, 34.624588, 54.025726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231659, 34.279835, 54.523285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572132, 34.353455, 54.719906>,  <33.776417, 34.397625, 54.837879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572132, 34.353455, 54.719906>,  <33.231659, 34.279835, 54.523285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572132, 34.353455, 54.719906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524770, 0.317262, 0.789912,
		-0.010571, -0.930308, 0.366628,
		0.851178, 0.184045, 0.491551,
		33.827484, 34.408669, 54.867371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108768, 34.017040, 55.203999>,  <33.231659, 34.279835, 54.523285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108768, 34.017040, 55.203999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424335, 34.259785, 55.242653>,  <33.613674, 34.405430, 55.265846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424335, 34.259785, 55.242653>,  <33.108768, 34.017040, 55.203999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424335, 34.259785, 55.242653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409240, 0.401541, 0.819321,
		0.458411, -0.685919, 0.565133,
		0.788912, 0.606861, 0.096634,
		33.661011, 34.441841, 55.271645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265755, 33.980751, 55.901245>,  <33.108768, 34.017040, 55.203999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265755, 33.980751, 55.901245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444019, 34.321030, 55.789749>,  <33.550980, 34.525196, 55.722851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444019, 34.321030, 55.789749>,  <33.265755, 33.980751, 55.901245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444019, 34.321030, 55.789749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318098, 0.441537, 0.838963,
		0.836779, -0.285229, 0.467382,
		0.445663, 0.850699, -0.278738,
		33.577717, 34.576241, 55.706127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779408, 34.079273, 56.407139>,  <33.265755, 33.980751, 55.901245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779408, 34.079273, 56.407139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682335, 34.434383, 56.250702>,  <33.624092, 34.647449, 56.156837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682335, 34.434383, 56.250702>,  <33.779408, 34.079273, 56.407139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682335, 34.434383, 56.250702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183711, 0.353795, 0.917104,
		0.952552, 0.294412, 0.077235,
		-0.242681, 0.887779, -0.391095,
		33.609531, 34.700718, 56.133373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042080, 34.492245, 56.940823>,  <33.779408, 34.079273, 56.407139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042080, 34.492245, 56.940823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824093, 34.742294, 56.717316>,  <33.693302, 34.892326, 56.583210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824093, 34.742294, 56.717316>,  <34.042080, 34.492245, 56.940823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824093, 34.742294, 56.717316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221525, 0.535399, 0.815031,
		0.808664, 0.567947, -0.153294,
		-0.544968, 0.625127, -0.558772,
		33.660603, 34.929832, 56.549683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336414, 35.189854, 57.116611>,  <34.042080, 34.492245, 56.940823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336414, 35.189854, 57.116611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964039, 35.216873, 56.973061>,  <33.740612, 35.233086, 56.886932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964039, 35.216873, 56.973061>,  <34.336414, 35.189854, 57.116611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964039, 35.216873, 56.973061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258698, 0.571619, 0.778670,
		0.257735, 0.817734, -0.514669,
		-0.930939, 0.067547, -0.358873,
		33.684757, 35.237137, 56.865398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175793, 35.853718, 57.297283>,  <34.336414, 35.189854, 57.116611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175793, 35.853718, 57.297283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817780, 35.702545, 57.202549>,  <33.602974, 35.611843, 57.145710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817780, 35.702545, 57.202549>,  <34.175793, 35.853718, 57.297283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817780, 35.702545, 57.202549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430977, 0.596153, 0.677392,
		-0.114818, 0.708356, -0.696454,
		-0.895028, -0.377933, -0.236836,
		33.549271, 35.589165, 57.131496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796284, 36.358173, 57.078766>,  <34.175793, 35.853718, 57.297283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796284, 36.358173, 57.078766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524181, 36.085907, 57.187546>,  <33.360920, 35.922546, 57.252815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524181, 36.085907, 57.187546>,  <33.796284, 36.358173, 57.078766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524181, 36.085907, 57.187546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522785, 0.710606, 0.470887,
		-0.513763, 0.178151, -0.839231,
		-0.680252, -0.680662, 0.271949,
		33.320107, 35.881710, 57.269131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155998, 36.747345, 57.137627>,  <33.796284, 36.358173, 57.078766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155998, 36.747345, 57.137627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062931, 36.435020, 57.369560>,  <33.007092, 36.247627, 57.508720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.062931, 36.435020, 57.369560>,  <33.155998, 36.747345, 57.137627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062931, 36.435020, 57.369560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488535, 0.609347, 0.624523,
		-0.840951, -0.137961, -0.523228,
		-0.232668, -0.780809, 0.579830,
		32.993130, 36.200779, 57.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423458, 36.803535, 57.234848>,  <33.155998, 36.747345, 57.137627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423458, 36.803535, 57.234848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542973, 36.587822, 57.549782>,  <32.614681, 36.458393, 57.738743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542973, 36.587822, 57.549782>,  <32.423458, 36.803535, 57.234848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542973, 36.587822, 57.549782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614929, 0.522117, 0.590979,
		-0.729789, -0.660731, -0.175623,
		0.298783, -0.539286, 0.787337,
		32.632607, 36.426037, 57.785984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853313, 36.558914, 57.518360>,  <32.423458, 36.803535, 57.234848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853313, 36.558914, 57.518360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137329, 36.586090, 57.798710>,  <32.307739, 36.602394, 57.966919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137329, 36.586090, 57.798710>,  <31.853313, 36.558914, 57.518360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137329, 36.586090, 57.798710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544931, 0.683401, 0.485813,
		-0.445973, -0.726876, 0.522264,
		0.710041, 0.067938, 0.700876,
		32.350342, 36.606472, 58.008972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148434, 36.300377, 57.383793>,  <31.853313, 36.558914, 57.518360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148434, 36.300377, 57.383793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.815981, 36.274872, 57.162830>,  <30.616508, 36.259571, 57.030254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.815981, 36.274872, 57.162830>,  <31.148434, 36.300377, 57.383793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815981, 36.274872, 57.162830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297061, -0.890684, -0.344146,
		-0.470078, -0.450129, 0.759217,
		-0.831133, -0.063759, -0.552407,
		30.566641, 36.255745, 56.997108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976164, 35.661251, 57.445351>,  <31.148434, 36.300377, 57.383793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976164, 35.661251, 57.445351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798258, 35.762844, 57.101799>,  <30.691515, 35.823799, 56.895668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798258, 35.762844, 57.101799>,  <30.976164, 35.661251, 57.445351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798258, 35.762844, 57.101799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485101, -0.737806, -0.469382,
		-0.752903, -0.625409, 0.204942,
		-0.444763, 0.253982, -0.858882,
		30.664827, 35.839039, 56.844135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713926, 35.055580, 57.150219>,  <30.976164, 35.661251, 57.445351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713926, 35.055580, 57.150219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726780, 35.306984, 56.839363>,  <30.734491, 35.457829, 56.652851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726780, 35.306984, 56.839363>,  <30.713926, 35.055580, 57.150219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726780, 35.306984, 56.839363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337765, -0.738621, -0.583399,
		-0.940682, -0.243743, -0.236023,
		0.032133, 0.628513, -0.777135,
		30.736420, 35.495537, 56.606224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355951, 34.722744, 56.566647>,  <30.713926, 35.055580, 57.150219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355951, 34.722744, 56.566647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.600323, 34.993069, 56.401703>,  <30.746946, 35.155266, 56.302734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.600323, 34.993069, 56.401703>,  <30.355951, 34.722744, 56.566647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600323, 34.993069, 56.401703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310754, -0.683767, -0.660223,
		-0.728147, 0.275206, -0.627745,
		0.610928, 0.675814, -0.412361,
		30.783602, 35.195812, 56.277996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160732, 34.775368, 55.889797>,  <30.355951, 34.722744, 56.566647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160732, 34.775368, 55.889797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532330, 34.923309, 55.884525>,  <30.755289, 35.012074, 55.881363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.532330, 34.923309, 55.884525>,  <30.160732, 34.775368, 55.889797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532330, 34.923309, 55.884525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255797, -0.667432, -0.699358,
		-0.267463, 0.646328, -0.714650,
		0.928995, 0.369858, -0.013184,
		30.811028, 35.034267, 55.880569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250504, 34.912201, 55.168423>,  <30.160732, 34.775368, 55.889797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250504, 34.912201, 55.168423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616383, 34.889404, 55.328465>,  <30.835909, 34.875725, 55.424488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616383, 34.889404, 55.328465>,  <30.250504, 34.912201, 55.168423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616383, 34.889404, 55.328465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322446, -0.493911, -0.807515,
		0.243637, 0.867643, -0.433402,
		0.914696, -0.056992, 0.400103,
		30.890791, 34.872307, 55.448494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679567, 35.030937, 54.601704>,  <30.250504, 34.912201, 55.168423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679567, 35.030937, 54.601704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.920170, 34.846596, 54.862720>,  <31.064531, 34.735992, 55.019329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.920170, 34.846596, 54.862720>,  <30.679567, 35.030937, 54.601704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920170, 34.846596, 54.862720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504071, -0.414743, -0.757562,
		0.619761, 0.784603, -0.017167,
		0.601505, -0.460854, 0.652538,
		31.100622, 34.708340, 55.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395742, 35.201660, 54.385506>,  <30.679567, 35.030937, 54.601704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395742, 35.201660, 54.385506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359419, 34.860100, 54.590485>,  <31.337626, 34.655163, 54.713470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359419, 34.860100, 54.590485>,  <31.395742, 35.201660, 54.385506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359419, 34.860100, 54.590485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447643, -0.494656, -0.744937,
		0.889589, 0.161745, 0.427164,
		-0.090809, -0.853905, 0.512445,
		31.332176, 34.603928, 54.744217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997704, 34.826946, 54.142105>,  <31.395742, 35.201660, 54.385506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997704, 34.826946, 54.142105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789452, 34.556068, 54.350082>,  <31.664499, 34.393539, 54.474869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789452, 34.556068, 54.350082>,  <31.997704, 34.826946, 54.142105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789452, 34.556068, 54.350082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319530, -0.719284, -0.616872,
		0.791735, -0.155024, 0.590867,
		-0.520631, -0.677199, 0.519947,
		31.633263, 34.352909, 54.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467213, 34.291050, 54.275215>,  <31.997704, 34.826946, 54.142105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467213, 34.291050, 54.275215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097225, 34.143902, 54.313396>,  <31.875233, 34.055614, 54.336308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097225, 34.143902, 54.313396>,  <32.467213, 34.291050, 54.275215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097225, 34.143902, 54.313396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193408, -0.671837, -0.715003,
		0.327157, -0.642891, 0.692575,
		-0.924966, -0.367867, 0.095456,
		31.819735, 34.033543, 54.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572018, 33.595833, 54.550751>,  <32.467213, 34.291050, 54.275215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572018, 33.595833, 54.550751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229015, 33.664814, 54.356865>,  <32.023216, 33.706203, 54.240536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229015, 33.664814, 54.356865>,  <32.572018, 33.595833, 54.550751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229015, 33.664814, 54.356865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184234, -0.776733, -0.602282,
		-0.480359, -0.605759, 0.634280,
		-0.857504, 0.172456, -0.484712,
		31.971764, 33.716553, 54.211452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467056, 32.907207, 54.412685>,  <32.572018, 33.595833, 54.550751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467056, 32.907207, 54.412685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215485, 33.096100, 54.165642>,  <32.064541, 33.209435, 54.017414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215485, 33.096100, 54.165642>,  <32.467056, 32.907207, 54.412685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215485, 33.096100, 54.165642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201094, -0.668551, -0.715961,
		-0.751006, -0.574486, 0.325508,
		-0.628929, 0.472234, -0.617612,
		32.026806, 33.237770, 53.980358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160080, 32.358665, 54.059750>,  <32.467056, 32.907207, 54.412685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160080, 32.358665, 54.059750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103428, 32.674721, 53.821213>,  <32.069435, 32.864353, 53.678089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103428, 32.674721, 53.821213>,  <32.160080, 32.358665, 54.059750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103428, 32.674721, 53.821213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293391, -0.541846, -0.787606,
		-0.945443, -0.286510, -0.155078,
		-0.141629, 0.790136, -0.596345,
		32.060940, 32.911762, 53.642311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736683, 32.051441, 53.432953>,  <32.160080, 32.358665, 54.059750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736683, 32.051441, 53.432953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886066, 32.397861, 53.299999>,  <31.975697, 32.605713, 53.220226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.886066, 32.397861, 53.299999>,  <31.736683, 32.051441, 53.432953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886066, 32.397861, 53.299999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267559, -0.443649, -0.855329,
		-0.888224, 0.230495, -0.397404,
		0.373457, 0.866053, -0.332389,
		31.998104, 32.657677, 53.200283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.253445, 38.057461, 55.156322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.351927, 38.348110, 54.899761>,  <27.411016, 38.522499, 54.745823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.351927, 38.348110, 54.899761>,  <27.253445, 38.057461, 55.156322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351927, 38.348110, 54.899761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166121, 0.620345, 0.766534,
		0.954875, -0.295275, 0.032025,
		0.246205, 0.726625, -0.641404,
		27.425789, 38.566097, 54.707340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866831, 38.392498, 55.430180>,  <27.253445, 38.057461, 55.156322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866831, 38.392498, 55.430180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.675575, 38.652863, 55.194317>,  <27.560822, 38.809082, 55.052799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.675575, 38.652863, 55.194317>,  <27.866831, 38.392498, 55.430180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675575, 38.652863, 55.194317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092723, 0.705032, 0.703088,
		0.873377, 0.281498, -0.397457,
		-0.478138, 0.650915, -0.589657,
		27.532133, 38.848137, 55.017422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126783, 38.926643, 55.800945>,  <27.866831, 38.392498, 55.430180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126783, 38.926643, 55.800945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859541, 39.065063, 55.537468>,  <27.699196, 39.148113, 55.379379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.859541, 39.065063, 55.537468>,  <28.126783, 38.926643, 55.800945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859541, 39.065063, 55.537468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132796, 0.815601, 0.563169,
		0.732118, 0.463730, -0.498956,
		-0.668108, 0.346047, -0.658698,
		27.659109, 39.168877, 55.339859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287910, 39.656559, 55.567997>,  <28.126783, 38.926643, 55.800945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287910, 39.656559, 55.567997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.894976, 39.594009, 55.526890>,  <27.659214, 39.556480, 55.502224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.894976, 39.594009, 55.526890>,  <28.287910, 39.656559, 55.567997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894976, 39.594009, 55.526890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187104, 0.813520, 0.550616,
		-0.002500, 0.560118, -0.828409,
		-0.982337, -0.156375, -0.102767,
		27.600275, 39.547096, 55.496059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017553, 40.303364, 55.422909>,  <28.287910, 39.656559, 55.567997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017553, 40.303364, 55.422909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.687502, 40.109718, 55.539387>,  <27.489471, 39.993530, 55.609272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.687502, 40.109718, 55.539387>,  <28.017553, 40.303364, 55.422909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687502, 40.109718, 55.539387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274685, 0.794201, 0.542027,
		-0.493669, 0.367257, -0.788298,
		-0.825130, -0.484115, 0.291193,
		27.439962, 39.964485, 55.626743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540672, 40.929253, 55.387878>,  <28.017553, 40.303364, 55.422909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540672, 40.929253, 55.387878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.342131, 40.638054, 55.577045>,  <27.223005, 40.463333, 55.690544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.342131, 40.638054, 55.577045>,  <27.540672, 40.929253, 55.387878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342131, 40.638054, 55.577045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398927, 0.675108, 0.620554,
		-0.771032, 0.119356, -0.625511,
		-0.496354, -0.728000, 0.472915,
		27.193224, 40.419655, 55.718922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835962, 41.135521, 55.431515>,  <27.540672, 40.929253, 55.387878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835962, 41.135521, 55.431515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.862131, 40.858105, 55.718491>,  <26.877832, 40.691654, 55.890675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.862131, 40.858105, 55.718491>,  <26.835962, 41.135521, 55.431515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862131, 40.858105, 55.718491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437657, 0.626191, 0.645244,
		-0.896758, -0.356206, -0.262567,
		0.065423, -0.693543, 0.717439,
		26.881758, 40.650043, 55.933723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172226, 41.033184, 55.801842>,  <26.835962, 41.135521, 55.431515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172226, 41.033184, 55.801842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.464653, 40.925205, 56.052494>,  <26.640110, 40.860420, 56.202885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.464653, 40.925205, 56.052494>,  <26.172226, 41.033184, 55.801842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464653, 40.925205, 56.052494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462624, 0.478951, 0.746046,
		-0.501518, -0.835306, 0.225262,
		0.731066, -0.269944, 0.626635,
		26.683973, 40.844223, 56.240486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790651, 41.000271, 56.440208>,  <26.172226, 41.033184, 55.801842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790651, 41.000271, 56.440208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.178051, 40.984375, 56.538536>,  <26.410492, 40.974838, 56.597534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.178051, 40.984375, 56.538536>,  <25.790651, 41.000271, 56.440208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178051, 40.984375, 56.538536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210385, 0.397491, 0.893162,
		-0.133208, -0.916745, 0.376609,
		0.968501, -0.039743, 0.245819,
		26.468601, 40.972450, 56.612282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799444, 40.684875, 57.135292>,  <25.790651, 41.000271, 56.440208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799444, 40.684875, 57.135292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.141050, 40.890137, 57.101055>,  <26.346014, 41.013294, 57.080513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.141050, 40.890137, 57.101055>,  <25.799444, 40.684875, 57.135292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141050, 40.890137, 57.101055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124172, 0.360831, 0.924328,
		0.505212, -0.778762, 0.371875,
		0.854015, 0.513158, -0.085595,
		26.397255, 41.044083, 57.075378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045557, 40.739723, 57.874660>,  <25.799444, 40.684875, 57.135292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045557, 40.739723, 57.874660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245659, 41.010983, 57.659309>,  <26.365719, 41.173740, 57.530098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245659, 41.010983, 57.659309>,  <26.045557, 40.739723, 57.874660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245659, 41.010983, 57.659309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048417, 0.598895, 0.799363,
		0.864524, -0.425951, 0.266765,
		0.500253, 0.678153, -0.538383,
		26.395735, 41.214428, 57.497795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648834, 40.813145, 58.213974>,  <26.045557, 40.739723, 57.874660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648834, 40.813145, 58.213974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.600508, 41.159267, 58.019390>,  <26.571512, 41.366943, 57.902641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.600508, 41.159267, 58.019390>,  <26.648834, 40.813145, 58.213974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600508, 41.159267, 58.019390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173560, 0.500911, 0.847918,
		0.977385, 0.018011, -0.210701,
		-0.120814, 0.865311, -0.486457,
		26.564264, 41.418861, 57.873451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239170, 41.332718, 58.273132>,  <26.648834, 40.813145, 58.213974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239170, 41.332718, 58.273132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.910107, 41.557171, 58.236568>,  <26.712667, 41.691845, 58.214630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.910107, 41.557171, 58.236568>,  <27.239170, 41.332718, 58.273132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910107, 41.557171, 58.236568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255143, 0.508066, 0.822661,
		0.508066, 0.653448, -0.561136,
		-0.822661, 0.561136, -0.091408,
		26.663309, 41.725513, 58.209145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602928, 40.732166, 58.543774>,  <27.239170, 41.332718, 58.273132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602928, 40.732166, 58.543774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.917067, 40.883026, 58.740135>,  <28.105549, 40.973541, 58.857952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.917067, 40.883026, 58.740135>,  <27.602928, 40.732166, 58.543774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917067, 40.883026, 58.740135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424039, -0.905479, 0.017290,
		0.451025, 0.194584, -0.871042,
		0.785345, 0.377154, 0.490905,
		28.152670, 40.996174, 58.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199707, 40.653618, 58.171719>,  <27.602928, 40.732166, 58.543774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199707, 40.653618, 58.171719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292311, 40.665657, 58.560665>,  <28.347872, 40.672878, 58.794033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.292311, 40.665657, 58.560665>,  <28.199707, 40.653618, 58.171719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292311, 40.665657, 58.560665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437168, -0.896133, -0.076350,
		0.869073, 0.442763, -0.220618,
		0.231508, 0.030093, 0.972367,
		28.361763, 40.674686, 58.852375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867174, 40.426125, 58.305283>,  <28.199707, 40.653618, 58.171719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867174, 40.426125, 58.305283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678497, 40.365765, 58.652786>,  <28.565292, 40.329548, 58.861286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678497, 40.365765, 58.652786>,  <28.867174, 40.426125, 58.305283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678497, 40.365765, 58.652786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316871, -0.948441, 0.007300,
		0.822862, 0.278727, 0.495186,
		-0.471690, -0.150903, 0.868756,
		28.536991, 40.320496, 58.913414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397516, 40.195637, 58.852131>,  <28.867174, 40.426125, 58.305283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397516, 40.195637, 58.852131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039782, 40.063568, 58.972897>,  <28.825140, 39.984329, 59.045357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.039782, 40.063568, 58.972897>,  <29.397516, 40.195637, 58.852131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039782, 40.063568, 58.972897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305119, -0.943655, -0.128132,
		0.327205, -0.022474, 0.944686,
		-0.894337, -0.330168, 0.301911,
		28.771481, 39.964520, 59.063469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543036, 39.668354, 59.343395>,  <29.397516, 40.195637, 58.852131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543036, 39.668354, 59.343395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164570, 39.591656, 59.239082>,  <28.937490, 39.545639, 59.176495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.164570, 39.591656, 59.239082>,  <29.543036, 39.668354, 59.343395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164570, 39.591656, 59.239082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282407, -0.882704, -0.375607,
		-0.158172, -0.429033, 0.889333,
		-0.946165, -0.191743, -0.260780,
		28.880720, 39.534134, 59.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.515354, 39.004326, 59.351845>,  <29.543036, 39.668354, 59.343395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.515354, 39.004326, 59.351845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160236, 39.058872, 59.176018>,  <28.947166, 39.091599, 59.070522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160236, 39.058872, 59.176018>,  <29.515354, 39.004326, 59.351845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160236, 39.058872, 59.176018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091103, -0.884128, -0.458278,
		-0.451131, -0.446903, 0.772501,
		-0.887795, 0.136366, -0.439572,
		28.893898, 39.099781, 59.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006586, 38.475651, 59.553005>,  <29.515354, 39.004326, 59.351845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006586, 38.475651, 59.553005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.895367, 38.592949, 59.187122>,  <28.828634, 38.663326, 58.967590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.895367, 38.592949, 59.187122>,  <29.006586, 38.475651, 59.553005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895367, 38.592949, 59.187122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199071, -0.913996, -0.353529,
		-0.939712, -0.280391, 0.195760,
		-0.278050, 0.293246, -0.914710,
		28.811951, 38.680923, 58.912708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755175, 37.856453, 59.234615>,  <29.006586, 38.475651, 59.553005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755175, 37.856453, 59.234615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.807856, 38.100147, 58.921825>,  <28.839464, 38.246365, 58.734150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.807856, 38.100147, 58.921825>,  <28.755175, 37.856453, 59.234615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807856, 38.100147, 58.921825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437405, -0.743613, -0.505685,
		-0.889569, -0.275440, -0.364418,
		0.131700, 0.609239, -0.781974,
		28.847366, 38.282921, 58.687233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393089, 37.628258, 58.642117>,  <28.755175, 37.856453, 59.234615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393089, 37.628258, 58.642117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678442, 37.863022, 58.488953>,  <28.849653, 38.003880, 58.397053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678442, 37.863022, 58.488953>,  <28.393089, 37.628258, 58.642117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678442, 37.863022, 58.488953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183045, -0.683504, -0.706624,
		-0.676447, 0.434003, -0.595031,
		0.713382, 0.586911, -0.382911,
		28.892456, 38.039097, 58.374081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326159, 37.677895, 57.898697>,  <28.393089, 37.628258, 58.642117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326159, 37.677895, 57.898697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.703461, 37.801277, 57.947884>,  <28.929842, 37.875305, 57.977394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.703461, 37.801277, 57.947884>,  <28.326159, 37.677895, 57.898697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703461, 37.801277, 57.947884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303961, -0.652959, -0.693723,
		-0.133691, 0.691737, -0.709667,
		0.943258, 0.308456, 0.122966,
		28.986439, 37.893814, 57.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629667, 37.767006, 57.185089>,  <28.326159, 37.677895, 57.898697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629667, 37.767006, 57.185089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952070, 37.732540, 57.419331>,  <29.145512, 37.711861, 57.559875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.952070, 37.732540, 57.419331>,  <28.629667, 37.767006, 57.185089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952070, 37.732540, 57.419331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391122, -0.665050, -0.636186,
		0.444268, 0.741812, -0.502336,
		0.806009, -0.086162, 0.585599,
		29.193872, 37.706692, 57.595009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169930, 37.705242, 56.748066>,  <28.629667, 37.767006, 57.185089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169930, 37.705242, 56.748066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304716, 37.572365, 57.100452>,  <29.385588, 37.492638, 57.311886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304716, 37.572365, 57.100452>,  <29.169930, 37.705242, 56.748066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304716, 37.572365, 57.100452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448188, -0.766277, -0.460377,
		0.827998, 0.549970, -0.109324,
		0.336966, -0.332193, 0.880966,
		29.405806, 37.472706, 57.364742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899328, 37.692280, 56.644299>,  <29.169930, 37.705242, 56.748066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899328, 37.692280, 56.644299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822664, 37.451756, 56.954571>,  <29.776667, 37.307442, 57.140736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.822664, 37.451756, 56.954571>,  <29.899328, 37.692280, 56.644299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822664, 37.451756, 56.954571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531265, -0.728100, -0.433160,
		0.825242, 0.329075, 0.459005,
		-0.191659, -0.601315, 0.775685,
		29.765167, 37.271362, 57.187275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522343, 37.501732, 56.824516>,  <29.899328, 37.692280, 56.644299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522343, 37.501732, 56.824516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275112, 37.228104, 56.979450>,  <30.126774, 37.063927, 57.072411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.275112, 37.228104, 56.979450>,  <30.522343, 37.501732, 56.824516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275112, 37.228104, 56.979450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585594, -0.729366, -0.353701,
		0.524465, 0.008206, 0.851393,
		-0.618075, -0.684074, 0.387332,
		30.089689, 37.022881, 57.095650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859756, 37.057102, 57.405693>,  <30.522343, 37.501732, 56.824516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859756, 37.057102, 57.405693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555161, 36.843872, 57.258198>,  <30.372404, 36.715935, 57.169701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555161, 36.843872, 57.258198>,  <30.859756, 37.057102, 57.405693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555161, 36.843872, 57.258198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632381, -0.735827, -0.242184,
		-0.142228, -0.417605, 0.897428,
		-0.761489, -0.533072, -0.368740,
		30.326714, 36.683952, 57.147575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449593, 36.982552, 57.936153>,  <30.859756, 37.057102, 57.405693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449593, 36.982552, 57.936153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.781292, 36.929047, 58.153210>,  <31.980310, 36.896946, 58.283443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.781292, 36.929047, 58.153210>,  <31.449593, 36.982552, 57.936153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781292, 36.929047, 58.153210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431413, 0.464046, 0.773656,
		-0.355294, -0.875654, 0.327104,
		0.829246, -0.133758, 0.542641,
		32.030067, 36.888920, 58.316002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208448, 36.776169, 58.666748>,  <31.449593, 36.982552, 57.936153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208448, 36.776169, 58.666748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.579958, 36.913982, 58.721413>,  <31.802864, 36.996670, 58.754211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.579958, 36.913982, 58.721413>,  <31.208448, 36.776169, 58.666748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579958, 36.913982, 58.721413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330411, 0.602540, 0.726481,
		0.167949, -0.719892, 0.673460,
		0.928774, 0.344530, 0.136664,
		31.858591, 37.017342, 58.762413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313728, 36.812031, 59.394699>,  <31.208448, 36.776169, 58.666748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313728, 36.812031, 59.394699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582382, 37.074593, 59.257275>,  <31.743574, 37.232132, 59.174820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582382, 37.074593, 59.257275>,  <31.313728, 36.812031, 59.394699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582382, 37.074593, 59.257275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312816, 0.671606, 0.671633,
		0.671606, -0.343619, 0.656408,
		-0.671633, -0.656408, 0.343565,
		31.783873, 37.271515, 59.154205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653542, 37.223347, 60.025562>,  <31.313728, 36.812031, 59.394699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653542, 37.223347, 60.025562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748383, 37.468292, 59.723888>,  <31.805286, 37.615261, 59.542885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748383, 37.468292, 59.723888>,  <31.653542, 37.223347, 60.025562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748383, 37.468292, 59.723888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209454, 0.790286, 0.575827,
		0.948637, 0.021438, 0.315639,
		0.237100, 0.612363, -0.754185,
		31.819513, 37.652000, 59.497631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174843, 37.682827, 60.309299>,  <31.653542, 37.223347, 60.025562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174843, 37.682827, 60.309299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979471, 37.851513, 60.003727>,  <31.862249, 37.952724, 59.820381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979471, 37.851513, 60.003727>,  <32.174843, 37.682827, 60.309299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979471, 37.851513, 60.003727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142889, 0.824992, 0.546783,
		0.860827, 0.376221, -0.342688,
		-0.488426, 0.421719, -0.763933,
		31.832943, 37.978027, 59.774548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382980, 38.414871, 60.219292>,  <32.174843, 37.682827, 60.309299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382980, 38.414871, 60.219292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033722, 38.398975, 60.024960>,  <31.824165, 38.389439, 59.908360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.033722, 38.398975, 60.024960>,  <32.382980, 38.414871, 60.219292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033722, 38.398975, 60.024960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268111, 0.871523, 0.410566,
		0.407095, 0.488742, -0.771625,
		-0.873150, -0.039742, -0.485830,
		31.771776, 38.387054, 59.879211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326725, 39.017498, 60.023220>,  <32.382980, 38.414871, 60.219292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326725, 39.017498, 60.023220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951645, 38.880489, 59.999908>,  <31.726597, 38.798283, 59.985924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.951645, 38.880489, 59.999908>,  <32.326725, 39.017498, 60.023220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951645, 38.880489, 59.999908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336103, 0.851719, 0.402008,
		-0.088063, 0.396550, -0.913780,
		-0.937699, -0.342526, -0.058277,
		31.670336, 38.777733, 59.982426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524044, 39.559803, 59.566406>,  <32.326725, 39.017498, 60.023220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524044, 39.559803, 59.566406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802986, 39.802616, 59.413982>,  <32.970352, 39.948303, 59.322529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802986, 39.802616, 59.413982>,  <32.524044, 39.559803, 59.566406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802986, 39.802616, 59.413982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484355, -0.791027, -0.373734,
		-0.528299, 0.076056, -0.845645,
		0.697353, 0.607036, -0.381060,
		33.012192, 39.984726, 59.299664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568760, 39.373539, 58.927742>,  <32.524044, 39.559803, 59.566406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568760, 39.373539, 58.927742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927933, 39.549561, 58.924595>,  <33.143436, 39.655174, 58.922707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927933, 39.549561, 58.924595>,  <32.568760, 39.373539, 58.927742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927933, 39.549561, 58.924595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390042, -0.803902, -0.449010,
		-0.203912, 0.400114, -0.893492,
		0.897935, 0.440058, -0.007864,
		33.197311, 39.681580, 58.922237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768070, 39.556030, 58.242241>,  <32.568760, 39.373539, 58.927742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768070, 39.556030, 58.242241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.115437, 39.570648, 58.440037>,  <33.323856, 39.579418, 58.558716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.115437, 39.570648, 58.440037>,  <32.768070, 39.556030, 58.242241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115437, 39.570648, 58.440037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423265, -0.574097, -0.700899,
		0.258270, 0.817971, -0.514023,
		0.868415, 0.036547, 0.494490,
		33.375961, 39.581612, 58.588383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237003, 39.640388, 57.718475>,  <32.768070, 39.556030, 58.242241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237003, 39.640388, 57.718475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463905, 39.513332, 58.022404>,  <33.600048, 39.437099, 58.204762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463905, 39.513332, 58.022404>,  <33.237003, 39.640388, 57.718475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463905, 39.513332, 58.022404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551994, -0.538050, -0.637029,
		0.611164, 0.780775, -0.129880,
		0.567258, -0.317636, 0.759820,
		33.634083, 39.418041, 58.250351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880154, 39.743202, 57.404278>,  <33.237003, 39.640388, 57.718475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880154, 39.743202, 57.404278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915344, 39.493813, 57.715031>,  <33.936459, 39.344177, 57.901482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915344, 39.493813, 57.715031>,  <33.880154, 39.743202, 57.404278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915344, 39.493813, 57.715031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682100, -0.530665, -0.503125,
		0.725947, 0.574173, 0.378584,
		0.087980, -0.623475, 0.776878,
		33.941738, 39.306770, 57.948093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587215, 39.778351, 57.610191>,  <33.880154, 39.743202, 57.404278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587215, 39.778351, 57.610191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.420868, 39.427120, 57.704876>,  <34.321060, 39.216381, 57.761684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.420868, 39.427120, 57.704876>,  <34.587215, 39.778351, 57.610191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420868, 39.427120, 57.704876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756049, -0.478468, -0.446607,
		0.505414, -0.006766, 0.862851,
		-0.415869, -0.878079, 0.236709,
		34.296108, 39.163696, 57.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149460, 39.352795, 57.741726>,  <34.587215, 39.778351, 57.610191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149460, 39.352795, 57.741726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.852612, 39.086147, 57.713799>,  <34.674503, 38.926159, 57.697044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.852612, 39.086147, 57.713799>,  <35.149460, 39.352795, 57.741726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852612, 39.086147, 57.713799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642364, -0.677611, -0.358068,
		0.191388, -0.310576, 0.931082,
		-0.742118, -0.666623, -0.069816,
		34.629974, 38.886162, 57.692852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.822067, 43.843040, 57.142124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467369, 43.659454, 57.164162>,  <27.254549, 43.549305, 57.177383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467369, 43.659454, 57.164162>,  <27.822067, 43.843040, 57.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467369, 43.659454, 57.164162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118107, -0.340170, -0.932917,
		0.446913, -0.820755, 0.355852,
		-0.886746, -0.458962, 0.055090,
		27.201345, 43.521767, 57.180687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972277, 43.171085, 56.832317>,  <27.822067, 43.843040, 57.142124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972277, 43.171085, 56.832317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584021, 43.255325, 56.785828>,  <27.351067, 43.305870, 56.757935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584021, 43.255325, 56.785828>,  <27.972277, 43.171085, 56.832317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584021, 43.255325, 56.785828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005000, -0.500737, -0.865585,
		-0.240492, -0.839589, 0.487087,
		-0.970638, 0.210601, -0.116225,
		27.292830, 43.318504, 56.750961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719416, 42.589256, 56.539051>,  <27.972277, 43.171085, 56.832317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719416, 42.589256, 56.539051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407810, 42.831245, 56.473145>,  <27.220848, 42.976440, 56.433601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407810, 42.831245, 56.473145>,  <27.719416, 42.589256, 56.539051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407810, 42.831245, 56.473145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221495, -0.511363, -0.830330,
		-0.586585, -0.610340, 0.532356,
		-0.779011, 0.604973, -0.164770,
		27.174107, 43.012737, 56.423714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165676, 42.161568, 56.217850>,  <27.719416, 42.589256, 56.539051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165676, 42.161568, 56.217850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111511, 42.545235, 56.118526>,  <27.079012, 42.775436, 56.058933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111511, 42.545235, 56.118526>,  <27.165676, 42.161568, 56.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111511, 42.545235, 56.118526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079964, -0.260374, -0.962191,
		-0.987557, -0.110438, 0.111957,
		-0.135413, 0.959171, -0.248304,
		27.070887, 42.832985, 56.044037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683149, 42.223145, 55.693249>,  <27.165676, 42.161568, 56.217850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683149, 42.223145, 55.693249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853640, 42.579044, 55.627907>,  <26.955933, 42.792583, 55.588703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853640, 42.579044, 55.627907>,  <26.683149, 42.223145, 55.693249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853640, 42.579044, 55.627907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102704, -0.227001, -0.968464,
		-0.898769, 0.396005, -0.188134,
		0.426223, 0.889747, -0.163351,
		26.981506, 42.845970, 55.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418009, 42.369278, 55.017387>,  <26.683149, 42.223145, 55.693249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418009, 42.369278, 55.017387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721256, 42.620960, 55.085930>,  <26.903204, 42.771969, 55.127056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721256, 42.620960, 55.085930>,  <26.418009, 42.369278, 55.017387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721256, 42.620960, 55.085930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276464, -0.072122, -0.958314,
		-0.590615, 0.773889, -0.228629,
		0.758118, 0.629202, 0.171355,
		26.948692, 42.809719, 55.137337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391651, 42.883621, 54.534992>,  <26.418009, 42.369278, 55.017387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391651, 42.883621, 54.534992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769089, 42.861523, 54.665577>,  <26.995552, 42.848263, 54.743927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769089, 42.861523, 54.665577>,  <26.391651, 42.883621, 54.534992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769089, 42.861523, 54.665577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312749, -0.175012, -0.933573,
		0.108708, 0.983015, -0.147863,
		0.943595, -0.055243, 0.326462,
		27.052168, 42.844948, 54.763515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774410, 43.286465, 54.003868>,  <26.391651, 42.883621, 54.534992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774410, 43.286465, 54.003868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038467, 43.055099, 54.195557>,  <27.196901, 42.916283, 54.310570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038467, 43.055099, 54.195557>,  <26.774410, 43.286465, 54.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038467, 43.055099, 54.195557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549190, -0.063585, -0.833275,
		0.512447, 0.813264, 0.275682,
		0.660143, -0.578411, 0.479220,
		27.236511, 42.881577, 54.339321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381676, 43.532673, 53.736881>,  <26.774410, 43.286465, 54.003868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381676, 43.532673, 53.736881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475758, 43.170738, 53.878838>,  <27.532207, 42.953575, 53.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475758, 43.170738, 53.878838>,  <27.381676, 43.532673, 53.736881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475758, 43.170738, 53.878838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461374, -0.217431, -0.860150,
		0.855461, 0.366047, 0.366328,
		0.235204, -0.904839, 0.354888,
		27.546318, 42.899288, 53.985306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110153, 43.499275, 53.716667>,  <27.381676, 43.532673, 53.736881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110153, 43.499275, 53.716667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966389, 43.126163, 53.727627>,  <27.880131, 42.902298, 53.734203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966389, 43.126163, 53.727627>,  <28.110153, 43.499275, 53.716667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966389, 43.126163, 53.727627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557076, -0.238021, -0.795620,
		0.748659, -0.270688, 0.605175,
		-0.359409, -0.932778, 0.027403,
		27.858566, 42.846329, 53.735847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698715, 43.053959, 53.592342>,  <28.110153, 43.499275, 53.716667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698715, 43.053959, 53.592342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366768, 42.840408, 53.527485>,  <28.167599, 42.712276, 53.488571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366768, 42.840408, 53.527485>,  <28.698715, 43.053959, 53.592342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366768, 42.840408, 53.527485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459951, -0.490076, -0.740453,
		0.315851, -0.689057, 0.652257,
		-0.829870, -0.533879, -0.162141,
		28.117807, 42.680244, 53.478844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960560, 42.408207, 53.586468>,  <28.698715, 43.053959, 53.592342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960560, 42.408207, 53.586468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623062, 42.398739, 53.371979>,  <28.420563, 42.393059, 53.243286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623062, 42.398739, 53.371979>,  <28.960560, 42.408207, 53.586468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623062, 42.398739, 53.371979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471525, -0.509976, -0.719436,
		-0.256431, -0.859863, 0.441451,
		-0.843746, -0.023669, -0.536220,
		28.369938, 42.391640, 53.211113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558977, 42.702946, 53.950897>,  <28.960560, 42.408207, 53.586468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558977, 42.702946, 53.950897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949999, 42.784710, 53.930485>,  <30.184612, 42.833767, 53.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949999, 42.784710, 53.930485>,  <29.558977, 42.702946, 53.950897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949999, 42.784710, 53.930485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044290, 0.037442, 0.998317,
		0.205976, -0.978169, 0.027549,
		0.977554, 0.204409, -0.051035,
		30.243265, 42.846031, 53.915173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899830, 42.319973, 54.525547>,  <29.558977, 42.702946, 53.950897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899830, 42.319973, 54.525547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140810, 42.625694, 54.433552>,  <30.285398, 42.809128, 54.378357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140810, 42.625694, 54.433552>,  <29.899830, 42.319973, 54.525547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140810, 42.625694, 54.433552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192009, 0.140899, 0.971226,
		0.774718, -0.629272, -0.061869,
		0.602448, 0.764306, -0.229983,
		30.321545, 42.854984, 54.364555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481358, 42.157578, 54.910973>,  <29.899830, 42.319973, 54.525547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481358, 42.157578, 54.910973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524172, 42.542629, 54.811470>,  <30.549860, 42.773663, 54.751766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524172, 42.542629, 54.811470>,  <30.481358, 42.157578, 54.910973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524172, 42.542629, 54.811470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470720, 0.171318, 0.865490,
		0.875766, -0.209734, -0.434794,
		0.107035, 0.962633, -0.248761,
		30.556282, 42.831421, 54.736843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200991, 42.312519, 55.157078>,  <30.481358, 42.157578, 54.910973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200991, 42.312519, 55.157078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004314, 42.660137, 55.135143>,  <30.886309, 42.868706, 55.121983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004314, 42.660137, 55.135143>,  <31.200991, 42.312519, 55.157078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004314, 42.660137, 55.135143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267540, 0.210695, 0.940229,
		0.828651, 0.447631, -0.336100,
		-0.491690, 0.869042, -0.054834,
		30.856808, 42.920849, 55.118694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467022, 42.727177, 55.587479>,  <31.200991, 42.312519, 55.157078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467022, 42.727177, 55.587479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141403, 42.953556, 55.535282>,  <30.946032, 43.089386, 55.503963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141403, 42.953556, 55.535282>,  <31.467022, 42.727177, 55.587479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141403, 42.953556, 55.535282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127392, 0.393188, 0.910590,
		0.566657, 0.724639, -0.392171,
		-0.814046, 0.565952, -0.130489,
		30.897190, 43.123341, 55.496136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655619, 43.486797, 55.612373>,  <31.467022, 42.727177, 55.587479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655619, 43.486797, 55.612373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274296, 43.434498, 55.721268>,  <31.045502, 43.403118, 55.786606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274296, 43.434498, 55.721268>,  <31.655619, 43.486797, 55.612373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274296, 43.434498, 55.721268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184392, 0.461910, 0.867547,
		-0.239178, 0.877236, -0.416233,
		-0.953307, -0.130748, 0.272235,
		30.988304, 43.395275, 55.802937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503273, 44.070988, 55.798790>,  <31.655619, 43.486797, 55.612373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503273, 44.070988, 55.798790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217163, 43.843063, 55.960629>,  <31.045498, 43.706310, 56.057732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217163, 43.843063, 55.960629>,  <31.503273, 44.070988, 55.798790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217163, 43.843063, 55.960629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177694, 0.411631, 0.893859,
		-0.675875, 0.711249, -0.193178,
		-0.715274, -0.569811, 0.404596,
		31.002581, 43.672119, 56.082008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969000, 44.580677, 56.218422>,  <31.503273, 44.070988, 55.798790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969000, 44.580677, 56.218422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957817, 44.205849, 56.357624>,  <30.951107, 43.980949, 56.441147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957817, 44.205849, 56.357624>,  <30.969000, 44.580677, 56.218422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957817, 44.205849, 56.357624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111882, 0.343024, 0.932639,
		-0.993328, 0.065010, 0.095252,
		-0.027957, -0.937074, 0.348009,
		30.949430, 43.924725, 56.462029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602104, 44.655926, 56.781563>,  <30.969000, 44.580677, 56.218422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602104, 44.655926, 56.781563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785732, 44.303890, 56.830048>,  <30.895908, 44.092667, 56.859138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785732, 44.303890, 56.830048>,  <30.602104, 44.655926, 56.781563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785732, 44.303890, 56.830048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129821, 0.201428, 0.970862,
		-0.878863, -0.429959, 0.206724,
		0.459071, -0.880092, 0.121210,
		30.923454, 44.039864, 56.866409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283064, 44.305813, 57.411850>,  <30.602104, 44.655926, 56.781563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283064, 44.305813, 57.411850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630568, 44.119232, 57.345303>,  <30.839069, 44.007282, 57.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630568, 44.119232, 57.345303>,  <30.283064, 44.305813, 57.411850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630568, 44.119232, 57.345303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214025, 0.050674, 0.975513,
		-0.446604, -0.883091, 0.143857,
		0.868757, -0.466456, -0.166373,
		30.891195, 43.979294, 57.295391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298922, 43.787865, 57.860264>,  <30.283064, 44.305813, 57.411850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298922, 43.787865, 57.860264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682568, 43.840218, 57.759892>,  <30.912756, 43.871632, 57.699669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682568, 43.840218, 57.759892>,  <30.298922, 43.787865, 57.860264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682568, 43.840218, 57.759892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249995, 0.023779, 0.967955,
		0.132660, -0.991112, -0.009914,
		0.959116, 0.130888, -0.250927,
		30.970303, 43.879482, 57.684612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678757, 43.346554, 58.331150>,  <30.298922, 43.787865, 57.860264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678757, 43.346554, 58.331150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948967, 43.605976, 58.190838>,  <31.111094, 43.761631, 58.106651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948967, 43.605976, 58.190838>,  <30.678757, 43.346554, 58.331150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948967, 43.605976, 58.190838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456023, 0.006348, 0.889945,
		0.579405, -0.761142, -0.291468,
		0.675524, 0.648555, -0.350776,
		31.151625, 43.800541, 58.085606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402191, 43.080299, 58.471474>,  <30.678757, 43.346554, 58.331150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402191, 43.080299, 58.471474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414257, 43.479134, 58.443417>,  <31.421497, 43.718433, 58.426582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414257, 43.479134, 58.443417>,  <31.402191, 43.080299, 58.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414257, 43.479134, 58.443417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512470, 0.044819, 0.857534,
		0.858175, -0.061813, -0.509623,
		0.030166, 0.997081, -0.070141,
		31.423307, 43.778259, 58.422375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027023, 43.263767, 58.785969>,  <31.402191, 43.080299, 58.471474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027023, 43.263767, 58.785969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829165, 43.611000, 58.769207>,  <31.710449, 43.819340, 58.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829165, 43.611000, 58.769207>,  <32.027023, 43.263767, 58.785969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829165, 43.611000, 58.769207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370402, 0.254183, 0.893416,
		0.786212, 0.426402, -0.447271,
		-0.494643, 0.868085, -0.041901,
		31.680771, 43.871426, 58.756638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321041, 42.733677, 58.468845>,  <32.027023, 43.263767, 58.785969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321041, 42.733677, 58.468845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385189, 42.720303, 58.863441>,  <32.423676, 42.712280, 59.100201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385189, 42.720303, 58.863441>,  <32.321041, 42.733677, 58.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385189, 42.720303, 58.863441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144461, -0.987869, -0.056964,
		0.976429, 0.151645, -0.153591,
		0.160366, -0.033433, 0.986491,
		32.433300, 42.710274, 59.159389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945171, 42.412918, 58.517387>,  <32.321041, 42.733677, 58.468845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945171, 42.412918, 58.517387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746380, 42.382030, 58.863113>,  <32.627106, 42.363499, 59.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746380, 42.382030, 58.863113>,  <32.945171, 42.412918, 58.517387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746380, 42.382030, 58.863113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081872, -0.995762, -0.041888,
		0.863890, 0.049946, 0.501197,
		-0.496981, -0.077221, 0.864319,
		32.597286, 42.358864, 59.122410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415840, 42.148441, 58.915794>,  <32.945171, 42.412918, 58.517387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415840, 42.148441, 58.915794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066734, 42.060696, 59.090229>,  <32.857273, 42.008049, 59.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066734, 42.060696, 59.090229>,  <33.415840, 42.148441, 58.915794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066734, 42.060696, 59.090229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207858, -0.975309, -0.074614,
		0.441684, 0.025523, 0.896808,
		-0.872760, -0.219365, 0.436084,
		32.804905, 41.994884, 59.221054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510086, 41.776054, 59.518059>,  <33.415840, 42.148441, 58.915794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510086, 41.776054, 59.518059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134663, 41.687500, 59.412155>,  <32.909409, 41.634369, 59.348614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134663, 41.687500, 59.412155>,  <33.510086, 41.776054, 59.518059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134663, 41.687500, 59.412155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217237, -0.975071, 0.045221,
		-0.268165, -0.015071, 0.963255,
		-0.938560, -0.221381, -0.264754,
		32.853096, 41.621086, 59.332729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407757, 41.231014, 59.983551>,  <33.510086, 41.776054, 59.518059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407757, 41.231014, 59.983551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119728, 41.238708, 59.706100>,  <32.946911, 41.243324, 59.539631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119728, 41.238708, 59.706100>,  <33.407757, 41.231014, 59.983551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119728, 41.238708, 59.706100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034493, -0.999372, 0.008087,
		-0.693038, 0.029749, 0.720288,
		-0.720076, 0.019240, -0.693629,
		32.903706, 41.244480, 59.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111073, 40.635517, 60.233383>,  <33.407757, 41.231014, 59.983551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111073, 40.635517, 60.233383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995903, 40.712990, 59.858238>,  <32.926800, 40.759472, 59.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995903, 40.712990, 59.858238>,  <33.111073, 40.635517, 60.233383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995903, 40.712990, 59.858238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270524, -0.922999, -0.273662,
		-0.918647, -0.332510, 0.213367,
		-0.287932, 0.193678, -0.937861,
		32.909527, 40.771095, 59.576878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471996, 40.153149, 60.063747>,  <33.111073, 40.635517, 60.233383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471996, 40.153149, 60.063747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670692, 40.269665, 59.736725>,  <32.789909, 40.339577, 59.540512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670692, 40.269665, 59.736725>,  <32.471996, 40.153149, 60.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670692, 40.269665, 59.736725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249474, -0.950162, -0.186965,
		-0.831273, -0.111087, -0.544651,
		0.496737, 0.291295, -0.817557,
		32.819714, 40.357052, 59.491459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849579, 39.725765, 59.859642>,  <32.471996, 40.153149, 60.063747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849579, 39.725765, 59.859642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629313, 39.421894, 59.998005>,  <31.497152, 39.239571, 60.081024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629313, 39.421894, 59.998005>,  <31.849579, 39.725765, 59.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629313, 39.421894, 59.998005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468795, 0.624333, 0.624852,
		-0.690650, 0.181923, -0.699933,
		-0.550666, -0.759679, 0.345910,
		31.464113, 39.193989, 60.101780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251724, 40.093258, 60.014282>,  <31.849579, 39.725765, 59.859642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251724, 40.093258, 60.014282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194506, 39.753544, 60.217552>,  <31.160175, 39.549713, 60.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194506, 39.753544, 60.217552>,  <31.251724, 40.093258, 60.014282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194506, 39.753544, 60.217552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572813, 0.489766, 0.657278,
		-0.807108, -0.197072, -0.556542,
		-0.143044, -0.849289, 0.508179,
		31.151592, 39.498756, 60.370007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552071, 39.987717, 60.059258>,  <31.251724, 40.093258, 60.014282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552071, 39.987717, 60.059258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715029, 39.792648, 60.368114>,  <30.812803, 39.675610, 60.553429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715029, 39.792648, 60.368114>,  <30.552071, 39.987717, 60.059258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715029, 39.792648, 60.368114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593036, 0.501708, 0.629760,
		-0.694505, -0.714471, -0.084812,
		0.407394, -0.487668, 0.772146,
		30.837248, 39.646347, 60.599758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974586, 39.701622, 60.466782>,  <30.552071, 39.987717, 60.059258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974586, 39.701622, 60.466782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292076, 39.686619, 60.709629>,  <30.482569, 39.677616, 60.855339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292076, 39.686619, 60.709629>,  <29.974586, 39.701622, 60.466782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292076, 39.686619, 60.709629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539484, 0.417679, 0.731096,
		-0.281003, -0.907820, 0.311288,
		0.793722, -0.037505, 0.607123,
		30.530193, 39.675365, 60.891766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700815, 39.352501, 60.980267>,  <29.974586, 39.701622, 60.466782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700815, 39.352501, 60.980267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006496, 39.529083, 61.168358>,  <30.189905, 39.635033, 61.281212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006496, 39.529083, 61.168358>,  <29.700815, 39.352501, 60.980267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006496, 39.529083, 61.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635060, 0.387676, 0.668136,
		0.112657, -0.809213, 0.576613,
		0.764204, 0.441454, 0.470224,
		30.235758, 39.661518, 61.309425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795879, 39.176250, 61.769035>,  <29.700815, 39.352501, 60.980267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795879, 39.176250, 61.769035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993515, 39.518852, 61.709332>,  <30.112097, 39.724411, 61.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993515, 39.518852, 61.709332>,  <29.795879, 39.176250, 61.769035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993515, 39.518852, 61.709332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484937, 0.413990, 0.770356,
		0.721602, -0.308246, 0.619899,
		0.494091, 0.856503, -0.149256,
		30.141743, 39.775803, 61.664555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080248, 39.255104, 62.427418>,  <29.795879, 39.176250, 61.769035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080248, 39.255104, 62.427418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113701, 39.619553, 62.265991>,  <30.133772, 39.838223, 62.169136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113701, 39.619553, 62.265991>,  <30.080248, 39.255104, 62.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113701, 39.619553, 62.265991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523716, 0.384730, 0.760068,
		0.847777, 0.147787, 0.509345,
		0.083632, 0.911121, -0.403564,
		30.138790, 39.892887, 62.144920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404095, 39.626759, 62.922993>,  <30.080248, 39.255104, 62.427418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404095, 39.626759, 62.922993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185143, 39.860203, 62.683067>,  <30.053772, 40.000271, 62.539112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185143, 39.860203, 62.683067>,  <30.404095, 39.626759, 62.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185143, 39.860203, 62.683067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640487, 0.169170, 0.749105,
		0.538656, 0.794216, 0.281196,
		-0.547381, 0.583612, -0.599809,
		30.020927, 40.035286, 62.503124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163485, 40.185616, 63.276577>,  <30.404095, 39.626759, 62.922993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163485, 40.185616, 63.276577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916122, 40.231342, 62.965576>,  <29.767704, 40.258778, 62.778976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916122, 40.231342, 62.965576>,  <30.163485, 40.185616, 63.276577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916122, 40.231342, 62.965576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774600, 0.078204, 0.627598,
		0.132548, 0.990361, 0.040187,
		-0.618406, 0.114316, -0.777499,
		29.730600, 40.265636, 62.732327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.791481, 32.801167, 47.883339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927349, 33.166473, 47.793400>,  <37.008869, 33.385658, 47.739437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927349, 33.166473, 47.793400>,  <36.791481, 32.801167, 47.883339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927349, 33.166473, 47.793400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851154, 0.400199, 0.339674,
		0.400199, 0.076002, 0.913271,
		-0.339674, -0.913271, 0.224849,
		37.029251, 33.440456, 47.725945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585228, 33.256924, 48.434666>,  <36.791481, 32.801167, 47.883339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585228, 33.256924, 48.434666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638439, 33.487919, 48.112473>,  <36.670364, 33.626518, 47.919155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638439, 33.487919, 48.112473>,  <36.585228, 33.256924, 48.434666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638439, 33.487919, 48.112473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708058, 0.624051, 0.330475,
		0.693511, 0.526368, 0.491915,
		0.133028, 0.577492, -0.805485,
		36.678349, 33.661167, 47.870827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506088, 33.927814, 48.738258>,  <36.585228, 33.256924, 48.434666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506088, 33.927814, 48.738258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453632, 33.994160, 48.347301>,  <36.422157, 34.033966, 48.112728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453632, 33.994160, 48.347301>,  <36.506088, 33.927814, 48.738258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453632, 33.994160, 48.347301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807217, 0.554467, 0.202401,
		0.575501, 0.815509, 0.061174,
		-0.131141, 0.165862, -0.977390,
		36.414291, 34.043919, 48.054085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457134, 34.658302, 48.613361>,  <36.506088, 33.927814, 48.738258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457134, 34.658302, 48.613361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265034, 34.488903, 48.306114>,  <36.149773, 34.387264, 48.121765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265034, 34.488903, 48.306114>,  <36.457134, 34.658302, 48.613361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265034, 34.488903, 48.306114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773191, 0.617899, 0.142746,
		0.414165, 0.662455, -0.624196,
		-0.480253, -0.423503, -0.768116,
		36.120956, 34.361851, 48.075680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920921, 35.151730, 48.355118>,  <36.457134, 34.658302, 48.613361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920921, 35.151730, 48.355118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809162, 34.813637, 48.172901>,  <35.742107, 34.610783, 48.063572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809162, 34.813637, 48.172901>,  <35.920921, 35.151730, 48.355118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809162, 34.813637, 48.172901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959604, 0.229442, 0.162840,
		-0.033116, 0.482639, -0.875193,
		-0.279399, -0.845231, -0.455544,
		35.725342, 34.560066, 48.036240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445789, 35.276535, 47.703758>,  <35.920921, 35.151730, 48.355118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445789, 35.276535, 47.703758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389168, 34.913235, 47.861259>,  <35.355194, 34.695255, 47.955761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389168, 34.913235, 47.861259>,  <35.445789, 35.276535, 47.703758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389168, 34.913235, 47.861259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983636, 0.173834, 0.047352,
		-0.111456, -0.380611, -0.917994,
		-0.141555, -0.908249, 0.393757,
		35.346703, 34.640759, 47.979385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880310, 35.063946, 47.385624>,  <35.445789, 35.276535, 47.703758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880310, 35.063946, 47.385624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881393, 34.805927, 47.691277>,  <34.882042, 34.651115, 47.874668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.881393, 34.805927, 47.691277>,  <34.880310, 35.063946, 47.385624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881393, 34.805927, 47.691277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975548, 0.166233, 0.143781,
		-0.219771, -0.745839, -0.628828,
		0.002706, -0.645051, 0.764135,
		34.882206, 34.612411, 47.920517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290913, 34.674286, 47.386913>,  <34.880310, 35.063946, 47.385624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290913, 34.674286, 47.386913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393806, 34.638107, 47.771755>,  <34.455544, 34.616402, 48.002663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393806, 34.638107, 47.771755>,  <34.290913, 34.674286, 47.386913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393806, 34.638107, 47.771755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964922, -0.078116, 0.250646,
		0.052487, -0.992833, -0.107364,
		0.257236, -0.090443, 0.962107,
		34.470978, 34.610973, 48.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939793, 33.962044, 47.671829>,  <34.290913, 34.674286, 47.386913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939793, 33.962044, 47.671829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027924, 34.196945, 47.983364>,  <34.080803, 34.337887, 48.170284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027924, 34.196945, 47.983364>,  <33.939793, 33.962044, 47.671829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027924, 34.196945, 47.983364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936725, -0.095289, 0.336849,
		0.272031, -0.803773, 0.529101,
		0.220332, 0.587256, 0.778836,
		34.094025, 34.373123, 48.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592361, 33.633465, 48.259193>,  <33.939793, 33.962044, 47.671829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592361, 33.633465, 48.259193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662006, 34.019871, 48.335613>,  <33.703793, 34.251713, 48.381466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.662006, 34.019871, 48.335613>,  <33.592361, 33.633465, 48.259193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662006, 34.019871, 48.335613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856563, 0.052865, 0.513327,
		0.485783, -0.253018, 0.836658,
		0.174111, 0.966016, 0.191045,
		33.714241, 34.309677, 48.392925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403774, 33.756866, 49.027828>,  <33.592361, 33.633465, 48.259193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403774, 33.756866, 49.027828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436123, 34.125721, 48.876503>,  <33.455532, 34.347034, 48.785706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.436123, 34.125721, 48.876503>,  <33.403774, 33.756866, 49.027828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436123, 34.125721, 48.876503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849080, 0.262532, 0.458410,
		0.522037, 0.284148, 0.804200,
		0.080872, 0.922137, -0.378316,
		33.460384, 34.402363, 48.763008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392330, 34.210781, 49.586018>,  <33.403774, 33.756866, 49.027828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392330, 34.210781, 49.586018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265129, 34.403957, 49.259670>,  <33.188808, 34.519863, 49.063862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265129, 34.403957, 49.259670>,  <33.392330, 34.210781, 49.586018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265129, 34.403957, 49.259670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859474, 0.216425, 0.463103,
		0.400225, 0.848487, 0.346252,
		-0.317999, 0.482940, -0.815871,
		33.169731, 34.548840, 49.014908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199577, 34.969669, 49.736950>,  <33.392330, 34.210781, 49.586018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199577, 34.969669, 49.736950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006084, 34.847511, 49.408867>,  <32.889988, 34.774216, 49.212017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006084, 34.847511, 49.408867>,  <33.199577, 34.969669, 49.736950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006084, 34.847511, 49.408867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870699, 0.072826, 0.486394,
		-0.088809, 0.949437, -0.301134,
		-0.483731, -0.305393, -0.820207,
		32.860966, 34.755894, 49.162804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645611, 35.530590, 49.560673>,  <33.199577, 34.969669, 49.736950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645611, 35.530590, 49.560673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570396, 35.157482, 49.437653>,  <32.525269, 34.933617, 49.363838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570396, 35.157482, 49.437653>,  <32.645611, 35.530590, 49.560673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570396, 35.157482, 49.437653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970256, 0.127809, 0.205592,
		-0.152461, 0.337064, -0.929055,
		-0.188039, -0.932766, -0.307552,
		32.513985, 34.877651, 49.345387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995132, 35.502644, 49.199497>,  <32.645611, 35.530590, 49.560673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995132, 35.502644, 49.199497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072090, 35.154366, 49.380550>,  <32.118263, 34.945400, 49.489182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072090, 35.154366, 49.380550>,  <31.995132, 35.502644, 49.199497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072090, 35.154366, 49.380550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921077, -0.001103, 0.389380,
		-0.338531, -0.491826, -0.802187,
		0.192392, -0.870693, 0.452636,
		32.129807, 34.893158, 49.516342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360338, 35.282791, 49.056206>,  <31.995132, 35.502644, 49.199497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360338, 35.282791, 49.056206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501581, 35.041260, 49.342060>,  <31.586327, 34.896339, 49.513573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.501581, 35.041260, 49.342060>,  <31.360338, 35.282791, 49.056206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501581, 35.041260, 49.342060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904202, -0.024077, 0.426426,
		-0.240281, -0.796751, -0.554484,
		0.353106, -0.603828, 0.714639,
		31.607513, 34.860111, 49.556454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748953, 34.930584, 49.249405>,  <31.360338, 35.282791, 49.056206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748953, 34.930584, 49.249405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.007576, 34.874718, 49.549393>,  <31.162750, 34.841198, 49.729385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.007576, 34.874718, 49.549393>,  <30.748953, 34.930584, 49.249405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007576, 34.874718, 49.549393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758664, -0.014673, 0.651317,
		-0.079964, -0.990090, -0.115447,
		0.646556, -0.139668, 0.749972,
		31.201544, 34.832817, 49.774384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516108, 34.316204, 49.614670>,  <30.748953, 34.930584, 49.249405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516108, 34.316204, 49.614670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.722923, 34.520164, 49.889675>,  <30.847013, 34.642540, 50.054680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.722923, 34.520164, 49.889675>,  <30.516108, 34.316204, 49.614670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722923, 34.520164, 49.889675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826878, 0.089938, 0.555143,
		0.221233, -0.855520, 0.468125,
		0.517038, 0.509899, 0.687513,
		30.878035, 34.673134, 50.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277693, 34.038021, 50.284538>,  <30.516108, 34.316204, 49.614670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277693, 34.038021, 50.284538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408035, 34.401600, 50.388557>,  <30.486240, 34.619747, 50.450970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408035, 34.401600, 50.388557>,  <30.277693, 34.038021, 50.284538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408035, 34.401600, 50.388557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690890, 0.041182, 0.721786,
		0.645359, -0.414864, 0.641405,
		0.325857, 0.908951, 0.260048,
		30.505793, 34.674286, 50.466572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178221, 34.016083, 50.961529>,  <30.277693, 34.038021, 50.284538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178221, 34.016083, 50.961529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232000, 34.409821, 50.915932>,  <30.264269, 34.646061, 50.888573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.232000, 34.409821, 50.915932>,  <30.178221, 34.016083, 50.961529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232000, 34.409821, 50.915932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804446, 0.175595, 0.567479,
		0.578610, 0.015400, 0.815459,
		0.134451, 0.984342, -0.113989,
		30.272335, 34.705124, 50.881737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892683, 34.247433, 51.547558>,  <30.178221, 34.016083, 50.961529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892683, 34.247433, 51.547558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.919468, 34.576828, 51.322208>,  <29.935539, 34.774464, 51.187000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.919468, 34.576828, 51.322208>,  <29.892683, 34.247433, 51.547558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919468, 34.576828, 51.322208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910988, 0.280764, 0.302114,
		0.406961, 0.492996, 0.768985,
		0.066962, 0.823484, -0.563374,
		29.939556, 34.823872, 51.153194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840307, 34.847172, 52.053226>,  <29.892683, 34.247433, 51.547558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840307, 34.847172, 52.053226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697014, 34.923126, 51.687580>,  <29.611038, 34.968697, 51.468193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.697014, 34.923126, 51.687580>,  <29.840307, 34.847172, 52.053226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697014, 34.923126, 51.687580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907508, 0.159179, 0.388705,
		0.219317, 0.968817, 0.115296,
		-0.358232, 0.189882, -0.914120,
		29.589544, 34.980091, 51.413345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516043, 35.664078, 51.878838>,  <29.840307, 34.847172, 52.053226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516043, 35.664078, 51.878838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.360729, 35.408222, 51.613480>,  <29.267540, 35.254707, 51.454266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.360729, 35.408222, 51.613480>,  <29.516043, 35.664078, 51.878838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360729, 35.408222, 51.613480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921316, 0.285288, 0.264173,
		0.020282, 0.713771, -0.700085,
		-0.388285, -0.639642, -0.663395,
		29.244244, 35.216331, 51.414459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829617, 36.048077, 51.615124>,  <29.516043, 35.664078, 51.878838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829617, 36.048077, 51.615124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.781359, 35.675251, 51.478477>,  <28.752403, 35.451557, 51.396488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.781359, 35.675251, 51.478477>,  <28.829617, 36.048077, 51.615124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781359, 35.675251, 51.478477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992635, 0.109487, 0.051839,
		-0.010914, 0.345355, -0.938408,
		-0.120646, -0.932064, -0.341617,
		28.745165, 35.395634, 51.375992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293726, 36.080608, 51.076256>,  <28.829617, 36.048077, 51.615124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293726, 36.080608, 51.076256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321968, 35.697964, 51.189331>,  <28.338913, 35.468376, 51.257175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.321968, 35.697964, 51.189331>,  <28.293726, 36.080608, 51.076256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321968, 35.697964, 51.189331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985019, -0.022164, 0.171015,
		-0.157329, -0.290531, -0.943843,
		0.070604, -0.956609, 0.282692,
		28.343149, 35.410980, 51.274139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784525, 35.816536, 50.713551>,  <28.293726, 36.080608, 51.076256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784525, 35.816536, 50.713551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860849, 35.535507, 50.987770>,  <27.906645, 35.366890, 51.152302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860849, 35.535507, 50.987770>,  <27.784525, 35.816536, 50.713551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860849, 35.535507, 50.987770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981269, -0.155367, 0.113896,
		0.026492, -0.694445, -0.719058,
		0.190812, -0.702572, 0.685553,
		27.918093, 35.324734, 51.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286963, 35.336990, 50.635624>,  <27.784525, 35.816536, 50.713551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286963, 35.336990, 50.635624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.392042, 35.240757, 51.009384>,  <27.455090, 35.183018, 51.233643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.392042, 35.240757, 51.009384>,  <27.286963, 35.336990, 50.635624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392042, 35.240757, 51.009384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872495, -0.472739, 0.123576,
		0.411999, -0.847725, -0.334095,
		0.262698, -0.240583, 0.934403,
		27.470852, 35.168583, 51.289703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127573, 34.585098, 50.739948>,  <27.286963, 35.336990, 50.635624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127573, 34.585098, 50.739948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.121845, 34.788925, 51.084072>,  <27.118408, 34.911221, 51.290546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.121845, 34.788925, 51.084072>,  <27.127573, 34.585098, 50.739948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121845, 34.788925, 51.084072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973816, -0.202340, 0.103636,
		0.226885, -0.836303, 0.499120,
		-0.014321, 0.509565, 0.860313,
		27.117550, 34.941795, 51.342167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674952, 34.248035, 51.208431>,  <27.127573, 34.585098, 50.739948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674952, 34.248035, 51.208431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.691467, 34.617462, 51.360920>,  <26.701376, 34.839119, 51.452412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.691467, 34.617462, 51.360920>,  <26.674952, 34.248035, 51.208431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691467, 34.617462, 51.360920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995676, 0.006255, 0.092682,
		0.083213, -0.383396, 0.919828,
		0.041288, 0.923563, 0.381218,
		26.703854, 34.894531, 51.475285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251637, 34.150112, 51.771431>,  <26.674952, 34.248035, 51.208431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251637, 34.150112, 51.771431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.276854, 34.547455, 51.732929>,  <26.291985, 34.785862, 51.709827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.276854, 34.547455, 51.732929>,  <26.251637, 34.150112, 51.771431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276854, 34.547455, 51.732929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988821, 0.075229, 0.128737,
		0.135123, 0.087066, 0.986996,
		0.063042, 0.993358, -0.096257,
		26.295767, 34.845463, 51.704052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878763, 34.389542, 52.383930>,  <26.251637, 34.150112, 51.771431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878763, 34.389542, 52.383930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.883804, 34.686134, 52.115589>,  <25.886829, 34.864090, 51.954582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.883804, 34.686134, 52.115589>,  <25.878763, 34.389542, 52.383930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883804, 34.686134, 52.115589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914655, 0.279645, 0.291900,
		0.404040, 0.609921, 0.681724,
		0.012605, 0.741481, -0.670855,
		25.887587, 34.908577, 51.914333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529461, 34.871170, 52.720146>,  <25.878763, 34.389542, 52.383930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529461, 34.871170, 52.720146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.511745, 34.988319, 52.338097>,  <25.501116, 35.058609, 52.108868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.511745, 34.988319, 52.338097>,  <25.529461, 34.871170, 52.720146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511745, 34.988319, 52.338097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860729, 0.474141, 0.185299,
		0.507133, 0.830309, 0.231089,
		-0.044287, 0.292877, -0.955124,
		25.498459, 35.076183, 52.051559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358582, 35.626888, 52.734459>,  <25.529461, 34.871170, 52.720146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358582, 35.626888, 52.734459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.243456, 35.457077, 52.391079>,  <25.174379, 35.355190, 52.185051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.243456, 35.457077, 52.391079>,  <25.358582, 35.626888, 52.734459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243456, 35.457077, 52.391079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869587, 0.491387, 0.048547,
		0.401223, 0.760473, -0.510589,
		-0.287815, -0.424524, -0.858453,
		25.157112, 35.329720, 52.133541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999554, 36.125191, 52.382236>,  <25.358582, 35.626888, 52.734459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999554, 36.125191, 52.382236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.875286, 35.793694, 52.196045>,  <24.800726, 35.594795, 52.084332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.875286, 35.793694, 52.196045>,  <24.999554, 36.125191, 52.382236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875286, 35.793694, 52.196045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950482, 0.266535, 0.159822,
		-0.008384, 0.492082, -0.870509,
		-0.310667, -0.828743, -0.465480,
		24.782085, 35.545071, 52.056400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425991, 36.366146, 52.033951>,  <24.999554, 36.125191, 52.382236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425991, 36.366146, 52.033951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.389887, 35.967800, 52.029705>,  <24.368225, 35.728794, 52.027157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.389887, 35.967800, 52.029705>,  <24.425991, 36.366146, 52.033951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389887, 35.967800, 52.029705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975370, 0.090547, -0.201136,
		0.201265, -0.007803, -0.979506,
		-0.090260, -0.995861, -0.010613,
		24.362808, 35.669041, 52.026520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.391747, 32.235409, 50.004333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009167, 32.209908, 49.890392>,  <35.779617, 32.194607, 49.822029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.009167, 32.209908, 49.890392>,  <36.391747, 32.235409, 50.004333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009167, 32.209908, 49.890392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283415, 0.436385, 0.853958,
		0.069862, 0.897498, -0.435449,
		-0.956449, -0.063754, -0.284851,
		35.722233, 32.190781, 49.804935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080742, 32.871052, 50.129993>,  <36.391747, 32.235409, 50.004333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080742, 32.871052, 50.129993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784313, 32.602764, 50.117626>,  <35.606457, 32.441792, 50.110207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784313, 32.602764, 50.117626>,  <36.080742, 32.871052, 50.129993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784313, 32.602764, 50.117626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222377, 0.201737, 0.953861,
		-0.633532, 0.713753, -0.298653,
		-0.741070, -0.670716, -0.030915,
		35.561993, 32.401550, 50.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471870, 33.317944, 50.246960>,  <36.080742, 32.871052, 50.129993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471870, 33.317944, 50.246960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369659, 32.938866, 50.323463>,  <35.308334, 32.711418, 50.369366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369659, 32.938866, 50.323463>,  <35.471870, 33.317944, 50.246960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369659, 32.938866, 50.323463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430924, 0.288734, 0.854948,
		-0.865453, 0.136045, -0.482164,
		-0.255528, -0.947694, 0.191261,
		35.292999, 32.654556, 50.380840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759590, 33.386017, 50.456425>,  <35.471870, 33.317944, 50.246960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759590, 33.386017, 50.456425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897163, 33.039097, 50.600372>,  <34.979706, 32.830944, 50.686741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897163, 33.039097, 50.600372>,  <34.759590, 33.386017, 50.456425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897163, 33.039097, 50.600372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401435, 0.210648, 0.891335,
		-0.848858, -0.451022, -0.275716,
		0.343933, -0.867298, 0.359866,
		35.000343, 32.778908, 50.708332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180599, 33.082729, 50.824646>,  <34.759590, 33.386017, 50.456425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180599, 33.082729, 50.824646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507729, 32.916126, 50.983486>,  <34.704006, 32.816166, 51.078793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507729, 32.916126, 50.983486>,  <34.180599, 33.082729, 50.824646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507729, 32.916126, 50.983486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376642, 0.134328, 0.916568,
		-0.435096, -0.899156, -0.047016,
		0.817822, -0.416504, 0.397105,
		34.753075, 32.791176, 51.102619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955727, 32.709217, 51.507118>,  <34.180599, 33.082729, 50.824646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955727, 32.709217, 51.507118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354618, 32.714588, 51.536392>,  <34.593952, 32.717812, 51.553955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354618, 32.714588, 51.536392>,  <33.955727, 32.709217, 51.507118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354618, 32.714588, 51.536392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074187, 0.104625, 0.991741,
		0.005657, -0.994421, 0.105331,
		0.997228, 0.013424, 0.073182,
		34.653786, 32.718616, 51.558346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275272, 32.098598, 51.944363>,  <33.955727, 32.709217, 51.507118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275272, 32.098598, 51.944363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484306, 32.439407, 51.956806>,  <34.609726, 32.643890, 51.964272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484306, 32.439407, 51.956806>,  <34.275272, 32.098598, 51.944363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484306, 32.439407, 51.956806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001297, -0.037278, 0.999304,
		0.852584, -0.522184, -0.020586,
		0.522588, 0.852018, 0.031105,
		34.641083, 32.695011, 51.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631123, 32.080635, 52.652687>,  <34.275272, 32.098598, 51.944363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631123, 32.080635, 52.652687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681293, 32.455956, 52.523785>,  <34.711395, 32.681149, 52.446442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.681293, 32.455956, 52.523785>,  <34.631123, 32.080635, 52.652687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681293, 32.455956, 52.523785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105862, 0.310311, 0.944723,
		0.986438, -0.152613, -0.060408,
		0.125432, 0.938305, -0.322258,
		34.718922, 32.737446, 52.427109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045712, 32.282665, 53.190243>,  <34.631123, 32.080635, 52.652687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045712, 32.282665, 53.190243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931137, 32.616661, 53.002308>,  <34.862392, 32.817059, 52.889549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.931137, 32.616661, 53.002308>,  <35.045712, 32.282665, 53.190243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931137, 32.616661, 53.002308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030234, 0.482260, 0.875506,
		0.957623, 0.264978, -0.112890,
		-0.286432, 0.834992, -0.469835,
		34.845207, 32.867157, 52.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593121, 32.854252, 53.286480>,  <35.045712, 32.282665, 53.190243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593121, 32.854252, 53.286480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253223, 33.040512, 53.187603>,  <35.049286, 33.152267, 53.128277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.253223, 33.040512, 53.187603>,  <35.593121, 32.854252, 53.286480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253223, 33.040512, 53.187603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040838, 0.525608, 0.849746,
		0.525608, 0.711974, -0.465650,
		-0.849746, 0.465650, -0.247188,
		34.998299, 33.180206, 53.113445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662136, 33.607281, 53.588509>,  <35.593121, 32.854252, 53.286480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662136, 33.607281, 53.588509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275543, 33.559196, 53.497768>,  <35.043587, 33.530346, 53.443325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.275543, 33.559196, 53.497768>,  <35.662136, 33.607281, 53.588509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275543, 33.559196, 53.497768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256403, 0.496694, 0.829188,
		0.013003, 0.859561, -0.510867,
		-0.966482, -0.120206, -0.226852,
		34.985600, 33.523136, 53.429714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482578, 34.239586, 53.690857>,  <35.662136, 33.607281, 53.588509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482578, 34.239586, 53.690857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157883, 34.006332, 53.703743>,  <34.963066, 33.866383, 53.711475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157883, 34.006332, 53.703743>,  <35.482578, 34.239586, 53.690857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157883, 34.006332, 53.703743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343360, 0.521141, 0.781355,
		-0.472423, 0.623194, -0.623254,
		-0.811739, -0.583131, 0.032219,
		34.914360, 33.831394, 53.713409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392677, 34.718365, 53.063824>,  <35.482578, 34.239586, 53.690857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392677, 34.718365, 53.063824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632458, 35.038486, 53.068966>,  <35.776325, 35.230560, 53.072052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632458, 35.038486, 53.068966>,  <35.392677, 34.718365, 53.063824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632458, 35.038486, 53.068966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477501, -0.344684, -0.808199,
		-0.642376, 0.490616, -0.588769,
		0.599455, 0.800306, 0.012853,
		35.812294, 35.278580, 53.072823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400757, 35.199265, 52.341885>,  <35.392677, 34.718365, 53.063824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400757, 35.199265, 52.341885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733875, 35.188732, 52.563065>,  <35.933746, 35.182411, 52.695774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733875, 35.188732, 52.563065>,  <35.400757, 35.199265, 52.341885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733875, 35.188732, 52.563065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484277, -0.449251, -0.750766,
		0.268184, 0.893017, -0.361383,
		0.832799, -0.026334, 0.552949,
		35.983715, 35.180832, 52.728951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914051, 35.184628, 51.825180>,  <35.400757, 35.199265, 52.341885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914051, 35.184628, 51.825180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148708, 35.120277, 52.142662>,  <36.289505, 35.081665, 52.333149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148708, 35.120277, 52.142662>,  <35.914051, 35.184628, 51.825180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148708, 35.120277, 52.142662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710179, -0.368832, -0.599673,
		0.389217, 0.915468, -0.102122,
		0.586647, -0.160878, 0.793702,
		36.324703, 35.072014, 52.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662827, 35.471535, 51.603966>,  <35.914051, 35.184628, 51.825180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662827, 35.471535, 51.603966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679749, 35.218330, 51.913162>,  <36.689903, 35.066410, 52.098679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679749, 35.218330, 51.913162>,  <36.662827, 35.471535, 51.603966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679749, 35.218330, 51.913162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777025, -0.465499, -0.423726,
		0.628047, 0.618556, 0.472170,
		0.042304, -0.633008, 0.772989,
		36.692440, 35.028427, 52.145058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358467, 35.336411, 51.716995>,  <36.662827, 35.471535, 51.603966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358467, 35.336411, 51.716995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214714, 35.035362, 51.937691>,  <37.128464, 34.854733, 52.070107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.214714, 35.035362, 51.937691>,  <37.358467, 35.336411, 51.716995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214714, 35.035362, 51.937691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801188, -0.551988, -0.231099,
		0.478481, 0.358991, 0.801362,
		-0.359380, -0.752618, 0.551735,
		37.106899, 34.809578, 52.103210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881077, 35.093147, 52.206703>,  <37.358467, 35.336411, 51.716995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881077, 35.093147, 52.206703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610062, 34.805412, 52.145390>,  <37.447453, 34.632771, 52.108601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.610062, 34.805412, 52.145390>,  <37.881077, 35.093147, 52.206703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610062, 34.805412, 52.145390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730161, -0.632825, -0.257677,
		0.088355, -0.286507, 0.953995,
		-0.677538, -0.719337, -0.153283,
		37.406799, 34.589611, 52.099403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284435, 34.457874, 52.194122>,  <37.881077, 35.093147, 52.206703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284435, 34.457874, 52.194122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949715, 34.335869, 52.012249>,  <37.748882, 34.262665, 51.903126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949715, 34.335869, 52.012249>,  <38.284435, 34.457874, 52.194122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949715, 34.335869, 52.012249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544802, -0.546391, -0.636119,
		-0.054406, -0.780014, 0.623393,
		-0.836798, -0.305017, -0.454680,
		37.698677, 34.244362, 51.875847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431168, 33.803673, 52.007610>,  <38.284435, 34.457874, 52.194122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431168, 33.803673, 52.007610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119934, 33.875698, 51.766891>,  <37.933193, 33.918911, 51.622459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119934, 33.875698, 51.766891>,  <38.431168, 33.803673, 52.007610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119934, 33.875698, 51.766891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468182, -0.472482, -0.746704,
		-0.418787, -0.862751, 0.283333,
		-0.778089, 0.180058, -0.601794,
		37.886509, 33.929718, 51.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258736, 33.195183, 51.728012>,  <38.431168, 33.803673, 52.007610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258736, 33.195183, 51.728012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094311, 33.465912, 51.483734>,  <37.995655, 33.628349, 51.337170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094311, 33.465912, 51.483734>,  <38.258736, 33.195183, 51.728012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094311, 33.465912, 51.483734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331914, -0.512805, -0.791748,
		-0.849037, -0.528152, -0.013854,
		-0.411059, 0.676821, -0.610692,
		37.970993, 33.668957, 51.300526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138062, 32.767937, 51.242161>,  <38.258736, 33.195183, 51.728012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138062, 32.767937, 51.242161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082458, 33.121319, 51.063194>,  <38.049095, 33.333347, 50.955814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082458, 33.121319, 51.063194>,  <38.138062, 32.767937, 51.242161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082458, 33.121319, 51.063194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243531, -0.407429, -0.880167,
		-0.959879, -0.231313, -0.158512,
		-0.139012, 0.883457, -0.447415,
		38.040756, 33.386356, 50.928970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673847, 32.712456, 50.646229>,  <38.138062, 32.767937, 51.242161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673847, 32.712456, 50.646229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908329, 33.034016, 50.606010>,  <38.049019, 33.226952, 50.581879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.908329, 33.034016, 50.606010>,  <37.673847, 32.712456, 50.646229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908329, 33.034016, 50.606010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384636, -0.385382, -0.838770,
		-0.713037, 0.453016, -0.535122,
		0.586203, 0.803901, -0.100545,
		38.084190, 33.275185, 50.575848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588490, 32.792397, 49.987385>,  <37.673847, 32.712456, 50.646229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588490, 32.792397, 49.987385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918541, 33.008949, 50.051964>,  <38.116573, 33.138882, 50.090710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918541, 33.008949, 50.051964>,  <37.588490, 32.792397, 49.987385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918541, 33.008949, 50.051964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395043, -0.348631, -0.849940,
		-0.403855, 0.765091, -0.501535,
		0.825131, 0.541381, 0.161448,
		38.166080, 33.171364, 50.100399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709457, 33.354294, 49.435978>,  <37.588490, 32.792397, 49.987385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709457, 33.354294, 49.435978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065342, 33.283146, 49.604160>,  <38.278873, 33.240459, 49.705070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065342, 33.283146, 49.604160>,  <37.709457, 33.354294, 49.435978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065342, 33.283146, 49.604160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381887, -0.214719, -0.898921,
		0.250168, 0.960343, -0.123112,
		0.889707, -0.177867, 0.420458,
		38.332253, 33.229786, 49.730297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977585, 33.992092, 49.334724>,  <37.709457, 33.354294, 49.435978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977585, 33.992092, 49.334724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694469, 33.898811, 49.067993>,  <37.524601, 33.842842, 48.907955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694469, 33.898811, 49.067993>,  <37.977585, 33.992092, 49.334724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694469, 33.898811, 49.067993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572118, -0.364497, 0.734727,
		-0.414394, 0.901532, 0.124568,
		-0.707784, -0.233199, -0.666828,
		37.482136, 33.828850, 48.867947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776714, 34.734104, 49.132195>,  <37.977585, 33.992092, 49.334724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776714, 34.734104, 49.132195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556332, 34.830105, 49.451908>,  <37.424103, 34.887707, 49.643734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556332, 34.830105, 49.451908>,  <37.776714, 34.734104, 49.132195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556332, 34.830105, 49.451908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134371, 0.970769, -0.198877,
		-0.823647, -0.002172, -0.567099,
		-0.550954, 0.240005, 0.799279,
		37.391045, 34.902107, 49.691692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160706, 35.253731, 48.910118>,  <37.776714, 34.734104, 49.132195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160706, 35.253731, 48.910118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277218, 35.267849, 49.292511>,  <37.347126, 35.276321, 49.521946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277218, 35.267849, 49.292511>,  <37.160706, 35.253731, 48.910118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277218, 35.267849, 49.292511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104361, 0.992183, -0.068429,
		-0.950927, 0.119699, 0.285323,
		0.291283, 0.035295, 0.955986,
		37.364601, 35.278439, 49.579308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608665, 35.623932, 49.407799>,  <37.160706, 35.253731, 48.910118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608665, 35.623932, 49.407799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996227, 35.648777, 49.503609>,  <37.228764, 35.663685, 49.561096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996227, 35.648777, 49.503609>,  <36.608665, 35.623932, 49.407799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996227, 35.648777, 49.503609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043950, 0.995791, -0.080430,
		-0.243516, 0.067402, 0.967552,
		0.968901, 0.062110, 0.239528,
		37.286896, 35.667412, 49.575466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470505, 36.470798, 49.208935>,  <36.608665, 35.623932, 49.407799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470505, 36.470798, 49.208935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220734, 36.622032, 48.935543>,  <36.070869, 36.712772, 48.771507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220734, 36.622032, 48.935543>,  <36.470505, 36.470798, 49.208935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220734, 36.622032, 48.935543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292135, 0.698482, 0.653284,
		0.724395, 0.607595, -0.325698,
		-0.624427, 0.378088, -0.683477,
		36.033405, 36.735458, 48.730499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483643, 37.160252, 49.093395>,  <36.470505, 36.470798, 49.208935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483643, 37.160252, 49.093395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104340, 37.104858, 48.979118>,  <35.876759, 37.071621, 48.910553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.104340, 37.104858, 48.979118>,  <36.483643, 37.160252, 49.093395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104340, 37.104858, 48.979118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261117, 0.852060, 0.453665,
		0.180605, 0.504793, -0.844136,
		-0.948261, -0.138485, -0.285696,
		35.819862, 37.063313, 48.893410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295940, 37.738594, 48.691921>,  <36.483643, 37.160252, 49.093395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295940, 37.738594, 48.691921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958279, 37.577011, 48.832905>,  <35.755680, 37.480061, 48.917496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958279, 37.577011, 48.832905>,  <36.295940, 37.738594, 48.691921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958279, 37.577011, 48.832905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250061, 0.878236, 0.407640,
		-0.474211, 0.255974, -0.842379,
		-0.844153, -0.403953, 0.352460,
		35.705032, 37.455826, 48.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741978, 38.197289, 48.525024>,  <36.295940, 37.738594, 48.691921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741978, 38.197289, 48.525024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569801, 37.981983, 48.814850>,  <35.466496, 37.852798, 48.988743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569801, 37.981983, 48.814850>,  <35.741978, 38.197289, 48.525024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569801, 37.981983, 48.814850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496392, 0.811608, 0.308037,
		-0.753865, -0.227074, -0.616542,
		-0.430443, -0.538266, 0.724561,
		35.440670, 37.820503, 49.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023952, 38.348503, 48.524197>,  <35.741978, 38.197289, 48.525024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023952, 38.348503, 48.524197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097027, 38.220829, 48.896164>,  <35.140873, 38.144226, 49.119343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.097027, 38.220829, 48.896164>,  <35.023952, 38.348503, 48.524197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097027, 38.220829, 48.896164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487980, 0.791673, 0.367599,
		-0.853523, -0.520936, -0.011127,
		0.182686, -0.319184, 0.929918,
		35.151833, 38.125072, 49.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438248, 38.578014, 48.855408>,  <35.023952, 38.348503, 48.524197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438248, 38.578014, 48.855408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676678, 38.507175, 49.168667>,  <34.819736, 38.464672, 49.356625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.676678, 38.507175, 49.168667>,  <34.438248, 38.578014, 48.855408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676678, 38.507175, 49.168667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495728, 0.686102, 0.532464,
		-0.631621, -0.705620, 0.321177,
		0.596078, -0.177099, 0.783152,
		34.855499, 38.454044, 49.403614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994122, 38.535263, 49.455776>,  <34.438248, 38.578014, 48.855408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994122, 38.535263, 49.455776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357105, 38.611439, 49.605579>,  <34.574894, 38.657143, 49.695461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.357105, 38.611439, 49.605579>,  <33.994122, 38.535263, 49.455776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357105, 38.611439, 49.605579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379991, 0.752288, 0.538209,
		-0.179242, -0.630711, 0.755034,
		0.907458, 0.190436, 0.374506,
		34.629341, 38.668571, 49.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876740, 38.647327, 50.225201>,  <33.994122, 38.535263, 49.455776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876740, 38.647327, 50.225201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235943, 38.806664, 50.150471>,  <34.451466, 38.902267, 50.105633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235943, 38.806664, 50.150471>,  <33.876740, 38.647327, 50.225201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235943, 38.806664, 50.150471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219754, 0.773944, 0.593902,
		0.381169, -0.492273, 0.782545,
		0.898008, 0.398344, -0.186825,
		34.505344, 38.926167, 50.094421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059990, 38.911274, 50.830849>,  <33.876740, 38.647327, 50.225201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059990, 38.911274, 50.830849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294682, 39.108604, 50.573982>,  <34.435497, 39.227005, 50.419861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294682, 39.108604, 50.573982>,  <34.059990, 38.911274, 50.830849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294682, 39.108604, 50.573982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292031, 0.868549, 0.400425,
		0.755293, -0.047409, 0.653670,
		0.586729, 0.493330, -0.642164,
		34.470699, 39.256603, 50.381332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570286, 39.360554, 51.275116>,  <34.059990, 38.911274, 50.830849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570286, 39.360554, 51.275116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550373, 39.533802, 50.915131>,  <34.538425, 39.637749, 50.699139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550373, 39.533802, 50.915131>,  <34.570286, 39.360554, 51.275116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550373, 39.533802, 50.915131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399531, 0.817207, 0.415390,
		0.915367, 0.380239, 0.132365,
		-0.049778, 0.433118, -0.899962,
		34.535439, 39.663738, 50.645142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764080, 40.089142, 51.410088>,  <34.570286, 39.360554, 51.275116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764080, 40.089142, 51.410088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582268, 40.080929, 51.053890>,  <34.473179, 40.076000, 50.840172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582268, 40.080929, 51.053890>,  <34.764080, 40.089142, 51.410088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582268, 40.080929, 51.053890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510912, 0.824937, 0.241761,
		0.729637, 0.564852, -0.385450,
		-0.454531, -0.020533, -0.890494,
		34.445908, 40.074768, 50.786743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708328, 40.820641, 51.122730>,  <34.764080, 40.089142, 51.410088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708328, 40.820641, 51.122730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419075, 40.603245, 50.952229>,  <34.245522, 40.472809, 50.849926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419075, 40.603245, 50.952229>,  <34.708328, 40.820641, 51.122730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419075, 40.603245, 50.952229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655082, 0.735295, 0.173808,
		0.218963, 0.404921, -0.887747,
		-0.723134, -0.543489, -0.426259,
		34.202133, 40.440197, 50.824352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434132, 41.294731, 50.735573>,  <34.708328, 40.820641, 51.122730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434132, 41.294731, 50.735573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158218, 41.007698, 50.774086>,  <33.992672, 40.835476, 50.797195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158218, 41.007698, 50.774086>,  <34.434132, 41.294731, 50.735573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158218, 41.007698, 50.774086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700606, 0.695093, 0.161232,
		-0.182625, 0.043756, -0.982208,
		-0.689781, -0.717587, 0.096286,
		33.951283, 40.792423, 50.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905262, 41.510254, 50.264206>,  <34.434132, 41.294731, 50.735573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905262, 41.510254, 50.264206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.763714, 41.246738, 50.529770>,  <33.678783, 41.088631, 50.689106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.763714, 41.246738, 50.529770>,  <33.905262, 41.510254, 50.264206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763714, 41.246738, 50.529770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801653, 0.579296, 0.147542,
		-0.481799, -0.480013, -0.733115,
		-0.353869, -0.658789, 0.663908,
		33.657555, 41.049103, 50.728943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248291, 41.644485, 50.263702>,  <33.905262, 41.510254, 50.264206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248291, 41.644485, 50.263702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286198, 41.430386, 50.599445>,  <33.308941, 41.301926, 50.800892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286198, 41.430386, 50.599445>,  <33.248291, 41.644485, 50.263702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286198, 41.430386, 50.599445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733478, 0.532528, 0.422403,
		-0.673074, -0.655683, -0.342126,
		0.094771, -0.535250, 0.839360,
		33.314629, 41.269810, 50.851254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483173, 41.530735, 50.548450>,  <33.248291, 41.644485, 50.263702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483173, 41.530735, 50.548450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749744, 41.503471, 50.845428>,  <32.909687, 41.487114, 51.023617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749744, 41.503471, 50.845428>,  <32.483173, 41.530735, 50.548450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749744, 41.503471, 50.845428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652632, 0.428136, 0.625117,
		-0.360473, -0.901141, 0.240842,
		0.666431, -0.068156, 0.742445,
		32.949673, 41.483025, 51.068161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166149, 41.185680, 51.096043>,  <32.483173, 41.530735, 50.548450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166149, 41.185680, 51.096043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467052, 41.387115, 51.265984>,  <32.647594, 41.507977, 51.367947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467052, 41.387115, 51.265984>,  <32.166149, 41.185680, 51.096043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467052, 41.387115, 51.265984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648303, 0.450761, 0.613610,
		0.117502, -0.737028, 0.665570,
		0.752261, 0.503591, 0.424853,
		32.692730, 41.538193, 51.393440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051853, 41.158001, 51.756096>,  <32.166149, 41.185680, 51.096043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051853, 41.158001, 51.756096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.315399, 41.458729, 51.745842>,  <32.473526, 41.639168, 51.739689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.315399, 41.458729, 51.745842>,  <32.051853, 41.158001, 51.756096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315399, 41.458729, 51.745842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509142, 0.470759, 0.720528,
		0.553778, -0.461678, 0.692952,
		0.658866, 0.751824, -0.025636,
		32.513058, 41.684277, 51.738152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225479, 41.120850, 52.369167>,  <32.051853, 41.158001, 51.756096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225479, 41.120850, 52.369167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300320, 41.478527, 52.206486>,  <32.345222, 41.693134, 52.108875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.300320, 41.478527, 52.206486>,  <32.225479, 41.120850, 52.369167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300320, 41.478527, 52.206486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457866, 0.445679, 0.769240,
		0.869110, 0.042291, 0.492808,
		0.187102, 0.894194, -0.406707,
		32.356449, 41.746784, 52.084473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275719, 41.529213, 52.982277>,  <32.225479, 41.120850, 52.369167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275719, 41.529213, 52.982277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274334, 41.806763, 52.694244>,  <32.273502, 41.973293, 52.521423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274334, 41.806763, 52.694244>,  <32.275719, 41.529213, 52.982277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274334, 41.806763, 52.694244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483887, 0.629011, 0.608440,
		0.875124, 0.350544, 0.333583,
		-0.003458, 0.693877, -0.720086,
		32.273296, 42.014927, 52.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479717, 42.128563, 53.340046>,  <32.275719, 41.529213, 52.982277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479717, 42.128563, 53.340046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301281, 42.257282, 53.005993>,  <32.194218, 42.334515, 52.805561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301281, 42.257282, 53.005993>,  <32.479717, 42.128563, 53.340046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301281, 42.257282, 53.005993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515558, 0.670355, 0.533689,
		0.731575, 0.668635, -0.133136,
		-0.446091, 0.321794, -0.835135,
		32.167454, 42.353821, 52.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583614, 42.872654, 53.260876>,  <32.479717, 42.128563, 53.340046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583614, 42.872654, 53.260876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255733, 42.739189, 53.074646>,  <32.059006, 42.659111, 52.962910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.255733, 42.739189, 53.074646>,  <32.583614, 42.872654, 53.260876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255733, 42.739189, 53.074646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566159, 0.595256, 0.570206,
		0.086879, 0.730987, -0.676838,
		-0.819705, -0.333658, -0.465570,
		32.009823, 42.639091, 52.934975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110226, 43.440456, 53.190018>,  <32.583614, 42.872654, 53.260876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110226, 43.440456, 53.190018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871319, 43.126297, 53.125008>,  <31.727974, 42.937801, 53.086002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871319, 43.126297, 53.125008>,  <32.110226, 43.440456, 53.190018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871319, 43.126297, 53.125008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737477, 0.458146, 0.496215,
		-0.315269, 0.416231, -0.852852,
		-0.597272, -0.785400, -0.162522,
		31.692137, 42.890678, 53.076252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446083, 43.711372, 52.894154>,  <32.110226, 43.440456, 53.190018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446083, 43.711372, 52.894154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394791, 43.352753, 53.063747>,  <31.364016, 43.137581, 53.165504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.394791, 43.352753, 53.063747>,  <31.446083, 43.711372, 52.894154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394791, 43.352753, 53.063747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636694, 0.402199, 0.657919,
		-0.760380, -0.185581, -0.622400,
		-0.128232, -0.896546, 0.423983,
		31.356321, 43.083790, 53.190941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840227, 43.864399, 53.276012>,  <31.446083, 43.711372, 52.894154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840227, 43.864399, 53.276012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980875, 43.525345, 53.434944>,  <31.065264, 43.321911, 53.530304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980875, 43.525345, 53.434944>,  <30.840227, 43.864399, 53.276012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980875, 43.525345, 53.434944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451391, 0.218317, 0.865207,
		-0.820128, -0.483575, -0.305852,
		0.351620, -0.847639, 0.397330,
		31.086361, 43.271053, 53.554142>
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
