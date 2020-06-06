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
	<24.250393, 34.805115, 35.450584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236782, 35.080330, 35.160633>,  <24.228615, 35.245457, 34.986660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236782, 35.080330, 35.160633>,  <24.250393, 34.805115, 35.450584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236782, 35.080330, 35.160633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706337, 0.529683, 0.469600,
		0.707057, -0.496030, -0.504009,
		-0.034029, 0.688034, -0.724880,
		24.226574, 35.286739, 34.943169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869560, 34.804268, 35.132477>,  <24.250393, 34.805115, 35.450584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869560, 34.804268, 35.132477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672668, 35.152302, 35.122131>,  <24.554533, 35.361122, 35.115925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672668, 35.152302, 35.122131>,  <24.869560, 34.804268, 35.132477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672668, 35.152302, 35.122131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799207, 0.463512, 0.382655,
		0.344930, 0.167682, -0.923529,
		-0.492231, 0.870080, -0.025867,
		24.525000, 35.413326, 35.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382793, 35.267624, 34.915154>,  <24.869560, 34.804268, 35.132477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.382793, 35.267624, 34.915154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102701, 35.460049, 35.126152>,  <24.934647, 35.575504, 35.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102701, 35.460049, 35.126152>,  <25.382793, 35.267624, 34.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102701, 35.460049, 35.126152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711705, 0.528493, 0.462787,
		-0.056152, 0.699483, -0.712440,
		-0.700231, 0.481061, 0.527501,
		24.892632, 35.604366, 35.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646360, 35.939953, 34.779968>,  <25.382793, 35.267624, 34.915154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646360, 35.939953, 34.779968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028002, 36.023373, 34.865944>,  <26.256987, 36.073425, 34.917530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028002, 36.023373, 34.865944>,  <25.646360, 35.939953, 34.779968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028002, 36.023373, 34.865944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290671, -0.817660, -0.496932,
		0.072112, 0.536600, -0.840750,
		0.954102, 0.208547, 0.214937,
		26.314232, 36.085938, 34.930424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034067, 35.846256, 34.213371>,  <25.646360, 35.939953, 34.779968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034067, 35.846256, 34.213371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282381, 35.802292, 34.523865>,  <26.431370, 35.775913, 34.710163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282381, 35.802292, 34.523865>,  <26.034067, 35.846256, 34.213371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282381, 35.802292, 34.523865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329805, -0.861638, -0.385756,
		0.711233, 0.495479, -0.498645,
		0.620786, -0.109907, 0.776238,
		26.468616, 35.769321, 34.756737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600517, 35.556023, 33.913216>,  <26.034067, 35.846256, 34.213371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600517, 35.556023, 33.913216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606159, 35.436237, 34.294815>,  <26.609545, 35.364365, 34.523777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606159, 35.436237, 34.294815>,  <26.600517, 35.556023, 33.913216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606159, 35.436237, 34.294815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306711, -0.906808, -0.289185,
		0.951698, 0.296682, 0.079059,
		0.014105, -0.299465, 0.954003,
		26.610392, 35.346397, 34.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035124, 35.053123, 33.871841>,  <26.600517, 35.556023, 33.913216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035124, 35.053123, 33.871841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895672, 35.002460, 34.243305>,  <26.812000, 34.972061, 34.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895672, 35.002460, 34.243305>,  <27.035124, 35.053123, 33.871841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895672, 35.002460, 34.243305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163305, -0.983880, -0.072882,
		0.922925, 0.126246, 0.363693,
		-0.348629, -0.126657, 0.928664,
		26.791082, 34.964462, 34.521904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583803, 34.683857, 34.221088>,  <27.035124, 35.053123, 33.871841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583803, 34.683857, 34.221088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233667, 34.628986, 34.406548>,  <27.023586, 34.596062, 34.517822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233667, 34.628986, 34.406548>,  <27.583803, 34.683857, 34.221088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233667, 34.628986, 34.406548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053474, -0.980492, -0.189146,
		0.480547, -0.140773, 0.865597,
		-0.875337, -0.137181, 0.463645,
		26.971066, 34.587833, 34.545639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768879, 34.081566, 34.599983>,  <27.583803, 34.683857, 34.221088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768879, 34.081566, 34.599983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371794, 34.109077, 34.639553>,  <27.133543, 34.125584, 34.663296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.371794, 34.109077, 34.639553>,  <27.768879, 34.081566, 34.599983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371794, 34.109077, 34.639553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083676, -0.984309, -0.155350,
		0.086690, -0.162496, 0.982894,
		-0.992715, 0.068777, 0.098926,
		27.073978, 34.129711, 34.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584579, 33.645222, 35.065891>,  <27.768879, 34.081566, 34.599983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584579, 33.645222, 35.065891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230742, 33.659420, 34.879890>,  <27.018438, 33.667938, 34.768288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230742, 33.659420, 34.879890>,  <27.584579, 33.645222, 35.065891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230742, 33.659420, 34.879890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040873, -0.999163, 0.001485,
		-0.464563, 0.020320, 0.885307,
		-0.884596, 0.035496, -0.465005,
		26.965363, 33.670067, 34.740391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271030, 33.049812, 35.199448>,  <27.584579, 33.645222, 35.065891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271030, 33.049812, 35.199448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038351, 33.179985, 34.901260>,  <26.898743, 33.258091, 34.722347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038351, 33.179985, 34.901260>,  <27.271030, 33.049812, 35.199448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038351, 33.179985, 34.901260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247258, -0.943853, -0.219100,
		-0.774914, 0.056873, 0.629503,
		-0.581698, 0.325433, -0.745467,
		26.863842, 33.277615, 34.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586615, 32.700466, 35.248058>,  <27.271030, 33.049812, 35.199448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586615, 32.700466, 35.248058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635904, 32.821400, 34.869976>,  <26.665478, 32.893959, 34.643127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635904, 32.821400, 34.869976>,  <26.586615, 32.700466, 35.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635904, 32.821400, 34.869976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179634, -0.929934, -0.320865,
		-0.975985, 0.209329, -0.060281,
		0.123223, 0.302332, -0.945205,
		26.672871, 32.912098, 34.586414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953337, 32.322159, 34.827763>,  <26.586615, 32.700466, 35.248058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953337, 32.322159, 34.827763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251671, 32.425732, 34.582264>,  <26.430672, 32.487877, 34.434967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251671, 32.425732, 34.582264>,  <25.953337, 32.322159, 34.827763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251671, 32.425732, 34.582264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014436, -0.927425, -0.373731,
		-0.665973, 0.269882, -0.695445,
		0.745837, 0.258934, -0.613744,
		26.475422, 32.503410, 34.398140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731312, 32.161636, 34.035835>,  <25.953337, 32.322159, 34.827763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731312, 32.161636, 34.035835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130150, 32.181026, 34.059319>,  <26.369453, 32.192661, 34.073410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130150, 32.181026, 34.059319>,  <25.731312, 32.161636, 34.035835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130150, 32.181026, 34.059319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067962, -0.914312, -0.399267,
		0.034322, 0.402098, -0.914953,
		0.997097, 0.048479, 0.058708,
		26.429279, 32.195572, 34.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897062, 31.729029, 33.622280>,  <25.731312, 32.161636, 34.035835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897062, 31.729029, 33.622280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269976, 31.777977, 33.758442>,  <26.493723, 31.807346, 33.840137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269976, 31.777977, 33.758442>,  <25.897062, 31.729029, 33.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269976, 31.777977, 33.758442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299706, -0.788228, -0.537469,
		0.202546, 0.603094, -0.771526,
		0.932283, 0.122369, 0.340403,
		26.549660, 31.814688, 33.860561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390226, 31.543543, 33.057259>,  <25.897062, 31.729029, 33.622280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390226, 31.543543, 33.057259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613707, 31.510572, 33.387363>,  <26.747795, 31.490789, 33.585426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613707, 31.510572, 33.387363>,  <26.390226, 31.543543, 33.057259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613707, 31.510572, 33.387363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493440, -0.766741, -0.410640,
		0.666609, 0.636643, -0.387708,
		0.558703, -0.082426, 0.825262,
		26.781317, 31.485846, 33.634941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112711, 31.458101, 32.917522>,  <26.390226, 31.543543, 33.057259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112711, 31.458101, 32.917522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089865, 31.285221, 33.277508>,  <27.076157, 31.181494, 33.493500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089865, 31.285221, 33.277508>,  <27.112711, 31.458101, 32.917522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089865, 31.285221, 33.277508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490044, -0.797512, -0.351896,
		0.869824, 0.420925, 0.257349,
		-0.057117, -0.432200, 0.899967,
		27.072729, 31.155561, 33.547497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718725, 31.107883, 32.914490>,  <27.112711, 31.458101, 32.917522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718725, 31.107883, 32.914490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491016, 30.961084, 33.208767>,  <27.354391, 30.873005, 33.385334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491016, 30.961084, 33.208767>,  <27.718725, 31.107883, 32.914490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491016, 30.961084, 33.208767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339194, -0.919973, -0.196463,
		0.748919, 0.137702, 0.648197,
		-0.569270, -0.366999, 0.735692,
		27.320236, 30.850985, 33.429474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193230, 30.669703, 33.187012>,  <27.718725, 31.107883, 32.914490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193230, 30.669703, 33.187012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843575, 30.535250, 33.327240>,  <27.633781, 30.454578, 33.411377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843575, 30.535250, 33.327240>,  <28.193230, 30.669703, 33.187012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843575, 30.535250, 33.327240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274774, -0.937458, -0.213709,
		0.400483, -0.090482, 0.911826,
		-0.874135, -0.336132, 0.350574,
		27.581333, 30.434410, 33.432411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238951, 30.109568, 33.751469>,  <28.193230, 30.669703, 33.187012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238951, 30.109568, 33.751469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886421, 30.059319, 33.569267>,  <27.674904, 30.029169, 33.459946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886421, 30.059319, 33.569267>,  <28.238951, 30.109568, 33.751469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886421, 30.059319, 33.569267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243380, -0.946984, -0.209733,
		-0.405008, -0.295704, 0.865175,
		-0.881326, -0.125623, -0.455504,
		27.622023, 30.021631, 33.432617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949337, 29.526299, 33.968266>,  <28.238951, 30.109568, 33.751469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949337, 29.526299, 33.968266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741116, 29.577986, 33.630669>,  <27.616182, 29.608999, 33.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.741116, 29.577986, 33.630669>,  <27.949337, 29.526299, 33.968266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741116, 29.577986, 33.630669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, -0.935538, -0.277796,
		-0.825485, -0.328740, 0.458807,
		-0.520555, 0.129220, -0.843994,
		27.584949, 29.616753, 33.377472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645678, 28.937662, 33.973812>,  <27.949337, 29.526299, 33.968266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645678, 28.937662, 33.973812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619015, 29.073219, 33.598427>,  <27.603018, 29.154554, 33.373196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619015, 29.073219, 33.598427>,  <27.645678, 28.937662, 33.973812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619015, 29.073219, 33.598427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106178, -0.932802, -0.344392,
		-0.992110, -0.122600, 0.026194,
		-0.066656, 0.338894, -0.938460,
		27.599018, 29.174887, 33.316887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335470, 28.380430, 33.756947>,  <27.645678, 28.937662, 33.973812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335470, 28.380430, 33.756947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477522, 28.583586, 33.443020>,  <27.562754, 28.705479, 33.254665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477522, 28.583586, 33.443020>,  <27.335470, 28.380430, 33.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477522, 28.583586, 33.443020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115320, -0.856927, -0.502372,
		-0.927677, 0.087903, -0.362890,
		0.355130, 0.507887, -0.784814,
		27.584061, 28.735952, 33.207577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905344, 28.151487, 33.185982>,  <27.335470, 28.380430, 33.756947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905344, 28.151487, 33.185982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256355, 28.267775, 33.033440>,  <27.466961, 28.337547, 32.941914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256355, 28.267775, 33.033440>,  <26.905344, 28.151487, 33.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256355, 28.267775, 33.033440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048981, -0.845450, -0.531804,
		-0.477020, 0.447992, -0.756145,
		0.877527, 0.290718, -0.381353,
		27.519613, 28.354990, 32.919033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943613, 28.082027, 32.443329>,  <26.905344, 28.151487, 33.185982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943613, 28.082027, 32.443329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316704, 28.046587, 32.583138>,  <27.540558, 28.025324, 32.667023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316704, 28.046587, 32.583138>,  <26.943613, 28.082027, 32.443329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316704, 28.046587, 32.583138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070782, -0.905494, -0.418413,
		0.353564, 0.415006, -0.838309,
		0.932728, -0.088599, 0.349525,
		27.596523, 28.020008, 32.687996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348711, 27.414568, 32.558708>,  <26.943613, 28.082027, 32.443329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348711, 27.414568, 32.558708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699829, 27.539711, 32.413605>,  <27.910500, 27.614798, 32.326542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699829, 27.539711, 32.413605>,  <27.348711, 27.414568, 32.558708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699829, 27.539711, 32.413605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478621, -0.604281, 0.636998,
		-0.019919, -0.732779, -0.680175,
		0.877796, 0.312858, -0.362760,
		27.963167, 27.633568, 32.304775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799051, 26.960190, 32.232441>,  <27.348711, 27.414568, 32.558708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799051, 26.960190, 32.232441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062870, 27.210291, 32.399323>,  <28.221161, 27.360352, 32.499451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062870, 27.210291, 32.399323>,  <27.799051, 26.960190, 32.232441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062870, 27.210291, 32.399323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481701, -0.777670, 0.403973,
		0.577031, -0.065472, -0.814094,
		0.659545, 0.625254, 0.417202,
		28.260733, 27.397867, 32.524483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499998, 26.868242, 31.956059>,  <27.799051, 26.960190, 32.232441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499998, 26.868242, 31.956059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454573, 26.977655, 32.338112>,  <28.427317, 27.043303, 32.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454573, 26.977655, 32.338112>,  <28.499998, 26.868242, 31.956059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454573, 26.977655, 32.338112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599697, -0.747603, 0.285401,
		0.792128, 0.605203, -0.079135,
		-0.113564, 0.273531, 0.955136,
		28.420504, 27.059715, 32.624653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162455, 26.980671, 32.183552>,  <28.499998, 26.868242, 31.956059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162455, 26.980671, 32.183552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946611, 26.879057, 32.504623>,  <28.817104, 26.818089, 32.697266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946611, 26.879057, 32.504623>,  <29.162455, 26.980671, 32.183552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946611, 26.879057, 32.504623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740028, -0.597745, 0.308317,
		0.401472, 0.760373, 0.510543,
		-0.539610, -0.254036, 0.802675,
		28.784729, 26.802847, 32.745426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513166, 27.165724, 32.709976>,  <29.162455, 26.980671, 32.183552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513166, 27.165724, 32.709976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291140, 26.865656, 32.853722>,  <29.157923, 26.685616, 32.939968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291140, 26.865656, 32.853722>,  <29.513166, 27.165724, 32.709976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291140, 26.865656, 32.853722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829559, -0.467519, 0.305381,
		-0.061076, 0.467624, 0.881815,
		-0.555069, -0.750169, 0.359367,
		29.124619, 26.640606, 32.961533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448690, 27.027971, 33.471924>,  <29.513166, 27.165724, 32.709976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448690, 27.027971, 33.471924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438240, 26.673130, 33.287590>,  <29.431971, 26.460226, 33.176991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438240, 26.673130, 33.287590>,  <29.448690, 27.027971, 33.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438240, 26.673130, 33.287590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526622, -0.404047, 0.747941,
		-0.849698, -0.223143, 0.477724,
		-0.026126, -0.887104, -0.460830,
		29.430403, 26.407000, 33.149342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540222, 26.437963, 33.780914>,  <29.448690, 27.027971, 33.471924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540222, 26.437963, 33.780914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767540, 26.540356, 33.468117>,  <29.903931, 26.601791, 33.280437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767540, 26.540356, 33.468117>,  <29.540222, 26.437963, 33.780914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767540, 26.540356, 33.468117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080101, 0.928652, 0.362201,
		0.818916, -0.268475, 0.507245,
		0.568296, 0.255982, -0.781993,
		29.938028, 26.617149, 33.233521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365078, 26.585106, 33.883896>,  <29.540222, 26.437963, 33.780914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365078, 26.585106, 33.883896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248560, 26.823624, 33.584675>,  <30.178650, 26.966734, 33.405144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248560, 26.823624, 33.584675>,  <30.365078, 26.585106, 33.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248560, 26.823624, 33.584675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263082, 0.801746, 0.536649,
		0.919747, -0.040475, -0.390419,
		-0.291296, 0.596293, -0.748051,
		30.161171, 27.002512, 33.360260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615376, 27.206026, 33.989861>,  <30.365078, 26.585106, 33.883896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615376, 27.206026, 33.989861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391336, 27.313908, 33.676544>,  <30.256914, 27.378637, 33.488552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391336, 27.313908, 33.676544>,  <30.615376, 27.206026, 33.989861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391336, 27.313908, 33.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146162, 0.898516, 0.413891,
		0.815432, 0.346306, -0.463835,
		-0.560096, 0.269705, -0.783296,
		30.223309, 27.394819, 33.441555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863892, 27.924423, 33.829746>,  <30.615376, 27.206026, 33.989861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863892, 27.924423, 33.829746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490108, 27.878550, 33.694904>,  <30.265839, 27.851027, 33.613998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490108, 27.878550, 33.694904>,  <30.863892, 27.924423, 33.829746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490108, 27.878550, 33.694904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195709, 0.956313, 0.217171,
		0.297471, 0.268911, -0.916078,
		-0.934457, -0.114683, -0.337103,
		30.209772, 27.844145, 33.593773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716379, 28.351597, 33.311085>,  <30.863892, 27.924423, 33.829746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716379, 28.351597, 33.311085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382061, 28.247744, 33.504593>,  <30.181469, 28.185432, 33.620697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382061, 28.247744, 33.504593>,  <30.716379, 28.351597, 33.311085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382061, 28.247744, 33.504593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229717, 0.965659, 0.121379,
		-0.498673, -0.009682, -0.866736,
		-0.835797, -0.259632, 0.483772,
		30.131323, 28.169853, 33.649723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438955, 28.923088, 33.296951>,  <30.716379, 28.351597, 33.311085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438955, 28.923088, 33.296951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185369, 28.727167, 33.536346>,  <30.033218, 28.609615, 33.679981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185369, 28.727167, 33.536346>,  <30.438955, 28.923088, 33.296951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185369, 28.727167, 33.536346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486974, 0.854013, 0.183083,
		-0.600787, -0.175378, -0.779934,
		-0.633965, -0.489801, 0.598485,
		29.995180, 28.580227, 33.715893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734324, 29.100309, 33.069702>,  <30.438955, 28.923088, 33.296951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734324, 29.100309, 33.069702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741915, 28.989283, 33.453911>,  <29.746469, 28.922667, 33.684437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741915, 28.989283, 33.453911>,  <29.734324, 29.100309, 33.069702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741915, 28.989283, 33.453911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336255, 0.902959, 0.267576,
		-0.941580, -0.328058, -0.076197,
		0.018977, -0.277566, 0.960519,
		29.747608, 28.906013, 33.742065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205921, 29.343042, 33.430244>,  <29.734324, 29.100309, 33.069702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205921, 29.343042, 33.430244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414698, 29.299074, 33.768593>,  <29.539965, 29.272694, 33.971600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414698, 29.299074, 33.768593>,  <29.205921, 29.343042, 33.430244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414698, 29.299074, 33.768593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216443, 0.942138, 0.255985,
		-0.825063, -0.316692, 0.467951,
		0.521942, -0.109919, 0.845869,
		29.571280, 29.266098, 34.022354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853022, 29.663012, 33.920399>,  <29.205921, 29.343042, 33.430244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853022, 29.663012, 33.920399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216354, 29.646753, 34.086906>,  <29.434353, 29.636997, 34.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216354, 29.646753, 34.086906>,  <28.853022, 29.663012, 33.920399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216354, 29.646753, 34.086906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182514, 0.856986, 0.481938,
		-0.376330, -0.513734, 0.771007,
		0.908330, -0.040648, 0.416273,
		29.488853, 29.634560, 34.211788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770899, 29.809147, 34.652462>,  <28.853022, 29.663012, 33.920399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770899, 29.809147, 34.652462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160913, 29.895216, 34.630524>,  <29.394922, 29.946857, 34.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160913, 29.895216, 34.630524>,  <28.770899, 29.809147, 34.652462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160913, 29.895216, 34.630524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153457, 0.831481, 0.533938,
		0.160493, -0.512191, 0.843743,
		0.975035, 0.215171, -0.054847,
		29.453424, 29.959768, 34.614071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067747, 30.026150, 35.364048>,  <28.770899, 29.809147, 34.652462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067747, 30.026150, 35.364048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299330, 30.192392, 35.083454>,  <29.438280, 30.292137, 34.915096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299330, 30.192392, 35.083454>,  <29.067747, 30.026150, 35.364048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299330, 30.192392, 35.083454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050823, 0.877061, 0.477683,
		0.813771, -0.240908, 0.528904,
		0.578959, 0.415606, -0.701483,
		29.473017, 30.317074, 34.873009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682941, 30.278660, 35.717632>,  <29.067747, 30.026150, 35.364048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682941, 30.278660, 35.717632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601309, 30.494091, 35.390636>,  <29.552328, 30.623350, 35.194439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601309, 30.494091, 35.390636>,  <29.682941, 30.278660, 35.717632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601309, 30.494091, 35.390636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115911, 0.842481, 0.526109,
		0.972067, 0.012614, -0.234364,
		-0.204084, 0.538578, -0.817486,
		29.540083, 30.655664, 35.145390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008257, 30.933481, 35.888988>,  <29.682941, 30.278660, 35.717632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008257, 30.933481, 35.888988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822147, 31.012774, 35.543915>,  <29.710482, 31.060349, 35.336868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822147, 31.012774, 35.543915>,  <30.008257, 30.933481, 35.888988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822147, 31.012774, 35.543915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038701, 0.978225, 0.203907,
		0.884321, 0.061486, -0.462812,
		-0.465272, 0.198231, -0.862686,
		29.682566, 31.072243, 35.285110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319973, 31.533121, 35.657459>,  <30.008257, 30.933481, 35.888988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319973, 31.533121, 35.657459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980833, 31.537939, 35.445419>,  <29.777349, 31.540831, 35.318195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980833, 31.537939, 35.445419>,  <30.319973, 31.533121, 35.657459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980833, 31.537939, 35.445419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021908, 0.999684, -0.012324,
		0.529782, -0.022062, -0.847847,
		-0.847851, 0.012046, -0.530098,
		29.726479, 31.541553, 35.286388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447729, 32.193218, 35.211372>,  <30.319973, 31.533121, 35.657459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447729, 32.193218, 35.211372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050943, 32.142689, 35.214069>,  <29.812872, 32.112370, 35.215687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050943, 32.142689, 35.214069>,  <30.447729, 32.193218, 35.211372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050943, 32.142689, 35.214069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126125, 0.991705, 0.024796,
		-0.009821, 0.023746, -0.999670,
		-0.991966, -0.126327, 0.006745,
		29.753353, 32.104790, 35.216091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186741, 32.846909, 34.983051>,  <30.447729, 32.193218, 35.211372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186741, 32.846909, 34.983051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842016, 32.692245, 35.114368>,  <29.635181, 32.599449, 35.193157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842016, 32.692245, 35.114368>,  <30.186741, 32.846909, 34.983051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842016, 32.692245, 35.114368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373802, 0.921636, 0.104207,
		-0.342857, -0.032909, -0.938811,
		-0.861813, -0.386658, 0.328291,
		29.583473, 32.576248, 35.212856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612354, 33.220104, 34.626770>,  <30.186741, 32.846909, 34.983051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612354, 33.220104, 34.626770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476732, 33.068432, 34.971157>,  <29.395359, 32.977428, 35.177788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476732, 33.068432, 34.971157>,  <29.612354, 33.220104, 34.626770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476732, 33.068432, 34.971157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160283, 0.925079, 0.344293,
		-0.927013, -0.021265, -0.374427,
		-0.339053, -0.379178, 0.860969,
		29.375017, 32.954678, 35.229446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108820, 33.728264, 34.875584>,  <29.612354, 33.220104, 34.626770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108820, 33.728264, 34.875584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196980, 33.494099, 35.187664>,  <29.249874, 33.353600, 35.374912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196980, 33.494099, 35.187664>,  <29.108820, 33.728264, 34.875584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196980, 33.494099, 35.187664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278721, 0.728724, 0.625520,
		-0.934740, -0.355323, -0.002558,
		0.220397, -0.585411, 0.780204,
		29.263100, 33.318474, 35.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492014, 33.625328, 35.192017>,  <29.108820, 33.728264, 34.875584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492014, 33.625328, 35.192017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792814, 33.598072, 35.454269>,  <28.973293, 33.581718, 35.611622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792814, 33.598072, 35.454269>,  <28.492014, 33.625328, 35.192017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792814, 33.598072, 35.454269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339425, 0.812609, 0.473770,
		-0.565057, -0.578813, 0.587952,
		0.751999, -0.068141, 0.655633,
		29.018414, 33.577629, 35.650959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205219, 33.718636, 35.886486>,  <28.492014, 33.625328, 35.192017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205219, 33.718636, 35.886486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588158, 33.817711, 35.945999>,  <28.817921, 33.877155, 35.981709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588158, 33.817711, 35.945999>,  <28.205219, 33.718636, 35.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588158, 33.817711, 35.945999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288930, 0.816323, 0.500136,
		0.002419, -0.521793, 0.853069,
		0.957347, 0.247687, 0.148787,
		28.875362, 33.892017, 35.990635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134125, 33.993622, 36.497688>,  <28.205219, 33.718636, 35.886486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134125, 33.993622, 36.497688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502775, 34.095673, 36.380714>,  <28.723965, 34.156902, 36.310528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502775, 34.095673, 36.380714>,  <28.134125, 33.993622, 36.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502775, 34.095673, 36.380714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113705, 0.897990, 0.425072,
		0.371052, -0.358505, 0.856618,
		0.921624, 0.255126, -0.292437,
		28.779263, 34.172211, 36.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490030, 34.315022, 37.106277>,  <28.134125, 33.993622, 36.497688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490030, 34.315022, 37.106277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692732, 34.446182, 36.787361>,  <28.814354, 34.524879, 36.596012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692732, 34.446182, 36.787361>,  <28.490030, 34.315022, 37.106277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692732, 34.446182, 36.787361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029625, 0.930916, 0.364031,
		0.861580, -0.160855, 0.481461,
		0.506756, 0.327905, -0.797293,
		28.844759, 34.544556, 36.548172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781176, 34.852898, 37.301502>,  <28.490030, 34.315022, 37.106277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781176, 34.852898, 37.301502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802553, 34.903801, 36.905331>,  <28.815380, 34.934341, 36.667629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802553, 34.903801, 36.905331>,  <28.781176, 34.852898, 37.301502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802553, 34.903801, 36.905331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015170, 0.991629, 0.128230,
		0.998456, -0.021879, 0.051067,
		0.053445, 0.127257, -0.990429,
		28.818586, 34.941978, 36.608204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376125, 35.279369, 37.194546>,  <28.781176, 34.852898, 37.301502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376125, 35.279369, 37.194546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152719, 35.356750, 36.871899>,  <29.018677, 35.403179, 36.678310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152719, 35.356750, 36.871899>,  <29.376125, 35.279369, 37.194546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152719, 35.356750, 36.871899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034072, 0.976953, 0.210716,
		0.828796, 0.090204, -0.552232,
		-0.558513, 0.193457, -0.806621,
		28.985165, 35.414787, 36.629913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657648, 35.795799, 36.680874>,  <29.376125, 35.279369, 37.194546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657648, 35.795799, 36.680874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257933, 35.804989, 36.668907>,  <29.018103, 35.810505, 36.661728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257933, 35.804989, 36.668907>,  <29.657648, 35.795799, 36.680874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257933, 35.804989, 36.668907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013858, 0.961242, 0.275356,
		0.035082, 0.274746, -0.960877,
		-0.999288, 0.022976, -0.029915,
		28.958147, 35.811882, 36.659931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307735, 36.060856, 36.836399>,  <29.657648, 35.795799, 36.680874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307735, 36.060856, 36.836399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683588, 36.058861, 36.699535>,  <30.909100, 36.057663, 36.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683588, 36.058861, 36.699535>,  <30.307735, 36.060856, 36.836399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683588, 36.058861, 36.699535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086804, -0.970663, -0.224229,
		-0.330999, 0.240393, -0.912497,
		0.939630, -0.004988, -0.342156,
		30.965477, 36.057365, 36.596889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494541, 35.640770, 37.299351>,  <30.307735, 36.060856, 36.836399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494541, 35.640770, 37.299351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721704, 35.380856, 37.097260>,  <30.858002, 35.224907, 36.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721704, 35.380856, 37.097260>,  <30.494541, 35.640770, 37.299351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721704, 35.380856, 37.097260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801453, 0.576368, 0.159602,
		0.187491, -0.495558, 0.848097,
		0.567908, -0.649786, -0.505231,
		30.892076, 35.185921, 36.945690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013702, 35.393871, 37.594883>,  <30.494541, 35.640770, 37.299351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013702, 35.393871, 37.594883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137358, 35.397671, 37.214497>,  <31.211552, 35.399952, 36.986263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137358, 35.397671, 37.214497>,  <31.013702, 35.393871, 37.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137358, 35.397671, 37.214497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806651, 0.527032, 0.267490,
		0.503732, -0.849792, 0.155264,
		0.309140, 0.009500, -0.950969,
		31.230101, 35.400520, 36.929207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752584, 35.136623, 37.572685>,  <31.013702, 35.393871, 37.594883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752584, 35.136623, 37.572685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638268, 35.381096, 37.277447>,  <31.569677, 35.527779, 37.100304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638268, 35.381096, 37.277447>,  <31.752584, 35.136623, 37.572685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638268, 35.381096, 37.277447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797782, 0.578458, 0.170087,
		0.530910, -0.540229, -0.652906,
		-0.285793, 0.611178, -0.738095,
		31.552530, 35.564449, 37.056019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354206, 35.231892, 37.025471>,  <31.752584, 35.136623, 37.572685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354206, 35.231892, 37.025471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115429, 35.548389, 37.078522>,  <31.972164, 35.738289, 37.110352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115429, 35.548389, 37.078522>,  <32.354206, 35.231892, 37.025471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115429, 35.548389, 37.078522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755651, 0.498965, 0.424294,
		0.269544, 0.353499, -0.895759,
		-0.596940, 0.791247, 0.132629,
		31.936346, 35.785763, 37.118309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611355, 35.844833, 36.660412>,  <32.354206, 35.231892, 37.025471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611355, 35.844833, 36.660412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398842, 35.947422, 36.983387>,  <32.271336, 36.008976, 37.177174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398842, 35.947422, 36.983387>,  <32.611355, 35.844833, 36.660412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398842, 35.947422, 36.983387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767379, 0.549531, 0.330371,
		-0.358982, 0.795133, -0.488768,
		-0.531282, 0.256474, 0.807441,
		32.239456, 36.024364, 37.225620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878826, 36.501484, 36.883209>,  <32.611355, 35.844833, 36.660412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878826, 36.501484, 36.883209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677448, 36.380619, 37.206997>,  <32.556622, 36.308098, 37.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677448, 36.380619, 37.206997>,  <32.878826, 36.501484, 36.883209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677448, 36.380619, 37.206997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605156, 0.545379, 0.579955,
		-0.616710, 0.781830, -0.091711,
		-0.503443, -0.302164, 0.809470,
		32.526417, 36.289970, 37.449837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618771, 37.108776, 37.321365>,  <32.878826, 36.501484, 36.883209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618771, 37.108776, 37.321365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673851, 36.772770, 37.531284>,  <32.706898, 36.571167, 37.657234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673851, 36.772770, 37.531284>,  <32.618771, 37.108776, 37.321365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673851, 36.772770, 37.531284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617171, 0.487181, 0.617863,
		-0.774686, 0.238809, 0.585519,
		0.137702, -0.840015, 0.524798,
		32.715160, 36.520767, 37.688725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562992, 37.288528, 37.959583>,  <32.618771, 37.108776, 37.321365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562992, 37.288528, 37.959583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762470, 36.942951, 37.987606>,  <32.882156, 36.735603, 38.004417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762470, 36.942951, 37.987606>,  <32.562992, 37.288528, 37.959583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762470, 36.942951, 37.987606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378853, 0.289949, 0.878863,
		-0.779600, -0.411742, 0.471902,
		0.498692, -0.863943, 0.070055,
		32.912079, 36.683769, 38.008621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494770, 37.010162, 38.666237>,  <32.562992, 37.288528, 37.959583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494770, 37.010162, 38.666237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848576, 36.880024, 38.532497>,  <33.060860, 36.801941, 38.452251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848576, 36.880024, 38.532497>,  <32.494770, 37.010162, 38.666237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848576, 36.880024, 38.532497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437762, 0.331084, 0.835912,
		-0.161264, -0.885738, 0.435272,
		0.884511, -0.325348, -0.334350,
		33.113930, 36.782421, 38.432194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749252, 36.634373, 39.297718>,  <32.494770, 37.010162, 38.666237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749252, 36.634373, 39.297718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067825, 36.642918, 39.055977>,  <33.258968, 36.648045, 38.910934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067825, 36.642918, 39.055977>,  <32.749252, 36.634373, 39.297718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067825, 36.642918, 39.055977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603197, 0.043004, 0.796432,
		0.043004, -0.998847, 0.021363,
		-0.796432, -0.021363, 0.604351,
		33.306755, 36.649326, 38.874672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190678, 36.306831, 39.628387>,  <32.749252, 36.634373, 39.297718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190678, 36.306831, 39.628387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438835, 36.476131, 39.364277>,  <33.587730, 36.577709, 39.205811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438835, 36.476131, 39.364277>,  <33.190678, 36.306831, 39.628387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438835, 36.476131, 39.364277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712882, 0.046659, 0.699731,
		0.326968, -0.904811, -0.272779,
		0.620396, 0.423248, -0.660279,
		33.624954, 36.603107, 39.166195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865738, 35.930908, 39.554237>,  <33.190678, 36.306831, 39.628387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865738, 35.930908, 39.554237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878262, 36.326042, 39.493309>,  <33.885777, 36.563122, 39.456753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878262, 36.326042, 39.493309>,  <33.865738, 35.930908, 39.554237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878262, 36.326042, 39.493309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708276, 0.085603, 0.700727,
		0.705241, -0.129826, -0.696979,
		0.031309, 0.987835, -0.152324,
		33.887653, 36.622391, 39.447613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575668, 36.131176, 39.749207>,  <33.865738, 35.930908, 39.554237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575668, 36.131176, 39.749207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416107, 36.494762, 39.700783>,  <34.320370, 36.712914, 39.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416107, 36.494762, 39.700783>,  <34.575668, 36.131176, 39.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416107, 36.494762, 39.700783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575304, 0.350880, 0.738857,
		0.714075, 0.225082, -0.662899,
		-0.398901, 0.908967, -0.121064,
		34.296436, 36.767452, 39.664463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145992, 36.566666, 39.779659>,  <34.575668, 36.131176, 39.749207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145992, 36.566666, 39.779659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823174, 36.784946, 39.869888>,  <34.629482, 36.915913, 39.924026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823174, 36.784946, 39.869888>,  <35.145992, 36.566666, 39.779659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823174, 36.784946, 39.869888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437479, 0.296008, 0.849112,
		0.396588, 0.783959, -0.477625,
		-0.807050, 0.545699, 0.225573,
		34.581059, 36.948654, 39.937561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420635, 37.238358, 40.031605>,  <35.145992, 36.566666, 39.779659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420635, 37.238358, 40.031605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048492, 37.200710, 40.173351>,  <34.825207, 37.178123, 40.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048492, 37.200710, 40.173351>,  <35.420635, 37.238358, 40.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048492, 37.200710, 40.173351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308178, 0.322883, 0.894859,
		-0.198640, 0.941748, -0.271392,
		-0.930359, -0.094118, 0.354363,
		34.769386, 37.172474, 40.279659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371964, 37.724892, 40.494682>,  <35.420635, 37.238358, 40.031605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371964, 37.724892, 40.494682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099014, 37.462013, 40.622719>,  <34.935246, 37.304287, 40.699543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099014, 37.462013, 40.622719>,  <35.371964, 37.724892, 40.494682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099014, 37.462013, 40.622719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212658, 0.240478, 0.947073,
		-0.699389, 0.714327, -0.024337,
		-0.682372, -0.657196, 0.320095,
		34.894302, 37.264854, 40.718746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226074, 37.984467, 41.227398>,  <35.371964, 37.724892, 40.494682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226074, 37.984467, 41.227398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080540, 37.615467, 41.175827>,  <34.993217, 37.394070, 41.144882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080540, 37.615467, 41.175827>,  <35.226074, 37.984467, 41.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080540, 37.615467, 41.175827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234354, -0.224626, 0.945844,
		-0.901499, 0.313918, 0.297918,
		-0.363838, -0.922496, -0.128932,
		34.971390, 37.338718, 41.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684708, 37.922016, 41.749519>,  <35.226074, 37.984467, 41.227398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684708, 37.922016, 41.749519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794350, 37.549213, 41.654667>,  <34.860134, 37.325531, 41.597755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794350, 37.549213, 41.654667>,  <34.684708, 37.922016, 41.749519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794350, 37.549213, 41.654667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049867, -0.232471, 0.971324,
		-0.960407, -0.278067, -0.017245,
		0.274102, -0.932006, -0.237133,
		34.876579, 37.269611, 41.583527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230614, 37.384159, 42.177277>,  <34.684708, 37.922016, 41.749519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230614, 37.384159, 42.177277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563572, 37.196545, 42.059204>,  <34.763348, 37.083977, 41.988361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563572, 37.196545, 42.059204>,  <34.230614, 37.384159, 42.177277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563572, 37.196545, 42.059204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068462, -0.441532, 0.894630,
		-0.549944, -0.764890, -0.335417,
		0.832391, -0.469033, -0.295183,
		34.813290, 37.055836, 41.970650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084446, 36.721996, 42.318317>,  <34.230614, 37.384159, 42.177277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084446, 36.721996, 42.318317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480423, 36.775681, 42.300430>,  <34.718010, 36.807892, 42.289700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480423, 36.775681, 42.300430>,  <34.084446, 36.721996, 42.318317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480423, 36.775681, 42.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105396, -0.488890, 0.865955,
		0.094358, -0.861960, -0.498119,
		0.989944, 0.134210, -0.044717,
		34.777405, 36.815945, 42.287014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322578, 36.090103, 42.569313>,  <34.084446, 36.721996, 42.318317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322578, 36.090103, 42.569313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637283, 36.333946, 42.608063>,  <34.826107, 36.480251, 42.631313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637283, 36.333946, 42.608063>,  <34.322578, 36.090103, 42.569313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637283, 36.333946, 42.608063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190767, -0.389399, 0.901098,
		0.587037, -0.690470, -0.422657,
		0.786763, 0.609606, 0.096873,
		34.873314, 36.516827, 42.637123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750237, 35.611954, 42.836090>,  <34.322578, 36.090103, 42.569313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750237, 35.611954, 42.836090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918282, 35.974403, 42.855885>,  <35.019108, 36.191872, 42.867764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918282, 35.974403, 42.855885>,  <34.750237, 35.611954, 42.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918282, 35.974403, 42.855885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390987, -0.229955, 0.891207,
		0.818920, -0.355061, -0.450889,
		0.420117, 0.906119, 0.049491,
		35.044315, 36.246239, 42.870731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404354, 35.414330, 42.929592>,  <34.750237, 35.611954, 42.836090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404354, 35.414330, 42.929592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358021, 35.781418, 43.081577>,  <35.330219, 36.001671, 43.172768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358021, 35.781418, 43.081577>,  <35.404354, 35.414330, 42.929592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358021, 35.781418, 43.081577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342103, -0.322268, 0.882671,
		0.932495, 0.232232, -0.276625,
		-0.115837, 0.917721, 0.379961,
		35.323269, 36.056732, 43.195564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082909, 35.580055, 43.303097>,  <35.404354, 35.414330, 42.929592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082909, 35.580055, 43.303097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785099, 35.812328, 43.434845>,  <35.606411, 35.951691, 43.513893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785099, 35.812328, 43.434845>,  <36.082909, 35.580055, 43.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785099, 35.812328, 43.434845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234077, -0.234983, 0.943393,
		0.625208, 0.779482, 0.039028,
		-0.744529, 0.580682, 0.329372,
		35.561741, 35.986534, 43.533657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343224, 35.934322, 43.916725>,  <36.082909, 35.580055, 43.303097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343224, 35.934322, 43.916725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946430, 35.967381, 43.954948>,  <35.708355, 35.987217, 43.977882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946430, 35.967381, 43.954948>,  <36.343224, 35.934322, 43.916725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946430, 35.967381, 43.954948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085558, -0.117088, 0.989429,
		0.092959, 0.989677, 0.109079,
		-0.991987, 0.082644, 0.095559,
		35.648834, 35.992172, 43.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227802, 36.416084, 44.442898>,  <36.343224, 35.934322, 43.916725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227802, 36.416084, 44.442898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893116, 36.198666, 44.416187>,  <35.692303, 36.068214, 44.400162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893116, 36.198666, 44.416187>,  <36.227802, 36.416084, 44.442898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893116, 36.198666, 44.416187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048332, -0.048160, 0.997670,
		-0.545498, 0.837995, 0.014025,
		-0.836717, -0.543549, -0.066773,
		35.642101, 36.035603, 44.396156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688660, 36.788860, 44.859783>,  <36.227802, 36.416084, 44.442898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688660, 36.788860, 44.859783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598427, 36.400879, 44.823326>,  <35.544289, 36.168091, 44.801453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598427, 36.400879, 44.823326>,  <35.688660, 36.788860, 44.859783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598427, 36.400879, 44.823326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137207, -0.124255, 0.982718,
		-0.964514, 0.209176, 0.161113,
		-0.225580, -0.969952, -0.091145,
		35.530754, 36.109894, 44.795982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536152, 36.699955, 45.546700>,  <35.688660, 36.788860, 44.859783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536152, 36.699955, 45.546700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525177, 36.337719, 45.377392>,  <35.518593, 36.120377, 45.275806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525177, 36.337719, 45.377392>,  <35.536152, 36.699955, 45.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525177, 36.337719, 45.377392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302341, -0.411119, 0.859983,
		-0.952805, -0.104377, 0.285076,
		-0.027437, -0.905586, -0.423274,
		35.516945, 36.066044, 45.250408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091457, 36.242374, 45.907402>,  <35.536152, 36.699955, 45.546700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091457, 36.242374, 45.907402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374069, 36.020756, 45.731289>,  <35.543636, 35.887783, 45.625622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374069, 36.020756, 45.731289>,  <35.091457, 36.242374, 45.907402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374069, 36.020756, 45.731289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233390, -0.404914, 0.884067,
		-0.668094, -0.727374, -0.156773,
		0.706527, -0.554050, -0.440282,
		35.586029, 35.854542, 45.599205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960388, 35.557022, 46.103832>,  <35.091457, 36.242374, 45.907402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960388, 35.557022, 46.103832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351398, 35.565029, 46.019890>,  <35.586006, 35.569832, 45.969524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351398, 35.565029, 46.019890>,  <34.960388, 35.557022, 46.103832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351398, 35.565029, 46.019890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202922, -0.359151, 0.910952,
		-0.057136, -0.933065, -0.355142,
		0.977527, 0.020018, -0.209860,
		35.644657, 35.571033, 45.956932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211449, 34.922100, 46.383114>,  <34.960388, 35.557022, 46.103832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211449, 34.922100, 46.383114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554260, 35.112118, 46.303280>,  <35.759945, 35.226128, 46.255379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554260, 35.112118, 46.303280>,  <35.211449, 34.922100, 46.383114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554260, 35.112118, 46.303280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401928, -0.373948, 0.835833,
		0.322426, -0.796550, -0.511419,
		0.857027, 0.475048, -0.199585,
		35.811367, 35.254631, 46.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686390, 34.449471, 46.535259>,  <35.211449, 34.922100, 46.383114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686390, 34.449471, 46.535259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871365, 34.804070, 46.541920>,  <35.982349, 35.016827, 46.545914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871365, 34.804070, 46.541920>,  <35.686390, 34.449471, 46.535259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871365, 34.804070, 46.541920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188446, -0.116614, 0.975135,
		0.866395, -0.447802, -0.220983,
		0.462437, 0.886496, 0.016648,
		36.010098, 35.070019, 46.546913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385300, 34.402592, 46.748257>,  <35.686390, 34.449471, 46.535259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385300, 34.402592, 46.748257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 34.787514, 46.829536>,  <36.269608, 35.018467, 46.878304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312992, 34.787514, 46.829536>,  <36.385300, 34.402592, 46.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312992, 34.787514, 46.829536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378825, -0.122535, 0.917320,
		0.907643, 0.242798, -0.342395,
		-0.180768, 0.962307, 0.203196,
		36.258762, 35.076206, 46.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876259, 34.545486, 47.242287>,  <36.385300, 34.402592, 46.748257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876259, 34.545486, 47.242287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617588, 34.844555, 47.302681>,  <36.462387, 35.023994, 47.338917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617588, 34.844555, 47.302681>,  <36.876259, 34.545486, 47.242287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617588, 34.844555, 47.302681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110850, -0.103723, 0.988410,
		0.754666, 0.655919, -0.015804,
		-0.646677, 0.747671, 0.150985,
		36.423584, 35.068855, 47.347977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231682, 35.079464, 47.638813>,  <36.876259, 34.545486, 47.242287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231682, 35.079464, 47.638813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835365, 35.102177, 47.687984>,  <36.597576, 35.115803, 47.717487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835365, 35.102177, 47.687984>,  <37.231682, 35.079464, 47.638813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835365, 35.102177, 47.687984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121758, -0.023682, 0.992277,
		0.059252, 0.998106, 0.016550,
		-0.990790, 0.056780, 0.122930,
		36.538128, 35.119209, 47.724865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070591, 35.532814, 48.204811>,  <37.231682, 35.079464, 47.638813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070591, 35.532814, 48.204811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739788, 35.308208, 48.193794>,  <36.541306, 35.173447, 48.187183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739788, 35.308208, 48.193794>,  <37.070591, 35.532814, 48.204811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739788, 35.308208, 48.193794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092354, -0.184022, 0.978574,
		-0.554550, 0.806747, 0.204046,
		-0.827010, -0.561512, -0.027543,
		36.491684, 35.139755, 48.185532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639553, 35.787476, 48.717773>,  <37.070591, 35.532814, 48.204811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639553, 35.787476, 48.717773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532154, 35.410255, 48.639221>,  <36.467716, 35.183922, 48.592091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532154, 35.410255, 48.639221>,  <36.639553, 35.787476, 48.717773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532154, 35.410255, 48.639221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211232, -0.141268, 0.967174,
		-0.939836, 0.301162, -0.161273,
		-0.268494, -0.943051, -0.196384,
		36.451607, 35.127338, 48.580307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144646, 35.751091, 49.298702>,  <36.639553, 35.787476, 48.717773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144646, 35.751091, 49.298702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126255, 35.378311, 49.154835>,  <36.115223, 35.154644, 49.068516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126255, 35.378311, 49.154835>,  <36.144646, 35.751091, 49.298702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126255, 35.378311, 49.154835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164656, -0.348053, 0.922902,
		-0.985279, 0.101650, -0.137450,
		-0.045973, -0.931948, -0.359666,
		36.112465, 35.098728, 49.046936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439335, 35.431828, 49.507393>,  <36.144646, 35.751091, 49.298702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439335, 35.431828, 49.507393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713547, 35.143848, 49.464085>,  <35.878075, 34.971062, 49.438099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713547, 35.143848, 49.464085>,  <35.439335, 35.431828, 49.507393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713547, 35.143848, 49.464085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092578, -0.233708, 0.967890,
		-0.722132, -0.653497, -0.226865,
		0.685533, -0.719947, -0.108268,
		35.919209, 34.927864, 49.431602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251877, 34.915424, 49.841454>,  <35.439335, 35.431828, 49.507393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251877, 34.915424, 49.841454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649628, 34.873074, 49.840363>,  <35.888279, 34.847664, 49.839710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649628, 34.873074, 49.840363>,  <35.251877, 34.915424, 49.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649628, 34.873074, 49.840363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014245, -0.159169, 0.987149,
		-0.104945, -0.981558, -0.159782,
		0.994376, -0.105873, -0.002722,
		35.947941, 34.841309, 49.839546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321899, 34.339485, 50.353977>,  <35.251877, 34.915424, 49.841454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321899, 34.339485, 50.353977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696671, 34.464806, 50.291988>,  <35.921532, 34.539997, 50.254795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696671, 34.464806, 50.291988>,  <35.321899, 34.339485, 50.353977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696671, 34.464806, 50.291988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230791, -0.221549, 0.947445,
		0.262499, -0.923451, -0.279881,
		0.936926, 0.313298, -0.154968,
		35.977749, 34.558796, 50.245499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673836, 33.861332, 50.542713>,  <35.321899, 34.339485, 50.353977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673836, 33.861332, 50.542713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930355, 34.166359, 50.576725>,  <36.084267, 34.349377, 50.597130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930355, 34.166359, 50.576725>,  <35.673836, 33.861332, 50.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930355, 34.166359, 50.576725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224698, -0.292600, 0.929460,
		0.733653, -0.576956, -0.358991,
		0.641298, 0.762566, 0.085026,
		36.122746, 34.395130, 50.602234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276176, 33.584419, 50.676971>,  <35.673836, 33.861332, 50.542713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276176, 33.584419, 50.676971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275066, 33.962864, 50.806503>,  <36.274403, 34.189930, 50.884220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275066, 33.962864, 50.806503>,  <36.276176, 33.584419, 50.676971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275066, 33.962864, 50.806503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137915, -0.320370, 0.937199,
		0.990440, 0.047258, -0.129595,
		-0.002772, 0.946113, 0.323825,
		36.274235, 34.246696, 50.903652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 33.569187, 51.222664>,  <36.276176, 33.584419, 50.676971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734173, 33.569187, 51.222664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561359, 33.924366, 51.285774>,  <36.457672, 34.137474, 51.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561359, 33.924366, 51.285774>,  <36.734173, 33.569187, 51.222664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561359, 33.924366, 51.285774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092669, -0.130312, 0.987133,
		0.897084, 0.441095, -0.025987,
		-0.432033, 0.887949, 0.157777,
		36.431751, 34.190750, 51.333107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152199, 33.912300, 51.637024>,  <36.734173, 33.569187, 51.222664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152199, 33.912300, 51.637024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800297, 34.095634, 51.687561>,  <36.589157, 34.205635, 51.717884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800297, 34.095634, 51.687561>,  <37.152199, 33.912300, 51.637024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800297, 34.095634, 51.687561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048056, -0.178664, 0.982736,
		0.472997, 0.870636, 0.135154,
		-0.879752, 0.458337, 0.126346,
		36.536369, 34.233135, 51.725464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221207, 34.259369, 52.195904>,  <37.152199, 33.912300, 51.637024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221207, 34.259369, 52.195904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824444, 34.234550, 52.151608>,  <36.586384, 34.219662, 52.125031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824444, 34.234550, 52.151608>,  <37.221207, 34.259369, 52.195904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824444, 34.234550, 52.151608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097171, -0.190154, 0.976934,
		-0.081670, 0.979792, 0.182587,
		-0.991911, -0.062044, -0.110737,
		36.526871, 34.215939, 52.118385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002476, 34.763424, 52.760300>,  <37.221207, 34.259369, 52.195904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002476, 34.763424, 52.760300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707798, 34.518768, 52.644936>,  <36.530991, 34.371975, 52.575718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707798, 34.518768, 52.644936>,  <37.002476, 34.763424, 52.760300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707798, 34.518768, 52.644936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268314, -0.127107, 0.954909,
		-0.620716, 0.780862, -0.070472,
		-0.736695, -0.611636, -0.288413,
		36.486790, 34.335278, 52.558411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391552, 34.920277, 53.137768>,  <37.002476, 34.763424, 52.760300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391552, 34.920277, 53.137768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339935, 34.547344, 53.002644>,  <36.308964, 34.323586, 52.921570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339935, 34.547344, 53.002644>,  <36.391552, 34.920277, 53.137768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339935, 34.547344, 53.002644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355874, -0.274423, 0.893334,
		-0.925582, 0.235494, -0.296379,
		-0.129041, -0.932328, -0.337807,
		36.301224, 34.267647, 52.901302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657261, 34.706825, 53.091747>,  <36.391552, 34.920277, 53.137768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657261, 34.706825, 53.091747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934177, 34.434097, 53.186279>,  <36.100327, 34.270462, 53.243000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934177, 34.434097, 53.186279>,  <35.657261, 34.706825, 53.091747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934177, 34.434097, 53.186279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422930, -0.118010, 0.898445,
		-0.584689, -0.721938, -0.370060,
		0.692292, -0.681821, 0.236330,
		36.141865, 34.229549, 53.257179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329823, 34.141834, 53.321259>,  <35.657261, 34.706825, 53.091747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329823, 34.141834, 53.321259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680157, 34.196686, 53.506344>,  <35.890358, 34.229595, 53.617393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680157, 34.196686, 53.506344>,  <35.329823, 34.141834, 53.321259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680157, 34.196686, 53.506344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468329, 0.010024, 0.883497,
		0.116515, -0.990503, 0.073001,
		0.875838, 0.137129, 0.462713,
		35.942909, 34.237823, 53.645157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485519, 33.664455, 53.899906>,  <35.329823, 34.141834, 53.321259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485519, 33.664455, 53.899906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690399, 34.001484, 53.966507>,  <35.813328, 34.203701, 54.006470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690399, 34.001484, 53.966507>,  <35.485519, 33.664455, 53.899906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690399, 34.001484, 53.966507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428730, 0.082848, 0.899626,
		0.744203, -0.532177, 0.403670,
		0.512203, 0.842570, 0.166505,
		35.844059, 34.254253, 54.016457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812328, 33.477463, 54.441513>,  <35.485519, 33.664455, 53.899906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812328, 33.477463, 54.441513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746994, 33.872078, 54.438194>,  <35.707794, 34.108845, 54.436203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746994, 33.872078, 54.438194>,  <35.812328, 33.477463, 54.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746994, 33.872078, 54.438194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449477, -0.066928, 0.890781,
		0.878231, 0.149230, 0.454357,
		-0.163341, 0.986535, -0.008298,
		35.697990, 34.168037, 54.435703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858562, 32.921097, 53.842014>,  <35.812328, 33.477463, 54.441513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858562, 32.921097, 53.842014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061214, 32.593094, 53.948528>,  <36.182804, 32.396290, 54.012436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061214, 32.593094, 53.948528>,  <35.858562, 32.921097, 53.842014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061214, 32.593094, 53.948528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458631, -0.005208, -0.888612,
		0.730057, 0.572326, 0.373443,
		0.506631, -0.820009, 0.266289,
		36.213203, 32.347092, 54.028416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500744, 32.925636, 53.745922>,  <35.858562, 32.921097, 53.842014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500744, 32.925636, 53.745922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462971, 32.527988, 53.724751>,  <36.440308, 32.289398, 53.712048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462971, 32.527988, 53.724751>,  <36.500744, 32.925636, 53.745922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462971, 32.527988, 53.724751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513619, -0.003112, -0.858013,
		0.852806, -0.108209, 0.510894,
		-0.094435, -0.994123, -0.052925,
		36.434639, 32.229752, 53.708874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763729, 32.691734, 54.407101>,  <36.500744, 32.925636, 53.745922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763729, 32.691734, 54.407101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891232, 32.327026, 54.510696>,  <36.967735, 32.108204, 54.572853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891232, 32.327026, 54.510696>,  <36.763729, 32.691734, 54.407101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891232, 32.327026, 54.510696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065468, -0.293768, -0.953632,
		0.945572, 0.287024, -0.153333,
		0.318759, -0.911766, 0.258988,
		36.986858, 32.053497, 54.588394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474388, 32.442158, 54.231182>,  <36.763729, 32.691734, 54.407101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474388, 32.442158, 54.231182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246162, 32.113686, 54.235744>,  <37.109226, 31.916603, 54.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246162, 32.113686, 54.235744>,  <37.474388, 32.442158, 54.231182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246162, 32.113686, 54.235744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120846, -0.097680, -0.987854,
		0.812317, -0.562252, 0.154968,
		-0.570560, -0.821177, 0.011401,
		37.074993, 31.867332, 54.239166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499416, 32.270214, 53.606396>,  <37.474388, 32.442158, 54.231182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499416, 32.270214, 53.606396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301281, 31.942490, 53.721886>,  <37.182400, 31.745853, 53.791180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301281, 31.942490, 53.721886>,  <37.499416, 32.270214, 53.606396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301281, 31.942490, 53.721886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046404, -0.306931, -0.950600,
		0.867457, -0.484270, 0.114017,
		-0.495343, -0.819314, 0.288721,
		37.152679, 31.696695, 53.808502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852455, 31.623983, 53.278355>,  <37.499416, 32.270214, 53.606396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852455, 31.623983, 53.278355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458851, 31.600315, 53.345562>,  <37.222691, 31.586115, 53.385887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458851, 31.600315, 53.345562>,  <37.852455, 31.623983, 53.278355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458851, 31.600315, 53.345562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160454, -0.115226, -0.980295,
		0.077367, -0.991575, 0.103889,
		-0.984007, -0.059173, 0.168017,
		37.163651, 31.582563, 53.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616039, 31.048935, 53.004658>,  <37.852455, 31.623983, 53.278355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616039, 31.048935, 53.004658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320984, 31.318846, 52.995090>,  <37.143951, 31.480793, 52.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320984, 31.318846, 52.995090>,  <37.616039, 31.048935, 53.004658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320984, 31.318846, 52.995090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157469, -0.206372, -0.965719,
		-0.656582, -0.708581, 0.258483,
		-0.737634, 0.674777, -0.023921,
		37.099693, 31.521278, 52.987915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971424, 30.866941, 52.596443>,  <37.616039, 31.048935, 53.004658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971424, 30.866941, 52.596443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961555, 31.266560, 52.582005>,  <36.955635, 31.506330, 52.573341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961555, 31.266560, 52.582005>,  <36.971424, 30.866941, 52.596443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961555, 31.266560, 52.582005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156280, -0.039518, -0.986922,
		-0.987405, -0.018704, 0.157105,
		-0.024668, 0.999044, -0.036097,
		36.954155, 31.566273, 52.571175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305729, 31.027029, 52.219376>,  <36.971424, 30.866941, 52.596443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305729, 31.027029, 52.219376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574398, 31.323368, 52.220005>,  <36.735600, 31.501171, 52.220383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574398, 31.323368, 52.220005>,  <36.305729, 31.027029, 52.219376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574398, 31.323368, 52.220005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043859, 0.041887, -0.998159,
		-0.739551, 0.670364, 0.060627,
		0.671670, 0.740849, 0.001576,
		36.775898, 31.545624, 52.220478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964764, 31.517031, 51.932888>,  <36.305729, 31.027029, 52.219376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964764, 31.517031, 51.932888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353065, 31.603985, 51.892139>,  <36.586048, 31.656157, 51.867691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353065, 31.603985, 51.892139>,  <35.964764, 31.517031, 51.932888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353065, 31.603985, 51.892139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081332, -0.101431, -0.991512,
		-0.225872, 0.970801, -0.080785,
		0.970756, 0.217385, -0.101868,
		36.644291, 31.669201, 51.861580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902115, 31.928543, 51.324505>,  <35.964764, 31.517031, 51.932888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902115, 31.928543, 51.324505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294319, 31.857424, 51.357929>,  <36.529640, 31.814753, 51.377983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294319, 31.857424, 51.357929>,  <35.902115, 31.928543, 51.324505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294319, 31.857424, 51.357929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100024, 0.085718, -0.991286,
		0.169088, 0.980326, 0.101832,
		0.980512, -0.177800, 0.083562,
		36.588474, 31.804083, 51.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260727, 32.507233, 50.940990>,  <35.902115, 31.928543, 51.324505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260727, 32.507233, 50.940990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485039, 32.176102, 50.946953>,  <36.619625, 31.977423, 50.950531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485039, 32.176102, 50.946953>,  <36.260727, 32.507233, 50.940990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485039, 32.176102, 50.946953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088509, -0.077833, -0.993030,
		0.823220, 0.555552, -0.116917,
		0.560780, -0.827831, 0.014903,
		36.653275, 31.927753, 50.951424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748203, 32.574306, 50.342445>,  <36.260727, 32.507233, 50.940990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748203, 32.574306, 50.342445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741863, 32.190514, 50.454971>,  <36.738060, 31.960238, 50.522488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741863, 32.190514, 50.454971>,  <36.748203, 32.574306, 50.342445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741863, 32.190514, 50.454971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075498, -0.279400, -0.957202,
		0.997020, -0.036413, -0.068010,
		-0.015852, -0.959484, 0.281316,
		36.737106, 31.902668, 50.539368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086262, 32.287151, 49.807793>,  <36.748203, 32.574306, 50.342445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086262, 32.287151, 49.807793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894684, 31.989901, 49.994717>,  <36.779736, 31.811550, 50.106873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894684, 31.989901, 49.994717>,  <37.086262, 32.287151, 49.807793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894684, 31.989901, 49.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221389, -0.412878, -0.883470,
		0.849470, -0.526589, 0.033226,
		-0.478944, -0.743125, 0.467309,
		36.750999, 31.766964, 50.134911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344040, 31.628517, 49.547131>,  <37.086262, 32.287151, 49.807793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344040, 31.628517, 49.547131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966911, 31.573776, 49.668686>,  <36.740635, 31.540932, 49.741619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966911, 31.573776, 49.668686>,  <37.344040, 31.628517, 49.547131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966911, 31.573776, 49.668686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203572, -0.485486, -0.850213,
		0.263890, -0.863467, 0.429870,
		-0.942825, -0.136853, 0.303892,
		36.684063, 31.532721, 49.759853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203590, 30.965858, 49.427471>,  <37.344040, 31.628517, 49.547131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203590, 30.965858, 49.427471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843163, 31.131088, 49.480301>,  <36.626907, 31.230227, 49.511997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843163, 31.131088, 49.480301>,  <37.203590, 30.965858, 49.427471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843163, 31.131088, 49.480301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298282, -0.369241, -0.880164,
		-0.314805, -0.832485, 0.455924,
		-0.901070, 0.413074, 0.132076,
		36.572842, 31.255011, 49.519924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852734, 30.398003, 49.235687>,  <37.203590, 30.965858, 49.427471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852734, 30.398003, 49.235687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601658, 30.709064, 49.221527>,  <36.451012, 30.895702, 49.213032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601658, 30.709064, 49.221527>,  <36.852734, 30.398003, 49.235687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601658, 30.709064, 49.221527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424892, -0.380350, -0.821462,
		-0.652280, -0.500584, 0.569163,
		-0.627692, 0.777657, -0.035400,
		36.413349, 30.942362, 49.210907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154137, 30.177145, 49.087498>,  <36.852734, 30.398003, 49.235687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154137, 30.177145, 49.087498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132030, 30.561029, 48.977295>,  <36.118767, 30.791359, 48.911175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132030, 30.561029, 48.977295>,  <36.154137, 30.177145, 49.087498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132030, 30.561029, 48.977295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480892, -0.267402, -0.835009,
		-0.875036, 0.086338, 0.476295,
		-0.055269, 0.959709, -0.275506,
		36.115448, 30.848942, 48.894642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372036, 30.244020, 49.022427>,  <36.154137, 30.177145, 49.087498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372036, 30.244020, 49.022427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571739, 30.505512, 48.794960>,  <35.691559, 30.662407, 48.658482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571739, 30.505512, 48.794960>,  <35.372036, 30.244020, 49.022427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571739, 30.505512, 48.794960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491968, -0.326383, -0.807119,
		-0.713241, 0.682724, 0.158667,
		0.499254, 0.653730, -0.568668,
		35.721516, 30.701632, 48.624359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895397, 30.402752, 48.472485>,  <35.372036, 30.244020, 49.022427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895397, 30.402752, 48.472485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243618, 30.543892, 48.335297>,  <35.452553, 30.628576, 48.252983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243618, 30.543892, 48.335297>,  <34.895397, 30.402752, 48.472485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243618, 30.543892, 48.335297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261076, -0.259604, -0.929755,
		-0.417101, 0.898946, -0.133879,
		0.870555, 0.352849, -0.342974,
		35.504784, 30.649746, 48.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787891, 30.813629, 47.854088>,  <34.895397, 30.402752, 48.472485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787891, 30.813629, 47.854088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160255, 30.668106, 47.841099>,  <35.383675, 30.580793, 47.833305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160255, 30.668106, 47.841099>,  <34.787891, 30.813629, 47.854088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160255, 30.668106, 47.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071968, -0.095524, -0.992822,
		0.358092, 0.926564, -0.115107,
		0.930909, -0.363806, -0.032476,
		35.439529, 30.558964, 47.831356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238216, 31.325836, 47.461502>,  <34.787891, 30.813629, 47.854088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238216, 31.325836, 47.461502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382431, 30.953196, 47.443035>,  <35.468960, 30.729610, 47.431957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382431, 30.953196, 47.443035>,  <35.238216, 31.325836, 47.461502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382431, 30.953196, 47.443035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042655, 0.032975, -0.998546,
		0.931768, 0.361984, -0.027849,
		0.360539, -0.931601, -0.046165,
		35.490593, 30.673716, 47.429184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692356, 31.367449, 46.923214>,  <35.238216, 31.325836, 47.461502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692356, 31.367449, 46.923214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637283, 30.972527, 46.954891>,  <35.604240, 30.735573, 46.973896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637283, 30.972527, 46.954891>,  <35.692356, 31.367449, 46.923214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637283, 30.972527, 46.954891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049421, -0.086700, -0.995008,
		0.989243, -0.133082, 0.060731,
		-0.137683, -0.987305, 0.079191,
		35.595978, 30.676334, 46.978649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066833, 31.100412, 46.363239>,  <35.692356, 31.367449, 46.923214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066833, 31.100412, 46.363239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823948, 30.802036, 46.472687>,  <35.678219, 30.623011, 46.538357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823948, 30.802036, 46.472687>,  <36.066833, 31.100412, 46.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823948, 30.802036, 46.472687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044994, -0.311541, -0.949167,
		0.793265, -0.588657, 0.155609,
		-0.607212, -0.745939, 0.273621,
		35.641785, 30.578255, 46.554771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295303, 30.451792, 45.967670>,  <36.066833, 31.100412, 46.363239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295303, 30.451792, 45.967670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915821, 30.385557, 46.075405>,  <35.688133, 30.345818, 46.140045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915821, 30.385557, 46.075405>,  <36.295303, 30.451792, 45.967670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915821, 30.385557, 46.075405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214487, -0.288785, -0.933059,
		0.232280, -0.942966, 0.238456,
		-0.948705, -0.165585, 0.269333,
		35.631210, 30.335882, 46.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071316, 29.760757, 45.670723>,  <36.295303, 30.451792, 45.967670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071316, 29.760757, 45.670723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727036, 29.953831, 45.735477>,  <35.520466, 30.069675, 45.774330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727036, 29.953831, 45.735477>,  <36.071316, 29.760757, 45.670723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727036, 29.953831, 45.735477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217496, -0.061113, -0.974146,
		-0.460312, -0.873660, 0.157582,
		-0.860703, 0.482684, 0.161886,
		35.468826, 30.098637, 45.784042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535179, 29.314283, 45.330559>,  <36.071316, 29.760757, 45.670723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535179, 29.314283, 45.330559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393990, 29.685869, 45.375172>,  <35.309277, 29.908821, 45.401939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393990, 29.685869, 45.375172>,  <35.535179, 29.314283, 45.330559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393990, 29.685869, 45.375172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444475, -0.061584, -0.893672,
		-0.823320, -0.365013, 0.434638,
		-0.352969, 0.928963, 0.111536,
		35.288097, 29.964558, 45.408634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864590, 29.272520, 45.034607>,  <35.535179, 29.314283, 45.330559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864590, 29.272520, 45.034607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927792, 29.666893, 45.056423>,  <34.965714, 29.903517, 45.069515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927792, 29.666893, 45.056423>,  <34.864590, 29.272520, 45.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927792, 29.666893, 45.056423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446353, 0.120585, -0.886695,
		-0.880798, 0.115754, 0.459126,
		0.158002, 0.985931, 0.054544,
		34.975193, 29.962673, 45.072784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246639, 29.616804, 44.744766>,  <34.864590, 29.272520, 45.034607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246639, 29.616804, 44.744766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517479, 29.906776, 44.694145>,  <34.679981, 30.080761, 44.663773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517479, 29.906776, 44.694145>,  <34.246639, 29.616804, 44.744766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517479, 29.906776, 44.694145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454803, 0.277038, -0.846406,
		-0.578528, 0.630653, 0.517282,
		0.677096, 0.724932, -0.126549,
		34.720608, 30.124256, 44.656181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868149, 30.352970, 44.533009>,  <34.246639, 29.616804, 44.744766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868149, 30.352970, 44.533009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249870, 30.391787, 44.419952>,  <34.478905, 30.415077, 44.352119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249870, 30.391787, 44.419952>,  <33.868149, 30.352970, 44.533009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249870, 30.391787, 44.419952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297833, 0.386164, -0.873025,
		0.024425, 0.917311, 0.397421,
		0.954305, 0.097041, -0.282638,
		34.536163, 30.420898, 44.335159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961979, 30.937038, 44.413536>,  <33.868149, 30.352970, 44.533009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961979, 30.937038, 44.413536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248623, 30.754707, 44.202370>,  <34.420609, 30.645308, 44.075668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248623, 30.754707, 44.202370>,  <33.961979, 30.937038, 44.413536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248623, 30.754707, 44.202370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233258, 0.556688, -0.797301,
		0.657318, 0.694491, 0.292600,
		0.716605, -0.455830, -0.527917,
		34.463604, 30.617958, 44.043995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048512, 31.471695, 43.883095>,  <33.961979, 30.937038, 44.413536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048512, 31.471695, 43.883095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255474, 31.160648, 43.740208>,  <34.379650, 30.974020, 43.654476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255474, 31.160648, 43.740208>,  <34.048512, 31.471695, 43.883095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255474, 31.160648, 43.740208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097382, 0.361219, -0.927382,
		0.850183, 0.514617, 0.111170,
		0.517403, -0.777618, -0.357217,
		34.410694, 30.927362, 43.633041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560986, 31.732359, 43.474449>,  <34.048512, 31.471695, 43.883095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560986, 31.732359, 43.474449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496677, 31.366758, 43.325451>,  <34.458092, 31.147398, 43.236053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496677, 31.366758, 43.325451>,  <34.560986, 31.732359, 43.474449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496677, 31.366758, 43.325451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104387, 0.391036, -0.914437,
		0.981456, -0.108131, -0.158277,
		-0.160771, -0.914001, -0.372497,
		34.448444, 31.092558, 43.213703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896214, 31.819111, 42.792080>,  <34.560986, 31.732359, 43.474449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896214, 31.819111, 42.792080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626080, 31.524471, 42.777397>,  <34.464001, 31.347687, 42.768589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626080, 31.524471, 42.777397>,  <34.896214, 31.819111, 42.792080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626080, 31.524471, 42.777397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197703, 0.228757, -0.953197,
		0.710522, -0.636466, -0.300115,
		-0.675331, -0.736600, -0.036706,
		34.423481, 31.303492, 42.766384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027737, 31.450386, 42.127090>,  <34.896214, 31.819111, 42.792080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027737, 31.450386, 42.127090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659145, 31.356731, 42.251057>,  <34.437988, 31.300539, 42.325436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659145, 31.356731, 42.251057>,  <35.027737, 31.450386, 42.127090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659145, 31.356731, 42.251057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343293, 0.117656, -0.931830,
		0.181711, -0.965058, -0.188795,
		-0.921483, -0.234136, 0.309919,
		34.382702, 31.286489, 42.344032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742561, 31.295282, 41.498322>,  <35.027737, 31.450386, 42.127090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742561, 31.295282, 41.498322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412563, 31.299385, 41.724342>,  <34.214565, 31.301847, 41.859955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412563, 31.299385, 41.724342>,  <34.742561, 31.295282, 41.498322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412563, 31.299385, 41.724342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538800, 0.287445, -0.791877,
		-0.170544, -0.957742, -0.231613,
		-0.824991, 0.010257, 0.565054,
		34.165066, 31.302462, 41.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229855, 30.893415, 41.083313>,  <34.742561, 31.295282, 41.498322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229855, 30.893415, 41.083313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073296, 31.151575, 41.345692>,  <33.979359, 31.306471, 41.503120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073296, 31.151575, 41.345692>,  <34.229855, 30.893415, 41.083313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073296, 31.151575, 41.345692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455365, 0.483588, -0.747520,
		-0.799656, -0.591274, 0.104616,
		-0.391398, 0.645397, 0.655950,
		33.955875, 31.345194, 41.542477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440918, 30.929878, 40.839500>,  <34.229855, 30.893415, 41.083313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440918, 30.929878, 40.839500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514183, 31.241537, 41.079292>,  <33.558144, 31.428534, 41.223167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514183, 31.241537, 41.079292>,  <33.440918, 30.929878, 40.839500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514183, 31.241537, 41.079292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602479, 0.570830, -0.557829,
		-0.776833, -0.258998, 0.573978,
		0.183167, 0.779149, 0.599480,
		33.569134, 31.475283, 41.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831161, 31.273741, 41.053394>,  <33.440918, 30.929878, 40.839500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831161, 31.273741, 41.053394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111832, 31.555788, 41.094296>,  <33.280235, 31.725016, 41.118835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111832, 31.555788, 41.094296>,  <32.831161, 31.273741, 41.053394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111832, 31.555788, 41.094296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476499, 0.571104, -0.668423,
		-0.529711, 0.420298, 0.736719,
		0.701680, 0.705117, 0.102249,
		33.322334, 31.767323, 41.124969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379906, 31.868881, 41.047874>,  <32.831161, 31.273741, 41.053394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379906, 31.868881, 41.047874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740353, 32.025166, 40.972687>,  <32.956619, 32.118938, 40.927574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740353, 32.025166, 40.972687>,  <32.379906, 31.868881, 41.047874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740353, 32.025166, 40.972687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406497, 0.610506, -0.679737,
		-0.150826, 0.688931, 0.708961,
		0.901117, 0.390713, -0.187969,
		33.010689, 32.142380, 40.916298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315697, 32.679176, 41.040459>,  <32.379906, 31.868881, 41.047874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315697, 32.679176, 41.040459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631363, 32.575531, 40.817719>,  <32.820763, 32.513344, 40.684074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631363, 32.575531, 40.817719>,  <32.315697, 32.679176, 41.040459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631363, 32.575531, 40.817719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289381, 0.642846, -0.709230,
		0.541742, 0.720839, 0.432327,
		0.789161, -0.259112, -0.556854,
		32.868111, 32.497799, 40.650661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440956, 33.282860, 40.599773>,  <32.315697, 32.679176, 41.040459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440956, 33.282860, 40.599773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673027, 33.036270, 40.386848>,  <32.812271, 32.888317, 40.259094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673027, 33.036270, 40.386848>,  <32.440956, 33.282860, 40.599773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673027, 33.036270, 40.386848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180708, 0.539843, -0.822140,
		0.794192, 0.573180, 0.201803,
		0.580176, -0.616469, -0.532317,
		32.847080, 32.851330, 40.227154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998161, 33.801521, 40.309734>,  <32.440956, 33.282860, 40.599773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998161, 33.801521, 40.309734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997280, 33.463753, 40.095463>,  <32.996750, 33.261093, 39.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997280, 33.463753, 40.095463>,  <32.998161, 33.801521, 40.309734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997280, 33.463753, 40.095463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132382, 0.530720, -0.837145,
		0.991196, -0.072759, 0.110616,
		-0.002204, -0.844418, -0.535680,
		32.996620, 33.210426, 39.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628143, 33.795036, 39.975258>,  <32.998161, 33.801521, 40.309734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628143, 33.795036, 39.975258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388660, 33.553909, 39.764294>,  <33.244972, 33.409233, 39.637714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388660, 33.553909, 39.764294>,  <33.628143, 33.795036, 39.975258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388660, 33.553909, 39.764294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179427, 0.540791, -0.821798,
		0.780613, -0.586647, -0.215613,
		-0.598707, -0.602819, -0.527408,
		33.209049, 33.373062, 39.606071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980900, 33.775436, 39.383286>,  <33.628143, 33.795036, 39.975258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980900, 33.775436, 39.383286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624401, 33.632553, 39.271519>,  <33.410500, 33.546825, 39.204456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624401, 33.632553, 39.271519>,  <33.980900, 33.775436, 39.383286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624401, 33.632553, 39.271519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064344, 0.510299, -0.857587,
		0.448922, -0.782304, -0.431821,
		-0.891251, -0.357205, -0.279421,
		33.357025, 33.525391, 39.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074821, 33.461784, 38.610321>,  <33.980900, 33.775436, 39.383286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074821, 33.461784, 38.610321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691273, 33.549282, 38.682663>,  <33.461143, 33.601780, 38.726067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691273, 33.549282, 38.682663>,  <34.074821, 33.461784, 38.610321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691273, 33.549282, 38.682663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114463, 0.285061, -0.951650,
		-0.259725, -0.933215, -0.248299,
		-0.958875, 0.218746, 0.180856,
		33.403610, 33.614906, 38.736919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332508, 33.037930, 39.156242>,  <34.074821, 33.461784, 38.610321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332508, 33.037930, 39.156242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661182, 33.204556, 39.000648>,  <34.858387, 33.304531, 38.907291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661182, 33.204556, 39.000648>,  <34.332508, 33.037930, 39.156242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661182, 33.204556, 39.000648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569166, -0.635341, 0.521912,
		-0.029729, -0.650244, -0.759143,
		0.821685, 0.416562, -0.388985,
		34.907688, 33.329525, 38.883953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772274, 32.542313, 38.932526>,  <34.332508, 33.037930, 39.156242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772274, 32.542313, 38.932526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012035, 32.847466, 39.029457>,  <35.155891, 33.030556, 39.087616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012035, 32.847466, 39.029457>,  <34.772274, 32.542313, 38.932526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012035, 32.847466, 39.029457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538227, -0.608220, 0.583421,
		0.592471, -0.219277, -0.775175,
		0.599408, 0.762880, 0.242332,
		35.191856, 33.076328, 39.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354374, 32.209385, 38.971565>,  <34.772274, 32.542313, 38.932526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354374, 32.209385, 38.971565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445709, 32.549179, 39.161819>,  <35.500511, 32.753056, 39.275970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445709, 32.549179, 39.161819>,  <35.354374, 32.209385, 38.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445709, 32.549179, 39.161819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659812, -0.494262, 0.565997,
		0.715897, 0.184589, -0.673364,
		0.228341, 0.849489, 0.475635,
		35.514214, 32.804028, 39.304508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096626, 32.326164, 39.031975>,  <35.354374, 32.209385, 38.971565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096626, 32.326164, 39.031975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988403, 32.567444, 39.332092>,  <35.923470, 32.712212, 39.512165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988403, 32.567444, 39.332092>,  <36.096626, 32.326164, 39.031975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988403, 32.567444, 39.332092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634326, -0.474562, 0.610263,
		0.724174, 0.641046, -0.254228,
		-0.270560, 0.603200, 0.750298,
		35.907234, 32.748405, 39.557182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662025, 32.301876, 39.473297>,  <36.096626, 32.326164, 39.031975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662025, 32.301876, 39.473297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368309, 32.442390, 39.705647>,  <36.192078, 32.526699, 39.845055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368309, 32.442390, 39.705647>,  <36.662025, 32.301876, 39.473297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368309, 32.442390, 39.705647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433221, -0.416284, 0.799392,
		0.522624, 0.838633, 0.153489,
		-0.734291, 0.351287, 0.580873,
		36.148022, 32.547775, 39.879910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009842, 32.422451, 40.122204>,  <36.662025, 32.301876, 39.473297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009842, 32.422451, 40.122204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627552, 32.399761, 40.237701>,  <36.398178, 32.386147, 40.306999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627552, 32.399761, 40.237701>,  <37.009842, 32.422451, 40.122204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627552, 32.399761, 40.237701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281468, -0.462410, 0.840805,
		0.085819, 0.884850, 0.457904,
		-0.955725, -0.056728, 0.288741,
		36.340836, 32.382744, 40.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049778, 32.690315, 40.814018>,  <37.009842, 32.422451, 40.122204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049778, 32.690315, 40.814018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734806, 32.447186, 40.773037>,  <36.545822, 32.301308, 40.748447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734806, 32.447186, 40.773037>,  <37.049778, 32.690315, 40.814018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734806, 32.447186, 40.773037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336526, -0.563182, 0.754703,
		-0.516428, 0.559799, 0.648017,
		-0.787434, -0.607824, -0.102456,
		36.498577, 32.264839, 40.742302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721661, 32.698784, 41.447922>,  <37.049778, 32.690315, 40.814018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721661, 32.698784, 41.447922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569489, 32.372787, 41.273075>,  <36.478184, 32.177189, 41.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569489, 32.372787, 41.273075>,  <36.721661, 32.698784, 41.447922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569489, 32.372787, 41.273075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271260, -0.550199, 0.789746,
		-0.884133, 0.181871, 0.430386,
		-0.380430, -0.814987, -0.437115,
		36.455360, 32.128292, 41.141941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329620, 32.363491, 41.916855>,  <36.721661, 32.698784, 41.447922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329620, 32.363491, 41.916855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414227, 32.069168, 41.659531>,  <36.464989, 31.892574, 41.505138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414227, 32.069168, 41.659531>,  <36.329620, 32.363491, 41.916855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414227, 32.069168, 41.659531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375737, -0.546401, 0.748511,
		-0.902266, -0.400035, 0.160899,
		0.211515, -0.735811, -0.643306,
		36.477680, 31.848425, 41.466537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188526, 31.807384, 42.278423>,  <36.329620, 32.363491, 41.916855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188526, 31.807384, 42.278423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 31.633944, 41.980576>,  <36.513313, 31.529879, 41.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391518, 31.633944, 41.980576>,  <36.188526, 31.807384, 42.278423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391518, 31.633944, 41.980576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418404, -0.631441, 0.652856,
		-0.753262, -0.642860, -0.139021,
		0.507478, -0.433605, -0.744616,
		36.543762, 31.503862, 41.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055977, 31.059834, 42.277405>,  <36.188526, 31.807384, 42.278423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055977, 31.059834, 42.277405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419971, 31.128428, 42.126404>,  <36.638371, 31.169584, 42.035801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419971, 31.128428, 42.126404>,  <36.055977, 31.059834, 42.277405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419971, 31.128428, 42.126404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411910, -0.478011, 0.775781,
		-0.047417, -0.861451, -0.505621,
		0.909990, 0.171485, -0.377506,
		36.692970, 31.179873, 42.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402920, 30.444122, 42.114021>,  <36.055977, 31.059834, 42.277405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402920, 30.444122, 42.114021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665920, 30.733732, 42.197430>,  <36.823719, 30.907499, 42.247475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665920, 30.733732, 42.197430>,  <36.402920, 30.444122, 42.114021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665920, 30.733732, 42.197430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379924, -0.557584, 0.738077,
		0.650655, -0.406062, -0.641686,
		0.657499, 0.724026, 0.208522,
		36.863171, 30.950939, 42.259987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743587, 29.978683, 42.557571>,  <36.402920, 30.444122, 42.114021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743587, 29.978683, 42.557571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979427, 30.301722, 42.562706>,  <37.120930, 30.495544, 42.565784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979427, 30.301722, 42.562706>,  <36.743587, 29.978683, 42.557571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979427, 30.301722, 42.562706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521328, -0.392642, 0.757660,
		0.616923, -0.440023, -0.652523,
		0.589596, 0.807596, 0.012833,
		37.156307, 30.544001, 42.566555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393433, 29.683718, 42.577930>,  <36.743587, 29.978683, 42.557571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393433, 29.683718, 42.577930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398613, 30.067814, 42.689480>,  <37.401722, 30.298271, 42.756409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398613, 30.067814, 42.689480>,  <37.393433, 29.683718, 42.577930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398613, 30.067814, 42.689480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395804, -0.261039, 0.880453,
		0.918244, 0.098980, -0.383447,
		0.012948, 0.960240, 0.278874,
		37.402496, 30.355886, 42.773144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014946, 29.681856, 42.847515>,  <37.393433, 29.683718, 42.577930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014946, 29.681856, 42.847515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827801, 30.004637, 42.991699>,  <37.715515, 30.198305, 43.078209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827801, 30.004637, 42.991699>,  <38.014946, 29.681856, 42.847515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827801, 30.004637, 42.991699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288462, -0.246090, 0.925327,
		0.835400, 0.536906, -0.117639,
		-0.467864, 0.806952, 0.360460,
		37.687443, 30.246723, 43.099838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510811, 30.193699, 43.158974>,  <38.014946, 29.681856, 42.847515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510811, 30.193699, 43.158974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150051, 30.233921, 43.327007>,  <37.933594, 30.258055, 43.427826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150051, 30.233921, 43.327007>,  <38.510811, 30.193699, 43.158974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150051, 30.233921, 43.327007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387873, -0.239449, 0.890067,
		0.190088, 0.965688, 0.176957,
		-0.901899, 0.100554, 0.420081,
		37.879482, 30.264088, 43.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762012, 30.370207, 43.814056>,  <38.510811, 30.193699, 43.158974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762012, 30.370207, 43.814056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365910, 30.335915, 43.857944>,  <38.128246, 30.315340, 43.884277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365910, 30.335915, 43.857944>,  <38.762012, 30.370207, 43.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365910, 30.335915, 43.857944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121626, -0.148894, 0.981345,
		-0.067794, 0.985130, 0.157870,
		-0.990258, -0.085731, 0.109724,
		38.068832, 30.310196, 43.890862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618954, 30.786337, 44.318542>,  <38.762012, 30.370207, 43.814056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618954, 30.786337, 44.318542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341652, 30.498373, 44.305134>,  <38.175270, 30.325594, 44.297089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341652, 30.498373, 44.305134>,  <38.618954, 30.786337, 44.318542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341652, 30.498373, 44.305134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068296, -0.111924, 0.991367,
		-0.717448, 0.684982, 0.126759,
		-0.693256, -0.719912, -0.033518,
		38.133675, 30.282400, 44.295078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099121, 30.940126, 44.890179>,  <38.618954, 30.786337, 44.318542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099121, 30.940126, 44.890179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018520, 30.556570, 44.810249>,  <37.970161, 30.326437, 44.762291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018520, 30.556570, 44.810249>,  <38.099121, 30.940126, 44.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018520, 30.556570, 44.810249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123026, -0.177611, 0.976380,
		-0.971731, 0.221327, -0.082180,
		-0.201503, -0.958889, -0.199819,
		37.958069, 30.268904, 44.750305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480450, 30.808693, 45.313389>,  <38.099121, 30.940126, 44.890179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480450, 30.808693, 45.313389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660435, 30.462006, 45.227287>,  <37.768425, 30.253994, 45.175625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660435, 30.462006, 45.227287>,  <37.480450, 30.808693, 45.313389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660435, 30.462006, 45.227287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160574, -0.315625, 0.935199,
		-0.878492, -0.386243, -0.281192,
		0.449965, -0.866717, -0.215253,
		37.795425, 30.201990, 45.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000359, 30.249184, 45.420559>,  <37.480450, 30.808693, 45.313389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000359, 30.249184, 45.420559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357861, 30.072287, 45.450542>,  <37.572361, 29.966148, 45.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357861, 30.072287, 45.450542>,  <37.000359, 30.249184, 45.420559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357861, 30.072287, 45.450542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237235, -0.324227, 0.915749,
		-0.380681, -0.836240, -0.394696,
		0.893757, -0.442244, 0.074958,
		37.625988, 29.939613, 45.473030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828724, 29.821018, 45.910736>,  <37.000359, 30.249184, 45.420559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828724, 29.821018, 45.910736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227554, 29.832865, 45.938892>,  <37.466854, 29.839972, 45.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227554, 29.832865, 45.938892>,  <36.828724, 29.821018, 45.910736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227554, 29.832865, 45.938892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059575, -0.275063, 0.959579,
		0.047781, -0.960970, -0.272495,
		0.997080, 0.029615, 0.070392,
		37.526680, 29.841749, 45.960011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068398, 29.223963, 46.319752>,  <36.828724, 29.821018, 45.910736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068398, 29.223963, 46.319752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360153, 29.495085, 46.356785>,  <37.535206, 29.657759, 46.379005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360153, 29.495085, 46.356785>,  <37.068398, 29.223963, 46.319752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360153, 29.495085, 46.356785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034690, -0.171803, 0.984520,
		0.683218, -0.714888, -0.148825,
		0.729390, 0.677805, 0.092579,
		37.578972, 29.698425, 46.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510258, 28.990105, 46.904705>,  <37.068398, 29.223963, 46.319752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510258, 28.990105, 46.904705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608311, 29.373827, 46.848637>,  <37.667141, 29.604059, 46.814995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608311, 29.373827, 46.848637>,  <37.510258, 28.990105, 46.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608311, 29.373827, 46.848637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090386, 0.121341, 0.988487,
		0.965268, -0.254977, -0.056963,
		0.245129, 0.959304, -0.140173,
		37.681850, 29.661617, 46.806583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950275, 29.074038, 47.433769>,  <37.510258, 28.990105, 46.904705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950275, 29.074038, 47.433769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863609, 29.449057, 47.324917>,  <37.811607, 29.674068, 47.259605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863609, 29.449057, 47.324917>,  <37.950275, 29.074038, 47.433769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863609, 29.449057, 47.324917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157091, 0.308602, 0.938129,
		0.963523, 0.160515, -0.214145,
		-0.216670, 0.937550, -0.272130,
		37.798607, 29.730322, 47.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525604, 29.407242, 47.777500>,  <37.950275, 29.074038, 47.433769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525604, 29.407242, 47.777500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265530, 29.691786, 47.670753>,  <38.109486, 29.862513, 47.606705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265530, 29.691786, 47.670753>,  <38.525604, 29.407242, 47.777500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265530, 29.691786, 47.670753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251658, 0.533060, 0.807784,
		0.716882, 0.458054, -0.525610,
		-0.650191, 0.711360, -0.266868,
		38.070473, 29.905193, 47.590694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885174, 29.970451, 47.639568>,  <38.525604, 29.407242, 47.777500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885174, 29.970451, 47.639568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519608, 30.075584, 47.763294>,  <38.300266, 30.138664, 47.837528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519608, 30.075584, 47.763294>,  <38.885174, 29.970451, 47.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519608, 30.075584, 47.763294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404394, 0.524051, 0.749557,
		0.034912, 0.810118, -0.585227,
		-0.913918, 0.262831, 0.309311,
		38.245434, 30.154434, 47.856087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841206, 30.675180, 47.726295>,  <38.885174, 29.970451, 47.639568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841206, 30.675180, 47.726295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554123, 30.529434, 47.963657>,  <38.381874, 30.441986, 48.106075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554123, 30.529434, 47.963657>,  <38.841206, 30.675180, 47.726295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554123, 30.529434, 47.963657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349030, 0.549167, 0.759338,
		-0.602556, 0.752100, -0.266967,
		-0.717708, -0.364364, 0.593409,
		38.338810, 30.420124, 48.141682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614967, 31.300598, 48.075172>,  <38.841206, 30.675180, 47.726295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614967, 31.300598, 48.075172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477654, 30.988548, 48.284386>,  <38.395264, 30.801319, 48.409912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477654, 30.988548, 48.284386>,  <38.614967, 31.300598, 48.075172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477654, 30.988548, 48.284386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374568, 0.396961, 0.837927,
		-0.861310, 0.483557, 0.155939,
		-0.343283, -0.780125, 0.523032,
		38.374668, 30.754511, 48.441296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281918, 31.555008, 48.604107>,  <38.614967, 31.300598, 48.075172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281918, 31.555008, 48.604107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405724, 31.193916, 48.723629>,  <38.480007, 30.977262, 48.795341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405724, 31.193916, 48.723629>,  <38.281918, 31.555008, 48.604107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405724, 31.193916, 48.723629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433900, 0.413692, 0.800369,
		-0.846129, -0.118071, 0.519736,
		0.309511, -0.902728, 0.298806,
		38.498577, 30.923098, 48.813271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135433, 31.559725, 49.279331>,  <38.281918, 31.555008, 48.604107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135433, 31.559725, 49.279331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404194, 31.267212, 49.232388>,  <38.565449, 31.091703, 49.204220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404194, 31.267212, 49.232388>,  <38.135433, 31.559725, 49.279331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404194, 31.267212, 49.232388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420343, 0.246047, 0.873369,
		-0.609804, -0.636148, 0.472709,
		0.671901, -0.731284, -0.117360,
		38.605762, 31.047827, 49.197178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205452, 31.417301, 49.921173>,  <38.135433, 31.559725, 49.279331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205452, 31.417301, 49.921173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523994, 31.255836, 49.741005>,  <38.715118, 31.158958, 49.632904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523994, 31.255836, 49.741005>,  <38.205452, 31.417301, 49.921173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523994, 31.255836, 49.741005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473813, -0.046519, 0.879396,
		-0.375931, -0.913725, 0.154215,
		0.796353, -0.403661, -0.450423,
		38.762901, 31.134739, 49.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274326, 30.731270, 50.149452>,  <38.205452, 31.417301, 49.921173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274326, 30.731270, 50.149452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636353, 30.860538, 50.038872>,  <38.853569, 30.938099, 49.972523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636353, 30.860538, 50.038872>,  <38.274326, 30.731270, 50.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636353, 30.860538, 50.038872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345883, -0.181142, 0.920626,
		0.247442, -0.928843, -0.275724,
		0.905062, 0.323170, -0.276449,
		38.907871, 30.957489, 49.955936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807201, 30.407375, 50.541988>,  <38.274326, 30.731270, 50.149452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807201, 30.407375, 50.541988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995586, 30.722826, 50.383869>,  <39.108616, 30.912096, 50.288998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995586, 30.722826, 50.383869>,  <38.807201, 30.407375, 50.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995586, 30.722826, 50.383869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459608, 0.163127, 0.873012,
		0.752966, -0.592838, -0.285633,
		0.470960, 0.788627, -0.395302,
		39.136875, 30.959414, 50.265278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454613, 30.402990, 50.922707>,  <38.807201, 30.407375, 50.541988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454613, 30.402990, 50.922707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455837, 30.769651, 50.762840>,  <39.456573, 30.989649, 50.666920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455837, 30.769651, 50.762840>,  <39.454613, 30.402990, 50.922707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455837, 30.769651, 50.762840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609040, 0.315283, 0.727782,
		0.793134, -0.245644, -0.557313,
		0.003064, 0.916655, -0.399668,
		39.456757, 31.044647, 50.642941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134445, 30.561615, 51.064445>,  <39.454613, 30.402990, 50.922707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134445, 30.561615, 51.064445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947834, 30.907757, 50.991215>,  <39.835869, 31.115442, 50.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947834, 30.907757, 50.991215>,  <40.134445, 30.561615, 51.064445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947834, 30.907757, 50.991215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609125, 0.464398, 0.642885,
		0.641341, 0.188410, -0.743763,
		-0.466529, 0.865353, -0.183072,
		39.807877, 31.167362, 50.936295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662849, 31.078590, 50.887287>,  <40.134445, 30.561615, 51.064445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662849, 31.078590, 50.887287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345547, 31.269903, 51.038013>,  <40.155167, 31.384691, 51.128448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345547, 31.269903, 51.038013>,  <40.662849, 31.078590, 50.887287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345547, 31.269903, 51.038013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592102, 0.461635, 0.660536,
		0.141973, 0.747087, -0.649388,
		-0.793258, 0.478282, 0.376812,
		40.107571, 31.413387, 51.151058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791679, 31.876205, 50.976887>,  <40.662849, 31.078590, 50.887287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791679, 31.876205, 50.976887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489185, 31.767395, 51.214916>,  <40.307690, 31.702108, 51.357735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489185, 31.767395, 51.214916>,  <40.791679, 31.876205, 50.976887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489185, 31.767395, 51.214916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477784, 0.391787, 0.786273,
		-0.447029, 0.878923, -0.166313,
		-0.756232, -0.272025, 0.595076,
		40.262314, 31.685787, 51.393440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085209, 32.006672, 51.640316>,  <40.791679, 31.876205, 50.976887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085209, 32.006672, 51.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433113, 32.203465, 51.655674>,  <41.641853, 32.321541, 51.664890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433113, 32.203465, 51.655674>,  <41.085209, 32.006672, 51.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433113, 32.203465, 51.655674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174634, 0.379627, -0.908508,
		-0.461547, 0.783476, 0.416101,
		0.869757, 0.491984, 0.038394,
		41.694038, 32.351059, 51.667191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895123, 32.639374, 51.547020>,  <41.085209, 32.006672, 51.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895123, 32.639374, 51.547020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275394, 32.564919, 51.447777>,  <41.503559, 32.520245, 51.388229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275394, 32.564919, 51.447777>,  <40.895123, 32.639374, 51.547020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275394, 32.564919, 51.447777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138245, 0.461787, -0.876151,
		0.277661, 0.867240, 0.413278,
		0.950680, -0.186140, -0.248112,
		41.560600, 32.509075, 51.373344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978611, 33.231667, 51.170837>,  <40.895123, 32.639374, 51.547020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978611, 33.231667, 51.170837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282021, 32.985039, 51.086468>,  <41.464066, 32.837063, 51.035847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282021, 32.985039, 51.086468>,  <40.978611, 33.231667, 51.170837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282021, 32.985039, 51.086468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017019, 0.304828, -0.952255,
		0.651427, 0.725895, 0.220725,
		0.758520, -0.616568, -0.210927,
		41.509575, 32.800068, 51.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422112, 33.599205, 50.765621>,  <40.978611, 33.231667, 51.170837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422112, 33.599205, 50.765621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554306, 33.228462, 50.694382>,  <41.633625, 33.006016, 50.651638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554306, 33.228462, 50.694382>,  <41.422112, 33.599205, 50.765621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554306, 33.228462, 50.694382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091067, 0.156506, -0.983470,
		0.939406, 0.341246, -0.032682,
		0.330490, -0.926853, -0.178099,
		41.653454, 32.950405, 50.640953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938560, 33.699631, 50.238308>,  <41.422112, 33.599205, 50.765621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938560, 33.699631, 50.238308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847569, 33.310974, 50.212498>,  <41.792973, 33.077782, 50.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.847569, 33.310974, 50.212498>,  <41.938560, 33.699631, 50.238308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847569, 33.310974, 50.212498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116779, 0.038569, -0.992409,
		0.966756, -0.233287, 0.104694,
		-0.227478, -0.971643, -0.064530,
		41.779324, 33.019482, 50.193138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252625, 33.482262, 49.642754>,  <41.938560, 33.699631, 50.238308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252625, 33.482262, 49.642754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983452, 33.192654, 49.703354>,  <41.821949, 33.018887, 49.739716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983452, 33.192654, 49.703354>,  <42.252625, 33.482262, 49.642754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983452, 33.192654, 49.703354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202653, -0.016528, -0.979111,
		0.711402, -0.689579, -0.135604,
		-0.672933, -0.724022, 0.151503,
		41.781570, 32.975449, 49.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337955, 33.005878, 49.121727>,  <42.252625, 33.482262, 49.642754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337955, 33.005878, 49.121727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968761, 32.914284, 49.245449>,  <41.747246, 32.859329, 49.319683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968761, 32.914284, 49.245449>,  <42.337955, 33.005878, 49.121727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968761, 32.914284, 49.245449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307477, -0.044576, -0.950511,
		0.231442, -0.972409, -0.029265,
		-0.922980, -0.228986, 0.309310,
		41.691868, 32.845589, 49.338242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107788, 32.471458, 48.587547>,  <42.337955, 33.005878, 49.121727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107788, 32.471458, 48.587547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782589, 32.609901, 48.774845>,  <41.587471, 32.692966, 48.887222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782589, 32.609901, 48.774845>,  <42.107788, 32.471458, 48.587547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782589, 32.609901, 48.774845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460142, 0.110880, -0.880894,
		-0.356800, -0.931621, 0.069112,
		-0.812996, 0.346104, 0.468240,
		41.538689, 32.713734, 48.915318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529930, 32.075352, 48.321648>,  <42.107788, 32.471458, 48.587547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529930, 32.075352, 48.321648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367027, 32.413364, 48.460247>,  <41.269287, 32.616173, 48.543407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367027, 32.413364, 48.460247>,  <41.529930, 32.075352, 48.321648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367027, 32.413364, 48.460247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437585, 0.152465, -0.886157,
		-0.801661, -0.512515, 0.307682,
		-0.407258, 0.845034, 0.346494,
		41.244850, 32.666874, 48.564194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811592, 32.118057, 48.049461>,  <41.529930, 32.075352, 48.321648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811592, 32.118057, 48.049461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883011, 32.498695, 48.149532>,  <40.925861, 32.727077, 48.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883011, 32.498695, 48.149532>,  <40.811592, 32.118057, 48.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883011, 32.498695, 48.149532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203103, 0.284431, -0.936935,
		-0.962740, 0.116478, 0.244057,
		0.178550, 0.951594, 0.250176,
		40.936577, 32.784172, 48.224586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204281, 32.543320, 47.857922>,  <40.811592, 32.118057, 48.049461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204281, 32.543320, 47.857922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534603, 32.768681, 47.867805>,  <40.732796, 32.903896, 47.873737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534603, 32.768681, 47.867805>,  <40.204281, 32.543320, 47.857922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534603, 32.768681, 47.867805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239030, 0.389367, -0.889527,
		-0.510786, 0.728674, 0.456215,
		0.825810, 0.563407, 0.024709,
		40.782345, 32.937702, 47.875217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915398, 33.183167, 47.756214>,  <40.204281, 32.543320, 47.857922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915398, 33.183167, 47.756214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302849, 33.196674, 47.657726>,  <40.535320, 33.204777, 47.598633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302849, 33.196674, 47.657726>,  <39.915398, 33.183167, 47.756214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302849, 33.196674, 47.657726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240107, 0.382832, -0.892070,
		0.064138, 0.923201, 0.378928,
		0.968625, 0.033768, -0.246221,
		40.593437, 33.206806, 47.583858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100815, 33.842037, 47.329548>,  <39.915398, 33.183167, 47.756214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100815, 33.842037, 47.329548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353130, 33.544964, 47.239624>,  <40.504520, 33.366722, 47.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353130, 33.544964, 47.239624>,  <40.100815, 33.842037, 47.329548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353130, 33.544964, 47.239624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264266, 0.066787, -0.962135,
		0.729571, 0.666309, -0.154137,
		0.630785, -0.742679, -0.224809,
		40.542366, 33.322159, 47.172180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265873, 34.009060, 46.664497>,  <40.100815, 33.842037, 47.329548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265873, 34.009060, 46.664497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380062, 33.626801, 46.693466>,  <40.448574, 33.397446, 46.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380062, 33.626801, 46.693466>,  <40.265873, 34.009060, 46.664497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380062, 33.626801, 46.693466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265815, -0.151557, -0.952036,
		0.920786, 0.252530, -0.297291,
		0.285474, -0.955646, 0.072425,
		40.465706, 33.340107, 46.715195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779446, 33.892788, 46.020706>,  <40.265873, 34.009060, 46.664497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779446, 33.892788, 46.020706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697742, 33.523846, 46.151878>,  <40.648720, 33.302479, 46.230583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697742, 33.523846, 46.151878>,  <40.779446, 33.892788, 46.020706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697742, 33.523846, 46.151878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196178, -0.289630, -0.936818,
		0.959058, -0.255687, -0.121786,
		-0.204260, -0.922355, 0.327933,
		40.636463, 33.247139, 46.250259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153286, 33.372864, 45.613136>,  <40.779446, 33.892788, 46.020706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153286, 33.372864, 45.613136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845066, 33.180218, 45.780136>,  <40.660133, 33.064629, 45.880337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845066, 33.180218, 45.780136>,  <41.153286, 33.372864, 45.613136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845066, 33.180218, 45.780136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390541, -0.160905, -0.906414,
		0.503724, -0.861483, -0.064107,
		-0.770546, -0.481619, 0.417496,
		40.613903, 33.035732, 45.905384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905972, 32.922245, 45.069019>,  <41.153286, 33.372864, 45.613136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905972, 32.922245, 45.069019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599941, 32.920055, 45.326588>,  <40.416325, 32.918743, 45.481129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599941, 32.920055, 45.326588>,  <40.905972, 32.922245, 45.069019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599941, 32.920055, 45.326588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640962, -0.089600, -0.762325,
		0.061871, -0.995963, 0.065040,
		-0.765074, -0.005478, 0.643918,
		40.370419, 32.918411, 45.519764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690090, 32.230263, 45.010796>,  <40.905972, 32.922245, 45.069019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690090, 32.230263, 45.010796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401676, 32.480896, 45.129124>,  <40.228630, 32.631275, 45.200119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401676, 32.480896, 45.129124>,  <40.690090, 32.230263, 45.010796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401676, 32.480896, 45.129124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492118, -0.162537, -0.855220,
		-0.487783, -0.762220, 0.425546,
		-0.721033, 0.626580, 0.295819,
		40.185368, 32.668869, 45.217869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088108, 31.953228, 44.777187>,  <40.690090, 32.230263, 45.010796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088108, 31.953228, 44.777187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966690, 32.324841, 44.861809>,  <39.893837, 32.547810, 44.912582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966690, 32.324841, 44.861809>,  <40.088108, 31.953228, 44.777187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966690, 32.324841, 44.861809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530365, 0.019709, -0.847540,
		-0.791562, -0.369471, 0.486744,
		-0.303549, 0.929033, 0.211556,
		39.875626, 32.603550, 44.925274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386269, 31.910595, 44.865730>,  <40.088108, 31.953228, 44.777187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386269, 31.910595, 44.865730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484409, 32.283970, 44.761044>,  <39.543293, 32.507996, 44.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484409, 32.283970, 44.761044>,  <39.386269, 31.910595, 44.865730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484409, 32.283970, 44.761044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561936, -0.083051, -0.823001,
		-0.789958, 0.348989, 0.504157,
		0.245347, 0.933440, -0.261716,
		39.558014, 32.564003, 44.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802761, 32.125484, 44.723759>,  <39.386269, 31.910595, 44.865730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802761, 32.125484, 44.723759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029251, 32.406387, 44.551147>,  <39.165146, 32.574928, 44.447582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029251, 32.406387, 44.551147>,  <38.802761, 32.125484, 44.723759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029251, 32.406387, 44.551147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501465, -0.121995, -0.856534,
		-0.654155, 0.701388, 0.283083,
		0.566228, 0.702262, -0.431525,
		39.199120, 32.617065, 44.421688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316917, 32.518181, 44.328197>,  <38.802761, 32.125484, 44.723759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316917, 32.518181, 44.328197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680256, 32.604679, 44.185005>,  <38.898258, 32.656578, 44.099091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680256, 32.604679, 44.185005>,  <38.316917, 32.518181, 44.328197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680256, 32.604679, 44.185005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377892, 0.057641, -0.924054,
		-0.179184, 0.974637, 0.134073,
		0.908345, 0.216241, -0.357979,
		38.952759, 32.669552, 44.077610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195930, 32.825462, 43.732426>,  <38.316917, 32.518181, 44.328197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195930, 32.825462, 43.732426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590366, 32.790699, 43.675762>,  <38.827030, 32.769840, 43.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590366, 32.790699, 43.675762>,  <38.195930, 32.825462, 43.732426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590366, 32.790699, 43.675762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136930, 0.058182, -0.988870,
		0.094188, 0.994516, 0.045472,
		0.986093, -0.086913, -0.141660,
		38.886192, 32.764626, 43.633263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458950, 33.373085, 43.206440>,  <38.195930, 32.825462, 43.732426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458950, 33.373085, 43.206440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735405, 33.084064, 43.212772>,  <38.901279, 32.910652, 43.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735405, 33.084064, 43.212772>,  <38.458950, 33.373085, 43.206440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735405, 33.084064, 43.212772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134388, 0.106967, -0.985138,
		0.710116, 0.682996, 0.171031,
		0.691141, -0.722547, 0.015827,
		38.942749, 32.867302, 43.217522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196720, 33.666172, 42.774796>,  <38.458950, 33.373085, 43.206440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196720, 33.666172, 42.774796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174099, 33.267345, 42.754147>,  <39.160526, 33.028049, 42.741756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174099, 33.267345, 42.754147>,  <39.196720, 33.666172, 42.774796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174099, 33.267345, 42.754147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175055, 0.041002, -0.983705,
		0.982933, -0.064670, 0.172222,
		-0.056555, -0.997064, -0.051623,
		39.157131, 32.968227, 42.738659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723660, 33.509731, 42.475491>,  <39.196720, 33.666172, 42.774796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723660, 33.509731, 42.475491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499695, 33.186546, 42.402061>,  <39.365318, 32.992634, 42.358002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499695, 33.186546, 42.402061>,  <39.723660, 33.509731, 42.475491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499695, 33.186546, 42.402061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243031, 0.051666, -0.968641,
		0.792110, -0.586965, 0.167432,
		-0.559908, -0.807962, -0.183576,
		39.331722, 32.944157, 42.346989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990086, 33.336281, 41.970051>,  <39.723660, 33.509731, 42.475491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990086, 33.336281, 41.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659801, 33.114094, 41.930733>,  <39.461632, 32.980782, 41.907143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659801, 33.114094, 41.930733>,  <39.990086, 33.336281, 41.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659801, 33.114094, 41.930733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173214, -0.083827, -0.981310,
		0.536848, -0.827301, 0.165432,
		-0.825707, -0.555470, -0.098297,
		39.412090, 32.947453, 41.901245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175381, 32.853161, 41.444103>,  <39.990086, 33.336281, 41.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175381, 32.853161, 41.444103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779572, 32.796043, 41.452648>,  <39.542088, 32.761772, 41.457775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779572, 32.796043, 41.452648>,  <40.175381, 32.853161, 41.444103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779572, 32.796043, 41.452648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017547, -0.027915, -0.999456,
		0.143310, -0.989359, 0.025117,
		-0.989522, -0.142791, 0.021361,
		39.482716, 32.753208, 41.459057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984978, 32.191875, 41.077629>,  <40.175381, 32.853161, 41.444103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984978, 32.191875, 41.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662209, 32.428127, 41.075390>,  <39.468548, 32.569878, 41.074047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662209, 32.428127, 41.075390>,  <39.984978, 32.191875, 41.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662209, 32.428127, 41.075390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207174, -0.291890, -0.933745,
		-0.553130, -0.752302, 0.357896,
		-0.806924, 0.590629, -0.005595,
		39.420132, 32.605316, 41.073711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375996, 31.728630, 40.745644>,  <39.984978, 32.191875, 41.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375996, 31.728630, 40.745644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293098, 32.118298, 40.709759>,  <39.243359, 32.352097, 40.688229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293098, 32.118298, 40.709759>,  <39.375996, 31.728630, 40.745644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293098, 32.118298, 40.709759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289299, -0.148624, -0.945630,
		-0.934536, -0.170022, 0.312627,
		-0.207242, 0.974168, -0.089707,
		39.230927, 32.410549, 40.682846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696411, 31.763288, 40.266747>,  <39.375996, 31.728630, 40.745644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696411, 31.763288, 40.266747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853542, 32.130367, 40.290466>,  <38.947823, 32.350616, 40.304699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853542, 32.130367, 40.290466>,  <38.696411, 31.763288, 40.266747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853542, 32.130367, 40.290466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198937, 0.147761, -0.968809,
		-0.897835, 0.368780, 0.240609,
		0.392830, 0.917697, 0.059301,
		38.971390, 32.405678, 40.308258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205547, 32.278122, 40.078438>,  <38.696411, 31.763288, 40.266747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205547, 32.278122, 40.078438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573662, 32.408501, 39.991875>,  <38.794529, 32.486729, 39.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573662, 32.408501, 39.991875>,  <38.205547, 32.278122, 40.078438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573662, 32.408501, 39.991875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298638, 0.227870, -0.926764,
		-0.252762, 0.917515, 0.307045,
		0.920286, 0.325947, -0.216408,
		38.849747, 32.506283, 39.926952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094402, 32.871300, 39.624214>,  <38.205547, 32.278122, 40.078438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094402, 32.871300, 39.624214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487732, 32.828136, 39.565662>,  <38.723732, 32.802238, 39.530533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487732, 32.828136, 39.565662>,  <38.094402, 32.871300, 39.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487732, 32.828136, 39.565662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090279, 0.409047, -0.908037,
		0.157861, 0.906110, 0.392484,
		0.983326, -0.107911, -0.146376,
		38.782730, 32.795765, 39.521751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389511, 33.623840, 39.455616>,  <38.094402, 32.871300, 39.624214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389511, 33.623840, 39.455616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632278, 33.350937, 39.292561>,  <38.777939, 33.187195, 39.194725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632278, 33.350937, 39.292561>,  <38.389511, 33.623840, 39.455616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632278, 33.350937, 39.292561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083851, 0.565013, -0.820810,
		0.790332, 0.463980, 0.400123,
		0.606914, -0.682263, -0.407642,
		38.814354, 33.146259, 39.170269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900242, 34.000923, 38.993591>,  <38.389511, 33.623840, 39.455616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900242, 34.000923, 38.993591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965336, 33.631653, 38.854298>,  <39.004391, 33.410091, 38.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965336, 33.631653, 38.854298>,  <38.900242, 34.000923, 38.993591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965336, 33.631653, 38.854298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444750, 0.383681, -0.809313,
		0.880748, -0.023177, 0.473018,
		0.162731, -0.923175, -0.348234,
		39.014156, 33.354702, 38.749828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648434, 34.011810, 38.833683>,  <38.900242, 34.000923, 38.993591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648434, 34.011810, 38.833683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466843, 33.723072, 38.624744>,  <39.357887, 33.549831, 38.499382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466843, 33.723072, 38.624744>,  <39.648434, 34.011810, 38.833683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466843, 33.723072, 38.624744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463938, 0.308999, -0.830229,
		0.760700, -0.619243, 0.194611,
		-0.453979, -0.721843, -0.522346,
		39.330650, 33.506519, 38.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040970, 33.768654, 38.287384>,  <39.648434, 34.011810, 38.833683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040970, 33.768654, 38.287384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698902, 33.612701, 38.150745>,  <39.493664, 33.519131, 38.068764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698902, 33.612701, 38.150745>,  <40.040970, 33.768654, 38.287384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698902, 33.612701, 38.150745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396360, -0.067143, -0.915637,
		0.334051, -0.918416, 0.211950,
		-0.855166, -0.389878, -0.341594,
		39.442352, 33.495739, 38.048267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255276, 33.284290, 37.900707>,  <40.040970, 33.768654, 38.287384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255276, 33.284290, 37.900707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878845, 33.324238, 37.771465>,  <39.652985, 33.348206, 37.693920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878845, 33.324238, 37.771465>,  <40.255276, 33.284290, 37.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878845, 33.324238, 37.771465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315650, -0.083561, -0.945189,
		-0.121403, -0.991485, 0.047111,
		-0.941077, 0.099878, -0.323106,
		39.596523, 33.354198, 37.674534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115894, 32.808369, 37.419899>,  <40.255276, 33.284290, 37.900707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115894, 32.808369, 37.419899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846367, 33.094913, 37.347466>,  <39.684650, 33.266842, 37.304005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846367, 33.094913, 37.347466>,  <40.115894, 32.808369, 37.419899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846367, 33.094913, 37.347466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277420, 0.018125, -0.960578,
		-0.684842, -0.697491, -0.210947,
		-0.673818, 0.716365, -0.181085,
		39.644222, 33.309822, 37.293140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867008, 32.616360, 36.743904>,  <40.115894, 32.808369, 37.419899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867008, 32.616360, 36.743904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775555, 32.999996, 36.810677>,  <39.720684, 33.230179, 36.850739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775555, 32.999996, 36.810677>,  <39.867008, 32.616360, 36.743904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775555, 32.999996, 36.810677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288638, 0.230544, -0.929267,
		-0.929739, -0.164278, -0.329541,
		-0.228632, 0.959095, 0.166929,
		39.706966, 33.287724, 36.860756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444775, 32.795311, 36.295700>,  <39.867008, 32.616360, 36.743904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444775, 32.795311, 36.295700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632568, 33.133831, 36.396385>,  <39.745243, 33.336945, 36.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632568, 33.133831, 36.396385>,  <39.444775, 32.795311, 36.295700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632568, 33.133831, 36.396385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217766, 0.165288, -0.961903,
		-0.855667, 0.506408, -0.106697,
		0.469480, 0.846304, 0.251711,
		39.773411, 33.387722, 36.471897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116783, 33.380360, 35.849464>,  <39.444775, 32.795311, 36.295700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116783, 33.380360, 35.849464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501297, 33.402710, 35.957401>,  <39.732006, 33.416119, 36.022163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501297, 33.402710, 35.957401>,  <39.116783, 33.380360, 35.849464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501297, 33.402710, 35.957401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255275, 0.188209, -0.948373,
		-0.103774, 0.980538, 0.166659,
		0.961283, 0.055873, 0.269839,
		39.789680, 33.419472, 36.038353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526825, 33.879341, 35.466244>,  <39.116783, 33.380360, 35.849464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526825, 33.879341, 35.466244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813431, 33.652611, 35.628876>,  <39.985394, 33.516571, 35.726456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813431, 33.652611, 35.628876>,  <39.526825, 33.879341, 35.466244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813431, 33.652611, 35.628876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501678, 0.013750, -0.864945,
		0.484685, 0.823721, 0.294217,
		0.716519, -0.566829, 0.406579,
		40.028385, 33.482563, 35.750851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218433, 34.298965, 35.607666>,  <39.526825, 33.879341, 35.466244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218433, 34.298965, 35.607666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254005, 33.904995, 35.548309>,  <40.275349, 33.668613, 35.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254005, 33.904995, 35.548309>,  <40.218433, 34.298965, 35.607666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254005, 33.904995, 35.548309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605027, 0.171762, -0.777457,
		0.791223, -0.020646, 0.611179,
		0.088926, -0.984922, -0.148394,
		40.280682, 33.609520, 35.503792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847107, 34.283314, 35.253033>,  <40.218433, 34.298965, 35.607666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847107, 34.283314, 35.253033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646652, 33.953854, 35.146851>,  <40.526379, 33.756176, 35.083141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646652, 33.953854, 35.146851>,  <40.847107, 34.283314, 35.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646652, 33.953854, 35.146851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462371, 0.004445, -0.886675,
		0.731490, -0.567081, 0.378604,
		-0.501135, -0.823650, -0.265453,
		40.496311, 33.706760, 35.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136841, 33.487545, 35.234043>,  <40.847107, 34.283314, 35.253033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136841, 33.487545, 35.234043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883781, 33.552002, 34.931049>,  <40.731945, 33.590675, 34.749252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883781, 33.552002, 34.931049>,  <41.136841, 33.487545, 35.234043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883781, 33.552002, 34.931049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714811, -0.254848, -0.651228,
		-0.297989, -0.953458, 0.046038,
		-0.632652, 0.161150, -0.757485,
		40.693985, 33.600346, 34.703804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832233, 33.166206, 35.082359>,  <41.136841, 33.487545, 35.234043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832233, 33.166206, 35.082359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190338, 32.990353, 35.111279>,  <42.405201, 32.884842, 35.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190338, 32.990353, 35.111279>,  <41.832233, 33.166206, 35.082359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190338, 32.990353, 35.111279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115546, -0.072383, 0.990661,
		-0.430295, -0.895256, -0.115600,
		0.895263, -0.439634, 0.072297,
		42.458916, 32.858463, 35.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334385, 33.683025, 34.929939>,  <41.832233, 33.166206, 35.082359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334385, 33.683025, 34.929939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733231, 33.678707, 34.960011>,  <42.972538, 33.676117, 34.978054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733231, 33.678707, 34.960011>,  <42.334385, 33.683025, 34.929939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733231, 33.678707, 34.960011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053252, 0.606392, 0.793381,
		-0.054148, -0.795093, 0.604066,
		0.997112, -0.010792, 0.075176,
		43.032364, 33.675468, 34.982563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539570, 33.414726, 35.585766>,  <42.334385, 33.683025, 34.929939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539570, 33.414726, 35.585766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815655, 33.664322, 35.439205>,  <42.981304, 33.814079, 35.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815655, 33.664322, 35.439205>,  <42.539570, 33.414726, 35.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815655, 33.664322, 35.439205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143581, 0.614381, 0.775835,
		0.709220, -0.482882, 0.513645,
		0.690211, 0.623988, -0.366399,
		43.022717, 33.851517, 35.329285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066902, 33.474358, 36.022419>,  <42.539570, 33.414726, 35.585766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066902, 33.474358, 36.022419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082253, 33.828537, 35.837162>,  <43.091461, 34.041046, 35.726009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082253, 33.828537, 35.837162>,  <43.066902, 33.474358, 36.022419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082253, 33.828537, 35.837162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086757, 0.464686, 0.881215,
		0.995490, 0.006367, 0.094650,
		0.038372, 0.885453, -0.463143,
		43.093765, 34.094173, 35.698219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695679, 33.737843, 36.208969>,  <43.066902, 33.474358, 36.022419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695679, 33.737843, 36.208969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511230, 34.073875, 36.094681>,  <43.400562, 34.275494, 36.026108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511230, 34.073875, 36.094681>,  <43.695679, 33.737843, 36.208969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511230, 34.073875, 36.094681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257897, 0.434978, 0.862719,
		0.849034, 0.324130, -0.417231,
		-0.461119, 0.840080, -0.285718,
		43.372894, 34.325901, 36.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194565, 34.290920, 36.354877>,  <43.695679, 33.737843, 36.208969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194565, 34.290920, 36.354877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827209, 34.448761, 36.343208>,  <43.606796, 34.543465, 36.336208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827209, 34.448761, 36.343208>,  <44.194565, 34.290920, 36.354877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827209, 34.448761, 36.343208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173870, 0.468694, 0.866080,
		0.355428, 0.790327, -0.499053,
		-0.918390, 0.394600, -0.029173,
		43.551693, 34.567142, 36.334457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289726, 34.897633, 36.590832>,  <44.194565, 34.290920, 36.354877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289726, 34.897633, 36.590832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895779, 34.868893, 36.653915>,  <43.659409, 34.851650, 36.691765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895779, 34.868893, 36.653915>,  <44.289726, 34.897633, 36.590832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895779, 34.868893, 36.653915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082197, 0.607463, 0.790083,
		-0.152568, 0.791092, -0.592366,
		-0.984869, -0.071851, 0.157705,
		43.600319, 34.847336, 36.701225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044483, 35.600670, 36.818832>,  <44.289726, 34.897633, 36.590832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044483, 35.600670, 36.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751999, 35.352196, 36.931583>,  <43.576508, 35.203110, 36.999233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751999, 35.352196, 36.931583>,  <44.044483, 35.600670, 36.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751999, 35.352196, 36.931583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074133, 0.483131, 0.872404,
		-0.678109, 0.617017, -0.399322,
		-0.731213, -0.621188, 0.281874,
		43.532635, 35.165840, 37.016144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506889, 36.011219, 37.070351>,  <44.044483, 35.600670, 36.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506889, 36.011219, 37.070351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421745, 35.650600, 37.221027>,  <43.370659, 35.434227, 37.311436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421745, 35.650600, 37.221027>,  <43.506889, 36.011219, 37.070351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421745, 35.650600, 37.221027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160834, 0.412602, 0.896600,
		-0.963755, 0.130266, -0.232826,
		-0.212861, -0.901549, 0.376696,
		43.357887, 35.380135, 37.334038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882069, 36.072060, 37.389652>,  <43.506889, 36.011219, 37.070351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882069, 36.072060, 37.389652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057053, 35.772701, 37.589066>,  <43.162041, 35.593086, 37.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057053, 35.772701, 37.589066>,  <42.882069, 36.072060, 37.389652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057053, 35.772701, 37.589066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307589, 0.396422, 0.865008,
		-0.844997, -0.531748, -0.056780,
		0.437457, -0.748394, 0.498535,
		43.188290, 35.548183, 37.738625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463612, 35.907368, 38.024002>,  <42.882069, 36.072060, 37.389652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463612, 35.907368, 38.024002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816357, 35.741627, 38.114010>,  <43.028004, 35.642181, 38.168015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816357, 35.741627, 38.114010>,  <42.463612, 35.907368, 38.024002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816357, 35.741627, 38.114010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134326, 0.236688, 0.962255,
		-0.451969, -0.878803, 0.153068,
		0.881862, -0.414349, 0.225022,
		43.080914, 35.617321, 38.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350895, 35.513233, 38.697685>,  <42.463612, 35.907368, 38.024002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350895, 35.513233, 38.697685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746826, 35.555656, 38.659760>,  <42.984386, 35.581108, 38.637005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746826, 35.555656, 38.659760>,  <42.350895, 35.513233, 38.697685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746826, 35.555656, 38.659760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080981, 0.127907, 0.988474,
		0.116946, -0.986101, 0.118019,
		0.989831, 0.106040, -0.094814,
		43.043774, 35.587471, 38.631313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683327, 35.140633, 39.281937>,  <42.350895, 35.513233, 38.697685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683327, 35.140633, 39.281937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983139, 35.365242, 39.141708>,  <43.163025, 35.500008, 39.057571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983139, 35.365242, 39.141708>,  <42.683327, 35.140633, 39.281937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983139, 35.365242, 39.141708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100914, 0.426475, 0.898852,
		0.654233, -0.709094, 0.262991,
		0.749530, 0.561519, -0.350572,
		43.207996, 35.533699, 39.036537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277630, 35.031006, 39.762188>,  <42.683327, 35.140633, 39.281937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277630, 35.031006, 39.762188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399471, 35.354599, 39.561089>,  <43.472576, 35.548756, 39.440430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.399471, 35.354599, 39.561089>,  <43.277630, 35.031006, 39.762188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399471, 35.354599, 39.561089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323146, 0.408753, 0.853521,
		0.895988, -0.422446, -0.136914,
		0.304603, 0.808987, -0.502749,
		43.490852, 35.597294, 39.410263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989803, 35.246349, 39.855377>,  <43.277630, 35.031006, 39.762188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989803, 35.246349, 39.855377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830173, 35.597610, 39.749855>,  <43.734398, 35.808365, 39.686543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830173, 35.597610, 39.749855>,  <43.989803, 35.246349, 39.855377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830173, 35.597610, 39.749855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398940, 0.425338, 0.812364,
		0.825583, 0.218951, -0.520070,
		-0.399073, 0.878151, -0.263804,
		43.710453, 35.861057, 39.670715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516727, 35.774719, 39.888420>,  <43.989803, 35.246349, 39.855377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516727, 35.774719, 39.888420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174252, 35.981350, 39.892284>,  <43.968765, 36.105328, 39.894604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174252, 35.981350, 39.892284>,  <44.516727, 35.774719, 39.888420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174252, 35.981350, 39.892284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323507, 0.521432, 0.789590,
		0.402846, 0.679162, -0.613559,
		-0.856188, 0.516573, 0.009657,
		43.917397, 36.136322, 39.895180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654884, 36.575451, 40.082123>,  <44.516727, 35.774719, 39.888420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654884, 36.575451, 40.082123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266308, 36.543732, 40.171574>,  <44.033161, 36.524700, 40.225243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266308, 36.543732, 40.171574>,  <44.654884, 36.575451, 40.082123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266308, 36.543732, 40.171574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097357, 0.726289, 0.680461,
		-0.216375, 0.682801, -0.697829,
		-0.971444, -0.079296, 0.223626,
		43.974876, 36.519943, 40.238663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444218, 37.237038, 40.224728>,  <44.654884, 36.575451, 40.082123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444218, 37.237038, 40.224728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181961, 36.995079, 40.405499>,  <44.024609, 36.849903, 40.513962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181961, 36.995079, 40.405499>,  <44.444218, 37.237038, 40.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181961, 36.995079, 40.405499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044549, 0.566489, 0.822864,
		-0.753757, 0.559637, -0.344466,
		-0.655642, -0.604894, 0.451927,
		43.985268, 36.813610, 40.541077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959568, 37.609917, 40.559120>,  <44.444218, 37.237038, 40.224728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959568, 37.609917, 40.559120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931927, 37.255154, 40.741821>,  <43.915340, 37.042297, 40.851440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931927, 37.255154, 40.741821>,  <43.959568, 37.609917, 40.559120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931927, 37.255154, 40.741821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012401, 0.458576, 0.888569,
		-0.997532, 0.055743, -0.042689,
		-0.069107, -0.886905, 0.456753,
		43.911194, 36.989082, 40.878849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673660, 37.781715, 41.183914>,  <43.959568, 37.609917, 40.559120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673660, 37.781715, 41.183914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848598, 37.425888, 41.236664>,  <43.953560, 37.212391, 41.268314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848598, 37.425888, 41.236664>,  <43.673660, 37.781715, 41.183914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848598, 37.425888, 41.236664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208877, 0.243117, 0.947240,
		-0.874700, -0.386724, 0.292137,
		0.437344, -0.889572, 0.131877,
		43.979801, 37.159016, 41.276226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387119, 37.521580, 41.842846>,  <43.673660, 37.781715, 41.183914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387119, 37.521580, 41.842846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737534, 37.339081, 41.780357>,  <43.947781, 37.229580, 41.742863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737534, 37.339081, 41.780357>,  <43.387119, 37.521580, 41.842846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737534, 37.339081, 41.780357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311454, 0.287944, 0.905585,
		-0.368188, -0.841978, 0.394348,
		0.876033, -0.456247, -0.156220,
		44.000343, 37.202206, 41.733490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631950, 37.099194, 42.465107>,  <43.387119, 37.521580, 41.842846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631950, 37.099194, 42.465107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939205, 37.208347, 42.233418>,  <44.123558, 37.273838, 42.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939205, 37.208347, 42.233418>,  <43.631950, 37.099194, 42.465107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939205, 37.208347, 42.233418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485883, 0.340735, 0.804871,
		0.416998, -0.899686, 0.129142,
		0.768134, 0.272882, -0.579228,
		44.169647, 37.290211, 42.059650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106766, 37.191570, 42.948666>,  <43.631950, 37.099194, 42.465107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106766, 37.191570, 42.948666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343140, 37.326195, 42.655403>,  <44.484962, 37.406971, 42.479446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343140, 37.326195, 42.655403>,  <44.106766, 37.191570, 42.948666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343140, 37.326195, 42.655403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509344, 0.549102, 0.662613,
		0.625589, -0.764991, 0.153057,
		0.590937, 0.336564, -0.733156,
		44.520420, 37.427166, 42.435455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881630, 37.195621, 43.142097>,  <44.106766, 37.191570, 42.948666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881630, 37.195621, 43.142097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796658, 37.495674, 42.891602>,  <44.745674, 37.675705, 42.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.796658, 37.495674, 42.891602>,  <44.881630, 37.195621, 43.142097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796658, 37.495674, 42.891602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350928, 0.656679, 0.667549,
		0.911987, -0.077953, -0.402744,
		-0.212436, 0.750131, -0.626239,
		44.732925, 37.720715, 42.703732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417389, 36.807194, 43.229034>,  <44.881630, 37.195621, 43.142097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417389, 36.807194, 43.229034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025955, 36.728466, 43.253128>,  <44.791096, 36.681229, 43.267586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025955, 36.728466, 43.253128>,  <45.417389, 36.807194, 43.229034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025955, 36.728466, 43.253128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186419, -0.971560, -0.146009,
		0.087261, -0.131653, 0.987448,
		-0.978587, -0.196820, 0.060237,
		44.732380, 36.669418, 43.271198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465195, 36.189289, 43.571743>,  <45.417389, 36.807194, 43.229034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465195, 36.189289, 43.571743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105549, 36.185738, 43.396698>,  <44.889759, 36.183605, 43.291672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105549, 36.185738, 43.396698>,  <45.465195, 36.189289, 43.571743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105549, 36.185738, 43.396698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096681, -0.979128, -0.178775,
		-0.426895, -0.203049, 0.881211,
		-0.899118, -0.008878, -0.437615,
		44.835812, 36.183075, 43.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602779, 35.460987, 43.496075>,  <45.465195, 36.189289, 43.571743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602779, 35.460987, 43.496075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746769, 35.212231, 43.217888>,  <45.833164, 35.062977, 43.050976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746769, 35.212231, 43.217888>,  <45.602779, 35.460987, 43.496075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746769, 35.212231, 43.217888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870381, 0.044566, -0.490359,
		0.335942, 0.781838, -0.525236,
		0.359973, -0.621887, -0.695468,
		45.854759, 35.025665, 43.009247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342674, 34.906033, 42.940872>,  <45.602779, 35.460987, 43.496075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342674, 34.906033, 42.940872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141106, 35.226101, 43.070980>,  <45.020164, 35.418140, 43.149044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141106, 35.226101, 43.070980>,  <45.342674, 34.906033, 42.940872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141106, 35.226101, 43.070980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555552, -0.011907, -0.831397,
		-0.661385, -0.599657, 0.450535,
		-0.503917, 0.800169, 0.325265,
		44.989929, 35.466152, 43.168560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524334, 34.372860, 42.407276>,  <45.342674, 34.906033, 42.940872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524334, 34.372860, 42.407276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727596, 34.138752, 42.660019>,  <45.849552, 33.998287, 42.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727596, 34.138752, 42.660019>,  <45.524334, 34.372860, 42.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727596, 34.138752, 42.660019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166321, -0.653142, -0.738744,
		0.845053, 0.480488, -0.234555,
		0.508155, -0.585266, 0.631855,
		45.880043, 33.963173, 42.849575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220825, 34.299362, 42.257729>,  <45.524334, 34.372860, 42.407276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220825, 34.299362, 42.257729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132362, 33.959248, 42.448772>,  <46.079285, 33.755180, 42.563396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132362, 33.959248, 42.448772>,  <46.220825, 34.299362, 42.257729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132362, 33.959248, 42.448772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206352, -0.519441, -0.829216,
		0.953158, -0.084829, 0.290334,
		-0.221153, -0.850285, 0.477605,
		46.066017, 33.704163, 42.592052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707901, 33.708565, 42.142284>,  <46.220825, 34.299362, 42.257729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707901, 33.708565, 42.142284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366154, 33.521553, 42.233032>,  <46.161106, 33.409344, 42.287479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.366154, 33.521553, 42.233032>,  <46.707901, 33.708565, 42.142284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366154, 33.521553, 42.233032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015663, -0.459532, -0.888023,
		0.519434, -0.755144, 0.399932,
		-0.854367, -0.467534, 0.226869,
		46.109844, 33.381294, 42.301094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.824638, 32.966496, 42.099491>,  <46.707901, 33.708565, 42.142284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.824638, 32.966496, 42.099491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435799, 33.055019, 42.068398>,  <46.202496, 33.108135, 42.049740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435799, 33.055019, 42.068398>,  <46.824638, 32.966496, 42.099491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435799, 33.055019, 42.068398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069227, -0.587328, -0.806383,
		-0.224115, -0.778504, 0.586263,
		-0.972101, 0.221308, -0.077736,
		46.144169, 33.121410, 42.045078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.776917, 32.674465, 41.479149>,  <46.824638, 32.966496, 42.099491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.776917, 32.674465, 41.479149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413460, 32.810944, 41.575439>,  <46.195385, 32.892830, 41.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413460, 32.810944, 41.575439>,  <46.776917, 32.674465, 41.479149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413460, 32.810944, 41.575439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369219, -0.387211, -0.844834,
		-0.195045, -0.856535, 0.477814,
		-0.908644, 0.341199, 0.240726,
		46.140865, 32.913303, 41.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352917, 32.129612, 41.243839>,  <46.776917, 32.674465, 41.479149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352917, 32.129612, 41.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136215, 32.464912, 41.268646>,  <46.006195, 32.666092, 41.283531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136215, 32.464912, 41.268646>,  <46.352917, 32.129612, 41.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136215, 32.464912, 41.268646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300665, -0.124360, -0.945587,
		-0.784925, -0.530918, 0.319404,
		-0.541750, 0.838249, 0.062015,
		45.973690, 32.716389, 41.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760113, 31.954952, 40.889408>,  <46.352917, 32.129612, 41.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760113, 31.954952, 40.889408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804981, 32.352425, 40.887623>,  <45.831902, 32.590908, 40.886551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804981, 32.352425, 40.887623>,  <45.760113, 31.954952, 40.889408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804981, 32.352425, 40.887623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128029, 0.009999, -0.991720,
		-0.985407, 0.111812, 0.128341,
		0.112170, 0.993679, -0.004462,
		45.838631, 32.650528, 40.886284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265202, 32.178669, 40.382130>,  <45.760113, 31.954952, 40.889408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265202, 32.178669, 40.382130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481682, 32.510029, 40.439880>,  <45.611572, 32.708847, 40.474529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481682, 32.510029, 40.439880>,  <45.265202, 32.178669, 40.382130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481682, 32.510029, 40.439880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138909, 0.257412, -0.956265,
		-0.829338, 0.497480, 0.254386,
		0.541205, 0.828403, 0.144377,
		45.644043, 32.758549, 40.483192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940380, 32.642933, 39.968323>,  <45.265202, 32.178669, 40.382130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940380, 32.642933, 39.968323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306156, 32.800934, 40.003578>,  <45.525623, 32.895733, 40.024731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306156, 32.800934, 40.003578>,  <44.940380, 32.642933, 39.968323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306156, 32.800934, 40.003578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037424, 0.299387, -0.953398,
		-0.402980, 0.868530, 0.288555,
		0.914444, 0.394999, 0.088143,
		45.580490, 32.919434, 40.030022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951630, 33.391384, 39.710640>,  <44.940380, 32.642933, 39.968323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951630, 33.391384, 39.710640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335026, 33.277489, 39.704708>,  <45.565063, 33.209152, 39.701149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335026, 33.277489, 39.704708>,  <44.951630, 33.391384, 39.710640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335026, 33.277489, 39.704708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096858, 0.374070, -0.922329,
		0.268172, 0.882606, 0.386121,
		0.958490, -0.284742, -0.014827,
		45.622574, 33.192066, 39.700260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263542, 33.939434, 39.442329>,  <44.951630, 33.391384, 39.710640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263542, 33.939434, 39.442329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506718, 33.629845, 39.371475>,  <45.652622, 33.444092, 39.328964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506718, 33.629845, 39.371475>,  <45.263542, 33.939434, 39.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506718, 33.629845, 39.371475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024716, 0.204541, -0.978546,
		0.793602, 0.599271, 0.105218,
		0.607935, -0.773975, -0.177136,
		45.689098, 33.397652, 39.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669346, 34.152576, 38.948624>,  <45.263542, 33.939434, 39.442329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669346, 34.152576, 38.948624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729340, 33.758099, 38.920555>,  <45.765335, 33.521412, 38.903713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.729340, 33.758099, 38.920555>,  <45.669346, 34.152576, 38.948624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729340, 33.758099, 38.920555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048235, 0.078186, -0.995771,
		0.987511, 0.145962, 0.059295,
		0.149981, -0.986196, -0.070169,
		45.774334, 33.462238, 38.899506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232025, 34.120487, 38.591240>,  <45.669346, 34.152576, 38.948624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232025, 34.120487, 38.591240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046909, 33.769787, 38.538895>,  <45.935841, 33.559364, 38.507488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046909, 33.769787, 38.538895>,  <46.232025, 34.120487, 38.591240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046909, 33.769787, 38.538895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091519, 0.099581, -0.990812,
		0.881731, -0.470514, 0.034155,
		-0.462790, -0.876755, -0.130864,
		45.908073, 33.506760, 38.499634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558632, 33.702282, 38.215965>,  <46.232025, 34.120487, 38.591240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558632, 33.702282, 38.215965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216480, 33.504841, 38.153130>,  <46.011189, 33.386375, 38.115429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216480, 33.504841, 38.153130>,  <46.558632, 33.702282, 38.215965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216480, 33.504841, 38.153130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196474, -0.028553, -0.980093,
		0.479293, -0.869217, 0.121404,
		-0.855381, -0.493605, -0.157093,
		45.959866, 33.356758, 38.106003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772594, 33.336895, 37.732136>,  <46.558632, 33.702282, 38.215965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772594, 33.336895, 37.732136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373863, 33.307190, 37.720673>,  <46.134624, 33.289368, 37.713795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.373863, 33.307190, 37.720673>,  <46.772594, 33.336895, 37.732136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373863, 33.307190, 37.720673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024124, 0.061194, -0.997834,
		0.075861, -0.995359, -0.059208,
		-0.996827, -0.074268, -0.028654,
		46.074814, 33.284912, 37.712078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617317, 32.860798, 37.103020>,  <46.772594, 33.336895, 37.732136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617317, 32.860798, 37.103020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296997, 33.082436, 37.193974>,  <46.104805, 33.215420, 37.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296997, 33.082436, 37.193974>,  <46.617317, 32.860798, 37.103020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296997, 33.082436, 37.193974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076853, 0.281441, -0.956496,
		-0.593984, -0.783434, -0.182794,
		-0.800797, 0.554095, 0.227380,
		46.056759, 33.248665, 37.262188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186428, 32.752655, 36.513721>,  <46.617317, 32.860798, 37.103020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186428, 32.752655, 36.513721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988056, 33.046490, 36.698956>,  <45.869034, 33.222790, 36.810097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988056, 33.046490, 36.698956>,  <46.186428, 32.752655, 36.513721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988056, 33.046490, 36.698956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219067, 0.410197, -0.885296,
		-0.840278, -0.540487, -0.042505,
		-0.495926, 0.734583, 0.463082,
		45.839279, 33.266865, 36.837879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493080, 32.881691, 36.206390>,  <46.186428, 32.752655, 36.513721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493080, 32.881691, 36.206390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581005, 33.224270, 36.393230>,  <45.633759, 33.429817, 36.505333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581005, 33.224270, 36.393230>,  <45.493080, 32.881691, 36.206390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581005, 33.224270, 36.393230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241721, 0.511692, -0.824465,
		-0.945122, 0.068317, 0.319495,
		0.219808, 0.856448, 0.467098,
		45.646946, 33.481205, 36.533360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026939, 33.297462, 35.899292>,  <45.493080, 32.881691, 36.206390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026939, 33.297462, 35.899292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280437, 33.552250, 36.074856>,  <45.432537, 33.705124, 36.180195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280437, 33.552250, 36.074856>,  <45.026939, 33.297462, 35.899292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280437, 33.552250, 36.074856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123244, 0.643297, -0.755633,
		-0.763662, 0.424784, 0.486187,
		0.633743, 0.636968, 0.438909,
		45.470562, 33.743340, 36.206528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664284, 33.894608, 36.008671>,  <45.026939, 33.297462, 35.899292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664284, 33.894608, 36.008671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058617, 33.956112, 35.981850>,  <45.295216, 33.993015, 35.965759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058617, 33.956112, 35.981850>,  <44.664284, 33.894608, 36.008671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058617, 33.956112, 35.981850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154660, 0.678399, -0.718230,
		-0.064950, 0.718423, 0.692567,
		0.985830, 0.153762, -0.067050,
		45.354366, 34.002239, 35.961735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789459, 34.638664, 36.051804>,  <44.664284, 33.894608, 36.008671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789459, 34.638664, 36.051804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130814, 34.519459, 35.880722>,  <45.335625, 34.447933, 35.778072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130814, 34.519459, 35.880722>,  <44.789459, 34.638664, 36.051804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130814, 34.519459, 35.880722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150410, 0.644804, -0.749403,
		0.499116, 0.703857, 0.505439,
		0.853381, -0.298016, -0.427699,
		45.386829, 34.430054, 35.752411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990421, 35.256584, 35.791100>,  <44.789459, 34.638664, 36.051804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990421, 35.256584, 35.791100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217274, 34.990578, 35.596729>,  <45.353386, 34.830975, 35.480106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217274, 34.990578, 35.596729>,  <44.990421, 35.256584, 35.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217274, 34.990578, 35.596729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111940, 0.522269, -0.845402,
		0.815986, 0.533847, 0.221753,
		0.567131, -0.665013, -0.485923,
		45.387413, 34.791073, 35.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366127, 35.707134, 35.387726>,  <44.990421, 35.256584, 35.791100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366127, 35.707134, 35.387726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375870, 35.344784, 35.218586>,  <45.381718, 35.127373, 35.117104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375870, 35.344784, 35.218586>,  <45.366127, 35.707134, 35.387726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375870, 35.344784, 35.218586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109487, 0.418009, -0.901821,
		0.993690, 0.068263, -0.088999,
		0.024359, -0.905875, -0.422845,
		45.383179, 35.073021, 35.091732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917706, 35.804424, 34.845325>,  <45.366127, 35.707134, 35.387726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917706, 35.804424, 34.845325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676498, 35.496685, 34.760971>,  <45.531773, 35.312042, 34.710358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.676498, 35.496685, 34.760971>,  <45.917706, 35.804424, 34.845325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676498, 35.496685, 34.760971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013185, 0.273930, -0.961659,
		0.797616, -0.577121, -0.175330,
		-0.603022, -0.769347, -0.210882,
		45.495590, 35.265881, 34.697708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204060, 35.549309, 34.196732>,  <45.917706, 35.804424, 34.845325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204060, 35.549309, 34.196732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832253, 35.401821, 34.199440>,  <45.609169, 35.313328, 34.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832253, 35.401821, 34.199440>,  <46.204060, 35.549309, 34.196732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832253, 35.401821, 34.199440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084320, 0.194620, -0.977248,
		0.359014, -0.908938, -0.211992,
		-0.929515, -0.368721, 0.006770,
		45.553398, 35.291206, 34.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347313, 36.167702, 34.323322>,  <46.204060, 35.549309, 34.196732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347313, 36.167702, 34.323322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556038, 35.827892, 34.292278>,  <46.681271, 35.624008, 34.273651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556038, 35.827892, 34.292278>,  <46.347313, 36.167702, 34.323322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556038, 35.827892, 34.292278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839651, 0.495407, 0.222615,
		-0.150668, -0.181328, 0.971812,
		0.521809, -0.849524, -0.077610,
		46.712582, 35.573036, 34.268993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633530, 36.027042, 35.016598>,  <46.347313, 36.167702, 34.323322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633530, 36.027042, 35.016598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835335, 35.863369, 34.712482>,  <46.956417, 35.765163, 34.530014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835335, 35.863369, 34.712482>,  <46.633530, 36.027042, 35.016598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835335, 35.863369, 34.712482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863122, 0.216550, 0.456209,
		-0.022035, -0.886381, 0.462431,
		0.504514, -0.409187, -0.760283,
		46.986691, 35.740612, 34.484398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999870, 35.449883, 35.372368>,  <46.633530, 36.027042, 35.016598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999870, 35.449883, 35.372368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222065, 35.137337, 35.486141>,  <47.355381, 34.949810, 35.554405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222065, 35.137337, 35.486141>,  <46.999870, 35.449883, 35.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222065, 35.137337, 35.486141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035394, -0.319536, -0.946913,
		0.830769, 0.536068, -0.149843,
		0.555490, -0.781363, 0.284434,
		47.388714, 34.902927, 35.571472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.618996, 35.395302, 34.935101>,  <46.999870, 35.449883, 35.372368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.618996, 35.395302, 34.935101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527275, 35.039135, 35.092365>,  <47.472240, 34.825436, 35.186722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.527275, 35.039135, 35.092365>,  <47.618996, 35.395302, 34.935101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527275, 35.039135, 35.092365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087396, -0.421126, -0.902782,
		0.969423, -0.172651, 0.174385,
		-0.229304, -0.890418, 0.393160,
		47.458485, 34.772011, 35.210312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.956982, 36.978428, 45.600681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575588, 37.025257, 45.711796>,  <38.346752, 37.053356, 45.778465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575588, 37.025257, 45.711796>,  <38.956982, 36.978428, 45.600681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575588, 37.025257, 45.711796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272382, 0.060182, -0.960305,
		-0.129146, -0.991298, -0.025493,
		-0.953483, 0.117075, 0.277783,
		38.289543, 37.060379, 45.795132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700691, 36.560558, 45.119888>,  <38.956982, 36.978428, 45.600681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700691, 36.560558, 45.119888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366138, 36.723419, 45.266693>,  <38.165409, 36.821136, 45.354778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366138, 36.723419, 45.266693>,  <38.700691, 36.560558, 45.119888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366138, 36.723419, 45.266693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315587, 0.189786, -0.929724,
		-0.448191, -0.893426, -0.030242,
		-0.836379, 0.407150, 0.367014,
		38.115223, 36.845566, 45.376797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090347, 36.238605, 44.767960>,  <38.700691, 36.560558, 45.119888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090347, 36.238605, 44.767960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965183, 36.600952, 44.882153>,  <37.890087, 36.818359, 44.950668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965183, 36.600952, 44.882153>,  <38.090347, 36.238605, 44.767960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965183, 36.600952, 44.882153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329377, 0.178429, -0.927186,
		-0.890843, -0.384153, 0.242539,
		-0.312905, 0.905864, 0.285483,
		37.871311, 36.872711, 44.967796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380470, 36.207100, 44.576607>,  <38.090347, 36.238605, 44.767960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380470, 36.207100, 44.576607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519043, 36.581882, 44.594917>,  <37.602188, 36.806751, 44.605904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519043, 36.581882, 44.594917>,  <37.380470, 36.207100, 44.576607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519043, 36.581882, 44.594917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231047, 0.132516, -0.963876,
		-0.909177, 0.323341, 0.262389,
		0.346432, 0.936958, 0.045774,
		37.622971, 36.862968, 44.608650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896656, 36.563305, 44.255123>,  <37.380470, 36.207100, 44.576607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896656, 36.563305, 44.255123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210735, 36.810944, 44.260532>,  <37.399181, 36.959526, 44.263779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210735, 36.810944, 44.260532>,  <36.896656, 36.563305, 44.255123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210735, 36.810944, 44.260532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172880, 0.240135, -0.955222,
		-0.594623, 0.747700, 0.295583,
		0.785198, 0.619097, 0.013527,
		37.446297, 36.996674, 44.264591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646172, 37.172695, 43.848713>,  <36.896656, 36.563305, 44.255123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646172, 37.172695, 43.848713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045013, 37.203091, 43.847736>,  <37.284317, 37.221329, 43.847153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045013, 37.203091, 43.847736>,  <36.646172, 37.172695, 43.848713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045013, 37.203091, 43.847736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016489, 0.184860, -0.982626,
		-0.074214, 0.979823, 0.185578,
		0.997106, 0.075985, -0.002437,
		37.344147, 37.225887, 43.847004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834446, 37.826614, 43.565849>,  <36.646172, 37.172695, 43.848713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834446, 37.826614, 43.565849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165527, 37.607315, 43.517952>,  <37.364174, 37.475735, 43.489216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165527, 37.607315, 43.517952>,  <36.834446, 37.826614, 43.565849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165527, 37.607315, 43.517952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005803, 0.221724, -0.975092,
		0.561142, 0.806388, 0.186702,
		0.827699, -0.548248, -0.119739,
		37.413837, 37.442841, 43.482029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385288, 38.255840, 43.210072>,  <36.834446, 37.826614, 43.565849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385288, 38.255840, 43.210072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504066, 37.877270, 43.159302>,  <37.575333, 37.650127, 43.128841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504066, 37.877270, 43.159302>,  <37.385288, 38.255840, 43.210072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504066, 37.877270, 43.159302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109308, 0.165731, -0.980094,
		0.948619, 0.277157, 0.152664,
		0.296942, -0.946423, -0.126920,
		37.593147, 37.593342, 43.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959320, 38.281013, 42.731827>,  <37.385288, 38.255840, 43.210072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959320, 38.281013, 42.731827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785564, 37.921150, 42.714310>,  <37.681309, 37.705231, 42.703800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.785564, 37.921150, 42.714310>,  <37.959320, 38.281013, 42.731827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785564, 37.921150, 42.714310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039456, 0.067582, -0.996933,
		0.899858, -0.431334, -0.064854,
		-0.434394, -0.899657, -0.043796,
		37.655247, 37.651253, 42.701172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279602, 37.915756, 42.137642>,  <37.959320, 38.281013, 42.731827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279602, 37.915756, 42.137642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937668, 37.714981, 42.190292>,  <37.732510, 37.594517, 42.221882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937668, 37.714981, 42.190292>,  <38.279602, 37.915756, 42.137642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937668, 37.714981, 42.190292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113233, -0.067111, -0.991299,
		0.506400, -0.862298, 0.000533,
		-0.854832, -0.501934, 0.131625,
		37.681217, 37.564400, 42.229778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295982, 37.320347, 41.714924>,  <38.279602, 37.915756, 42.137642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295982, 37.320347, 41.714924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910480, 37.388355, 41.797153>,  <37.679180, 37.429161, 41.846493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910480, 37.388355, 41.797153>,  <38.295982, 37.320347, 41.714924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910480, 37.388355, 41.797153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241069, -0.225017, -0.944062,
		-0.114253, -0.959406, 0.257850,
		-0.963759, 0.170022, 0.205574,
		37.621353, 37.439362, 41.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906490, 36.722172, 41.497871>,  <38.295982, 37.320347, 41.714924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906490, 36.722172, 41.497871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641823, 37.021046, 41.522869>,  <37.483025, 37.200371, 41.537868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.641823, 37.021046, 41.522869>,  <37.906490, 36.722172, 41.497871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641823, 37.021046, 41.522869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289862, -0.178036, -0.940363,
		-0.691504, -0.640321, 0.334382,
		-0.661666, 0.747190, 0.062493,
		37.443321, 37.245201, 41.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325645, 36.420437, 41.225925>,  <37.906490, 36.722172, 41.497871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325645, 36.420437, 41.225925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269348, 36.813545, 41.178013>,  <37.235569, 37.049412, 41.149265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269348, 36.813545, 41.178013>,  <37.325645, 36.420437, 41.225925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269348, 36.813545, 41.178013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147585, -0.140461, -0.979025,
		-0.978985, -0.120111, 0.164811,
		-0.140741, 0.982774, -0.119782,
		37.227127, 37.108376, 41.142078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853542, 36.416576, 40.651386>,  <37.325645, 36.420437, 41.225925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853542, 36.416576, 40.651386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009022, 36.784554, 40.671871>,  <37.102310, 37.005341, 40.684162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009022, 36.784554, 40.671871>,  <36.853542, 36.416576, 40.651386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009022, 36.784554, 40.671871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121833, 0.106416, -0.986829,
		-0.913272, 0.377344, 0.153443,
		0.388703, 0.919939, 0.051214,
		37.125633, 37.060535, 40.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485985, 36.713970, 40.129047>,  <36.853542, 36.416576, 40.651386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485985, 36.713970, 40.129047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775829, 36.970303, 40.230465>,  <36.949734, 37.124100, 40.291317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775829, 36.970303, 40.230465>,  <36.485985, 36.713970, 40.129047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775829, 36.970303, 40.230465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022888, 0.345323, -0.938205,
		-0.688781, 0.685634, 0.235557,
		0.724608, 0.640826, 0.253545,
		36.993210, 37.162552, 40.306530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132996, 37.354351, 39.691105>,  <36.485985, 36.713970, 40.129047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132996, 37.354351, 39.691105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528191, 37.402908, 39.729366>,  <36.765308, 37.432041, 39.752323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.528191, 37.402908, 39.729366>,  <36.132996, 37.354351, 39.691105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528191, 37.402908, 39.729366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061745, 0.257377, -0.964336,
		-0.141680, 0.958656, 0.246790,
		0.987985, 0.121389, 0.095658,
		36.824585, 37.439323, 39.758064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349422, 37.920696, 39.124691>,  <36.132996, 37.354351, 39.691105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349422, 37.920696, 39.124691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696842, 37.759438, 39.239998>,  <36.905293, 37.662682, 39.309181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696842, 37.759438, 39.239998>,  <36.349422, 37.920696, 39.124691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696842, 37.759438, 39.239998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372252, 0.146682, -0.916468,
		0.327190, 0.903302, 0.277473,
		0.868548, -0.403149, 0.288263,
		36.957405, 37.638493, 39.326477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956699, 38.351528, 38.925438>,  <36.349422, 37.920696, 39.124691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956699, 38.351528, 38.925438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104813, 37.983574, 38.977139>,  <37.193680, 37.762802, 39.008160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104813, 37.983574, 38.977139>,  <36.956699, 38.351528, 38.925438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104813, 37.983574, 38.977139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293484, -0.016162, -0.955827,
		0.881339, 0.391858, 0.263987,
		0.370282, -0.919884, 0.129248,
		37.215897, 37.707607, 39.015911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722885, 38.369606, 38.598175>,  <36.956699, 38.351528, 38.925438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722885, 38.369606, 38.598175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613510, 37.984894, 38.604111>,  <37.547886, 37.754066, 38.607670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613510, 37.984894, 38.604111>,  <37.722885, 38.369606, 38.598175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613510, 37.984894, 38.604111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379792, -0.122119, -0.916976,
		0.883737, -0.245098, 0.398667,
		-0.273434, -0.961776, 0.014835,
		37.531479, 37.696362, 38.608562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256958, 38.063446, 38.277721>,  <37.722885, 38.369606, 38.598175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256958, 38.063446, 38.277721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972752, 37.785080, 38.236019>,  <37.802227, 37.618061, 38.210999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972752, 37.785080, 38.236019>,  <38.256958, 38.063446, 38.277721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972752, 37.785080, 38.236019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453829, -0.339952, -0.823694,
		0.537778, -0.632563, 0.557368,
		-0.710517, -0.695914, -0.104257,
		37.759598, 37.576305, 38.204742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598877, 37.443302, 38.127956>,  <38.256958, 38.063446, 38.277721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598877, 37.443302, 38.127956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241344, 37.360619, 37.968796>,  <38.026825, 37.311008, 37.873299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241344, 37.360619, 37.968796>,  <38.598877, 37.443302, 38.127956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241344, 37.360619, 37.968796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445954, -0.502267, -0.740846,
		-0.046716, -0.839642, 0.541127,
		-0.893836, -0.206708, -0.397906,
		37.973194, 37.298607, 37.849422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277046, 36.918926, 37.832031>,  <38.598877, 37.443302, 38.127956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277046, 36.918926, 37.832031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504604, 36.602844, 37.740883>,  <38.641140, 36.413193, 37.686195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504604, 36.602844, 37.740883>,  <38.277046, 36.918926, 37.832031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504604, 36.602844, 37.740883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627625, 0.238112, 0.741208,
		-0.531450, -0.564689, 0.631416,
		0.568900, -0.790208, -0.227868,
		38.675274, 36.365784, 37.672523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278084, 36.431347, 38.365189>,  <38.277046, 36.918926, 37.832031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278084, 36.431347, 38.365189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622952, 36.359081, 38.175865>,  <38.829872, 36.315723, 38.062271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622952, 36.359081, 38.175865>,  <38.278084, 36.431347, 38.365189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622952, 36.359081, 38.175865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489307, 0.054862, 0.870384,
		-0.131280, -0.982014, 0.135701,
		0.862174, -0.180664, -0.473304,
		38.881603, 36.304882, 38.033875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664272, 35.807663, 38.636925>,  <38.278084, 36.431347, 38.365189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664272, 35.807663, 38.636925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930325, 36.054855, 38.469257>,  <39.089958, 36.203171, 38.368656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930325, 36.054855, 38.469257>,  <38.664272, 35.807663, 38.636925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930325, 36.054855, 38.469257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533341, -0.000274, 0.845901,
		0.522635, -0.786193, -0.329776,
		0.665132, 0.617980, -0.419166,
		39.129864, 36.240250, 38.343506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315323, 35.671227, 38.883556>,  <38.664272, 35.807663, 38.636925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315323, 35.671227, 38.883556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385715, 36.039894, 38.745243>,  <39.427952, 36.261093, 38.662254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.385715, 36.039894, 38.745243>,  <39.315323, 35.671227, 38.883556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385715, 36.039894, 38.745243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649324, 0.155326, 0.744481,
		0.739870, -0.355540, -0.571124,
		0.175983, 0.921664, -0.345782,
		39.438511, 36.316395, 38.641510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023865, 35.657463, 38.972618>,  <39.315323, 35.671227, 38.883556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023865, 35.657463, 38.972618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.923733, 36.040051, 38.912628>,  <39.863651, 36.269604, 38.876633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.923733, 36.040051, 38.912628>,  <40.023865, 35.657463, 38.972618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923733, 36.040051, 38.912628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675200, 0.283496, 0.680981,
		0.693858, 0.069207, -0.716778,
		-0.250332, 0.956473, -0.149978,
		39.848633, 36.326992, 38.867634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683529, 36.056679, 38.822445>,  <40.023865, 35.657463, 38.972618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683529, 36.056679, 38.822445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393227, 36.279514, 38.983902>,  <40.219044, 36.413216, 39.080776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393227, 36.279514, 38.983902>,  <40.683529, 36.056679, 38.822445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393227, 36.279514, 38.983902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522616, 0.064905, 0.850094,
		0.447381, 0.827911, -0.338250,
		-0.725757, 0.557091, 0.403642,
		40.175499, 36.446640, 39.104996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026081, 36.383659, 39.352047>,  <40.683529, 36.056679, 38.822445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026081, 36.383659, 39.352047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.643784, 36.456707, 39.444305>,  <40.414406, 36.500538, 39.499660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.643784, 36.456707, 39.444305>,  <41.026081, 36.383659, 39.352047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643784, 36.456707, 39.444305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246226, 0.067519, 0.966858,
		0.160997, 0.980862, -0.109498,
		-0.955747, 0.182623, 0.230643,
		40.357059, 36.511494, 39.513500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972198, 37.033905, 39.809193>,  <41.026081, 36.383659, 39.352047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972198, 37.033905, 39.809193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.652367, 36.800858, 39.867481>,  <40.460468, 36.661030, 39.902454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.652367, 36.800858, 39.867481>,  <40.972198, 37.033905, 39.809193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652367, 36.800858, 39.867481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139403, 0.055958, 0.988653,
		-0.584163, 0.810817, 0.036476,
		-0.799576, -0.582619, 0.145718,
		40.412495, 36.626072, 39.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772198, 37.248898, 40.428101>,  <40.972198, 37.033905, 39.809193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772198, 37.248898, 40.428101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528595, 36.934685, 40.384193>,  <40.382431, 36.746159, 40.357849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.528595, 36.934685, 40.384193>,  <40.772198, 37.248898, 40.428101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528595, 36.934685, 40.384193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012608, -0.128782, 0.991593,
		-0.793063, 0.605273, 0.068525,
		-0.609009, -0.785531, -0.109764,
		40.345894, 36.699024, 40.351265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174828, 37.442787, 40.670368>,  <40.772198, 37.248898, 40.428101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174828, 37.442787, 40.670368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.154793, 37.043766, 40.689861>,  <40.142773, 36.804352, 40.701557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.154793, 37.043766, 40.689861>,  <40.174828, 37.442787, 40.670368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154793, 37.043766, 40.689861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037095, 0.050614, 0.998029,
		-0.998056, 0.048182, -0.039540,
		-0.050088, -0.997556, 0.048728,
		40.139767, 36.744499, 40.704479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658398, 37.326878, 41.136681>,  <40.174828, 37.442787, 40.670368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658398, 37.326878, 41.136681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884354, 36.996811, 41.136192>,  <40.019928, 36.798771, 41.135899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884354, 36.996811, 41.136192>,  <39.658398, 37.326878, 41.136681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884354, 36.996811, 41.136192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084895, -0.059588, 0.994606,
		-0.820791, -0.561735, -0.103713,
		0.564885, -0.825168, -0.001221,
		40.053818, 36.749260, 41.135826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427612, 36.932240, 41.693920>,  <39.658398, 37.326878, 41.136681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427612, 36.932240, 41.693920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787979, 36.775070, 41.620216>,  <40.004200, 36.680767, 41.575993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.787979, 36.775070, 41.620216>,  <39.427612, 36.932240, 41.693920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787979, 36.775070, 41.620216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062156, -0.303375, 0.950842,
		-0.429512, -0.868085, -0.248894,
		0.900920, -0.392928, -0.184260,
		40.058254, 36.657192, 41.564938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345249, 36.426430, 42.046612>,  <39.427612, 36.932240, 41.693920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345249, 36.426430, 42.046612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741009, 36.407806, 41.991600>,  <39.978466, 36.396633, 41.958591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741009, 36.407806, 41.991600>,  <39.345249, 36.426430, 42.046612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741009, 36.407806, 41.991600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108297, -0.394282, 0.912586,
		-0.096718, -0.917809, -0.385061,
		0.989403, -0.046562, -0.137530,
		40.037830, 36.393837, 41.950340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502365, 35.791214, 42.257584>,  <39.345249, 36.426430, 42.046612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502365, 35.791214, 42.257584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871243, 35.944027, 42.233570>,  <40.092571, 36.035717, 42.219162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871243, 35.944027, 42.233570>,  <39.502365, 35.791214, 42.257584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871243, 35.944027, 42.233570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235463, -0.431541, 0.870821,
		0.306779, -0.817203, -0.487920,
		0.922195, 0.382037, -0.060033,
		40.147900, 36.058640, 42.215561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039639, 35.385914, 42.460125>,  <39.502365, 35.791214, 42.257584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039639, 35.385914, 42.460125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222736, 35.731327, 42.544773>,  <40.332596, 35.938576, 42.595562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222736, 35.731327, 42.544773>,  <40.039639, 35.385914, 42.460125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222736, 35.731327, 42.544773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193229, -0.328954, 0.924366,
		0.867831, -0.382235, -0.317437,
		0.457747, 0.863531, 0.211617,
		40.360062, 35.990387, 42.608257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776791, 35.266689, 42.742004>,  <40.039639, 35.385914, 42.460125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776791, 35.266689, 42.742004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635681, 35.617653, 42.872059>,  <40.551018, 35.828232, 42.950092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.635681, 35.617653, 42.872059>,  <40.776791, 35.266689, 42.742004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635681, 35.617653, 42.872059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236693, -0.252502, 0.938200,
		0.905279, 0.407927, -0.118601,
		-0.352770, 0.877404, 0.325138,
		40.529850, 35.880875, 42.969601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213840, 35.592186, 43.122276>,  <40.776791, 35.266689, 42.742004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213840, 35.592186, 43.122276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880390, 35.753952, 43.272758>,  <40.680321, 35.851009, 43.363045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880390, 35.753952, 43.272758>,  <41.213840, 35.592186, 43.122276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880390, 35.753952, 43.272758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278972, -0.279568, 0.918704,
		0.476708, 0.870800, 0.120234,
		-0.833621, 0.404411, 0.376201,
		40.630302, 35.875275, 43.385620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465282, 36.029232, 43.612915>,  <41.213840, 35.592186, 43.122276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465282, 36.029232, 43.612915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087864, 35.965839, 43.729259>,  <40.861412, 35.927803, 43.799065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087864, 35.965839, 43.729259>,  <41.465282, 36.029232, 43.612915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087864, 35.965839, 43.729259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298145, -0.023765, 0.954225,
		-0.144310, 0.987077, 0.069673,
		-0.943549, -0.158477, 0.290862,
		40.804798, 35.918297, 43.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487236, 36.301655, 44.250984>,  <41.465282, 36.029232, 43.612915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487236, 36.301655, 44.250984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142876, 36.098583, 44.264359>,  <40.936260, 35.976742, 44.272385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142876, 36.098583, 44.264359>,  <41.487236, 36.301655, 44.250984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142876, 36.098583, 44.264359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084659, -0.078135, 0.993342,
		-0.501683, 0.857997, 0.110246,
		-0.860899, -0.507676, 0.033439,
		40.884605, 35.946281, 44.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.067757, 36.605179, 44.862171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908916, 36.247082, 44.781319>,  <40.813614, 36.032223, 44.732807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908916, 36.247082, 44.781319>,  <41.067757, 36.605179, 44.862171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908916, 36.247082, 44.781319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293753, -0.084675, 0.952124,
		-0.869494, 0.437465, -0.229355,
		-0.397100, -0.895240, -0.202132,
		40.789787, 35.978508, 44.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438950, 36.678017, 45.041115>,  <41.067757, 36.605179, 44.862171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438950, 36.678017, 45.041115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510746, 36.285313, 45.066193>,  <40.553822, 36.049690, 45.081238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510746, 36.285313, 45.066193>,  <40.438950, 36.678017, 45.041115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510746, 36.285313, 45.066193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169243, 0.031961, 0.985056,
		-0.969093, -0.187417, -0.160420,
		0.179489, -0.981760, 0.062692,
		40.564594, 35.990784, 45.084999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804394, 36.372791, 45.300690>,  <40.438950, 36.678017, 45.041115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804394, 36.372791, 45.300690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126373, 36.147831, 45.376335>,  <40.319561, 36.012856, 45.421722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126373, 36.147831, 45.376335>,  <39.804394, 36.372791, 45.300690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126373, 36.147831, 45.376335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218176, 0.015851, 0.975781,
		-0.551777, -0.826713, -0.109943,
		0.804948, -0.562401, 0.189115,
		40.367859, 35.979111, 45.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580795, 36.053772, 46.007694>,  <39.804394, 36.372791, 45.300690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580795, 36.053772, 46.007694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950031, 35.903538, 45.974625>,  <40.171574, 35.813396, 45.954784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950031, 35.903538, 45.974625>,  <39.580795, 36.053772, 46.007694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950031, 35.903538, 45.974625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030546, -0.285905, 0.957771,
		-0.383360, -0.881587, -0.275390,
		0.923094, -0.375583, -0.082675,
		40.226959, 35.790863, 45.949821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509235, 35.414703, 46.293880>,  <39.580795, 36.053772, 46.007694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509235, 35.414703, 46.293880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889072, 35.540085, 46.295670>,  <40.116974, 35.615314, 46.296741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889072, 35.540085, 46.295670>,  <39.509235, 35.414703, 46.293880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889072, 35.540085, 46.295670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048251, -0.160237, 0.985899,
		0.309749, -0.935987, -0.167284,
		0.949593, 0.313453, 0.004470,
		40.173950, 35.634121, 46.297012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829418, 34.967228, 46.722679>,  <39.509235, 35.414703, 46.293880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829418, 34.967228, 46.722679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109322, 35.252953, 46.718597>,  <40.277264, 35.424389, 46.716148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109322, 35.252953, 46.718597>,  <39.829418, 34.967228, 46.722679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109322, 35.252953, 46.718597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051946, -0.036634, 0.997978,
		0.712492, -0.698869, -0.062740,
		0.699755, 0.714311, -0.010202,
		40.319248, 35.467247, 46.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373108, 34.694080, 47.073322>,  <39.829418, 34.967228, 46.722679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373108, 34.694080, 47.073322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433918, 35.089420, 47.070625>,  <40.470402, 35.326626, 47.069008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433918, 35.089420, 47.070625>,  <40.373108, 34.694080, 47.073322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433918, 35.089420, 47.070625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114697, -0.010868, 0.993341,
		0.981700, -0.151781, -0.115014,
		0.152021, 0.988355, -0.006739,
		40.479523, 35.385925, 47.068604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916164, 34.858471, 47.579048>,  <40.373108, 34.694080, 47.073322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916164, 34.858471, 47.579048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.732254, 35.210545, 47.531918>,  <40.621910, 35.421787, 47.503639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.732254, 35.210545, 47.531918>,  <40.916164, 34.858471, 47.579048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732254, 35.210545, 47.531918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205247, 0.234411, 0.950224,
		0.863992, 0.412704, -0.288432,
		-0.459773, 0.880185, -0.117823,
		40.594322, 35.474602, 47.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259598, 35.299427, 48.071682>,  <40.916164, 34.858471, 47.579048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259598, 35.299427, 48.071682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.917873, 35.494389, 47.999477>,  <40.712837, 35.611366, 47.956154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.917873, 35.494389, 47.999477>,  <41.259598, 35.299427, 48.071682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917873, 35.494389, 47.999477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010750, 0.363800, 0.931415,
		0.519646, 0.793781, -0.316039,
		-0.854314, 0.487403, -0.180514,
		40.661579, 35.640610, 47.945324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445465, 36.006569, 48.185127>,  <41.259598, 35.299427, 48.071682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445465, 36.006569, 48.185127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053787, 35.942791, 48.235340>,  <40.818783, 35.904526, 48.265469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.053787, 35.942791, 48.235340>,  <41.445465, 36.006569, 48.185127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053787, 35.942791, 48.235340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095149, 0.185672, 0.977994,
		-0.179244, 0.969589, -0.166638,
		-0.979193, -0.159444, 0.125536,
		40.760029, 35.894958, 48.273003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218315, 36.448597, 48.681320>,  <41.445465, 36.006569, 48.185127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218315, 36.448597, 48.681320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923874, 36.180126, 48.716385>,  <40.747211, 36.019043, 48.737423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923874, 36.180126, 48.716385>,  <41.218315, 36.448597, 48.681320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923874, 36.180126, 48.716385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099799, 0.020474, 0.994797,
		-0.669476, 0.741018, 0.051911,
		-0.736099, -0.671173, 0.087660,
		40.703045, 35.978775, 48.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718998, 36.736549, 49.158459>,  <41.218315, 36.448597, 48.681320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718998, 36.736549, 49.158459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701893, 36.336948, 49.153366>,  <40.691631, 36.097187, 49.150311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701893, 36.336948, 49.153366>,  <40.718998, 36.736549, 49.158459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701893, 36.336948, 49.153366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006743, -0.013035, 0.999892,
		-0.999063, 0.042670, 0.007294,
		-0.042761, -0.999004, -0.012735,
		40.689064, 36.037247, 49.149548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348530, 36.556629, 49.732250>,  <40.718998, 36.736549, 49.158459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348530, 36.556629, 49.732250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462646, 36.181999, 49.650829>,  <40.531116, 35.957222, 49.601978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.462646, 36.181999, 49.650829>,  <40.348530, 36.556629, 49.732250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462646, 36.181999, 49.650829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188906, -0.153261, 0.969961,
		-0.939640, -0.315173, 0.133201,
		0.285291, -0.936577, -0.203549,
		40.548233, 35.901028, 49.589764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086605, 36.035168, 50.279472>,  <40.348530, 36.556629, 49.732250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086605, 36.035168, 50.279472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.401196, 35.863438, 50.101871>,  <40.589951, 35.760399, 49.995312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.401196, 35.863438, 50.101871>,  <40.086605, 36.035168, 50.279472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401196, 35.863438, 50.101871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285639, -0.384552, 0.877799,
		-0.547604, -0.817190, -0.179807,
		0.786473, -0.429326, -0.444003,
		40.637138, 35.734642, 49.968670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062279, 35.229591, 50.407932>,  <40.086605, 36.035168, 50.279472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062279, 35.229591, 50.407932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441319, 35.334782, 50.335373>,  <40.668743, 35.397896, 50.291836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.441319, 35.334782, 50.335373>,  <40.062279, 35.229591, 50.407932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441319, 35.334782, 50.335373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266210, -0.336062, 0.903435,
		0.176620, -0.904381, -0.388458,
		0.947596, 0.262976, -0.181400,
		40.725597, 35.413673, 50.280952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434700, 34.701443, 50.719784>,  <40.062279, 35.229591, 50.407932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434700, 34.701443, 50.719784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724995, 34.972534, 50.672470>,  <40.899170, 35.135189, 50.644081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724995, 34.972534, 50.672470>,  <40.434700, 34.701443, 50.719784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724995, 34.972534, 50.672470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370107, -0.239676, 0.897539,
		0.579938, -0.695154, -0.424774,
		0.725736, 0.677729, -0.118284,
		40.942715, 35.175854, 50.636986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070522, 34.348694, 50.822556>,  <40.434700, 34.701443, 50.719784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070522, 34.348694, 50.822556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132900, 34.735771, 50.901810>,  <41.170326, 34.968018, 50.949364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.132900, 34.735771, 50.901810>,  <41.070522, 34.348694, 50.822556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132900, 34.735771, 50.901810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495215, -0.250155, 0.831976,
		0.854659, -0.031627, -0.518226,
		0.155949, 0.967689, 0.198136,
		41.179684, 35.026077, 50.961250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755417, 34.353920, 50.971207>,  <41.070522, 34.348694, 50.822556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755417, 34.353920, 50.971207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635189, 34.715572, 51.092670>,  <41.563053, 34.932564, 51.165550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.635189, 34.715572, 51.092670>,  <41.755417, 34.353920, 50.971207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635189, 34.715572, 51.092670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527270, -0.107790, 0.842833,
		0.794762, 0.413439, -0.444323,
		-0.300566, 0.904129, 0.303661,
		41.545021, 34.986813, 51.183769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303432, 34.641956, 51.405289>,  <41.755417, 34.353920, 50.971207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303432, 34.641956, 51.405289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999352, 34.884781, 51.497868>,  <41.816902, 35.030476, 51.553413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.999352, 34.884781, 51.497868>,  <42.303432, 34.641956, 51.405289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999352, 34.884781, 51.497868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236229, -0.073583, 0.968907,
		0.605221, 0.791237, -0.087469,
		-0.760199, 0.607066, 0.231447,
		41.771290, 35.066902, 51.567303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448250, 34.865269, 52.055042>,  <42.303432, 34.641956, 51.405289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448250, 34.865269, 52.055042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.053223, 34.925831, 52.038120>,  <41.816208, 34.962166, 52.027966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.053223, 34.925831, 52.038120>,  <42.448250, 34.865269, 52.055042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053223, 34.925831, 52.038120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059938, -0.113863, 0.991687,
		0.145326, 0.981893, 0.121522,
		-0.987567, 0.151401, -0.042305,
		41.756954, 34.971252, 52.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298008, 35.302025, 52.630180>,  <42.448250, 34.865269, 52.055042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298008, 35.302025, 52.630180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.949860, 35.131084, 52.532349>,  <41.740971, 35.028519, 52.473652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.949860, 35.131084, 52.532349>,  <42.298008, 35.302025, 52.630180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949860, 35.131084, 52.532349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220225, -0.106397, 0.969629,
		-0.440396, 0.897802, -0.001509,
		-0.870375, -0.427353, -0.244575,
		41.688747, 35.002880, 52.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776752, 35.530972, 53.095760>,  <42.298008, 35.302025, 52.630180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776752, 35.530972, 53.095760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639046, 35.176308, 52.972271>,  <41.556423, 34.963509, 52.898178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.639046, 35.176308, 52.972271>,  <41.776752, 35.530972, 53.095760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639046, 35.176308, 52.972271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145635, -0.274415, 0.950519,
		-0.927508, 0.372194, -0.034657,
		-0.344267, -0.886661, -0.308727,
		41.535767, 34.910309, 52.879654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092957, 35.260628, 53.174004>,  <41.776752, 35.530972, 53.095760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092957, 35.260628, 53.174004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885498, 35.152721, 53.498531>,  <40.761024, 35.087978, 53.693249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.885498, 35.152721, 53.498531>,  <41.092957, 35.260628, 53.174004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885498, 35.152721, 53.498531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505850, 0.861836, -0.036802,
		-0.689293, -0.429491, -0.583449,
		-0.518644, -0.269770, 0.811315,
		40.729904, 35.071789, 53.741924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330540, 35.293327, 53.075974>,  <41.092957, 35.260628, 53.174004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330540, 35.293327, 53.075974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432175, 35.350368, 53.458618>,  <40.493156, 35.384594, 53.688206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.432175, 35.350368, 53.458618>,  <40.330540, 35.293327, 53.075974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432175, 35.350368, 53.458618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463201, 0.886207, -0.009074,
		-0.849049, -0.440798, 0.291227,
		0.254087, 0.142600, 0.956611,
		40.508400, 35.393150, 53.745602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773659, 34.748020, 53.041912>,  <40.330540, 35.293327, 53.075974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773659, 34.748020, 53.041912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382843, 34.747330, 53.127132>,  <39.148354, 34.746918, 53.178265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382843, 34.747330, 53.127132>,  <39.773659, 34.748020, 53.041912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382843, 34.747330, 53.127132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188232, 0.475463, -0.859363,
		-0.099818, -0.879734, -0.464870,
		-0.977039, -0.001723, 0.213054,
		39.089733, 34.746811, 53.191048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395149, 34.384529, 52.508862>,  <39.773659, 34.748020, 53.041912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395149, 34.384529, 52.508862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131691, 34.637199, 52.672405>,  <38.973618, 34.788803, 52.770531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131691, 34.637199, 52.672405>,  <39.395149, 34.384529, 52.508862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131691, 34.637199, 52.672405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226170, 0.352046, -0.908246,
		-0.717658, -0.690685, -0.089007,
		-0.658646, 0.631679, 0.408861,
		38.934097, 34.826702, 52.795063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893955, 34.398083, 52.033955>,  <39.395149, 34.384529, 52.508862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893955, 34.398083, 52.033955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847599, 34.715633, 52.272728>,  <38.819786, 34.906162, 52.415993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.847599, 34.715633, 52.272728>,  <38.893955, 34.398083, 52.033955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847599, 34.715633, 52.272728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145138, 0.580996, -0.800861,
		-0.982601, -0.179448, 0.047891,
		-0.115888, 0.793878, 0.596932,
		38.812832, 34.953796, 52.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351254, 34.657833, 51.785332>,  <38.893955, 34.398083, 52.033955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351254, 34.657833, 51.785332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513149, 34.967545, 51.979927>,  <38.610287, 35.153374, 52.096684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513149, 34.967545, 51.979927>,  <38.351254, 34.657833, 51.785332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513149, 34.967545, 51.979927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248563, 0.605139, -0.756322,
		-0.880000, 0.185194, 0.437383,
		0.404744, 0.774280, 0.486490,
		38.634571, 35.199829, 52.125874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767769, 35.105984, 52.014626>,  <38.351254, 34.657833, 51.785332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767769, 35.105984, 52.014626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089130, 35.343616, 52.030647>,  <38.281948, 35.486198, 52.040260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089130, 35.343616, 52.030647>,  <37.767769, 35.105984, 52.014626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089130, 35.343616, 52.030647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388361, 0.573812, -0.721052,
		-0.451349, 0.563741, 0.691723,
		0.803405, 0.594084, 0.040054,
		38.330151, 35.521843, 52.042664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455387, 35.769573, 51.918465>,  <37.767769, 35.105984, 52.014626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455387, 35.769573, 51.918465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842785, 35.848057, 51.857121>,  <38.075222, 35.895149, 51.820312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.842785, 35.848057, 51.857121>,  <37.455387, 35.769573, 51.918465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842785, 35.848057, 51.857121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239027, 0.559556, -0.793576,
		-0.069894, 0.805232, 0.588826,
		0.968494, 0.196211, -0.153363,
		38.133331, 35.906921, 51.811111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504574, 36.512730, 51.699646>,  <37.455387, 35.769573, 51.918465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504574, 36.512730, 51.699646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830280, 36.327206, 51.560017>,  <38.025703, 36.215893, 51.476238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.830280, 36.327206, 51.560017>,  <37.504574, 36.512730, 51.699646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830280, 36.327206, 51.560017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175688, 0.376236, -0.909714,
		0.553269, 0.802077, 0.224870,
		0.814265, -0.463810, -0.349075,
		38.074558, 36.188065, 51.455296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977097, 37.012699, 51.263569>,  <37.504574, 36.512730, 51.699646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977097, 37.012699, 51.263569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079002, 36.640144, 51.159557>,  <38.140144, 36.416611, 51.097149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079002, 36.640144, 51.159557>,  <37.977097, 37.012699, 51.263569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079002, 36.640144, 51.159557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045036, 0.257181, -0.965313,
		0.965954, 0.257636, 0.023574,
		0.254762, -0.931387, -0.260028,
		38.155430, 36.360729, 51.081551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529079, 37.122993, 50.804985>,  <37.977097, 37.012699, 51.263569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529079, 37.122993, 50.804985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373821, 36.760830, 50.736179>,  <38.280666, 36.543533, 50.694897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373821, 36.760830, 50.736179>,  <38.529079, 37.122993, 50.804985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373821, 36.760830, 50.736179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019032, 0.178728, -0.983715,
		0.921402, -0.385096, -0.052141,
		-0.388144, -0.905404, -0.172009,
		38.257378, 36.489208, 50.684578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061184, 36.795078, 50.356117>,  <38.529079, 37.122993, 50.804985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061184, 36.795078, 50.356117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.717094, 36.595814, 50.312565>,  <38.510643, 36.476257, 50.286434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.717094, 36.595814, 50.312565>,  <39.061184, 36.795078, 50.356117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717094, 36.595814, 50.312565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043115, 0.141714, -0.988968,
		0.508094, -0.855427, -0.100427,
		-0.860222, -0.498159, -0.108886,
		38.459026, 36.446365, 50.279900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173210, 36.444332, 49.727982>,  <39.061184, 36.795078, 50.356117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173210, 36.444332, 49.727982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780602, 36.389446, 49.781345>,  <38.545036, 36.356514, 49.813362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780602, 36.389446, 49.781345>,  <39.173210, 36.444332, 49.727982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780602, 36.389446, 49.781345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130022, -0.033377, -0.990949,
		0.140424, -0.989979, 0.014920,
		-0.981517, -0.137213, 0.133406,
		38.486145, 36.348282, 49.821365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922604, 35.759453, 49.367023>,  <39.173210, 36.444332, 49.727982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922604, 35.759453, 49.367023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656242, 36.056438, 49.396191>,  <38.496426, 36.234631, 49.413692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656242, 36.056438, 49.396191>,  <38.922604, 35.759453, 49.367023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656242, 36.056438, 49.396191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139829, -0.028201, -0.989774,
		-0.732820, -0.669286, 0.122598,
		-0.665900, 0.742469, 0.072920,
		38.456470, 36.279179, 49.418068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438915, 35.592113, 48.904613>,  <38.922604, 35.759453, 49.367023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438915, 35.592113, 48.904613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344688, 35.976643, 48.961697>,  <38.288151, 36.207359, 48.995945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344688, 35.976643, 48.961697>,  <38.438915, 35.592113, 48.904613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344688, 35.976643, 48.961697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035620, 0.138202, -0.989764,
		-0.971205, -0.238238, 0.001686,
		-0.235567, 0.961324, 0.142708,
		38.274017, 36.265041, 49.004509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864246, 35.783077, 48.410328>,  <38.438915, 35.592113, 48.904613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864246, 35.783077, 48.410328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001965, 36.145344, 48.509312>,  <38.084595, 36.362701, 48.568703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001965, 36.145344, 48.509312>,  <37.864246, 35.783077, 48.410328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001965, 36.145344, 48.509312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128872, 0.306665, -0.943053,
		-0.929973, 0.292803, 0.222299,
		0.344300, 0.905662, 0.247456,
		38.105255, 36.417042, 48.583549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441586, 36.270741, 48.087265>,  <37.864246, 35.783077, 48.410328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441586, 36.270741, 48.087265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786934, 36.457554, 48.163658>,  <37.994141, 36.569641, 48.209496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786934, 36.457554, 48.163658>,  <37.441586, 36.270741, 48.087265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786934, 36.457554, 48.163658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009876, 0.362795, -0.931817,
		-0.504478, 0.806387, 0.308613,
		0.863368, 0.467033, 0.190986,
		38.045944, 36.597664, 48.220955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287056, 36.923565, 47.931496>,  <37.441586, 36.270741, 48.087265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287056, 36.923565, 47.931496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682976, 36.881104, 47.893482>,  <37.920528, 36.855629, 47.870674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682976, 36.881104, 47.893482>,  <37.287056, 36.923565, 47.931496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682976, 36.881104, 47.893482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050160, 0.364666, -0.929786,
		0.133351, 0.925068, 0.355621,
		0.989799, -0.106150, -0.095030,
		37.979916, 36.849258, 47.864975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413307, 37.487564, 47.428238>,  <37.287056, 36.923565, 47.931496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413307, 37.487564, 47.428238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750259, 37.272800, 47.446671>,  <37.952431, 37.143944, 47.457729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750259, 37.272800, 47.446671>,  <37.413307, 37.487564, 47.428238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750259, 37.272800, 47.446671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093596, 0.061566, -0.993705,
		0.530690, 0.841392, 0.102115,
		0.842382, -0.536907, 0.046078,
		38.002975, 37.111729, 47.460495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894985, 37.860817, 47.039600>,  <37.413307, 37.487564, 47.428238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894985, 37.860817, 47.039600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050831, 37.492477, 47.033367>,  <38.144341, 37.271473, 47.029629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050831, 37.492477, 47.033367>,  <37.894985, 37.860817, 47.039600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050831, 37.492477, 47.033367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056071, 0.040607, -0.997601,
		0.919268, 0.387810, 0.067454,
		0.389619, -0.920844, -0.015583,
		38.167717, 37.216225, 47.028690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477840, 37.895569, 46.682049>,  <37.894985, 37.860817, 47.039600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477840, 37.895569, 46.682049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378704, 37.508743, 46.658875>,  <38.319221, 37.276646, 46.644970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378704, 37.508743, 46.658875>,  <38.477840, 37.895569, 46.682049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378704, 37.508743, 46.658875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061178, 0.044062, -0.997154,
		0.966866, -0.250684, 0.048242,
		-0.247845, -0.967066, -0.057939,
		38.304352, 37.218624, 46.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827328, 37.629532, 46.111172>,  <38.477840, 37.895569, 46.682049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827328, 37.629532, 46.111172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517403, 37.385300, 46.176716>,  <38.331448, 37.238758, 46.216042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.517403, 37.385300, 46.176716>,  <38.827328, 37.629532, 46.111172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517403, 37.385300, 46.176716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248195, 0.055401, -0.967125,
		0.581434, -0.790011, -0.194469,
		-0.774813, -0.610585, 0.163865,
		38.284958, 37.202126, 46.225876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.381428, 37.218430, 41.551205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023273, 37.202766, 41.728630>,  <44.808380, 37.193367, 41.835087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.023273, 37.202766, 41.728630>,  <45.381428, 37.218430, 41.551205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023273, 37.202766, 41.728630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301032, -0.680783, -0.667768,
		0.328125, -0.731438, 0.597773,
		-0.895385, -0.039163, 0.443568,
		44.754658, 37.191017, 41.861702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078094, 36.535828, 41.473976>,  <45.381428, 37.218430, 41.551205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078094, 36.535828, 41.473976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738228, 36.737476, 41.535854>,  <44.534309, 36.858467, 41.572983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738228, 36.737476, 41.535854>,  <45.078094, 36.535828, 41.473976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738228, 36.737476, 41.535854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441925, -0.520678, -0.730477,
		-0.287704, -0.689024, 0.665186,
		-0.849664, 0.504123, 0.154696,
		44.483330, 36.888714, 41.582264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606125, 36.045578, 41.455376>,  <45.078094, 36.535828, 41.473976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606125, 36.045578, 41.455376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409664, 36.387283, 41.387249>,  <44.291786, 36.592304, 41.346375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.409664, 36.387283, 41.387249>,  <44.606125, 36.045578, 41.455376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409664, 36.387283, 41.387249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486135, -0.431056, -0.760173,
		-0.722800, -0.290567, 0.627001,
		-0.491154, 0.854261, -0.170313,
		44.262318, 36.643562, 41.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896194, 35.831879, 41.404602>,  <44.606125, 36.045578, 41.455376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896194, 35.831879, 41.404602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914200, 36.201691, 41.253227>,  <43.925003, 36.423576, 41.162403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.914200, 36.201691, 41.253227>,  <43.896194, 35.831879, 41.404602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914200, 36.201691, 41.253227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577087, -0.285157, -0.765282,
		-0.815441, 0.252839, 0.520699,
		0.045012, 0.924531, -0.378439,
		43.927704, 36.479050, 41.139694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185833, 35.901886, 41.117321>,  <43.896194, 35.831879, 41.404602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185833, 35.901886, 41.117321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422585, 36.150612, 40.912174>,  <43.564636, 36.299847, 40.789085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422585, 36.150612, 40.912174>,  <43.185833, 35.901886, 41.117321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422585, 36.150612, 40.912174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502810, -0.212469, -0.837878,
		-0.629972, 0.753794, 0.186899,
		0.591877, 0.621814, -0.512864,
		43.600147, 36.337154, 40.758316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782906, 36.206123, 40.526058>,  <43.185833, 35.901886, 41.117321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782906, 36.206123, 40.526058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151394, 36.323074, 40.423401>,  <43.372486, 36.393246, 40.361805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151394, 36.323074, 40.423401>,  <42.782906, 36.206123, 40.526058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151394, 36.323074, 40.423401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257697, -0.035618, -0.965569,
		-0.291453, 0.955639, 0.042534,
		0.921221, 0.292379, -0.256646,
		43.427761, 36.410789, 40.346409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870937, 36.796360, 40.005142>,  <42.782906, 36.206123, 40.526058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870937, 36.796360, 40.005142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183754, 36.547699, 39.987442>,  <43.371445, 36.398502, 39.976822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183754, 36.547699, 39.987442>,  <42.870937, 36.796360, 40.005142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183754, 36.547699, 39.987442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223478, -0.213430, -0.951055,
		0.581785, 0.753651, -0.305837,
		0.782038, -0.621657, -0.044254,
		43.418365, 36.361202, 39.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085503, 36.938953, 39.284424>,  <42.870937, 36.796360, 40.005142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085503, 36.938953, 39.284424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264915, 36.610844, 39.426395>,  <43.372562, 36.413979, 39.511578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264915, 36.610844, 39.426395>,  <43.085503, 36.938953, 39.284424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264915, 36.610844, 39.426395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113247, -0.341759, -0.932939,
		0.886565, 0.458645, -0.060396,
		0.448529, -0.820271, 0.354932,
		43.399475, 36.364761, 39.532875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609539, 36.765923, 38.799278>,  <43.085503, 36.938953, 39.284424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609539, 36.765923, 38.799278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563538, 36.424477, 39.002502>,  <43.535938, 36.219608, 39.124435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563538, 36.424477, 39.002502>,  <43.609539, 36.765923, 38.799278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563538, 36.424477, 39.002502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146344, -0.520431, -0.841270,
		0.982526, -0.022398, 0.184772,
		-0.115004, -0.853610, 0.508059,
		43.529037, 36.168392, 39.154919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123829, 36.317562, 38.545765>,  <43.609539, 36.765923, 38.799278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123829, 36.317562, 38.545765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856808, 36.067535, 38.707588>,  <43.696594, 35.917519, 38.804680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856808, 36.067535, 38.707588>,  <44.123829, 36.317562, 38.545765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856808, 36.067535, 38.707588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036269, -0.570001, -0.820843,
		0.743677, -0.533284, 0.403177,
		-0.667554, -0.625065, 0.404555,
		43.656540, 35.880016, 38.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380760, 35.637344, 38.503242>,  <44.123829, 36.317562, 38.545765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380760, 35.637344, 38.503242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981987, 35.627190, 38.532860>,  <43.742722, 35.621098, 38.550632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.981987, 35.627190, 38.532860>,  <44.380760, 35.637344, 38.503242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981987, 35.627190, 38.532860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046756, -0.565566, -0.823377,
		0.062777, -0.824312, 0.562644,
		-0.996932, -0.025382, 0.074046,
		43.682907, 35.619576, 38.555073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202286, 35.062847, 38.253159>,  <44.380760, 35.637344, 38.503242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202286, 35.062847, 38.253159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.841400, 35.235363, 38.252815>,  <43.624870, 35.338875, 38.252609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.841400, 35.235363, 38.252815>,  <44.202286, 35.062847, 38.253159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841400, 35.235363, 38.252815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206867, -0.434490, -0.876598,
		-0.378443, -0.790700, 0.481222,
		-0.902213, 0.431291, -0.000860,
		43.570736, 35.364750, 38.252556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746937, 34.458412, 38.230007>,  <44.202286, 35.062847, 38.253159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746937, 34.458412, 38.230007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571114, 34.787281, 38.085331>,  <43.465618, 34.984604, 37.998528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571114, 34.787281, 38.085331>,  <43.746937, 34.458412, 38.230007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571114, 34.787281, 38.085331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259451, -0.501729, -0.825199,
		-0.859925, -0.268886, 0.433854,
		-0.439562, 0.822173, -0.361686,
		43.439243, 35.033932, 37.976826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054527, 34.252632, 37.921116>,  <43.746937, 34.458412, 38.230007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054527, 34.252632, 37.921116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153313, 34.589695, 37.729729>,  <43.212585, 34.791931, 37.614895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153313, 34.589695, 37.729729>,  <43.054527, 34.252632, 37.921116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153313, 34.589695, 37.729729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085093, -0.473000, -0.876943,
		-0.965281, 0.257288, -0.045110,
		0.246965, 0.842658, -0.478472,
		43.227402, 34.842491, 37.586185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720837, 34.173706, 37.311253>,  <43.054527, 34.252632, 37.921116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720837, 34.173706, 37.311253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942108, 34.498558, 37.237019>,  <43.074871, 34.693470, 37.192478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.942108, 34.498558, 37.237019>,  <42.720837, 34.173706, 37.311253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942108, 34.498558, 37.237019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003553, -0.220478, -0.975386,
		-0.833055, 0.540221, -0.119078,
		0.553178, 0.812127, -0.185590,
		43.108063, 34.742195, 37.181343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377197, 34.574352, 36.810993>,  <42.720837, 34.173706, 37.311253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377197, 34.574352, 36.810993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762459, 34.674454, 36.771591>,  <42.993614, 34.734516, 36.747952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.762459, 34.674454, 36.771591>,  <42.377197, 34.574352, 36.810993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762459, 34.674454, 36.771591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049994, -0.193280, -0.979869,
		-0.264259, 0.948690, -0.173647,
		0.963155, 0.250258, -0.098505,
		43.051407, 34.749531, 36.742039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364647, 35.096245, 36.270088>,  <42.377197, 34.574352, 36.810993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364647, 35.096245, 36.270088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735771, 34.947369, 36.280270>,  <42.958447, 34.858044, 36.286377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735771, 34.947369, 36.280270>,  <42.364647, 35.096245, 36.270088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735771, 34.947369, 36.280270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033088, -0.150049, -0.988125,
		0.371586, 0.915949, -0.151532,
		0.927809, -0.372187, 0.025449,
		43.014114, 34.835712, 36.287903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819889, 35.416245, 35.660339>,  <42.364647, 35.096245, 36.270088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819889, 35.416245, 35.660339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979729, 35.069172, 35.778622>,  <43.075634, 34.860928, 35.849590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.979729, 35.069172, 35.778622>,  <42.819889, 35.416245, 35.660339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979729, 35.069172, 35.778622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015996, -0.329135, -0.944148,
		0.916551, 0.372550, -0.145402,
		0.399599, -0.867685, 0.295709,
		43.099609, 34.808865, 35.867336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300213, 35.252487, 35.164841>,  <42.819889, 35.416245, 35.660339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300213, 35.252487, 35.164841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244293, 34.892025, 35.328979>,  <43.210743, 34.675747, 35.427464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244293, 34.892025, 35.328979>,  <43.300213, 35.252487, 35.164841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244293, 34.892025, 35.328979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034127, -0.418552, -0.907552,
		0.989592, -0.112870, 0.089266,
		-0.139798, -0.901152, 0.410343,
		43.202354, 34.621681, 35.452084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788715, 34.781944, 34.863220>,  <43.300213, 35.252487, 35.164841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788715, 34.781944, 34.863220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508080, 34.528698, 34.994022>,  <43.339699, 34.376751, 35.072506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508080, 34.528698, 34.994022>,  <43.788715, 34.781944, 34.863220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508080, 34.528698, 34.994022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157465, -0.585313, -0.795370,
		0.694964, -0.506532, 0.510344,
		-0.701591, -0.633115, 0.327010,
		43.297604, 34.338764, 35.092125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052414, 34.153606, 34.614319>,  <43.788715, 34.781944, 34.863220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052414, 34.153606, 34.614319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670021, 34.068169, 34.694790>,  <43.440586, 34.016907, 34.743073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670021, 34.068169, 34.694790>,  <44.052414, 34.153606, 34.614319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670021, 34.068169, 34.694790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023498, -0.739171, -0.673108,
		0.292477, -0.638753, 0.711654,
		-0.955984, -0.213591, 0.201181,
		43.383224, 34.004093, 34.755142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337532, 34.845680, 34.199871>,  <44.052414, 34.153606, 34.614319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337532, 34.845680, 34.199871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722469, 34.954304, 34.194908>,  <44.953430, 35.019478, 34.191933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.722469, 34.954304, 34.194908>,  <44.337532, 34.845680, 34.199871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722469, 34.954304, 34.194908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115854, -0.368416, 0.922414,
		0.245922, -0.889114, -0.386004,
		0.962341, 0.271562, -0.012405,
		45.011173, 35.035770, 34.191185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792549, 34.276955, 34.307732>,  <44.337532, 34.845680, 34.199871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792549, 34.276955, 34.307732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011330, 34.593601, 34.416683>,  <45.142597, 34.783588, 34.482056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011330, 34.593601, 34.416683>,  <44.792549, 34.276955, 34.307732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011330, 34.593601, 34.416683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219279, -0.449467, 0.865965,
		0.807935, -0.413916, -0.419422,
		0.546953, 0.791614, 0.272377,
		45.175415, 34.831085, 34.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508286, 34.030983, 34.370434>,  <44.792549, 34.276955, 34.307732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508286, 34.030983, 34.370434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442657, 34.344677, 34.609787>,  <45.403278, 34.532894, 34.753399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.442657, 34.344677, 34.609787>,  <45.508286, 34.030983, 34.370434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442657, 34.344677, 34.609787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317678, -0.532278, 0.784704,
		0.933895, 0.318843, -0.161800,
		-0.164075, 0.784232, 0.598381,
		45.393436, 34.579948, 34.789303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100574, 33.909130, 34.733910>,  <45.508286, 34.030983, 34.370434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100574, 33.909130, 34.733910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906872, 34.184452, 34.949955>,  <45.790649, 34.349648, 35.079582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906872, 34.184452, 34.949955>,  <46.100574, 33.909130, 34.733910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906872, 34.184452, 34.949955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365463, -0.401760, 0.839658,
		0.794941, 0.604004, -0.056996,
		-0.484258, 0.688308, 0.540117,
		45.761593, 34.390945, 35.111988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530071, 34.097103, 35.280746>,  <46.100574, 33.909130, 34.733910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530071, 34.097103, 35.280746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167931, 34.197350, 35.417877>,  <45.950645, 34.257496, 35.500156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167931, 34.197350, 35.417877>,  <46.530071, 34.097103, 35.280746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167931, 34.197350, 35.417877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191451, -0.479724, 0.856278,
		0.379057, 0.840867, 0.386338,
		-0.905352, 0.250613, 0.342828,
		45.896324, 34.272533, 35.520725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613216, 34.221684, 35.977177>,  <46.530071, 34.097103, 35.280746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613216, 34.221684, 35.977177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214878, 34.186012, 35.969765>,  <45.975876, 34.164612, 35.965317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.214878, 34.186012, 35.969765>,  <46.613216, 34.221684, 35.977177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214878, 34.186012, 35.969765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031290, -0.526000, 0.849908,
		-0.085534, 0.845796, 0.526605,
		-0.995844, -0.089174, -0.018526,
		45.916126, 34.159260, 35.964207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446926, 34.545269, 36.607895>,  <46.613216, 34.221684, 35.977177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446926, 34.545269, 36.607895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153149, 34.300674, 36.490131>,  <45.976883, 34.153915, 36.419472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153149, 34.300674, 36.490131>,  <46.446926, 34.545269, 36.607895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153149, 34.300674, 36.490131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024440, -0.457353, 0.888949,
		-0.678234, 0.645684, 0.350843,
		-0.734440, -0.611490, -0.294412,
		45.932816, 34.117226, 36.401806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940895, 34.614853, 37.090977>,  <46.446926, 34.545269, 36.607895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940895, 34.614853, 37.090977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893608, 34.260418, 36.911701>,  <45.865238, 34.047756, 36.804134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893608, 34.260418, 36.911701>,  <45.940895, 34.614853, 37.090977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893608, 34.260418, 36.911701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014104, -0.449811, 0.893012,
		-0.992888, 0.111888, 0.040677,
		-0.118215, -0.886087, -0.448190,
		45.858143, 33.994591, 36.777245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466900, 34.356373, 37.509888>,  <45.940895, 34.614853, 37.090977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466900, 34.356373, 37.509888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575947, 34.038048, 37.293602>,  <45.641376, 33.847054, 37.163830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.575947, 34.038048, 37.293602>,  <45.466900, 34.356373, 37.509888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575947, 34.038048, 37.293602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119935, -0.585723, 0.801588,
		-0.954618, -0.153677, -0.255124,
		0.272617, -0.795809, -0.540711,
		45.657730, 33.799305, 37.131390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910892, 33.883053, 37.461102>,  <45.466900, 34.356373, 37.509888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910892, 33.883053, 37.461102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267223, 33.704193, 37.428902>,  <45.481022, 33.596878, 37.409580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267223, 33.704193, 37.428902>,  <44.910892, 33.883053, 37.461102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267223, 33.704193, 37.428902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125107, -0.411755, 0.902666,
		-0.436781, -0.794046, -0.422744,
		0.890826, -0.447156, -0.080506,
		45.534473, 33.570049, 37.404751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745865, 33.343315, 37.765404>,  <44.910892, 33.883053, 37.461102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745865, 33.343315, 37.765404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145157, 33.321766, 37.755268>,  <45.384731, 33.308838, 37.749187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145157, 33.321766, 37.755268>,  <44.745865, 33.343315, 37.765404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145157, 33.321766, 37.755268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001913, -0.396388, 0.918081,
		-0.059504, -0.916501, -0.395581,
		0.998226, -0.053873, -0.025340,
		45.444626, 33.305603, 37.747665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837681, 32.744518, 38.073532>,  <44.745865, 33.343315, 37.765404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837681, 32.744518, 38.073532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198502, 32.917126, 38.069553>,  <45.414993, 33.020691, 38.067165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.198502, 32.917126, 38.069553>,  <44.837681, 32.744518, 38.073532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198502, 32.917126, 38.069553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137724, -0.265916, 0.954108,
		0.409068, -0.862023, -0.299300,
		0.902051, 0.431516, -0.009944,
		45.469116, 33.046581, 38.066570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345703, 32.279579, 38.363491>,  <44.837681, 32.744518, 38.073532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345703, 32.279579, 38.363491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509121, 32.643974, 38.386116>,  <45.607170, 32.862610, 38.399693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509121, 32.643974, 38.386116>,  <45.345703, 32.279579, 38.363491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509121, 32.643974, 38.386116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347579, -0.212578, 0.913236,
		0.843968, -0.353435, -0.403486,
		0.408542, 0.910986, 0.056562,
		45.631683, 32.917271, 38.403084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076855, 32.201370, 38.603275>,  <45.345703, 32.279579, 38.363491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076855, 32.201370, 38.603275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973206, 32.577404, 38.691914>,  <45.911015, 32.803024, 38.745094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973206, 32.577404, 38.691914>,  <46.076855, 32.201370, 38.603275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973206, 32.577404, 38.691914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102885, -0.201258, 0.974120,
		0.960349, 0.275216, -0.044570,
		-0.259123, 0.940081, 0.221593,
		45.895470, 32.859428, 38.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493259, 32.398277, 39.182968>,  <46.076855, 32.201370, 38.603275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493259, 32.398277, 39.182968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252495, 32.715820, 39.217598>,  <46.108036, 32.906345, 39.238377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252495, 32.715820, 39.217598>,  <46.493259, 32.398277, 39.182968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252495, 32.715820, 39.217598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187153, 0.034836, 0.981713,
		0.776325, 0.607105, -0.169541,
		-0.601909, 0.793858, 0.086578,
		46.071922, 32.953979, 39.243572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.855522, 32.787331, 39.541477>,  <46.493259, 32.398277, 39.182968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.855522, 32.787331, 39.541477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483639, 32.918152, 39.609215>,  <46.260509, 32.996647, 39.649857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483639, 32.918152, 39.609215>,  <46.855522, 32.787331, 39.541477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483639, 32.918152, 39.609215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128552, -0.142714, 0.981380,
		0.345136, 0.934166, 0.090638,
		-0.929707, 0.327058, 0.169345,
		46.204727, 33.016270, 39.660019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785511, 33.293842, 40.195839>,  <46.855522, 32.787331, 39.541477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785511, 33.293842, 40.195839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396656, 33.214897, 40.145245>,  <46.163342, 33.167530, 40.114887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396656, 33.214897, 40.145245>,  <46.785511, 33.293842, 40.195839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396656, 33.214897, 40.145245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105254, -0.114610, 0.987819,
		-0.209456, 0.973608, 0.090643,
		-0.972137, -0.197364, -0.126482,
		46.105015, 33.155689, 40.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390858, 33.786015, 40.602348>,  <46.785511, 33.293842, 40.195839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390858, 33.786015, 40.602348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168270, 33.455223, 40.570206>,  <46.034718, 33.256748, 40.550919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168270, 33.455223, 40.570206>,  <46.390858, 33.786015, 40.602348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168270, 33.455223, 40.570206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142599, -0.000224, 0.989781,
		-0.818541, 0.562240, -0.117801,
		-0.556467, -0.826974, -0.080358,
		46.001331, 33.207130, 40.546097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812370, 33.979183, 40.975811>,  <46.390858, 33.786015, 40.602348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812370, 33.979183, 40.975811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827171, 33.580650, 40.944923>,  <45.836052, 33.341530, 40.926392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827171, 33.580650, 40.944923>,  <45.812370, 33.979183, 40.975811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827171, 33.580650, 40.944923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172236, -0.082471, 0.981597,
		-0.984361, -0.023023, -0.174655,
		0.037003, -0.996328, -0.077216,
		45.838272, 33.281754, 40.921757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201160, 33.760773, 41.249371>,  <45.812370, 33.979183, 40.975811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201160, 33.760773, 41.249371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460796, 33.457336, 41.272068>,  <45.616577, 33.275272, 41.285686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460796, 33.457336, 41.272068>,  <45.201160, 33.760773, 41.249371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460796, 33.457336, 41.272068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078246, 0.007624, 0.996905,
		-0.756678, -0.651520, -0.054409,
		0.649089, -0.758593, 0.056747,
		45.655521, 33.229759, 41.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062008, 33.520100, 41.868263>,  <45.201160, 33.760773, 41.249371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062008, 33.520100, 41.868263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401188, 33.315708, 41.811871>,  <45.604698, 33.193073, 41.778034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401188, 33.315708, 41.811871>,  <45.062008, 33.520100, 41.868263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401188, 33.315708, 41.811871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120583, -0.073046, 0.990012,
		-0.516171, -0.856485, -0.000324,
		0.847955, -0.510977, -0.140982,
		45.655575, 33.162415, 41.769577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.363514, 36.420456, 41.970528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966167, 36.451309, 41.936436>,  <40.727760, 36.469822, 41.915981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966167, 36.451309, 41.936436>,  <41.363514, 36.420456, 41.970528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966167, 36.451309, 41.936436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079855, -0.070262, -0.994327,
		-0.082706, -0.994540, 0.063635,
		-0.993370, 0.077155, -0.085230,
		40.668156, 36.474449, 41.910866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231499, 36.173336, 41.352169>,  <41.363514, 36.420456, 41.970528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231499, 36.173336, 41.352169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851692, 36.283955, 41.411411>,  <40.623806, 36.350327, 41.446957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851692, 36.283955, 41.411411>,  <41.231499, 36.173336, 41.352169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851692, 36.283955, 41.411411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181307, -0.098485, -0.978483,
		-0.256014, -0.955939, 0.143654,
		-0.949518, 0.276551, 0.148105,
		40.566837, 36.366920, 41.455841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824604, 35.698917, 41.085255>,  <41.231499, 36.173336, 41.352169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824604, 35.698917, 41.085255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559158, 35.998035, 41.093498>,  <40.399891, 36.177505, 41.098442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559158, 35.998035, 41.093498>,  <40.824604, 35.698917, 41.085255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559158, 35.998035, 41.093498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083075, -0.046293, -0.995467,
		-0.743449, -0.662317, 0.092844,
		-0.663613, 0.747792, 0.020605,
		40.360073, 36.222374, 41.099678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252789, 35.458408, 40.731506>,  <40.824604, 35.698917, 41.085255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252789, 35.458408, 40.731506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208576, 35.855946, 40.728642>,  <40.182049, 36.094467, 40.726921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208576, 35.855946, 40.728642>,  <40.252789, 35.458408, 40.731506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208576, 35.855946, 40.728642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168428, -0.025835, -0.985375,
		-0.979497, -0.107708, 0.170247,
		-0.110531, 0.993847, -0.007165,
		40.175415, 36.154099, 40.726494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707844, 35.551262, 40.271091>,  <40.252789, 35.458408, 40.731506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707844, 35.551262, 40.271091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901913, 35.900677, 40.286808>,  <40.018356, 36.110325, 40.296238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901913, 35.900677, 40.286808>,  <39.707844, 35.551262, 40.271091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901913, 35.900677, 40.286808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364249, 0.242754, -0.899107,
		-0.794939, 0.421911, 0.435962,
		0.485175, 0.873534, 0.039294,
		40.047466, 36.162735, 40.298595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269073, 36.005104, 40.085087>,  <39.707844, 35.551262, 40.271091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269073, 36.005104, 40.085087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615101, 36.202789, 40.050652>,  <39.822716, 36.321400, 40.029991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615101, 36.202789, 40.050652>,  <39.269073, 36.005104, 40.085087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615101, 36.202789, 40.050652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249222, 0.274460, -0.928741,
		-0.435371, 0.824878, 0.360595,
		0.865067, 0.494215, -0.086086,
		39.874622, 36.351055, 40.024826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093292, 36.576244, 39.708782>,  <39.269073, 36.005104, 40.085087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093292, 36.576244, 39.708782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490585, 36.563454, 39.664104>,  <39.728962, 36.555779, 39.637299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490585, 36.563454, 39.664104>,  <39.093292, 36.576244, 39.708782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490585, 36.563454, 39.664104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095919, 0.316791, -0.943633,
		0.065555, 0.947956, 0.311579,
		0.993228, -0.031973, -0.111695,
		39.788555, 36.553864, 39.630596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276768, 37.347176, 39.467602>,  <39.093292, 36.576244, 39.708782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276768, 37.347176, 39.467602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528721, 37.055836, 39.359715>,  <39.679893, 36.881031, 39.294983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528721, 37.055836, 39.359715>,  <39.276768, 37.347176, 39.467602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528721, 37.055836, 39.359715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166846, 0.212268, -0.962863,
		0.758554, 0.651496, 0.012182,
		0.629887, -0.728351, -0.269716,
		39.717686, 36.837330, 39.278801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425182, 37.538120, 38.770245>,  <39.276768, 37.347176, 39.467602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425182, 37.538120, 38.770245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572750, 37.167805, 38.803253>,  <39.661289, 36.945614, 38.823059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572750, 37.167805, 38.803253>,  <39.425182, 37.538120, 38.770245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572750, 37.167805, 38.803253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255586, -0.186408, -0.948645,
		0.893630, 0.328882, -0.305388,
		0.368919, -0.925791, 0.082522,
		39.683426, 36.890068, 38.828011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748219, 37.437412, 38.114868>,  <39.425182, 37.538120, 38.770245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748219, 37.437412, 38.114868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651207, 37.090809, 38.289383>,  <39.593002, 36.882847, 38.394093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651207, 37.090809, 38.289383>,  <39.748219, 37.437412, 38.114868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651207, 37.090809, 38.289383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325108, -0.351120, -0.878077,
		0.914049, -0.354798, -0.196552,
		-0.242527, -0.866506, 0.436288,
		39.578449, 36.830856, 38.420269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011658, 36.968868, 37.710728>,  <39.748219, 37.437412, 38.114868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011658, 36.968868, 37.710728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728992, 36.783497, 37.924591>,  <39.559395, 36.672276, 38.052910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728992, 36.783497, 37.924591>,  <40.011658, 36.968868, 37.710728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728992, 36.783497, 37.924591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290371, -0.499139, -0.816422,
		0.645225, -0.732184, 0.218155,
		-0.706661, -0.463430, 0.534662,
		39.516994, 36.644466, 38.084991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037594, 36.245090, 37.532177>,  <40.011658, 36.968868, 37.710728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037594, 36.245090, 37.532177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673740, 36.280369, 37.694557>,  <39.455429, 36.301537, 37.791985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673740, 36.280369, 37.694557>,  <40.037594, 36.245090, 37.532177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673740, 36.280369, 37.694557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361712, -0.648736, -0.669557,
		0.204302, -0.755886, 0.622011,
		-0.909629, 0.088197, 0.405950,
		39.400852, 36.306828, 37.816341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695332, 35.598751, 37.683739>,  <40.037594, 36.245090, 37.532177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695332, 35.598751, 37.683739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395901, 35.846725, 37.589664>,  <39.216244, 35.995510, 37.533218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395901, 35.846725, 37.589664>,  <39.695332, 35.598751, 37.683739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395901, 35.846725, 37.589664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348462, -0.669606, -0.655898,
		-0.564096, -0.409037, 0.717276,
		-0.748579, 0.619933, -0.235188,
		39.171326, 36.032707, 37.519108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192421, 35.103474, 37.617947>,  <39.695332, 35.598751, 37.683739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192421, 35.103474, 37.617947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079872, 35.432205, 37.419785>,  <39.012341, 35.629444, 37.300888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079872, 35.432205, 37.419785>,  <39.192421, 35.103474, 37.617947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079872, 35.432205, 37.419785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484712, -0.567286, -0.665763,
		-0.828181, 0.052802, 0.557969,
		-0.281374, 0.821826, -0.495409,
		38.995461, 35.678753, 37.271160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366100, 34.527325, 37.097744>,  <39.192421, 35.103474, 37.617947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366100, 34.527325, 37.097744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451916, 34.146057, 37.012486>,  <39.503407, 33.917297, 36.961330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451916, 34.146057, 37.012486>,  <39.366100, 34.527325, 37.097744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451916, 34.146057, 37.012486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538332, -0.297489, 0.788479,
		-0.814966, -0.054418, -0.576948,
		0.214543, -0.953173, -0.213149,
		39.516277, 33.860104, 36.948540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753071, 34.171165, 37.030594>,  <39.366100, 34.527325, 37.097744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753071, 34.171165, 37.030594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045773, 33.911369, 37.113251>,  <39.221394, 33.755493, 37.162846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045773, 33.911369, 37.113251>,  <38.753071, 34.171165, 37.030594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045773, 33.911369, 37.113251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388389, -0.148219, 0.909497,
		-0.560081, -0.745785, -0.360714,
		0.731754, -0.649489, 0.206640,
		39.265301, 33.716522, 37.175243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331596, 33.574028, 37.302795>,  <38.753071, 34.171165, 37.030594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331596, 33.574028, 37.302795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710651, 33.505447, 37.410564>,  <38.938084, 33.464298, 37.475224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710651, 33.505447, 37.410564>,  <38.331596, 33.574028, 37.302795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710651, 33.505447, 37.410564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310230, -0.294117, 0.904020,
		-0.075754, -0.940266, -0.331906,
		0.947639, -0.171451, 0.269418,
		38.994942, 33.454014, 37.491390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276920, 33.024693, 37.676529>,  <38.331596, 33.574028, 37.302795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276920, 33.024693, 37.676529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632942, 33.178303, 37.774776>,  <38.846554, 33.270470, 37.833725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632942, 33.178303, 37.774776>,  <38.276920, 33.024693, 37.676529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632942, 33.178303, 37.774776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197657, -0.160407, 0.967058,
		0.410774, -0.909282, -0.066865,
		0.890054, 0.384026, 0.245616,
		38.899960, 33.293510, 37.848461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778362, 32.523510, 37.773914>,  <38.276920, 33.024693, 37.676529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778362, 32.523510, 37.773914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918571, 32.828850, 37.990959>,  <39.002697, 33.012054, 38.121185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918571, 32.828850, 37.990959>,  <38.778362, 32.523510, 37.773914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918571, 32.828850, 37.990959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040753, -0.591254, 0.805455,
		0.935667, -0.260218, -0.238357,
		0.350523, 0.763351, 0.542612,
		39.023727, 33.057854, 38.153744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180347, 32.217804, 38.245571>,  <38.778362, 32.523510, 37.773914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180347, 32.217804, 38.245571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123718, 32.570839, 38.424900>,  <39.089741, 32.782661, 38.532497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123718, 32.570839, 38.424900>,  <39.180347, 32.217804, 38.245571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123718, 32.570839, 38.424900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033620, -0.456913, 0.888876,
		0.989357, 0.110768, 0.094359,
		-0.141573, 0.882588, 0.448326,
		39.081245, 32.835617, 38.559399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694252, 32.185516, 38.832897>,  <39.180347, 32.217804, 38.245571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694252, 32.185516, 38.832897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444145, 32.483868, 38.924732>,  <39.294083, 32.662876, 38.979832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444145, 32.483868, 38.924732>,  <39.694252, 32.185516, 38.832897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444145, 32.483868, 38.924732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089691, -0.223554, 0.970556,
		0.775238, 0.627450, 0.072883,
		-0.625269, 0.745875, 0.229584,
		39.256565, 32.707630, 38.993607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034054, 32.536865, 39.314590>,  <39.694252, 32.185516, 38.832897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034054, 32.536865, 39.314590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645782, 32.614964, 39.370689>,  <39.412819, 32.661823, 39.404346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645782, 32.614964, 39.370689>,  <40.034054, 32.536865, 39.314590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645782, 32.614964, 39.370689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130882, -0.060120, 0.989573,
		0.201643, 0.978909, 0.032802,
		-0.970675, 0.195248, 0.140245,
		39.354580, 32.673538, 39.412762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976940, 33.117626, 39.674141>,  <40.034054, 32.536865, 39.314590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976940, 33.117626, 39.674141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636772, 32.921890, 39.751431>,  <39.432671, 32.804447, 39.797806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636772, 32.921890, 39.751431>,  <39.976940, 33.117626, 39.674141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636772, 32.921890, 39.751431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151566, 0.123833, 0.980660,
		-0.503804, 0.863256, -0.031142,
		-0.850417, -0.489341, 0.193228,
		39.381645, 32.775089, 39.809399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590065, 33.567265, 40.160954>,  <39.976940, 33.117626, 39.674141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590065, 33.567265, 40.160954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427200, 33.208553, 40.230240>,  <39.329479, 32.993328, 40.271812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427200, 33.208553, 40.230240>,  <39.590065, 33.567265, 40.160954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427200, 33.208553, 40.230240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042659, 0.208115, 0.977174,
		-0.912358, 0.390481, -0.122993,
		-0.407164, -0.896779, 0.173218,
		39.305050, 32.939518, 40.282204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977787, 33.685219, 40.610722>,  <39.590065, 33.567265, 40.160954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977787, 33.685219, 40.610722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059330, 33.293850, 40.624237>,  <39.108253, 33.059029, 40.632347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059330, 33.293850, 40.624237>,  <38.977787, 33.685219, 40.610722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059330, 33.293850, 40.624237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038166, 0.026543, 0.998919,
		-0.978257, -0.204923, -0.031932,
		0.203854, -0.978418, 0.033787,
		39.120487, 33.000324, 40.634373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365246, 33.322605, 40.913475>,  <38.977787, 33.685219, 40.610722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365246, 33.322605, 40.913475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698536, 33.108433, 40.968689>,  <38.898510, 32.979931, 41.001820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698536, 33.108433, 40.968689>,  <38.365246, 33.322605, 40.913475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698536, 33.108433, 40.968689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038019, 0.193576, 0.980348,
		-0.551626, -0.822099, 0.140935,
		0.833225, -0.535427, 0.138037,
		38.948502, 32.947803, 41.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151283, 32.787106, 41.389309>,  <38.365246, 33.322605, 40.913475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151283, 32.787106, 41.389309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550926, 32.789307, 41.406052>,  <38.790710, 32.790627, 41.416096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550926, 32.789307, 41.406052>,  <38.151283, 32.787106, 41.389309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550926, 32.789307, 41.406052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041200, -0.089352, 0.995148,
		0.009218, -0.995985, -0.089046,
		0.999108, 0.005504, 0.041858,
		38.850658, 32.790958, 41.418610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297173, 32.313622, 41.835442>,  <38.151283, 32.787106, 41.389309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297173, 32.313622, 41.835442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645512, 32.510223, 41.832806>,  <38.854515, 32.628185, 41.831223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645512, 32.510223, 41.832806>,  <38.297173, 32.313622, 41.835442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645512, 32.510223, 41.832806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043629, 0.090645, 0.994927,
		0.489609, -0.866145, 0.100382,
		0.870850, 0.491505, -0.006591,
		38.906765, 32.657677, 41.830830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647991, 31.776279, 41.913574>,  <38.297173, 32.313622, 41.835442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647991, 31.776279, 41.913574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499680, 31.417423, 42.009624>,  <37.410694, 31.202110, 42.067257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499680, 31.417423, 42.009624>,  <37.647991, 31.776279, 41.913574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499680, 31.417423, 42.009624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500355, -0.024858, -0.865463,
		0.782411, -0.441045, -0.439672,
		-0.370779, -0.897140, 0.240129,
		37.388447, 31.148281, 42.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867519, 31.356943, 41.376701>,  <37.647991, 31.776279, 41.913574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867519, 31.356943, 41.376701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515324, 31.272886, 41.546677>,  <37.304005, 31.222452, 41.648663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515324, 31.272886, 41.546677>,  <37.867519, 31.356943, 41.376701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515324, 31.272886, 41.546677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471569, 0.296477, -0.830496,
		0.048537, -0.931634, -0.360142,
		-0.880492, -0.210142, 0.424940,
		37.251175, 31.209843, 41.674160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382896, 31.019260, 40.883522>,  <37.867519, 31.356943, 41.376701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382896, 31.019260, 40.883522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124992, 31.160822, 41.154530>,  <36.970249, 31.245760, 41.317135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124992, 31.160822, 41.154530>,  <37.382896, 31.019260, 40.883522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124992, 31.160822, 41.154530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542295, 0.412878, -0.731743,
		-0.538701, -0.839216, -0.074287,
		-0.644762, 0.353905, 0.677520,
		36.931564, 31.266993, 41.357784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739403, 30.954298, 40.583038>,  <37.382896, 31.019260, 40.883522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739403, 30.954298, 40.583038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679417, 31.232946, 40.863674>,  <36.643425, 31.400135, 41.032055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679417, 31.232946, 40.863674>,  <36.739403, 30.954298, 40.583038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679417, 31.232946, 40.863674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575708, 0.515371, -0.634785,
		-0.803784, -0.499108, 0.323762,
		-0.149968, 0.696623, 0.701588,
		36.634426, 31.441933, 41.074150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044079, 31.092520, 40.484982>,  <36.739403, 30.954298, 40.583038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044079, 31.092520, 40.484982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159248, 31.407923, 40.702370>,  <36.228352, 31.597164, 40.832802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159248, 31.407923, 40.702370>,  <36.044079, 31.092520, 40.484982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159248, 31.407923, 40.702370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637115, 0.581407, -0.506014,
		-0.714971, -0.200557, 0.669771,
		0.287926, 0.788507, 0.543467,
		36.245625, 31.644474, 40.865410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409130, 31.560076, 40.625847>,  <36.044079, 31.092520, 40.484982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409130, 31.560076, 40.625847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727722, 31.795580, 40.680958>,  <35.918877, 31.936882, 40.714024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727722, 31.795580, 40.680958>,  <35.409130, 31.560076, 40.625847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727722, 31.795580, 40.680958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431595, 0.713137, -0.552414,
		-0.423496, 0.380520, 0.822104,
		0.796478, 0.588761, 0.137780,
		35.966667, 31.972208, 40.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140125, 32.202351, 40.745426>,  <35.409130, 31.560076, 40.625847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140125, 32.202351, 40.745426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509663, 32.260826, 40.603928>,  <35.731384, 32.295910, 40.519028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509663, 32.260826, 40.603928>,  <35.140125, 32.202351, 40.745426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509663, 32.260826, 40.603928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319739, 0.802794, -0.503277,
		0.210411, 0.578058, 0.788402,
		0.923847, 0.146188, -0.353744,
		35.786816, 32.304684, 40.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242290, 32.901451, 40.684032>,  <35.140125, 32.202351, 40.745426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242290, 32.901451, 40.684032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543320, 32.809650, 40.437145>,  <35.723938, 32.754570, 40.289013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543320, 32.809650, 40.437145>,  <35.242290, 32.901451, 40.684032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543320, 32.809650, 40.437145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248055, 0.769457, -0.588561,
		0.610000, 0.596041, 0.522145,
		0.752575, -0.229501, -0.617220,
		35.769093, 32.740799, 40.251980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601704, 33.544514, 40.551659>,  <35.242290, 32.901451, 40.684032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601704, 33.544514, 40.551659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671177, 33.290607, 40.250488>,  <35.712860, 33.138264, 40.069786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671177, 33.290607, 40.250488>,  <35.601704, 33.544514, 40.551659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671177, 33.290607, 40.250488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300423, 0.693954, -0.654350,
		0.937860, 0.339846, -0.070171,
		0.173683, -0.634769, -0.752929,
		35.723282, 33.100178, 40.024609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711338, 33.956291, 39.947990>,  <35.601704, 33.544514, 40.551659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711338, 33.956291, 39.947990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638340, 33.602791, 39.775631>,  <35.594540, 33.390690, 39.672215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638340, 33.602791, 39.775631>,  <35.711338, 33.956291, 39.947990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638340, 33.602791, 39.775631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163633, 0.459447, -0.873002,
		0.969494, -0.088812, -0.228459,
		-0.182498, -0.883754, -0.430899,
		35.583591, 33.337666, 39.646362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111500, 33.906368, 39.329315>,  <35.711338, 33.956291, 39.947990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111500, 33.906368, 39.329315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799828, 33.668697, 39.249485>,  <35.612823, 33.526096, 39.201588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799828, 33.668697, 39.249485>,  <36.111500, 33.906368, 39.329315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799828, 33.668697, 39.249485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212700, 0.550158, -0.807518,
		0.589609, -0.586751, -0.555054,
		-0.779180, -0.594179, -0.199576,
		35.566074, 33.490444, 39.189613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020851, 33.961861, 38.572357>,  <36.111500, 33.906368, 39.329315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020851, 33.961861, 38.572357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696579, 33.757271, 38.686333>,  <35.502014, 33.634518, 38.754719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696579, 33.757271, 38.686333>,  <36.020851, 33.961861, 38.572357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696579, 33.757271, 38.686333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457727, 0.250204, -0.853161,
		0.365076, -0.822067, -0.436950,
		-0.810682, -0.511472, 0.284939,
		35.453373, 33.603828, 38.771816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.675880, 29.251431, 45.596512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.356873, 29.490894, 45.566658>,  <38.165466, 29.634573, 45.548748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.356873, 29.490894, 45.566658>,  <38.675880, 29.251431, 45.596512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356873, 29.490894, 45.566658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060847, -0.043257, -0.997209,
		-0.600217, -0.799835, -0.001928,
		-0.797519, 0.598659, -0.074631,
		38.117619, 29.670492, 45.544270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369125, 29.094580, 44.885532>,  <38.675880, 29.251431, 45.596512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369125, 29.094580, 44.885532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170002, 29.427246, 44.983940>,  <38.050529, 29.626846, 45.042984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170002, 29.427246, 44.983940>,  <38.369125, 29.094580, 44.885532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170002, 29.427246, 44.983940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247885, 0.135393, -0.959282,
		-0.831110, -0.538518, 0.138758,
		-0.497804, 0.831665, 0.246017,
		38.020660, 29.676746, 45.057747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851460, 29.021881, 44.471863>,  <38.369125, 29.094580, 44.885532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851460, 29.021881, 44.471863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894390, 29.411573, 44.551216>,  <37.920151, 29.645388, 44.598827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894390, 29.411573, 44.551216>,  <37.851460, 29.021881, 44.471863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894390, 29.411573, 44.551216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309360, 0.222357, -0.924583,
		-0.944869, 0.037863, 0.325253,
		0.107329, 0.974230, 0.198385,
		37.926590, 29.703842, 44.610733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267574, 29.385389, 44.181431>,  <37.851460, 29.021881, 44.471863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267574, 29.385389, 44.181431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551659, 29.664467, 44.219013>,  <37.722107, 29.831913, 44.241562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551659, 29.664467, 44.219013>,  <37.267574, 29.385389, 44.181431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551659, 29.664467, 44.219013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161725, 0.291589, -0.942773,
		-0.685164, 0.654369, 0.319923,
		0.710208, 0.697694, 0.093959,
		37.764721, 29.873775, 44.247200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771027, 29.953085, 44.049164>,  <37.267574, 29.385389, 44.181431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771027, 29.953085, 44.049164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155167, 30.060030, 44.017578>,  <37.385651, 30.124197, 43.998627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155167, 30.060030, 44.017578>,  <36.771027, 29.953085, 44.049164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155167, 30.060030, 44.017578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185692, 0.402210, -0.896519,
		-0.207936, 0.875639, 0.435912,
		0.960355, 0.267364, -0.078965,
		37.443272, 30.140240, 43.993889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725708, 30.654381, 43.905704>,  <36.771027, 29.953085, 44.049164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725708, 30.654381, 43.905704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088699, 30.549976, 43.774029>,  <37.306492, 30.487333, 43.695023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088699, 30.549976, 43.774029>,  <36.725708, 30.654381, 43.905704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088699, 30.549976, 43.774029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127367, 0.575763, -0.807636,
		0.400335, 0.774836, 0.489246,
		0.907474, -0.261011, -0.329186,
		37.360943, 30.471674, 43.675274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087467, 31.267344, 43.646324>,  <36.725708, 30.654381, 43.905704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087467, 31.267344, 43.646324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270721, 30.951872, 43.482327>,  <37.380676, 30.762589, 43.383930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270721, 30.951872, 43.482327>,  <37.087467, 31.267344, 43.646324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270721, 30.951872, 43.482327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066233, 0.429674, -0.900552,
		0.886409, 0.439733, 0.144614,
		0.458139, -0.788679, -0.409992,
		37.408165, 30.715267, 43.359329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683670, 31.507853, 43.246796>,  <37.087467, 31.267344, 43.646324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683670, 31.507853, 43.246796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581654, 31.148602, 43.103508>,  <37.520443, 30.933050, 43.017536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.581654, 31.148602, 43.103508>,  <37.683670, 31.507853, 43.246796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581654, 31.148602, 43.103508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029989, 0.377638, -0.925468,
		0.966464, -0.225292, -0.123249,
		-0.255044, -0.898128, -0.358217,
		37.505138, 30.879164, 42.996044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915527, 31.616058, 42.589550>,  <37.683670, 31.507853, 43.246796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915527, 31.616058, 42.589550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693970, 31.283295, 42.576115>,  <37.561035, 31.083637, 42.568054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.693970, 31.283295, 42.576115>,  <37.915527, 31.616058, 42.589550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693970, 31.283295, 42.576115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344952, 0.266020, -0.900134,
		0.757766, -0.486991, -0.434315,
		-0.553894, -0.831909, -0.033593,
		37.527802, 31.033722, 42.566036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641670, 31.801910, 42.250744>,  <37.915527, 31.616058, 42.589550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641670, 31.801910, 42.250744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840099, 32.147125, 42.288857>,  <38.959156, 32.354252, 42.311722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840099, 32.147125, 42.288857>,  <38.641670, 31.801910, 42.250744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840099, 32.147125, 42.288857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034052, -0.128985, 0.991062,
		0.867611, -0.488398, -0.093375,
		0.496077, 0.863035, 0.095278,
		38.988922, 32.406036, 42.317440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004379, 31.694885, 42.901306>,  <38.641670, 31.801910, 42.250744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004379, 31.694885, 42.901306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055161, 32.086128, 42.835346>,  <39.085629, 32.320873, 42.795773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.055161, 32.086128, 42.835346>,  <39.004379, 31.694885, 42.901306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055161, 32.086128, 42.835346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256800, 0.128162, 0.957929,
		0.958090, -0.163961, -0.234906,
		0.126957, 0.978106, -0.164896,
		39.093246, 32.379559, 42.785877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700588, 31.842787, 43.198296>,  <39.004379, 31.694885, 42.901306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700588, 31.842787, 43.198296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480366, 32.176620, 43.205875>,  <39.348232, 32.376923, 43.210423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.480366, 32.176620, 43.205875>,  <39.700588, 31.842787, 43.198296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480366, 32.176620, 43.205875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249759, 0.143018, 0.957688,
		0.796563, 0.531989, -0.287185,
		-0.550552, 0.834586, 0.018946,
		39.315201, 32.426994, 43.211559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172775, 32.432648, 43.423241>,  <39.700588, 31.842787, 43.198296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172775, 32.432648, 43.423241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787014, 32.515209, 43.489372>,  <39.555557, 32.564747, 43.529049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.787014, 32.515209, 43.489372>,  <40.172775, 32.432648, 43.423241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787014, 32.515209, 43.489372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209854, 0.216882, 0.953375,
		0.160921, 0.954128, -0.252475,
		-0.964399, 0.206401, 0.165327,
		39.497696, 32.577129, 43.538971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078453, 33.115559, 43.547352>,  <40.172775, 32.432648, 43.423241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078453, 33.115559, 43.547352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748280, 32.974854, 43.723949>,  <39.550175, 32.890430, 43.829906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.748280, 32.974854, 43.723949>,  <40.078453, 33.115559, 43.547352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748280, 32.974854, 43.723949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299812, 0.389489, 0.870868,
		-0.478298, 0.851211, -0.216035,
		-0.825436, -0.351764, 0.441495,
		39.500648, 32.869324, 43.856400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872398, 33.608025, 43.887444>,  <40.078453, 33.115559, 43.547352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872398, 33.608025, 43.887444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667519, 33.322338, 44.078247>,  <39.544590, 33.150925, 44.192730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667519, 33.322338, 44.078247>,  <39.872398, 33.608025, 43.887444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667519, 33.322338, 44.078247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239579, 0.414532, 0.877932,
		-0.824772, 0.563961, -0.041212,
		-0.512204, -0.714220, 0.477008,
		39.513859, 33.108070, 44.221348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735226, 33.841618, 44.527412>,  <39.872398, 33.608025, 43.887444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735226, 33.841618, 44.527412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655365, 33.455479, 44.594639>,  <39.607449, 33.223797, 44.634975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655365, 33.455479, 44.594639>,  <39.735226, 33.841618, 44.527412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655365, 33.455479, 44.594639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353508, 0.089008, 0.931187,
		-0.913877, 0.245327, 0.323487,
		-0.199652, -0.965346, 0.168067,
		39.595470, 33.165874, 44.645058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482716, 33.755821, 45.324863>,  <39.735226, 33.841618, 44.527412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482716, 33.755821, 45.324863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595890, 33.397430, 45.187939>,  <39.663795, 33.182396, 45.105782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.595890, 33.397430, 45.187939>,  <39.482716, 33.755821, 45.324863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595890, 33.397430, 45.187939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305413, -0.254162, 0.917673,
		-0.909214, -0.364191, 0.201730,
		0.282936, -0.895972, -0.342316,
		39.680771, 33.128639, 45.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127781, 33.314823, 45.759277>,  <39.482716, 33.755821, 45.324863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127781, 33.314823, 45.759277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.444439, 33.132183, 45.596889>,  <39.634434, 33.022598, 45.499458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.444439, 33.132183, 45.596889>,  <39.127781, 33.314823, 45.759277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444439, 33.132183, 45.596889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357926, -0.191913, 0.913815,
		-0.495159, -0.868726, 0.011501,
		0.791648, -0.456600, -0.405967,
		39.681934, 32.995205, 45.475098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295452, 32.961136, 46.262215>,  <39.127781, 33.314823, 45.759277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295452, 32.961136, 46.262215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632988, 32.977837, 46.048229>,  <39.835510, 32.987858, 45.919838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.632988, 32.977837, 46.048229>,  <39.295452, 32.961136, 46.262215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632988, 32.977837, 46.048229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534115, -0.161069, 0.829926,
		-0.051516, -0.986060, -0.158216,
		0.843841, 0.041751, -0.534967,
		39.886139, 32.990360, 45.887737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630257, 32.410812, 46.486553>,  <39.295452, 32.961136, 46.262215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630257, 32.410812, 46.486553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911217, 32.636497, 46.312981>,  <40.079792, 32.771908, 46.208836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911217, 32.636497, 46.312981>,  <39.630257, 32.410812, 46.486553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911217, 32.636497, 46.312981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580633, -0.101561, 0.807806,
		0.411700, -0.819362, -0.398935,
		0.702402, 0.564208, -0.433936,
		40.121937, 32.805759, 46.182800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268055, 32.054653, 46.521339>,  <39.630257, 32.410812, 46.486553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268055, 32.054653, 46.521339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340305, 32.444439, 46.467972>,  <40.383656, 32.678310, 46.435951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.340305, 32.444439, 46.467972>,  <40.268055, 32.054653, 46.521339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340305, 32.444439, 46.467972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518801, 0.020845, 0.854641,
		0.835595, -0.223587, -0.501786,
		0.180627, 0.974461, -0.133415,
		40.394493, 32.736778, 46.427948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879864, 32.141075, 46.746613>,  <40.268055, 32.054653, 46.521339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879864, 32.141075, 46.746613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767868, 32.525074, 46.748348>,  <40.700668, 32.755474, 46.749390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767868, 32.525074, 46.748348>,  <40.879864, 32.141075, 46.746613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767868, 32.525074, 46.748348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516303, 0.146773, 0.843735,
		0.809343, 0.238477, -0.536742,
		-0.279991, 0.959993, 0.004337,
		40.683872, 32.813072, 46.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483692, 32.438641, 46.845848>,  <40.879864, 32.141075, 46.746613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483692, 32.438641, 46.845848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198822, 32.702610, 46.941605>,  <41.027901, 32.860992, 46.999058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198822, 32.702610, 46.941605>,  <41.483692, 32.438641, 46.845848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198822, 32.702610, 46.941605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459461, 0.180358, 0.869694,
		0.530758, 0.729363, -0.431656,
		-0.712174, 0.659925, 0.239387,
		40.985168, 32.900589, 47.013420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.587467, 36.033016, 47.539532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843365, 35.730972, 47.482212>,  <35.996902, 35.549744, 47.447823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843365, 35.730972, 47.482212>,  <35.587467, 36.033016, 47.539532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843365, 35.730972, 47.482212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087845, 0.257054, -0.962396,
		0.763551, 0.603100, 0.230782,
		0.639745, -0.755112, -0.143295,
		36.035290, 35.504440, 47.439224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138050, 36.323540, 47.163105>,  <35.587467, 36.033016, 47.539532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138050, 36.323540, 47.163105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141479, 35.930428, 47.089268>,  <36.143536, 35.694561, 47.044964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.141479, 35.930428, 47.089268>,  <36.138050, 36.323540, 47.163105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141479, 35.930428, 47.089268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038254, 0.184791, -0.982033,
		0.999231, 0.001355, 0.039179,
		0.008571, -0.982777, -0.184597,
		36.144051, 35.635593, 47.033890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672207, 36.215500, 46.603779>,  <36.138050, 36.323540, 47.163105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672207, 36.215500, 46.603779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449219, 35.884041, 46.583523>,  <36.315426, 35.685165, 46.571369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.449219, 35.884041, 46.583523>,  <36.672207, 36.215500, 46.603779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449219, 35.884041, 46.583523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135628, 0.151081, -0.979173,
		0.819044, -0.538992, -0.196611,
		-0.557470, -0.828651, -0.050640,
		36.281979, 35.635445, 46.568333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996063, 35.773148, 46.074234>,  <36.672207, 36.215500, 46.603779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996063, 35.773148, 46.074234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621944, 35.635399, 46.106796>,  <36.397472, 35.552750, 46.126335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621944, 35.635399, 46.106796>,  <36.996063, 35.773148, 46.074234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621944, 35.635399, 46.106796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102161, 0.042524, -0.993859,
		0.338800, -0.937868, -0.074954,
		-0.935296, -0.344377, 0.081407,
		36.341354, 35.532085, 46.131218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864807, 35.393406, 45.512287>,  <36.996063, 35.773148, 46.074234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864807, 35.393406, 45.512287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.493561, 35.449646, 45.650181>,  <36.270813, 35.483391, 45.732918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.493561, 35.449646, 45.650181>,  <36.864807, 35.393406, 45.512287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493561, 35.449646, 45.650181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350864, -0.020655, -0.936199,
		-0.124510, -0.989851, 0.068502,
		-0.928112, 0.140601, 0.344731,
		36.215126, 35.491825, 45.753601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310509, 34.950813, 45.087910>,  <36.864807, 35.393406, 45.512287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310509, 34.950813, 45.087910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066940, 35.219505, 45.256664>,  <35.920799, 35.380722, 45.357918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.066940, 35.219505, 45.256664>,  <36.310509, 34.950813, 45.087910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066940, 35.219505, 45.256664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499270, 0.088732, -0.861891,
		-0.616395, -0.735461, 0.281345,
		-0.608922, 0.671732, 0.421887,
		35.884262, 35.421024, 45.383232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711685, 34.836121, 44.771809>,  <36.310509, 34.950813, 45.087910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711685, 34.836121, 44.771809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638741, 35.199791, 44.921551>,  <35.594975, 35.417992, 45.011398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638741, 35.199791, 44.921551>,  <35.711685, 34.836121, 44.771809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638741, 35.199791, 44.921551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675440, 0.160849, -0.719659,
		-0.714512, -0.384092, 0.584762,
		-0.182357, 0.909176, 0.374360,
		35.584034, 35.472542, 45.033859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001427, 34.903770, 44.544498>,  <35.711685, 34.836121, 44.771809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001427, 34.903770, 44.544498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158585, 35.263943, 44.619183>,  <35.252880, 35.480045, 44.663994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158585, 35.263943, 44.619183>,  <35.001427, 34.903770, 44.544498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158585, 35.263943, 44.619183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301444, 0.317932, -0.898916,
		-0.868771, 0.296898, 0.396343,
		0.392897, 0.900428, 0.186712,
		35.276455, 35.534073, 44.675198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487785, 35.374416, 44.298286>,  <35.001427, 34.903770, 44.544498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487785, 35.374416, 44.298286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829010, 35.580151, 44.333473>,  <35.033745, 35.703590, 44.354588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829010, 35.580151, 44.333473>,  <34.487785, 35.374416, 44.298286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829010, 35.580151, 44.333473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180444, 0.448958, -0.875144,
		-0.489616, 0.730679, 0.475799,
		0.853063, 0.514340, 0.087971,
		35.084930, 35.734451, 44.359863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348633, 36.100300, 44.176113>,  <34.487785, 35.374416, 44.298286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348633, 36.100300, 44.176113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741650, 36.056965, 44.115616>,  <34.977459, 36.030964, 44.079319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.741650, 36.056965, 44.115616>,  <34.348633, 36.100300, 44.176113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741650, 36.056965, 44.115616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084014, 0.466962, -0.880278,
		0.165990, 0.877616, 0.449708,
		0.982542, -0.108335, -0.151243,
		35.036411, 36.024464, 44.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557735, 36.670742, 43.842087>,  <34.348633, 36.100300, 44.176113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557735, 36.670742, 43.842087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868092, 36.438786, 43.742718>,  <35.054306, 36.299610, 43.683094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868092, 36.438786, 43.742718>,  <34.557735, 36.670742, 43.842087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868092, 36.438786, 43.742718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093739, 0.495388, -0.863599,
		0.623862, 0.646773, 0.438726,
		0.775893, -0.579893, -0.248425,
		35.100861, 36.264816, 43.668190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029388, 37.140865, 43.762142>,  <34.557735, 36.670742, 43.842087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029388, 37.140865, 43.762142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118107, 36.799103, 43.574188>,  <35.171337, 36.594044, 43.461414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118107, 36.799103, 43.574188>,  <35.029388, 37.140865, 43.762142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118107, 36.799103, 43.574188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144218, 0.505335, -0.850786,
		0.964369, 0.120934, 0.235302,
		0.221796, -0.854407, -0.469888,
		35.184647, 36.542782, 43.433220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636032, 37.312328, 43.305889>,  <35.029388, 37.140865, 43.762142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636032, 37.312328, 43.305889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448425, 36.994411, 43.151833>,  <35.335861, 36.803661, 43.059399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448425, 36.994411, 43.151833>,  <35.636032, 37.312328, 43.305889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448425, 36.994411, 43.151833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031013, 0.420986, -0.906537,
		0.882645, -0.437124, -0.172800,
		-0.469016, -0.794791, -0.385137,
		35.307720, 36.755974, 43.036293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910660, 37.267151, 42.627987>,  <35.636032, 37.312328, 43.305889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910660, 37.267151, 42.627987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 37.044857, 42.638851>,  <35.378872, 36.911480, 42.645370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.578293, 37.044857, 42.638851>,  <35.910660, 37.267151, 42.627987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578293, 37.044857, 42.638851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177215, 0.218067, -0.959709,
		0.527420, -0.802251, -0.279680,
		-0.830917, -0.555734, 0.027158,
		35.329018, 36.878136, 42.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585503, 36.920376, 42.441067>,  <35.910660, 37.267151, 42.627987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585503, 36.920376, 42.441067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926365, 37.119068, 42.375233>,  <37.130882, 37.238281, 42.335732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.926365, 37.119068, 42.375233>,  <36.585503, 36.920376, 42.441067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926365, 37.119068, 42.375233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256045, -0.121500, 0.958999,
		0.456365, -0.859359, -0.230722,
		0.852157, 0.496729, -0.164587,
		37.182011, 37.268085, 42.325855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121807, 36.485119, 42.604630>,  <36.585503, 36.920376, 42.441067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121807, 36.485119, 42.604630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266708, 36.856785, 42.634125>,  <37.353649, 37.079784, 42.651821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.266708, 36.856785, 42.634125>,  <37.121807, 36.485119, 42.604630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266708, 36.856785, 42.634125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328689, -0.201372, 0.922720,
		0.872204, -0.310017, -0.378352,
		0.362249, 0.929160, 0.073738,
		37.375381, 37.135532, 42.656246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797657, 36.339779, 43.035980>,  <37.121807, 36.485119, 42.604630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797657, 36.339779, 43.035980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714516, 36.730904, 43.046391>,  <37.664631, 36.965580, 43.052635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.714516, 36.730904, 43.046391>,  <37.797657, 36.339779, 43.035980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714516, 36.730904, 43.046391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220866, 0.020996, 0.975078,
		0.952898, 0.208421, -0.220330,
		-0.207853, 0.977814, 0.026026,
		37.652161, 37.024246, 43.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447357, 36.707153, 43.253479>,  <37.797657, 36.339779, 43.035980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447357, 36.707153, 43.253479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100094, 36.894798, 43.318272>,  <37.891735, 37.007385, 43.357147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100094, 36.894798, 43.318272>,  <38.447357, 36.707153, 43.253479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100094, 36.894798, 43.318272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221442, 0.074062, 0.972357,
		0.444151, 0.880026, -0.168179,
		-0.868155, 0.469116, 0.161980,
		37.839649, 37.035534, 43.366867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649113, 37.218136, 43.860252>,  <38.447357, 36.707153, 43.253479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649113, 37.218136, 43.860252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251038, 37.256126, 43.850574>,  <38.012192, 37.278923, 43.844769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.251038, 37.256126, 43.850574>,  <38.649113, 37.218136, 43.860252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251038, 37.256126, 43.850574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021211, 0.032262, 0.999254,
		0.095689, 0.994956, -0.030092,
		-0.995185, 0.094979, -0.024192,
		37.952480, 37.284618, 43.843319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384789, 37.913536, 44.254124>,  <38.649113, 37.218136, 43.860252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384789, 37.913536, 44.254124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102081, 37.630650, 44.261364>,  <37.932457, 37.460918, 44.265709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102081, 37.630650, 44.261364>,  <38.384789, 37.913536, 44.254124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102081, 37.630650, 44.261364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011546, 0.037111, 0.999244,
		-0.707356, 0.706020, -0.034395,
		-0.706763, -0.707218, 0.018099,
		37.890053, 37.418484, 44.266792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048214, 38.053459, 44.852268>,  <38.384789, 37.913536, 44.254124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048214, 38.053459, 44.852268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911430, 37.693226, 44.744926>,  <37.829361, 37.477085, 44.680519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911430, 37.693226, 44.744926>,  <38.048214, 38.053459, 44.852268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911430, 37.693226, 44.744926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025696, -0.276506, 0.960668,
		-0.939363, 0.335406, 0.071413,
		-0.341960, -0.900582, -0.268358,
		37.808842, 37.423050, 44.664417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543400, 38.040646, 45.367035>,  <38.048214, 38.053459, 44.852268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543400, 38.040646, 45.367035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642548, 37.669418, 45.255852>,  <37.702034, 37.446682, 45.189140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.642548, 37.669418, 45.255852>,  <37.543400, 38.040646, 45.367035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642548, 37.669418, 45.255852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099495, -0.309778, 0.945589,
		-0.963672, -0.206724, -0.169121,
		0.247866, -0.928064, -0.277956,
		37.716908, 37.390999, 45.172466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187546, 37.672577, 45.848717>,  <37.543400, 38.040646, 45.367035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187546, 37.672577, 45.848717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444702, 37.408749, 45.692947>,  <37.598995, 37.250450, 45.599483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444702, 37.408749, 45.692947>,  <37.187546, 37.672577, 45.848717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444702, 37.408749, 45.692947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121621, -0.414067, 0.902085,
		-0.756237, -0.627308, -0.185983,
		0.642895, -0.659571, -0.389427,
		37.637569, 37.210876, 45.576118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016193, 36.989807, 46.160614>,  <37.187546, 37.672577, 45.848717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016193, 36.989807, 46.160614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401379, 37.010349, 46.054741>,  <37.632492, 37.022675, 45.991219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401379, 37.010349, 46.054741>,  <37.016193, 36.989807, 46.160614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401379, 37.010349, 46.054741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269073, -0.245352, 0.931344,
		-0.017112, -0.968073, -0.250084,
		0.962968, 0.051353, -0.264681,
		37.690269, 37.025757, 45.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397594, 36.307976, 46.379650>,  <37.016193, 36.989807, 46.160614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397594, 36.307976, 46.379650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684509, 36.579510, 46.316814>,  <37.856659, 36.742432, 46.279114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684509, 36.579510, 46.316814>,  <37.397594, 36.307976, 46.379650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684509, 36.579510, 46.316814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518010, -0.368753, 0.771807,
		0.466005, -0.634982, -0.616147,
		0.717290, 0.678836, -0.157087,
		37.899696, 36.783161, 46.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078857, 35.937153, 46.496235>,  <37.397594, 36.307976, 46.379650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078857, 35.937153, 46.496235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102940, 36.331757, 46.557121>,  <38.117390, 36.568520, 46.593655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.102940, 36.331757, 46.557121>,  <38.078857, 35.937153, 46.496235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102940, 36.331757, 46.557121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411256, -0.163466, 0.896743,
		0.909529, 0.008607, -0.415551,
		0.060210, 0.986511, 0.152217,
		38.121002, 36.627708, 46.602787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615246, 35.965603, 46.923779>,  <38.078857, 35.937153, 46.496235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615246, 35.965603, 46.923779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442112, 36.323288, 46.969433>,  <38.338230, 36.537899, 46.996826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.442112, 36.323288, 46.969433>,  <38.615246, 35.965603, 46.923779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442112, 36.323288, 46.969433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306951, 0.027152, 0.951338,
		0.847604, 0.446809, -0.286234,
		-0.432838, 0.894217, 0.114134,
		38.312260, 36.591553, 47.003674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123695, 36.470730, 47.265644>,  <38.615246, 35.965603, 46.923779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123695, 36.470730, 47.265644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.771820, 36.643627, 47.344952>,  <38.560696, 36.747368, 47.392536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.771820, 36.643627, 47.344952>,  <39.123695, 36.470730, 47.265644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771820, 36.643627, 47.344952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270493, 0.111901, 0.956196,
		0.391127, 0.894785, -0.215358,
		-0.879689, 0.432247, 0.198266,
		38.507912, 36.773300, 47.404430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958321, 36.571239, 47.366306>,  <39.123695, 36.470730, 47.265644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958321, 36.571239, 47.366306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162109, 36.232288, 47.426170>,  <40.284382, 36.028919, 47.462090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162109, 36.232288, 47.426170>,  <39.958321, 36.571239, 47.366306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162109, 36.232288, 47.426170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281552, -0.000190, -0.959546,
		0.813123, 0.530996, 0.238483,
		0.509470, -0.847374, 0.149657,
		40.314949, 35.978077, 47.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612511, 36.685116, 47.192245>,  <39.958321, 36.571239, 47.366306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612511, 36.685116, 47.192245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558117, 36.291542, 47.145985>,  <40.525482, 36.055397, 47.118229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.558117, 36.291542, 47.145985>,  <40.612511, 36.685116, 47.192245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558117, 36.291542, 47.145985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299301, 0.070479, -0.951552,
		0.944419, -0.164012, 0.284909,
		-0.135985, -0.983938, -0.115651,
		40.517323, 35.996361, 47.111290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032124, 36.501846, 46.657207>,  <40.612511, 36.685116, 47.192245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032124, 36.501846, 46.657207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849785, 36.145927, 46.665829>,  <40.740379, 35.932377, 46.671001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849785, 36.145927, 46.665829>,  <41.032124, 36.501846, 46.657207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849785, 36.145927, 46.665829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219448, -0.135829, -0.966123,
		0.862580, -0.435677, 0.257181,
		-0.455850, -0.889796, 0.021556,
		40.713028, 35.878990, 46.672295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446358, 36.021202, 46.368282>,  <41.032124, 36.501846, 46.657207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446358, 36.021202, 46.368282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.066143, 35.903858, 46.327457>,  <40.838013, 35.833454, 46.302963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.066143, 35.903858, 46.327457>,  <41.446358, 36.021202, 46.368282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066143, 35.903858, 46.327457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177213, -0.242347, -0.953868,
		0.255090, -0.924775, 0.282347,
		-0.950539, -0.293358, -0.102062,
		40.780983, 35.815849, 46.296837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451839, 35.423817, 45.920605>,  <41.446358, 36.021202, 46.368282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451839, 35.423817, 45.920605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076878, 35.562855, 45.912029>,  <40.851902, 35.646278, 45.906883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.076878, 35.562855, 45.912029>,  <41.451839, 35.423817, 45.920605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076878, 35.562855, 45.912029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043464, -0.177862, -0.983095,
		-0.345531, -0.920622, 0.181836,
		-0.937400, 0.347594, -0.021443,
		40.795658, 35.667133, 45.905598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158131, 34.910099, 45.616310>,  <41.451839, 35.423817, 45.920605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158131, 34.910099, 45.616310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916698, 35.225277, 45.567600>,  <40.771839, 35.414383, 45.538372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.916698, 35.225277, 45.567600>,  <41.158131, 34.910099, 45.616310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916698, 35.225277, 45.567600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169691, -0.276191, -0.946004,
		-0.779033, -0.550328, 0.300412,
		-0.603584, 0.787945, -0.121776,
		40.735622, 35.461658, 45.531067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774174, 34.731243, 45.028114>,  <41.158131, 34.910099, 45.616310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774174, 34.731243, 45.028114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.707745, 35.125061, 45.050354>,  <40.667885, 35.361351, 45.063698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.707745, 35.125061, 45.050354>,  <40.774174, 34.731243, 45.028114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707745, 35.125061, 45.050354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203105, 0.021018, -0.978931,
		-0.964970, -0.173870, 0.196475,
		-0.166077, 0.984545, 0.055595,
		40.657921, 35.420425, 45.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237450, 34.854778, 44.599213>,  <40.774174, 34.731243, 45.028114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237450, 34.854778, 44.599213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421673, 35.208820, 44.625996>,  <40.532207, 35.421246, 44.642063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421673, 35.208820, 44.625996>,  <40.237450, 34.854778, 44.599213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421673, 35.208820, 44.625996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258776, 0.206040, -0.943707,
		-0.849073, 0.417301, 0.323936,
		0.460553, 0.885103, 0.066956,
		40.559837, 35.474350, 44.646084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772415, 35.330395, 44.306671>,  <40.237450, 34.854778, 44.599213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772415, 35.330395, 44.306671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118629, 35.530437, 44.295712>,  <40.326359, 35.650463, 44.289135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118629, 35.530437, 44.295712>,  <39.772415, 35.330395, 44.306671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118629, 35.530437, 44.295712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249652, 0.383362, -0.889218,
		-0.434200, 0.776485, 0.456664,
		0.865532, 0.500105, -0.027396,
		40.378288, 35.680470, 44.287495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556786, 36.076515, 44.174469>,  <39.772415, 35.330395, 44.306671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556786, 36.076515, 44.174469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932373, 36.019718, 44.049137>,  <40.157726, 35.985641, 43.973938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.932373, 36.019718, 44.049137>,  <39.556786, 36.076515, 44.174469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932373, 36.019718, 44.049137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235291, 0.399356, -0.886089,
		0.250946, 0.905734, 0.341574,
		0.938970, -0.141991, -0.313328,
		40.214066, 35.977119, 43.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615128, 36.607918, 43.712296>,  <39.556786, 36.076515, 44.174469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615128, 36.607918, 43.712296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.933109, 36.381912, 43.623932>,  <40.123898, 36.246307, 43.570911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.933109, 36.381912, 43.623932>,  <39.615128, 36.607918, 43.712296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933109, 36.381912, 43.623932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074154, 0.451908, -0.888977,
		0.602118, 0.690316, 0.401146,
		0.794956, -0.565016, -0.220912,
		40.171597, 36.212406, 43.557659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076679, 37.000393, 43.396164>,  <39.615128, 36.607918, 43.712296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076679, 37.000393, 43.396164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215054, 36.649052, 43.264214>,  <40.298080, 36.438248, 43.185043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215054, 36.649052, 43.264214>,  <40.076679, 37.000393, 43.396164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215054, 36.649052, 43.264214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058418, 0.371060, -0.926769,
		0.936437, 0.301335, 0.179676,
		0.345939, -0.878357, -0.329871,
		40.318836, 36.385544, 43.165253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640869, 37.162125, 42.920471>,  <40.076679, 37.000393, 43.396164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640869, 37.162125, 42.920471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 36.785648, 42.809525>,  <40.517387, 36.559761, 42.742958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 36.785648, 42.809525>,  <40.640869, 37.162125, 42.920471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563694, 36.785648, 42.809525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074743, 0.267757, -0.960583,
		0.978360, -0.206066, 0.018687,
		-0.192940, -0.941192, -0.277365,
		40.505814, 36.503292, 42.726315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028255, 37.016346, 42.405117>,  <40.640869, 37.162125, 42.920471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028255, 37.016346, 42.405117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.741306, 36.744576, 42.343464>,  <40.569138, 36.581512, 42.306473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.741306, 36.744576, 42.343464>,  <41.028255, 37.016346, 42.405117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741306, 36.744576, 42.343464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054978, 0.165338, -0.984703,
		0.694513, -0.714877, -0.081257,
		-0.717376, -0.679422, -0.154132,
		40.526093, 36.540749, 42.297226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.847090, 28.190712, 32.841278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451323, 28.144791, 32.805794>,  <28.213861, 28.117237, 32.784504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451323, 28.144791, 32.805794>,  <28.847090, 28.190712, 32.841278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451323, 28.144791, 32.805794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140025, 0.915674, 0.376742,
		0.037977, 0.385177, -0.922061,
		-0.989419, -0.114804, -0.088709,
		28.154497, 28.110350, 32.779182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618139, 28.773405, 32.357376>,  <28.847090, 28.190712, 32.841278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618139, 28.773405, 32.357376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308519, 28.637146, 32.570843>,  <28.122747, 28.555389, 32.698925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308519, 28.637146, 32.570843>,  <28.618139, 28.773405, 32.357376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308519, 28.637146, 32.570843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263516, 0.939778, 0.217662,
		-0.575678, 0.027850, -0.817202,
		-0.774050, -0.340649, 0.533670,
		28.076303, 28.534950, 32.730946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131590, 29.217056, 32.057953>,  <28.618139, 28.773405, 32.357376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131590, 29.217056, 32.057953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.000326, 29.098413, 32.416691>,  <27.921568, 29.027227, 32.631935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.000326, 29.098413, 32.416691>,  <28.131590, 29.217056, 32.057953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000326, 29.098413, 32.416691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468425, 0.875565, 0.118169,
		-0.820298, -0.381328, -0.426262,
		-0.328159, -0.296605, 0.896848,
		27.901878, 29.009432, 32.685745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561579, 29.581680, 32.127609>,  <28.131590, 29.217056, 32.057953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561579, 29.581680, 32.127609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592997, 29.453629, 32.505253>,  <27.611847, 29.376797, 32.731838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.592997, 29.453629, 32.505253>,  <27.561579, 29.581680, 32.127609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592997, 29.453629, 32.505253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416701, 0.849794, 0.322817,
		-0.905644, -0.418768, -0.066651,
		0.078545, -0.320131, 0.944112,
		27.616560, 29.357590, 32.788486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895966, 29.810274, 32.320320>,  <27.561579, 29.581680, 32.127609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895966, 29.810274, 32.320320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093866, 29.749838, 32.662640>,  <27.212606, 29.713575, 32.868031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093866, 29.749838, 32.662640>,  <26.895966, 29.810274, 32.320320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093866, 29.749838, 32.662640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303560, 0.892691, 0.333097,
		-0.814293, -0.424586, 0.395796,
		0.494752, -0.151091, 0.855799,
		27.242292, 29.704510, 32.919380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441467, 30.048813, 32.883656>,  <26.895966, 29.810274, 32.320320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441467, 30.048813, 32.883656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807127, 30.019823, 33.043194>,  <27.026524, 30.002430, 33.138916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807127, 30.019823, 33.043194>,  <26.441467, 30.048813, 32.883656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807127, 30.019823, 33.043194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203140, 0.769544, 0.605422,
		-0.350807, -0.634468, 0.688756,
		0.914149, -0.072473, 0.398847,
		27.081371, 29.998081, 33.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392847, 29.948149, 33.547039>,  <26.441467, 30.048813, 32.883656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392847, 29.948149, 33.547039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750277, 30.124683, 33.514175>,  <26.964735, 30.230604, 33.494457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.750277, 30.124683, 33.514175>,  <26.392847, 29.948149, 33.547039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750277, 30.124683, 33.514175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311925, 0.742016, 0.593392,
		0.322845, -0.504614, 0.800710,
		0.893574, 0.441335, -0.082154,
		27.018349, 30.257084, 33.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462141, 30.295305, 34.246811>,  <26.392847, 29.948149, 33.547039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462141, 30.295305, 34.246811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718267, 30.457045, 33.985584>,  <26.871943, 30.554089, 33.828850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.718267, 30.457045, 33.985584>,  <26.462141, 30.295305, 34.246811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718267, 30.457045, 33.985584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150329, 0.899752, 0.409692,
		0.753258, -0.164157, 0.636911,
		0.640315, 0.404350, -0.653068,
		26.910362, 30.578350, 33.789665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917889, 30.687441, 34.703133>,  <26.462141, 30.295305, 34.246811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917889, 30.687441, 34.703133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.952005, 30.844870, 34.337002>,  <26.972475, 30.939327, 34.117325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.952005, 30.844870, 34.337002>,  <26.917889, 30.687441, 34.703133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952005, 30.844870, 34.337002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066457, 0.918878, 0.388906,
		0.994137, 0.027660, 0.104527,
		0.085290, 0.393572, -0.915329,
		26.977592, 30.962942, 34.062405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429104, 31.162483, 34.713860>,  <26.917889, 30.687441, 34.703133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429104, 31.162483, 34.713860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229189, 31.281267, 34.388401>,  <27.109240, 31.352537, 34.193127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229189, 31.281267, 34.388401>,  <27.429104, 31.162483, 34.713860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229189, 31.281267, 34.388401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117263, 0.953939, 0.276132,
		0.858173, 0.042597, -0.511590,
		-0.499788, 0.296960, -0.813650,
		27.079252, 31.370356, 34.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715477, 31.785595, 34.576702>,  <27.429104, 31.162483, 34.713860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715477, 31.785595, 34.576702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395601, 31.780455, 34.336594>,  <27.203676, 31.777370, 34.192528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395601, 31.780455, 34.336594>,  <27.715477, 31.785595, 34.576702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395601, 31.780455, 34.336594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074759, 0.994122, 0.078313,
		0.595739, 0.107502, -0.795951,
		-0.799691, -0.012850, -0.600274,
		27.155693, 31.776600, 34.156513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709690, 32.433941, 34.054394>,  <27.715477, 31.785595, 34.576702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709690, 32.433941, 34.054394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317425, 32.355690, 34.052219>,  <27.082066, 32.308739, 34.050915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.317425, 32.355690, 34.052219>,  <27.709690, 32.433941, 34.054394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317425, 32.355690, 34.052219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195232, 0.976027, 0.096201,
		-0.013513, 0.095403, -0.995347,
		-0.980664, -0.195624, -0.005436,
		27.023226, 32.297005, 34.050587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331118, 32.900261, 33.484932>,  <27.709690, 32.433941, 34.054394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331118, 32.900261, 33.484932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072788, 32.784805, 33.767662>,  <26.917791, 32.715530, 33.937298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072788, 32.784805, 33.767662>,  <27.331118, 32.900261, 33.484932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072788, 32.784805, 33.767662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123069, 0.953032, 0.276737,
		-0.753502, 0.091736, -0.651014,
		-0.645824, -0.288641, 0.706822,
		26.879042, 32.698212, 33.979710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896526, 33.395832, 33.405945>,  <27.331118, 32.900261, 33.484932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896526, 33.395832, 33.405945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812853, 33.246914, 33.767639>,  <26.762648, 33.157562, 33.984653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812853, 33.246914, 33.767639>,  <26.896526, 33.395832, 33.405945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812853, 33.246914, 33.767639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076614, 0.928087, 0.364397,
		-0.974870, 0.006950, -0.222666,
		-0.209186, -0.372299, 0.904231,
		26.750097, 33.135223, 34.038910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226788, 33.635666, 33.618301>,  <26.896526, 33.395832, 33.405945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226788, 33.635666, 33.618301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.421185, 33.514538, 33.946232>,  <26.537823, 33.441860, 34.142990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.421185, 33.514538, 33.946232>,  <26.226788, 33.635666, 33.618301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421185, 33.514538, 33.946232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165348, 0.889254, 0.426483,
		-0.858180, -0.342823, 0.382098,
		0.485991, -0.302820, 0.819825,
		26.566982, 33.423691, 34.192181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792053, 33.851521, 34.075737>,  <26.226788, 33.635666, 33.618301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792053, 33.851521, 34.075737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151447, 33.804230, 34.244850>,  <26.367085, 33.775856, 34.346317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.151447, 33.804230, 34.244850>,  <25.792053, 33.851521, 34.075737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151447, 33.804230, 34.244850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097766, 0.884977, 0.455256,
		-0.427978, -0.450375, 0.783580,
		0.898486, -0.118232, 0.422781,
		26.420994, 33.768761, 34.371685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718914, 34.143879, 34.666016>,  <25.792053, 33.851521, 34.075737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718914, 34.143879, 34.666016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118721, 34.131786, 34.663044>,  <26.358604, 34.124531, 34.661259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118721, 34.131786, 34.663044>,  <25.718914, 34.143879, 34.666016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118721, 34.131786, 34.663044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030077, 0.876080, 0.481228,
		-0.008037, -0.481218, 0.876564,
		0.999515, -0.030231, -0.007433,
		26.418575, 34.122719, 34.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898893, 34.444073, 35.283684>,  <25.718914, 34.143879, 34.666016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898893, 34.444073, 35.283684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231773, 34.461597, 35.062588>,  <26.431501, 34.472111, 34.929928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231773, 34.461597, 35.062588>,  <25.898893, 34.444073, 35.283684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231773, 34.461597, 35.062588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190867, 0.913314, 0.359759,
		0.520590, -0.404891, 0.751697,
		0.832199, 0.043813, -0.552742,
		26.481434, 34.474743, 34.896767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422121, 34.670670, 35.731720>,  <25.898893, 34.444073, 35.283684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422121, 34.670670, 35.731720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505503, 34.782543, 35.356846>,  <26.555532, 34.849667, 35.131920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505503, 34.782543, 35.356846>,  <26.422121, 34.670670, 35.731720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505503, 34.782543, 35.356846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311022, 0.889539, 0.334642,
		0.927261, -0.361244, 0.098440,
		0.208454, 0.279684, -0.937189,
		26.568039, 34.866447, 35.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958309, 35.049061, 35.787437>,  <26.422121, 34.670670, 35.731720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958309, 35.049061, 35.787437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829718, 35.144558, 35.420906>,  <26.752563, 35.201855, 35.200989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829718, 35.144558, 35.420906>,  <26.958309, 35.049061, 35.787437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829718, 35.144558, 35.420906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030496, 0.969804, 0.241973,
		0.946426, 0.049845, -0.319051,
		-0.321478, 0.238739, -0.916327,
		26.733274, 35.216179, 35.146008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268393, 35.729698, 35.716858>,  <26.958309, 35.049061, 35.787437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268393, 35.729698, 35.716858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993059, 35.732319, 35.426712>,  <26.827860, 35.733891, 35.252625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.993059, 35.732319, 35.426712>,  <27.268393, 35.729698, 35.716858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993059, 35.732319, 35.426712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177964, 0.967874, 0.177621,
		0.703226, 0.251351, -0.665053,
		-0.688333, 0.006553, -0.725365,
		26.786560, 35.734283, 35.209103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839579, 35.851971, 36.058685>,  <27.268393, 35.729698, 35.716858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839579, 35.851971, 36.058685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193327, 35.852608, 36.245396>,  <28.405577, 35.852989, 36.357422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193327, 35.852608, 36.245396>,  <27.839579, 35.851971, 36.058685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193327, 35.852608, 36.245396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249151, -0.847241, -0.469155,
		0.394727, 0.531206, -0.749674,
		0.884372, 0.001594, 0.466780,
		28.458639, 35.853085, 36.385429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322088, 35.676743, 35.555138>,  <27.839579, 35.851971, 36.058685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322088, 35.676743, 35.555138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519810, 35.579483, 35.888973>,  <28.638443, 35.521126, 36.089275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519810, 35.579483, 35.888973>,  <28.322088, 35.676743, 35.555138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519810, 35.579483, 35.888973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189387, -0.906900, -0.376384,
		0.848407, 0.344110, -0.402236,
		0.494305, -0.243149, 0.834590,
		28.668102, 35.506538, 36.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911541, 35.258808, 35.308617>,  <28.322088, 35.676743, 35.555138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911541, 35.258808, 35.308617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908939, 35.172054, 35.699085>,  <28.907377, 35.120003, 35.933369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908939, 35.172054, 35.699085>,  <28.911541, 35.258808, 35.308617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908939, 35.172054, 35.699085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277078, -0.938365, -0.206638,
		0.960825, 0.269133, 0.066198,
		-0.006505, -0.216885, 0.976176,
		28.906988, 35.106987, 35.991940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480555, 34.871010, 35.401875>,  <28.911541, 35.258808, 35.308617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480555, 34.871010, 35.401875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280569, 34.787907, 35.738178>,  <29.160578, 34.738045, 35.939960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280569, 34.787907, 35.738178>,  <29.480555, 34.871010, 35.401875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280569, 34.787907, 35.738178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303996, -0.951127, -0.054261,
		0.810941, 0.228458, 0.538685,
		-0.499961, -0.207761, 0.840758,
		29.130581, 34.725578, 35.990406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969826, 34.534061, 35.783722>,  <29.480555, 34.871010, 35.401875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969826, 34.534061, 35.783722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622431, 34.430107, 35.952568>,  <29.413994, 34.367733, 36.053875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.622431, 34.430107, 35.952568>,  <29.969826, 34.534061, 35.783722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622431, 34.430107, 35.952568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342769, -0.930008, 0.132644,
		0.358100, 0.259889, 0.896784,
		-0.868489, -0.259890, 0.422118,
		29.361883, 34.352139, 36.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100504, 34.095894, 36.366699>,  <29.969826, 34.534061, 35.783722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100504, 34.095894, 36.366699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730108, 34.043858, 36.224930>,  <29.507870, 34.012634, 36.139866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730108, 34.043858, 36.224930>,  <30.100504, 34.095894, 36.366699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730108, 34.043858, 36.224930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156386, -0.986603, -0.046445,
		-0.343636, -0.098435, 0.933930,
		-0.925990, -0.130094, -0.354426,
		29.452311, 34.004829, 36.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917356, 33.457321, 36.652020>,  <30.100504, 34.095894, 36.366699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917356, 33.457321, 36.652020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662111, 33.494080, 36.346245>,  <29.508965, 33.516136, 36.162781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662111, 33.494080, 36.346245>,  <29.917356, 33.457321, 36.652020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662111, 33.494080, 36.346245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114936, -0.970358, -0.212593,
		-0.761314, -0.223520, 0.608638,
		-0.638115, 0.091896, -0.764437,
		29.470676, 33.521648, 36.116913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507378, 32.787102, 36.521770>,  <29.917356, 33.457321, 36.652020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507378, 32.787102, 36.521770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438240, 32.971664, 36.173695>,  <29.396757, 33.082401, 35.964848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438240, 32.971664, 36.173695>,  <29.507378, 32.787102, 36.521770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438240, 32.971664, 36.173695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108114, -0.887036, -0.448864,
		-0.978998, 0.016497, 0.203202,
		-0.172842, 0.461406, -0.870190,
		29.386387, 33.110085, 35.912640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131285, 32.329052, 36.301723>,  <29.507378, 32.787102, 36.521770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131285, 32.329052, 36.301723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182478, 32.528904, 35.959030>,  <29.213194, 32.648815, 35.753414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.182478, 32.528904, 35.959030>,  <29.131285, 32.329052, 36.301723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182478, 32.528904, 35.959030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036497, -0.860879, -0.507499,
		-0.991105, 0.096219, -0.091944,
		0.127984, 0.499628, -0.856733,
		29.220873, 32.678791, 35.702011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603600, 32.053764, 35.889534>,  <29.131285, 32.329052, 36.301723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603600, 32.053764, 35.889534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892971, 32.205189, 35.658588>,  <29.066593, 32.296043, 35.520023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892971, 32.205189, 35.658588>,  <28.603600, 32.053764, 35.889534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892971, 32.205189, 35.658588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080043, -0.876619, -0.474481,
		-0.685744, 0.297039, -0.664472,
		0.723428, 0.378559, -0.577361,
		29.109999, 32.318756, 35.485382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482883, 31.890934, 35.160545>,  <28.603600, 32.053764, 35.889534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482883, 31.890934, 35.160545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877783, 31.954592, 35.161758>,  <29.114723, 31.992786, 35.162487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877783, 31.954592, 35.161758>,  <28.482883, 31.890934, 35.160545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877783, 31.954592, 35.161758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147767, -0.909250, -0.389140,
		-0.059168, 0.384627, -0.921174,
		0.987251, 0.159144, 0.003037,
		29.173958, 32.002335, 35.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614202, 31.594088, 34.585609>,  <28.482883, 31.890934, 35.160545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614202, 31.594088, 34.585609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960258, 31.578281, 34.785599>,  <29.167892, 31.568798, 34.905590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960258, 31.578281, 34.785599>,  <28.614202, 31.594088, 34.585609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960258, 31.578281, 34.785599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257885, -0.819955, -0.511047,
		0.430146, 0.571063, -0.699187,
		0.865141, -0.039515, 0.499969,
		29.219801, 31.566427, 34.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077183, 31.312786, 34.156364>,  <28.614202, 31.594088, 34.585609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077183, 31.312786, 34.156364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264603, 31.256357, 34.505203>,  <29.377054, 31.222500, 34.714508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.264603, 31.256357, 34.505203>,  <29.077183, 31.312786, 34.156364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264603, 31.256357, 34.505203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398979, -0.846969, -0.351368,
		0.788210, 0.512584, -0.340563,
		0.468552, -0.141075, 0.872099,
		29.405169, 31.214035, 34.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798784, 31.291206, 33.994453>,  <29.077183, 31.312786, 34.156364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798784, 31.291206, 33.994453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722641, 31.084568, 34.328373>,  <29.676956, 30.960585, 34.528725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722641, 31.084568, 34.328373>,  <29.798784, 31.291206, 33.994453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722641, 31.084568, 34.328373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258699, -0.846691, -0.464960,
		0.947016, 0.127454, 0.294816,
		-0.190357, -0.516594, 0.834802,
		29.665533, 30.929590, 34.578815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255611, 30.752113, 33.926540>,  <29.798784, 31.291206, 33.994453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255611, 30.752113, 33.926540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045736, 30.618793, 34.239876>,  <29.919811, 30.538801, 34.427876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045736, 30.618793, 34.239876>,  <30.255611, 30.752113, 33.926540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045736, 30.618793, 34.239876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079214, -0.935292, -0.344898,
		0.847602, -0.118912, 0.517137,
		-0.524687, -0.333301, 0.783336,
		29.888330, 30.518803, 34.474876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641848, 30.164581, 34.244915>,  <30.255611, 30.752113, 33.926540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641848, 30.164581, 34.244915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.279173, 30.077246, 34.389271>,  <30.061567, 30.024845, 34.475883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.279173, 30.077246, 34.389271>,  <30.641848, 30.164581, 34.244915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279173, 30.077246, 34.389271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081782, -0.930363, -0.357402,
		0.413796, -0.294538, 0.861406,
		-0.906689, -0.218339, 0.360893,
		30.007166, 30.011744, 34.497540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672863, 29.511564, 34.639046>,  <30.641848, 30.164581, 34.244915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672863, 29.511564, 34.639046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289007, 29.551172, 34.533752>,  <30.058695, 29.574938, 34.470577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.289007, 29.551172, 34.533752>,  <30.672863, 29.511564, 34.639046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289007, 29.551172, 34.533752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002424, -0.938846, -0.344328,
		-0.281228, -0.329793, 0.901193,
		-0.959638, 0.099019, -0.263230,
		30.001116, 29.580877, 34.454784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346771, 29.042028, 35.048172>,  <30.672863, 29.511564, 34.639046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346771, 29.042028, 35.048172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114269, 29.122553, 34.732800>,  <29.974768, 29.170868, 34.543575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114269, 29.122553, 34.732800>,  <30.346771, 29.042028, 35.048172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114269, 29.122553, 34.732800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113223, -0.979498, -0.166624,
		-0.805805, -0.007583, 0.592132,
		-0.581256, 0.201309, -0.788426,
		29.939892, 29.182945, 34.496273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936853, 28.526024, 34.971809>,  <30.346771, 29.042028, 35.048172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936853, 28.526024, 34.971809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880173, 28.656473, 34.597950>,  <29.846165, 28.734743, 34.373634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.880173, 28.656473, 34.597950>,  <29.936853, 28.526024, 34.971809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880173, 28.656473, 34.597950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011215, -0.943585, -0.330940,
		-0.989846, -0.057376, 0.130049,
		-0.141700, 0.326121, -0.934648,
		29.837664, 28.754309, 34.317554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406988, 28.068600, 34.686409>,  <29.936853, 28.526024, 34.971809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406988, 28.068600, 34.686409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583982, 28.243504, 34.373230>,  <29.690180, 28.348446, 34.185322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583982, 28.243504, 34.373230>,  <29.406988, 28.068600, 34.686409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583982, 28.243504, 34.373230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117253, -0.893787, -0.432893,
		-0.889077, 0.099746, -0.446759,
		0.442487, 0.437258, -0.782950,
		29.716728, 28.374681, 34.138344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999146, 27.895334, 34.102577>,  <29.406988, 28.068600, 34.686409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999146, 27.895334, 34.102577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370962, 27.988607, 33.988331>,  <29.594051, 28.044571, 33.919785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.370962, 27.988607, 33.988331>,  <28.999146, 27.895334, 34.102577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370962, 27.988607, 33.988331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088044, -0.892589, -0.442192,
		-0.358050, 0.385889, -0.850229,
		0.929542, 0.233184, -0.285617,
		29.649824, 28.058563, 33.902645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.879597, 33.319313, 47.303890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.488853, 33.304745, 47.388187>,  <41.254406, 33.296005, 47.438766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.488853, 33.304745, 47.388187>,  <41.879597, 33.319313, 47.303890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488853, 33.304745, 47.388187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210803, -0.330190, 0.920074,
		0.036079, 0.943212, 0.330227,
		-0.976863, -0.036418, 0.210744,
		41.195793, 33.293819, 47.451412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764610, 33.724407, 47.977913>,  <41.879597, 33.319313, 47.303890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764610, 33.724407, 47.977913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449986, 33.479778, 47.943752>,  <41.261208, 33.333000, 47.923256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449986, 33.479778, 47.943752>,  <41.764610, 33.724407, 47.977913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449986, 33.479778, 47.943752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099077, -0.261505, 0.960104,
		-0.609505, 0.746724, 0.266284,
		-0.786567, -0.611571, -0.085405,
		41.214016, 33.296307, 47.918129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367168, 33.932922, 48.575619>,  <41.764610, 33.724407, 47.977913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367168, 33.932922, 48.575619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212044, 33.575974, 48.483295>,  <41.118969, 33.361805, 48.427902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212044, 33.575974, 48.483295>,  <41.367168, 33.932922, 48.575619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212044, 33.575974, 48.483295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093725, -0.287284, 0.953249,
		-0.916960, 0.348052, 0.195051,
		-0.387815, -0.892372, -0.230807,
		41.095699, 33.308262, 48.414055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785259, 33.842072, 48.935955>,  <41.367168, 33.932922, 48.575619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785259, 33.842072, 48.935955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.923756, 33.477669, 48.846340>,  <41.006855, 33.259029, 48.792572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.923756, 33.477669, 48.846340>,  <40.785259, 33.842072, 48.935955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923756, 33.477669, 48.846340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229577, -0.149266, 0.961776,
		-0.909622, -0.384440, 0.157463,
		0.346241, -0.911003, -0.224034,
		41.027630, 33.204369, 48.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423721, 33.357475, 49.451008>,  <40.785259, 33.842072, 48.935955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423721, 33.357475, 49.451008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753086, 33.185162, 49.303272>,  <40.950706, 33.081776, 49.214630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753086, 33.185162, 49.303272>,  <40.423721, 33.357475, 49.451008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753086, 33.185162, 49.303272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310913, -0.201976, 0.928730,
		-0.474677, -0.879564, -0.032375,
		0.823417, -0.430781, -0.369342,
		41.000111, 33.055927, 49.192471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470150, 32.811245, 49.734451>,  <40.423721, 33.357475, 49.451008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470150, 32.811245, 49.734451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.851067, 32.831703, 49.614101>,  <41.079617, 32.843979, 49.541893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.851067, 32.831703, 49.614101>,  <40.470150, 32.811245, 49.734451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851067, 32.831703, 49.614101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300678, -0.326116, 0.896237,
		-0.052282, -0.943945, -0.325935,
		0.952292, 0.051144, -0.300874,
		41.136753, 32.847046, 49.523838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735970, 32.233707, 49.960697>,  <40.470150, 32.811245, 49.734451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735970, 32.233707, 49.960697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056660, 32.466377, 49.905712>,  <41.249073, 32.605980, 49.872723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056660, 32.466377, 49.905712>,  <40.735970, 32.233707, 49.960697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056660, 32.466377, 49.905712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373404, -0.307860, 0.875096,
		0.466703, -0.752912, -0.464018,
		0.801722, 0.581676, -0.137461,
		41.297176, 32.640881, 49.864475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281910, 31.795906, 50.040443>,  <40.735970, 32.233707, 49.960697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281910, 31.795906, 50.040443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.408253, 32.167179, 50.119152>,  <41.484058, 32.389942, 50.166378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.408253, 32.167179, 50.119152>,  <41.281910, 31.795906, 50.040443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408253, 32.167179, 50.119152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477031, -0.334616, 0.812696,
		0.820170, -0.162829, -0.548460,
		0.315854, 0.928180, 0.196767,
		41.503010, 32.445633, 50.178181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029251, 31.772625, 50.259613>,  <41.281910, 31.795906, 50.040443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029251, 31.772625, 50.259613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910545, 32.132751, 50.386963>,  <41.839321, 32.348827, 50.463371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.910545, 32.132751, 50.386963>,  <42.029251, 31.772625, 50.259613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910545, 32.132751, 50.386963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434280, -0.169688, 0.884651,
		0.850491, 0.400792, -0.340634,
		-0.296760, 0.900318, 0.318374,
		41.821518, 32.402847, 50.482475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550652, 32.050434, 50.740837>,  <42.029251, 31.772625, 50.259613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550652, 32.050434, 50.740837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.228523, 32.266396, 50.838779>,  <42.035244, 32.395973, 50.897545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.228523, 32.266396, 50.838779>,  <42.550652, 32.050434, 50.740837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228523, 32.266396, 50.838779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232219, -0.092737, 0.968233,
		0.545462, 0.836601, -0.050693,
		-0.805323, 0.539906, 0.244859,
		41.986927, 32.428368, 50.912239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806046, 32.572155, 51.190346>,  <42.550652, 32.050434, 50.740837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806046, 32.572155, 51.190346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.410801, 32.525055, 51.229885>,  <42.173653, 32.496796, 51.253609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.410801, 32.525055, 51.229885>,  <42.806046, 32.572155, 51.190346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410801, 32.525055, 51.229885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119826, -0.187030, 0.975019,
		-0.096318, 0.975272, 0.198915,
		-0.988112, -0.117747, 0.098849,
		42.114368, 32.489731, 51.259541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657288, 33.067642, 51.784573>,  <42.806046, 32.572155, 51.190346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657288, 33.067642, 51.784573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394764, 32.773579, 51.716679>,  <42.237251, 32.597141, 51.675941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394764, 32.773579, 51.716679>,  <42.657288, 33.067642, 51.784573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394764, 32.773579, 51.716679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012861, -0.235829, 0.971710,
		-0.754386, 0.635555, 0.164231,
		-0.656306, -0.735156, -0.169732,
		42.197872, 32.553032, 51.665760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866741, 33.154411, 52.021824>,  <42.657288, 33.067642, 51.784573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866741, 33.154411, 52.021824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.892487, 32.755424, 52.009663>,  <41.907932, 32.516033, 52.002365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.892487, 32.755424, 52.009663>,  <41.866741, 33.154411, 52.021824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892487, 32.755424, 52.009663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697513, -0.023180, -0.716197,
		0.713675, 0.067302, -0.697236,
		0.064363, -0.997463, -0.030401,
		41.911797, 32.456184, 52.000542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487373, 33.344608, 52.669819>,  <41.866741, 33.154411, 52.021824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487373, 33.344608, 52.669819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.844551, 33.246780, 52.820992>,  <42.058857, 33.188084, 52.911694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.844551, 33.246780, 52.820992>,  <41.487373, 33.344608, 52.669819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844551, 33.246780, 52.820992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450122, -0.496496, 0.742214,
		0.006118, -0.832873, -0.553431,
		0.892946, -0.244571, 0.377931,
		42.112434, 33.173409, 52.934372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081104, 33.824505, 52.342361>,  <41.487373, 33.344608, 52.669819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081104, 33.824505, 52.342361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.207176, 34.168064, 52.503830>,  <41.282822, 34.374199, 52.600712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.207176, 34.168064, 52.503830>,  <41.081104, 33.824505, 52.342361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207176, 34.168064, 52.503830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190794, 0.359321, -0.913502,
		-0.929655, 0.364938, -0.050621,
		0.315182, 0.858900, 0.403673,
		41.301731, 34.425735, 52.624931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624149, 34.366081, 52.065067>,  <41.081104, 33.824505, 52.342361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624149, 34.366081, 52.065067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950508, 34.555389, 52.197933>,  <41.146324, 34.668976, 52.277653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.950508, 34.555389, 52.197933>,  <40.624149, 34.366081, 52.065067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950508, 34.555389, 52.197933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063783, 0.497302, -0.865230,
		-0.574675, 0.727121, 0.375558,
		0.815892, 0.473272, 0.332165,
		41.195274, 34.697372, 52.297581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497658, 34.978386, 51.987179>,  <40.624149, 34.366081, 52.065067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497658, 34.978386, 51.987179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897640, 34.978977, 51.983612>,  <41.137630, 34.979332, 51.981472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897640, 34.978977, 51.983612>,  <40.497658, 34.978386, 51.987179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897640, 34.978977, 51.983612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008632, 0.449126, -0.893427,
		0.002684, 0.893467, 0.449120,
		0.999959, 0.001479, -0.008918,
		41.197628, 34.979420, 51.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673161, 35.697548, 51.829731>,  <40.497658, 34.978386, 51.987179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673161, 35.697548, 51.829731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.021301, 35.515160, 51.755341>,  <41.230186, 35.405727, 51.710709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.021301, 35.515160, 51.755341>,  <40.673161, 35.697548, 51.829731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021301, 35.515160, 51.755341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035127, 0.434181, -0.900140,
		0.491183, 0.776902, 0.393905,
		0.870348, -0.455971, -0.185972,
		41.282406, 35.378368, 51.699551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080879, 36.213501, 51.555214>,  <40.673161, 35.697548, 51.829731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080879, 36.213501, 51.555214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.231232, 35.858768, 51.447701>,  <41.321442, 35.645927, 51.383194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.231232, 35.858768, 51.447701>,  <41.080879, 36.213501, 51.555214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231232, 35.858768, 51.447701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057881, 0.311952, -0.948333,
		0.924859, 0.340901, 0.168587,
		0.375879, -0.886833, -0.268780,
		41.343994, 35.592720, 51.367065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566132, 36.315674, 51.043018>,  <41.080879, 36.213501, 51.555214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566132, 36.315674, 51.043018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.455437, 35.932259, 51.015835>,  <41.389019, 35.702209, 50.999523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.455437, 35.932259, 51.015835>,  <41.566132, 36.315674, 51.043018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455437, 35.932259, 51.015835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125989, 0.106306, -0.986319,
		0.952651, -0.264386, -0.150184,
		-0.276734, -0.958540, -0.067963,
		41.372417, 35.644695, 50.995445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029976, 35.949043, 50.533043>,  <41.566132, 36.315674, 51.043018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029976, 35.949043, 50.533043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682446, 35.752281, 50.555534>,  <41.473927, 35.634224, 50.569027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.682446, 35.752281, 50.555534>,  <42.029976, 35.949043, 50.533043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682446, 35.752281, 50.555534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075348, 0.019127, -0.996974,
		0.489345, -0.870436, -0.053683,
		-0.868829, -0.491909, 0.056226,
		41.421799, 35.604710, 50.572403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943653, 35.684750, 49.892647>,  <42.029976, 35.949043, 50.533043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943653, 35.684750, 49.892647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.573090, 35.612823, 50.024971>,  <41.350750, 35.569668, 50.104366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.573090, 35.612823, 50.024971>,  <41.943653, 35.684750, 49.892647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573090, 35.612823, 50.024971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298041, -0.186682, -0.936120,
		0.230089, -0.965823, 0.119350,
		-0.926407, -0.179819, 0.330809,
		41.295166, 35.558876, 50.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671852, 35.206776, 49.461613>,  <41.943653, 35.684750, 49.892647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671852, 35.206776, 49.461613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340706, 35.383652, 49.599667>,  <41.142017, 35.489777, 49.682499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340706, 35.383652, 49.599667>,  <41.671852, 35.206776, 49.461613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340706, 35.383652, 49.599667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429526, -0.104007, -0.897045,
		-0.360768, -0.890871, 0.276035,
		-0.827861, 0.442190, 0.345130,
		41.092346, 35.516308, 49.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057194, 34.808392, 49.263195>,  <41.671852, 35.206776, 49.461613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057194, 34.808392, 49.263195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874638, 35.148121, 49.369293>,  <40.765102, 35.351959, 49.432953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874638, 35.148121, 49.369293>,  <41.057194, 34.808392, 49.263195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874638, 35.148121, 49.369293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373885, 0.087452, -0.923343,
		-0.807413, -0.520580, 0.277637,
		-0.456394, 0.849323, 0.265246,
		40.737720, 35.402916, 49.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297741, 34.774632, 49.126987>,  <41.057194, 34.808392, 49.263195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297741, 34.774632, 49.126987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.403019, 35.160492, 49.132374>,  <40.466187, 35.392006, 49.135605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.403019, 35.160492, 49.132374>,  <40.297741, 34.774632, 49.126987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403019, 35.160492, 49.132374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331571, 0.103559, -0.937729,
		-0.905975, 0.242337, 0.347106,
		0.263193, 0.964650, 0.013470,
		40.481976, 35.449886, 49.136414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791866, 35.101997, 48.833912>,  <40.297741, 34.774632, 49.126987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791866, 35.101997, 48.833912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088890, 35.365116, 48.783463>,  <40.267105, 35.522987, 48.753193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088890, 35.365116, 48.783463>,  <39.791866, 35.101997, 48.833912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088890, 35.365116, 48.783463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268640, 0.120005, -0.955736,
		-0.613543, 0.743575, 0.265821,
		0.742561, 0.657796, -0.126126,
		40.311657, 35.562454, 48.745625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531597, 35.655483, 48.464157>,  <39.791866, 35.101997, 48.833912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531597, 35.655483, 48.464157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925266, 35.696438, 48.406292>,  <40.161469, 35.721012, 48.371571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925266, 35.696438, 48.406292>,  <39.531597, 35.655483, 48.464157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925266, 35.696438, 48.406292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162466, 0.194993, -0.967255,
		-0.070829, 0.975445, 0.208541,
		0.984169, 0.102390, -0.144665,
		40.220516, 35.727154, 48.362892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513451, 36.154285, 47.893936>,  <39.531597, 35.655483, 48.464157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513451, 36.154285, 47.893936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877232, 35.988361, 47.905449>,  <40.095501, 35.888805, 47.912357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.877232, 35.988361, 47.905449>,  <39.513451, 36.154285, 47.893936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877232, 35.988361, 47.905449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019686, -0.026178, -0.999463,
		0.415344, 0.909530, -0.015641,
		0.909451, -0.414813, 0.028778,
		40.150066, 35.863918, 47.914082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283413, 36.883892, 47.848461>,  <39.513451, 36.154285, 47.893936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283413, 36.883892, 47.848461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884022, 36.899582, 47.863991>,  <38.644386, 36.908997, 47.873310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884022, 36.899582, 47.863991>,  <39.283413, 36.883892, 47.848461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884022, 36.899582, 47.863991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039548, 0.017859, 0.999058,
		0.038496, 0.999071, -0.019383,
		-0.998476, 0.039226, 0.038824,
		38.584480, 36.911350, 47.875637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148811, 37.205803, 48.545982>,  <39.283413, 36.883892, 47.848461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148811, 37.205803, 48.545982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799953, 37.046700, 48.432030>,  <38.590637, 36.951237, 48.363659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799953, 37.046700, 48.432030>,  <39.148811, 37.205803, 48.545982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799953, 37.046700, 48.432030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206237, -0.229130, 0.951297,
		-0.443657, 0.888421, 0.117803,
		-0.872144, -0.397754, -0.284880,
		38.538311, 36.927372, 48.346565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601383, 37.592384, 48.867962>,  <39.148811, 37.205803, 48.545982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601383, 37.592384, 48.867962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450314, 37.231915, 48.782875>,  <38.359673, 37.015633, 48.731823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450314, 37.231915, 48.782875>,  <38.601383, 37.592384, 48.867962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450314, 37.231915, 48.782875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068492, -0.201913, 0.977005,
		-0.923402, 0.383560, 0.014534,
		-0.377675, -0.901173, -0.212718,
		38.337009, 36.961563, 48.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959236, 37.503109, 49.261574>,  <38.601383, 37.592384, 48.867962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959236, 37.503109, 49.261574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061859, 37.125694, 49.177742>,  <38.123432, 36.899246, 49.127441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.061859, 37.125694, 49.177742>,  <37.959236, 37.503109, 49.261574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061859, 37.125694, 49.177742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031459, -0.224877, 0.973879,
		-0.966017, -0.243262, -0.087376,
		0.256557, -0.943533, -0.209582,
		38.138824, 36.842636, 49.114868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446400, 37.156036, 49.593464>,  <37.959236, 37.503109, 49.261574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446400, 37.156036, 49.593464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737988, 36.887272, 49.541096>,  <37.912941, 36.726013, 49.509674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737988, 36.887272, 49.541096>,  <37.446400, 37.156036, 49.593464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737988, 36.887272, 49.541096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072501, -0.265960, 0.961254,
		-0.680698, -0.691231, -0.242590,
		0.728968, -0.671911, -0.130923,
		37.956676, 36.685699, 49.501820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242924, 36.607735, 50.014725>,  <37.446400, 37.156036, 49.593464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242924, 36.607735, 50.014725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630020, 36.527634, 49.953575>,  <37.862278, 36.479572, 49.916885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630020, 36.527634, 49.953575>,  <37.242924, 36.607735, 50.014725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630020, 36.527634, 49.953575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076217, -0.345655, 0.935261,
		-0.240129, -0.916745, -0.319243,
		0.967745, -0.200251, -0.152873,
		37.920341, 36.467556, 49.907715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334316, 35.819790, 50.084267>,  <37.242924, 36.607735, 50.014725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334316, 35.819790, 50.084267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671516, 36.023365, 50.153919>,  <37.873837, 36.145512, 50.195709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671516, 36.023365, 50.153919>,  <37.334316, 35.819790, 50.084267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671516, 36.023365, 50.153919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051178, -0.398137, 0.915897,
		0.535467, -0.763194, -0.361677,
		0.843004, 0.508943, 0.174130,
		37.924419, 36.176048, 50.206158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122509, 35.091457, 50.068027>,  <37.334316, 35.819790, 50.084267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122509, 35.091457, 50.068027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765564, 34.925098, 50.138130>,  <36.551395, 34.825283, 50.180191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765564, 34.925098, 50.138130>,  <37.122509, 35.091457, 50.068027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765564, 34.925098, 50.138130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237827, 0.103314, -0.965797,
		0.383565, -0.903525, -0.191106,
		-0.892365, -0.415896, 0.175255,
		36.497856, 34.800331, 50.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117367, 34.481400, 49.663177>,  <37.122509, 35.091457, 50.068027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117367, 34.481400, 49.663177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738041, 34.586823, 49.733879>,  <36.510445, 34.650078, 49.776302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.738041, 34.586823, 49.733879>,  <37.117367, 34.481400, 49.663177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738041, 34.586823, 49.733879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171934, 0.041444, -0.984236,
		-0.266729, -0.963753, 0.006013,
		-0.948311, 0.263558, 0.176756,
		36.453548, 34.665890, 49.786907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703480, 33.963551, 49.332211>,  <37.117367, 34.481400, 49.663177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703480, 33.963551, 49.332211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478619, 34.294350, 49.335125>,  <36.343704, 34.492828, 49.336872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478619, 34.294350, 49.335125>,  <36.703480, 33.963551, 49.332211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478619, 34.294350, 49.335125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081762, -0.046805, -0.995552,
		-0.822983, -0.560247, 0.093929,
		-0.562151, 0.827003, 0.007287,
		36.309975, 34.542450, 49.337311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420586, 33.886127, 48.674713>,  <36.703480, 33.963551, 49.332211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420586, 33.886127, 48.674713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290668, 34.247974, 48.785110>,  <36.212719, 34.465084, 48.851349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.290668, 34.247974, 48.785110>,  <36.420586, 33.886127, 48.674713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290668, 34.247974, 48.785110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042878, 0.277433, -0.959788,
		-0.944812, -0.323568, -0.051321,
		-0.324794, 0.904618, 0.275995,
		36.193230, 34.519360, 48.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765942, 33.985023, 48.334255>,  <36.420586, 33.886127, 48.674713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765942, 33.985023, 48.334255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937706, 34.339836, 48.402119>,  <36.040764, 34.552723, 48.442837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937706, 34.339836, 48.402119>,  <35.765942, 33.985023, 48.334255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937706, 34.339836, 48.402119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168842, 0.263395, -0.949798,
		-0.887187, 0.379207, 0.262872,
		0.429409, 0.887032, 0.169654,
		36.066528, 34.605946, 48.453014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390755, 34.449383, 47.948563>,  <35.765942, 33.985023, 48.334255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390755, 34.449383, 47.948563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710068, 34.670498, 48.044209>,  <35.901653, 34.803165, 48.101597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.710068, 34.670498, 48.044209>,  <35.390755, 34.449383, 47.948563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710068, 34.670498, 48.044209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125855, 0.541353, -0.831322,
		-0.588992, 0.633532, 0.501722,
		0.798279, 0.552787, 0.239120,
		35.949551, 34.836334, 48.115944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177414, 35.219395, 47.816387>,  <35.390755, 34.449383, 47.948563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177414, 35.219395, 47.816387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573341, 35.190578, 47.767300>,  <35.810898, 35.173286, 47.737846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573341, 35.190578, 47.767300>,  <35.177414, 35.219395, 47.816387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573341, 35.190578, 47.767300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066804, 0.526214, -0.847724,
		0.125652, 0.847294, 0.516046,
		0.989823, -0.072044, -0.122723,
		35.870289, 35.168964, 47.730484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.263477, 31.394327, 52.075066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.556950, 31.541351, 51.846466>,  <39.733032, 31.629566, 51.709309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.556950, 31.541351, 51.846466>,  <39.263477, 31.394327, 52.075066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556950, 31.541351, 51.846466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436726, -0.389259, -0.811017,
		-0.520557, 0.844617, -0.125070,
		0.733684, 0.367559, -0.571497,
		39.777054, 31.651619, 51.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997231, 31.838938, 51.561260>,  <39.263477, 31.394327, 52.075066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997231, 31.838938, 51.561260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365536, 31.752752, 51.431168>,  <39.586517, 31.701042, 51.353111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365536, 31.752752, 51.431168>,  <38.997231, 31.838938, 51.561260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365536, 31.752752, 51.431168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382629, -0.336139, -0.860585,
		0.076102, 0.916835, -0.391946,
		0.920763, -0.215462, -0.325227,
		39.641766, 31.688114, 51.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120808, 32.276279, 50.946049>,  <38.997231, 31.838938, 51.561260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120808, 32.276279, 50.946049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.313221, 31.925604, 50.944374>,  <39.428669, 31.715199, 50.943371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.313221, 31.925604, 50.944374>,  <39.120808, 32.276279, 50.946049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313221, 31.925604, 50.944374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411834, -0.221754, -0.883865,
		0.773950, 0.426893, -0.467723,
		0.481035, -0.876692, -0.004183,
		39.457531, 31.662596, 50.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406258, 32.270729, 50.357872>,  <39.120808, 32.276279, 50.946049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406258, 32.270729, 50.357872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.412167, 31.877438, 50.430592>,  <39.415714, 31.641464, 50.474224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.412167, 31.877438, 50.430592>,  <39.406258, 32.270729, 50.357872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412167, 31.877438, 50.430592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300610, -0.177778, -0.937032,
		0.953633, -0.040806, -0.298194,
		0.014776, -0.983224, 0.181801,
		39.416599, 31.582470, 50.485130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790749, 31.967413, 49.864983>,  <39.406258, 32.270729, 50.357872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790749, 31.967413, 49.864983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594475, 31.642632, 49.991447>,  <39.476711, 31.447762, 50.067326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.594475, 31.642632, 49.991447>,  <39.790749, 31.967413, 49.864983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594475, 31.642632, 49.991447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193461, -0.252264, -0.948122,
		0.849588, -0.526395, -0.033299,
		-0.490687, -0.811955, 0.316158,
		39.447269, 31.399046, 50.086296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105099, 31.376909, 49.511719>,  <39.790749, 31.967413, 49.864983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105099, 31.376909, 49.511719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.744366, 31.261278, 49.640175>,  <39.527927, 31.191898, 49.717247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.744366, 31.261278, 49.640175>,  <40.105099, 31.376909, 49.511719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744366, 31.261278, 49.640175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295226, -0.130434, -0.946482,
		0.315496, -0.948377, 0.032286,
		-0.901834, -0.289079, 0.321137,
		39.473816, 31.174555, 49.736515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888580, 30.601749, 49.200932>,  <40.105099, 31.376909, 49.511719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888580, 30.601749, 49.200932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.540310, 30.764084, 49.312080>,  <39.331348, 30.861485, 49.378769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.540310, 30.764084, 49.312080>,  <39.888580, 30.601749, 49.200932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540310, 30.764084, 49.312080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440669, -0.392717, -0.807207,
		-0.218467, -0.825270, 0.520770,
		-0.870680, 0.405836, 0.277875,
		39.279106, 30.885836, 49.395443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460915, 30.036079, 49.165966>,  <39.888580, 30.601749, 49.200932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460915, 30.036079, 49.165966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.217758, 30.353687, 49.166302>,  <39.071865, 30.544252, 49.166504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.217758, 30.353687, 49.166302>,  <39.460915, 30.036079, 49.165966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217758, 30.353687, 49.166302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611224, -0.467276, -0.638795,
		-0.506825, -0.388828, 0.769377,
		-0.607893, 0.794018, 0.000833,
		39.035389, 30.591892, 49.166553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722179, 29.761971, 49.329399>,  <39.460915, 30.036079, 49.165966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722179, 29.761971, 49.329399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.671322, 30.119019, 49.156395>,  <38.640808, 30.333248, 49.052593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.671322, 30.119019, 49.156395>,  <38.722179, 29.761971, 49.329399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671322, 30.119019, 49.156395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747872, -0.372704, -0.549344,
		-0.651553, 0.253612, 0.714954,
		-0.127146, 0.892621, -0.432506,
		38.633179, 30.386805, 49.026642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868881, 29.860388, 49.203907>,  <38.722179, 29.761971, 49.329399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868881, 29.860388, 49.203907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050610, 30.109138, 48.948765>,  <38.159649, 30.258389, 48.795681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.050610, 30.109138, 48.948765>,  <37.868881, 29.860388, 49.203907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050610, 30.109138, 48.948765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558153, -0.359340, -0.747890,
		-0.694302, 0.695806, 0.183845,
		0.454323, 0.621875, -0.637857,
		38.186905, 30.295702, 48.757408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308060, 30.065943, 48.746132>,  <37.868881, 29.860388, 49.203907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308060, 30.065943, 48.746132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660305, 30.156717, 48.579746>,  <37.871651, 30.211182, 48.479916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660305, 30.156717, 48.579746>,  <37.308060, 30.065943, 48.746132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660305, 30.156717, 48.579746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327785, -0.342176, -0.880609,
		-0.342176, 0.911820, -0.226937,
		0.880609, 0.226937, -0.415966,
		37.924488, 30.224798, 48.454956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111042, 30.659393, 48.175377>,  <37.308060, 30.065943, 48.746132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111042, 30.659393, 48.175377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456245, 30.475513, 48.091572>,  <37.663368, 30.365185, 48.041286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456245, 30.475513, 48.091572>,  <37.111042, 30.659393, 48.175377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456245, 30.475513, 48.091572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424937, -0.436246, -0.793169,
		0.273220, 0.773540, -0.571827,
		0.863006, -0.459701, -0.209515,
		37.715149, 30.337603, 48.028717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603050, 31.153212, 47.785530>,  <37.111042, 30.659393, 48.175377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603050, 31.153212, 47.785530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236229, 31.031902, 47.889091>,  <36.016136, 30.959116, 47.951229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.236229, 31.031902, 47.889091>,  <36.603050, 31.153212, 47.785530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236229, 31.031902, 47.889091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179691, 0.265333, 0.947265,
		-0.355976, 0.915218, -0.188830,
		-0.917056, -0.303273, 0.258908,
		35.961113, 30.940920, 47.966763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099022, 31.778629, 47.953369>,  <36.603050, 31.153212, 47.785530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099022, 31.778629, 47.953369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.029861, 31.442663, 48.159145>,  <35.988365, 31.241083, 48.282612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.029861, 31.442663, 48.159145>,  <36.099022, 31.778629, 47.953369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029861, 31.442663, 48.159145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265194, 0.463318, 0.845582,
		-0.948566, 0.282631, 0.142631,
		-0.172904, -0.839915, 0.514439,
		35.977989, 31.190689, 48.313477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216160, 32.091602, 48.564705>,  <36.099022, 31.778629, 47.953369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216160, 32.091602, 48.564705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.137833, 31.711418, 48.661270>,  <36.090836, 31.483309, 48.719212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.137833, 31.711418, 48.661270>,  <36.216160, 32.091602, 48.564705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137833, 31.711418, 48.661270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038588, 0.253460, 0.966576,
		-0.979881, 0.179958, -0.086309,
		-0.195819, -0.950460, 0.241417,
		36.079086, 31.426281, 48.733696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758926, 32.061790, 49.100643>,  <36.216160, 32.091602, 48.564705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758926, 32.061790, 49.100643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936619, 31.705748, 49.141361>,  <36.043236, 31.492121, 49.165794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936619, 31.705748, 49.141361>,  <35.758926, 32.061790, 49.100643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936619, 31.705748, 49.141361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037628, 0.132061, 0.990527,
		-0.895122, -0.436192, 0.092159,
		0.444231, -0.890110, 0.101798,
		36.069889, 31.438715, 49.171902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373737, 31.645512, 49.560322>,  <35.758926, 32.061790, 49.100643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373737, 31.645512, 49.560322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755569, 31.526335, 49.560696>,  <35.984669, 31.454828, 49.560921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755569, 31.526335, 49.560696>,  <35.373737, 31.645512, 49.560322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755569, 31.526335, 49.560696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033922, 0.111812, 0.993150,
		-0.296006, -0.948013, 0.116840,
		0.954584, -0.297941, 0.000938,
		36.041946, 31.436953, 49.560978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461388, 31.474760, 50.229118>,  <35.373737, 31.645512, 49.560322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461388, 31.474760, 50.229118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.835793, 31.462606, 50.088860>,  <36.060436, 31.455315, 50.004704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.835793, 31.462606, 50.088860>,  <35.461388, 31.474760, 50.229118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835793, 31.462606, 50.088860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347574, 0.236687, 0.907288,
		0.055428, -0.971111, 0.232103,
		0.936013, -0.030384, -0.350652,
		36.116596, 31.453491, 49.983665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916382, 30.945009, 50.646832>,  <35.461388, 31.474760, 50.229118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916382, 30.945009, 50.646832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181225, 31.194410, 50.480526>,  <36.340130, 31.344051, 50.380741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181225, 31.194410, 50.480526>,  <35.916382, 30.945009, 50.646832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181225, 31.194410, 50.480526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360838, 0.221010, 0.906063,
		0.656821, -0.749933, -0.078652,
		0.662104, 0.623502, -0.415769,
		36.379856, 31.381460, 50.355797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677708, 30.710211, 50.833302>,  <35.916382, 30.945009, 50.646832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677708, 30.710211, 50.833302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666027, 31.104109, 50.764694>,  <36.659019, 31.340448, 50.723530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.666027, 31.104109, 50.764694>,  <36.677708, 30.710211, 50.833302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666027, 31.104109, 50.764694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418861, 0.167859, 0.892401,
		0.907581, -0.045781, -0.417375,
		-0.029205, 0.984747, -0.171522,
		36.657265, 31.399532, 50.713238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383141, 30.900517, 51.035019>,  <36.677708, 30.710211, 50.833302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383141, 30.900517, 51.035019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173084, 31.240278, 51.014076>,  <37.047050, 31.444136, 51.001511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173084, 31.240278, 51.014076>,  <37.383141, 30.900517, 51.035019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173084, 31.240278, 51.014076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363657, 0.279603, 0.888581,
		0.769403, 0.447589, -0.455723,
		-0.525140, 0.849404, -0.052358,
		37.015541, 31.495100, 50.998367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787426, 31.389051, 51.442791>,  <37.383141, 30.900517, 51.035019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787426, 31.389051, 51.442791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426579, 31.561478, 51.435158>,  <37.210072, 31.664934, 51.430580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.426579, 31.561478, 51.435158>,  <37.787426, 31.389051, 51.442791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426579, 31.561478, 51.435158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126968, 0.307451, 0.943055,
		0.412386, 0.848325, -0.332089,
		-0.902118, 0.431067, -0.019079,
		37.155945, 31.690798, 51.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856579, 32.076206, 51.611385>,  <37.787426, 31.389051, 51.442791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856579, 32.076206, 51.611385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.486210, 31.954014, 51.700241>,  <37.263988, 31.880697, 51.753555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.486210, 31.954014, 51.700241>,  <37.856579, 32.076206, 51.611385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486210, 31.954014, 51.700241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112517, 0.338340, 0.934273,
		-0.360563, 0.890060, -0.278905,
		-0.925923, -0.305482, 0.222140,
		37.208431, 31.862370, 51.766884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517601, 32.608200, 52.102997>,  <37.856579, 32.076206, 51.611385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517601, 32.608200, 52.102997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254696, 32.309059, 52.140354>,  <37.096954, 32.129574, 52.162769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.254696, 32.309059, 52.140354>,  <37.517601, 32.608200, 52.102997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254696, 32.309059, 52.140354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080513, 0.192883, 0.977913,
		-0.749350, 0.635225, -0.186986,
		-0.657261, -0.747854, 0.093394,
		37.057518, 32.084702, 52.168373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906567, 32.844570, 52.590786>,  <37.517601, 32.608200, 52.102997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906567, 32.844570, 52.590786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.932129, 32.445614, 52.577396>,  <36.947464, 32.206238, 52.569363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.932129, 32.445614, 52.577396>,  <36.906567, 32.844570, 52.590786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932129, 32.445614, 52.577396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168974, -0.043869, 0.984644,
		-0.983547, -0.057265, -0.171337,
		0.063902, -0.997395, -0.033471,
		36.951298, 32.146397, 52.567356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294632, 32.515308, 52.920368>,  <36.906567, 32.844570, 52.590786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294632, 32.515308, 52.920368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559242, 32.215809, 52.937160>,  <36.718010, 32.036110, 52.947235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.559242, 32.215809, 52.937160>,  <36.294632, 32.515308, 52.920368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559242, 32.215809, 52.937160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227724, -0.147226, 0.962531,
		-0.714512, -0.646299, -0.267901,
		0.661525, -0.748747, 0.041983,
		36.757698, 31.991184, 52.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048077, 33.105862, 52.537907>,  <36.294632, 32.515308, 52.920368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048077, 33.105862, 52.537907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050598, 33.488369, 52.654881>,  <36.052113, 33.717873, 52.725063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.050598, 33.488369, 52.654881>,  <36.048077, 33.105862, 52.537907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050598, 33.488369, 52.654881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214795, 0.286909, -0.933566,
		-0.976639, -0.056930, 0.207209,
		0.006302, 0.956265, 0.292435,
		36.052490, 33.775249, 52.742611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570583, 33.429726, 52.172562>,  <36.048077, 33.105862, 52.537907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570583, 33.429726, 52.172562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822422, 33.716686, 52.291859>,  <35.973526, 33.888863, 52.363438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.822422, 33.716686, 52.291859>,  <35.570583, 33.429726, 52.172562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822422, 33.716686, 52.291859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031850, 0.359726, -0.932514,
		-0.776272, 0.596604, 0.203632,
		0.629594, 0.717399, 0.298247,
		36.011299, 33.931908, 52.381332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227192, 34.103172, 52.053497>,  <35.570583, 33.429726, 52.172562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227192, 34.103172, 52.053497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624756, 34.147018, 52.058094>,  <35.863293, 34.173328, 52.060852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624756, 34.147018, 52.058094>,  <35.227192, 34.103172, 52.053497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624756, 34.147018, 52.058094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035779, 0.419510, -0.907045,
		-0.104252, 0.901108, 0.420876,
		0.993907, 0.109620, 0.011494,
		35.922928, 34.179905, 52.061543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366264, 34.792408, 51.791794>,  <35.227192, 34.103172, 52.053497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366264, 34.792408, 51.791794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716087, 34.599224, 51.774372>,  <35.925983, 34.483315, 51.763920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.716087, 34.599224, 51.774372>,  <35.366264, 34.792408, 51.791794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716087, 34.599224, 51.774372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135555, 0.329724, -0.934295,
		0.465585, 0.811193, 0.353830,
		0.874560, -0.482957, -0.043553,
		35.978455, 34.454338, 51.761307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871922, 35.323345, 51.626801>,  <35.366264, 34.792408, 51.791794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871922, 35.323345, 51.626801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031364, 34.968960, 51.531994>,  <36.127029, 34.756329, 51.475109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031364, 34.968960, 51.531994>,  <35.871922, 35.323345, 51.626801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031364, 34.968960, 51.531994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260147, 0.357048, -0.897129,
		0.879450, 0.295946, 0.372804,
		0.398610, -0.885964, -0.237016,
		36.150948, 34.703171, 51.460888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433250, 35.471546, 51.232216>,  <35.871922, 35.323345, 51.626801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433250, 35.471546, 51.232216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.384422, 35.086212, 51.136650>,  <36.355125, 34.855011, 51.079311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.384422, 35.086212, 51.136650>,  <36.433250, 35.471546, 51.232216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384422, 35.086212, 51.136650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102180, 0.227241, -0.968463,
		0.987248, -0.142633, 0.070694,
		-0.122070, -0.963337, -0.238918,
		36.347801, 34.797211, 51.064976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019070, 35.275158, 50.742813>,  <36.433250, 35.471546, 51.232216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019070, 35.275158, 50.742813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728893, 35.002861, 50.702171>,  <36.554787, 34.839485, 50.677788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728893, 35.002861, 50.702171>,  <37.019070, 35.275158, 50.742813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728893, 35.002861, 50.702171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050410, 0.199776, -0.978544,
		0.686432, -0.704758, -0.179242,
		-0.725445, -0.680739, -0.101606,
		36.511261, 34.798637, 50.671688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749146, 35.319286, 50.488651>,  <37.019070, 35.275158, 50.742813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749146, 35.319286, 50.488651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.937897, 35.667118, 50.546829>,  <38.051147, 35.875816, 50.581738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.937897, 35.667118, 50.546829>,  <37.749146, 35.319286, 50.488651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937897, 35.667118, 50.546829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264232, -0.296869, 0.917633,
		0.841137, -0.394581, -0.369858,
		0.471880, 0.869583, 0.145447,
		38.079460, 35.927994, 50.590462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473755, 35.159981, 50.623859>,  <37.749146, 35.319286, 50.488651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473755, 35.159981, 50.623859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403839, 35.522568, 50.777615>,  <38.361889, 35.740120, 50.869869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403839, 35.522568, 50.777615>,  <38.473755, 35.159981, 50.623859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403839, 35.522568, 50.777615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375234, -0.299615, 0.877172,
		0.910302, 0.297555, -0.287770,
		-0.174787, 0.906472, 0.384393,
		38.351402, 35.794510, 50.892933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086609, 35.409142, 51.074596>,  <38.473755, 35.159981, 50.623859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086609, 35.409142, 51.074596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.771473, 35.631916, 51.179771>,  <38.582394, 35.765579, 51.242878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.771473, 35.631916, 51.179771>,  <39.086609, 35.409142, 51.074596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771473, 35.631916, 51.179771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313959, -0.004120, 0.949428,
		0.529850, 0.830548, -0.171608,
		-0.787838, 0.556932, 0.262941,
		38.535122, 35.798996, 51.258656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355480, 36.092113, 51.325119>,  <39.086609, 35.409142, 51.074596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355480, 36.092113, 51.325119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002937, 36.039600, 51.506657>,  <38.791412, 36.008091, 51.615578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002937, 36.039600, 51.506657>,  <39.355480, 36.092113, 51.325119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002937, 36.039600, 51.506657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472262, -0.218014, 0.854072,
		-0.013180, 0.967076, 0.254148,
		-0.881360, -0.131281, 0.453840,
		38.738529, 36.000217, 51.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358646, 36.294796, 52.072823>,  <39.355480, 36.092113, 51.325119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358646, 36.294796, 52.072823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.045189, 36.046719, 52.058571>,  <38.857113, 35.897873, 52.050018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.045189, 36.046719, 52.058571>,  <39.358646, 36.294796, 52.072823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045189, 36.046719, 52.058571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217162, -0.327231, 0.919653,
		-0.582018, 0.712941, 0.391113,
		-0.783643, -0.620189, -0.035631,
		38.810097, 35.860661, 52.047882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195400, 36.263885, 52.747189>,  <39.358646, 36.294796, 52.072823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195400, 36.263885, 52.747189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035290, 35.945766, 52.565075>,  <38.939224, 35.754894, 52.455807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035290, 35.945766, 52.565075>,  <39.195400, 36.263885, 52.747189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035290, 35.945766, 52.565075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080186, -0.525315, 0.847122,
		-0.912879, 0.302577, 0.274043,
		-0.400278, -0.795294, -0.455286,
		38.915207, 35.707180, 52.428490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680660, 36.084015, 53.137413>,  <39.195400, 36.263885, 52.747189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680660, 36.084015, 53.137413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696632, 35.747208, 52.922226>,  <38.706215, 35.545124, 52.793114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696632, 35.747208, 52.922226>,  <38.680660, 36.084015, 53.137413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696632, 35.747208, 52.922226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221760, -0.532439, 0.816904,
		-0.974283, 0.086680, -0.207987,
		0.039931, -0.842019, -0.537968,
		38.708611, 35.494602, 52.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161194, 35.615227, 53.440819>,  <38.680660, 36.084015, 53.137413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161194, 35.615227, 53.440819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414188, 35.397629, 53.220261>,  <38.565987, 35.267071, 53.087925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.414188, 35.397629, 53.220261>,  <38.161194, 35.615227, 53.440819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414188, 35.397629, 53.220261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037624, -0.732604, 0.679614,
		-0.773657, -0.409101, -0.483830,
		0.632487, -0.543992, -0.551392,
		38.603935, 35.234432, 53.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871819, 35.094395, 53.478199>,  <38.161194, 35.615227, 53.440819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871819, 35.094395, 53.478199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241695, 34.966110, 53.396141>,  <38.463623, 34.889141, 53.346909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.241695, 34.966110, 53.396141>,  <37.871819, 35.094395, 53.478199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241695, 34.966110, 53.396141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082287, -0.694476, 0.714794,
		-0.371709, -0.644086, -0.668570,
		0.924695, -0.320710, -0.205143,
		38.519104, 34.869896, 53.334599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.383282, 37.508415, 37.016731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569771, 37.236305, 37.242958>,  <37.681664, 37.073040, 37.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569771, 37.236305, 37.242958>,  <37.383282, 37.508415, 37.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569771, 37.236305, 37.242958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523154, 0.303528, 0.796355,
		-0.713402, -0.667159, -0.214374,
		0.466226, -0.680272, 0.565564,
		37.709641, 37.032223, 37.412628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784771, 37.114906, 37.390034>,  <37.383282, 37.508415, 37.016731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784771, 37.114906, 37.390034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148937, 37.135891, 37.554173>,  <37.367439, 37.148479, 37.652657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148937, 37.135891, 37.554173>,  <36.784771, 37.114906, 37.390034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148937, 37.135891, 37.554173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412329, 0.195323, 0.889850,
		-0.033472, -0.979335, 0.199455,
		0.910420, 0.052457, 0.410347,
		37.422062, 37.151627, 37.677277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842918, 36.685589, 38.063904>,  <36.784771, 37.114906, 37.390034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842918, 36.685589, 38.063904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110546, 36.981182, 38.095516>,  <37.271122, 37.158539, 38.114483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110546, 36.981182, 38.095516>,  <36.842918, 36.685589, 38.063904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110546, 36.981182, 38.095516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358458, 0.227725, 0.905345,
		0.651037, -0.634071, 0.417260,
		0.669073, 0.738982, 0.079030,
		37.311268, 37.202877, 38.119225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086506, 36.465424, 38.705433>,  <36.842918, 36.685589, 38.063904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086506, 36.465424, 38.705433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188858, 36.849876, 38.663967>,  <37.250271, 37.080547, 38.639088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188858, 36.849876, 38.663967>,  <37.086506, 36.465424, 38.705433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188858, 36.849876, 38.663967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093897, 0.131437, 0.986868,
		0.962137, -0.242787, 0.123880,
		0.255881, 0.961134, -0.103664,
		37.265621, 37.138218, 38.632870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560982, 36.512035, 39.186054>,  <37.086506, 36.465424, 38.705433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560982, 36.512035, 39.186054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440815, 36.889832, 39.132851>,  <37.368713, 37.116508, 39.100929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440815, 36.889832, 39.132851>,  <37.560982, 36.512035, 39.186054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440815, 36.889832, 39.132851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024176, 0.131861, 0.990973,
		0.953501, 0.300922, -0.016780,
		-0.300419, 0.944489, -0.133004,
		37.350689, 37.173180, 39.092949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062077, 36.969036, 39.585136>,  <37.560982, 36.512035, 39.186054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062077, 36.969036, 39.585136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715805, 37.162342, 39.532913>,  <37.508041, 37.278328, 39.501579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715805, 37.162342, 39.532913>,  <38.062077, 36.969036, 39.585136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715805, 37.162342, 39.532913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027046, 0.215266, 0.976181,
		0.499862, 0.848594, -0.173282,
		-0.865682, 0.483270, -0.130554,
		37.456100, 37.307323, 39.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240253, 37.498474, 39.952599>,  <38.062077, 36.969036, 39.585136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240253, 37.498474, 39.952599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844055, 37.463020, 39.910507>,  <37.606339, 37.441750, 39.885254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844055, 37.463020, 39.910507>,  <38.240253, 37.498474, 39.952599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844055, 37.463020, 39.910507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120727, 0.193179, 0.973708,
		-0.065973, 0.977152, -0.202042,
		-0.990491, -0.088630, -0.105225,
		37.546909, 37.436432, 39.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134064, 37.896645, 40.532387>,  <38.240253, 37.498474, 39.952599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134064, 37.896645, 40.532387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783043, 37.729973, 40.437489>,  <37.572430, 37.629971, 40.380550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783043, 37.729973, 40.437489>,  <38.134064, 37.896645, 40.532387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783043, 37.729973, 40.437489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304649, 0.102459, 0.946938,
		-0.370260, 0.903262, -0.216853,
		-0.877551, -0.416677, -0.237241,
		37.519779, 37.604969, 40.366318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561783, 38.295418, 40.738228>,  <38.134064, 37.896645, 40.532387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561783, 38.295418, 40.738228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457642, 37.909225, 40.741352>,  <37.395157, 37.677509, 40.743225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457642, 37.909225, 40.741352>,  <37.561783, 38.295418, 40.738228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457642, 37.909225, 40.741352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334952, 0.097904, 0.937135,
		-0.905551, 0.241372, -0.348880,
		-0.260355, -0.965482, 0.007809,
		37.379536, 37.619579, 40.743694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000648, 38.357677, 41.087601>,  <37.561783, 38.295418, 40.738228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000648, 38.357677, 41.087601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093201, 37.968864, 41.103691>,  <37.148731, 37.735577, 41.113346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093201, 37.968864, 41.103691>,  <37.000648, 38.357677, 41.087601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093201, 37.968864, 41.103691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331143, -0.039808, 0.942740,
		-0.914771, -0.231458, -0.331092,
		0.231385, -0.972030, 0.040230,
		37.162617, 37.677254, 41.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500786, 38.138615, 41.550571>,  <37.000648, 38.357677, 41.087601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500786, 38.138615, 41.550571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793602, 37.866123, 41.553131>,  <36.969292, 37.702629, 41.554668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793602, 37.866123, 41.553131>,  <36.500786, 38.138615, 41.550571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793602, 37.866123, 41.553131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180304, -0.184673, 0.966119,
		-0.656965, -0.708396, -0.258017,
		0.732044, -0.681228, 0.006403,
		37.013214, 37.661755, 41.555054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328712, 37.636612, 42.034595>,  <36.500786, 38.138615, 41.550571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328712, 37.636612, 42.034595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721024, 37.560478, 42.017414>,  <36.956409, 37.514797, 42.007107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721024, 37.560478, 42.017414>,  <36.328712, 37.636612, 42.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721024, 37.560478, 42.017414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002416, -0.231958, 0.972723,
		-0.195095, -0.953925, -0.227960,
		0.980781, -0.190324, -0.042949,
		37.015259, 37.503380, 42.004528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028934, 36.955784, 41.944344>,  <36.328712, 37.636612, 42.034595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028934, 36.955784, 41.944344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646214, 36.929268, 42.057575>,  <35.416580, 36.913357, 42.125515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646214, 36.929268, 42.057575>,  <36.028934, 36.955784, 41.944344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646214, 36.929268, 42.057575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281278, -0.035302, -0.958977,
		0.073567, -0.997175, 0.015130,
		-0.956802, -0.066293, 0.283081,
		35.359173, 36.909382, 42.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839825, 36.443653, 41.529057>,  <36.028934, 36.955784, 41.944344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839825, 36.443653, 41.529057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511604, 36.620636, 41.673786>,  <35.314671, 36.726826, 41.760624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511604, 36.620636, 41.673786>,  <35.839825, 36.443653, 41.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511604, 36.620636, 41.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383806, 0.042552, -0.922433,
		-0.423536, -0.895778, 0.134902,
		-0.820555, 0.442460, 0.361828,
		35.265438, 36.753372, 41.782333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237671, 36.059162, 41.323715>,  <35.839825, 36.443653, 41.529057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237671, 36.059162, 41.323715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118748, 36.434288, 41.395390>,  <35.047394, 36.659363, 41.438396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118748, 36.434288, 41.395390>,  <35.237671, 36.059162, 41.323715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118748, 36.434288, 41.395390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568247, -0.022987, -0.822537,
		-0.767268, -0.346374, 0.539745,
		-0.297312, 0.937815, 0.179188,
		35.029552, 36.715633, 41.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529766, 36.096535, 41.079369>,  <35.237671, 36.059162, 41.323715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529766, 36.096535, 41.079369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670097, 36.470985, 41.089069>,  <34.754295, 36.695656, 41.094891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670097, 36.470985, 41.089069>,  <34.529766, 36.096535, 41.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670097, 36.470985, 41.089069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458417, 0.194268, -0.867245,
		-0.816562, 0.293136, 0.497291,
		0.350828, 0.936125, 0.024253,
		34.775345, 36.751823, 41.096344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849007, 36.487148, 41.071659>,  <34.529766, 36.096535, 41.079369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849007, 36.487148, 41.071659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156612, 36.719532, 40.964993>,  <34.341175, 36.858963, 40.900993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156612, 36.719532, 40.964993>,  <33.849007, 36.487148, 41.071659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156612, 36.719532, 40.964993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386593, 0.090457, -0.917803,
		-0.509083, 0.808892, 0.294157,
		0.769013, 0.580957, -0.266662,
		34.387318, 36.893818, 40.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551830, 36.990696, 40.745472>,  <33.849007, 36.487148, 41.071659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551830, 36.990696, 40.745472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926651, 37.014759, 40.607880>,  <34.151543, 37.029198, 40.525326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926651, 37.014759, 40.607880>,  <33.551830, 36.990696, 40.745472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926651, 37.014759, 40.607880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347453, 0.062196, -0.935632,
		-0.034892, 0.996249, 0.079183,
		0.937048, 0.060159, -0.343980,
		34.207764, 37.032806, 40.504684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532936, 37.542850, 40.380707>,  <33.551830, 36.990696, 40.745472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532936, 37.542850, 40.380707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845898, 37.337055, 40.240337>,  <34.033672, 37.213577, 40.156116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845898, 37.337055, 40.240337>,  <33.532936, 37.542850, 40.380707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845898, 37.337055, 40.240337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301912, 0.179502, -0.936284,
		0.544698, 0.838500, -0.014887,
		0.782402, -0.514487, -0.350928,
		34.080620, 37.182709, 40.135059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823444, 37.910755, 39.829323>,  <33.532936, 37.542850, 40.380707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823444, 37.910755, 39.829323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954765, 37.539734, 39.757931>,  <34.033558, 37.317120, 39.715096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954765, 37.539734, 39.757931>,  <33.823444, 37.910755, 39.829323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954765, 37.539734, 39.757931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367653, 0.048575, -0.928694,
		0.870087, 0.370509, -0.325073,
		0.328299, -0.927558, -0.178483,
		34.053253, 37.261467, 39.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017601, 37.843727, 39.059090>,  <33.823444, 37.910755, 39.829323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017601, 37.843727, 39.059090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993954, 37.462482, 39.177811>,  <33.979767, 37.233738, 39.249043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993954, 37.462482, 39.177811>,  <34.017601, 37.843727, 39.059090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993954, 37.462482, 39.177811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391029, -0.251452, -0.885363,
		0.918478, -0.168399, -0.357827,
		-0.059118, -0.953108, 0.296802,
		33.976219, 37.176552, 39.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334534, 37.451897, 38.499706>,  <34.017601, 37.843727, 39.059090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334534, 37.451897, 38.499706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113449, 37.190437, 38.706490>,  <33.980797, 37.033562, 38.830559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113449, 37.190437, 38.706490>,  <34.334534, 37.451897, 38.499706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113449, 37.190437, 38.706490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343523, -0.386465, -0.855942,
		0.759275, -0.650678, -0.010939,
		-0.552715, -0.653653, 0.516956,
		33.947636, 36.994343, 38.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408123, 36.796860, 38.094463>,  <34.334534, 37.451897, 38.499706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408123, 36.796860, 38.094463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086754, 36.756611, 38.329201>,  <33.893932, 36.732460, 38.470043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086754, 36.756611, 38.329201>,  <34.408123, 36.796860, 38.094463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086754, 36.756611, 38.329201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487127, -0.455665, -0.745035,
		0.342370, -0.884446, 0.317077,
		-0.803424, -0.100621, 0.586844,
		33.845726, 36.726425, 38.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079109, 36.072975, 37.892273>,  <34.408123, 36.796860, 38.094463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079109, 36.072975, 37.892273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783916, 36.298855, 38.040054>,  <33.606800, 36.434383, 38.128723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783916, 36.298855, 38.040054>,  <34.079109, 36.072975, 37.892273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783916, 36.298855, 38.040054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664568, -0.513130, -0.543182,
		-0.117158, -0.646385, 0.753963,
		-0.737986, 0.564697, 0.369449,
		33.562519, 36.468266, 38.150890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624741, 35.613190, 38.074169>,  <34.079109, 36.072975, 37.892273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624741, 35.613190, 38.074169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392281, 35.938477, 38.061817>,  <33.252804, 36.133648, 38.054405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392281, 35.938477, 38.061817>,  <33.624741, 35.613190, 38.074169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392281, 35.938477, 38.061817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769381, -0.561396, -0.304774,
		-0.265179, -0.153363, 0.951924,
		-0.581147, 0.813212, -0.030876,
		33.217937, 36.182442, 38.052555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908123, 35.363396, 38.259403>,  <33.624741, 35.613190, 38.074169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908123, 35.363396, 38.259403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847851, 35.724224, 38.097626>,  <32.811687, 35.940720, 38.000561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847851, 35.724224, 38.097626>,  <32.908123, 35.363396, 38.259403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847851, 35.724224, 38.097626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704857, -0.384886, -0.595852,
		-0.693161, 0.195292, 0.693822,
		-0.150677, 0.902067, -0.404441,
		32.802647, 35.994843, 37.976292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095413, 34.723465, 38.540081>,  <32.908123, 35.363396, 38.259403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095413, 34.723465, 38.540081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871002, 34.448463, 38.355656>,  <32.736355, 34.283463, 38.244999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871002, 34.448463, 38.355656>,  <33.095413, 34.723465, 38.540081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871002, 34.448463, 38.355656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150685, -0.632490, 0.759770,
		-0.813968, 0.356775, 0.458441,
		-0.561026, -0.687508, -0.461065,
		32.702694, 34.242210, 38.217335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712818, 34.422661, 39.006878>,  <33.095413, 34.723465, 38.540081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712818, 34.422661, 39.006878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709351, 34.138187, 38.725700>,  <32.707268, 33.967503, 38.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709351, 34.138187, 38.725700>,  <32.712818, 34.422661, 39.006878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709351, 34.138187, 38.725700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108110, -0.699521, 0.706387,
		-0.994101, -0.069871, 0.082952,
		-0.008671, -0.711188, -0.702948,
		32.706749, 33.924831, 38.514816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139889, 33.951904, 39.085075>,  <32.712818, 34.422661, 39.006878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139889, 33.951904, 39.085075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457581, 33.776699, 38.916626>,  <32.648197, 33.671577, 38.815556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457581, 33.776699, 38.916626>,  <32.139889, 33.951904, 39.085075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457581, 33.776699, 38.916626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062729, -0.748477, 0.660187,
		-0.604371, -0.497924, -0.621938,
		0.794230, -0.438011, -0.421124,
		32.695850, 33.645294, 38.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099579, 33.228069, 38.935852>,  <32.139889, 33.951904, 39.085075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099579, 33.228069, 38.935852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485905, 33.309586, 38.999950>,  <32.717701, 33.358498, 39.038410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485905, 33.309586, 38.999950>,  <32.099579, 33.228069, 38.935852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485905, 33.309586, 38.999950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038606, -0.724273, 0.688431,
		0.256357, -0.658708, -0.707379,
		0.965811, 0.203793, 0.160243,
		32.775646, 33.370724, 39.048023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392647, 32.511841, 39.080807>,  <32.099579, 33.228069, 38.935852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392647, 32.511841, 39.080807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652714, 32.779705, 39.224384>,  <32.808754, 32.940422, 39.310532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652714, 32.779705, 39.224384>,  <32.392647, 32.511841, 39.080807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652714, 32.779705, 39.224384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031067, -0.495462, 0.868073,
		0.759155, -0.553242, -0.342938,
		0.650168, 0.669656, 0.358945,
		32.847763, 32.980602, 39.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069469, 32.203579, 39.127159>,  <32.392647, 32.511841, 39.080807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069469, 32.203579, 39.127159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060604, 32.513588, 39.379776>,  <33.055283, 32.699593, 39.531345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060604, 32.513588, 39.379776>,  <33.069469, 32.203579, 39.127159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060604, 32.513588, 39.379776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104098, -0.626476, 0.772458,
		0.994320, 0.082864, -0.066792,
		-0.022165, 0.775024, 0.631543,
		33.053955, 32.746094, 39.569241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575691, 32.037231, 39.608334>,  <33.069469, 32.203579, 39.127159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575691, 32.037231, 39.608334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368069, 32.317444, 39.804226>,  <33.243496, 32.485573, 39.921761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368069, 32.317444, 39.804226>,  <33.575691, 32.037231, 39.608334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368069, 32.317444, 39.804226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223311, -0.441912, 0.868819,
		0.825055, 0.560325, 0.072938,
		-0.519053, 0.700536, 0.489728,
		33.212353, 32.527603, 39.951145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993855, 32.219040, 40.075802>,  <33.575691, 32.037231, 39.608334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993855, 32.219040, 40.075802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642544, 32.312393, 40.242733>,  <33.431759, 32.368404, 40.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642544, 32.312393, 40.242733>,  <33.993855, 32.219040, 40.075802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642544, 32.312393, 40.242733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275652, -0.466030, 0.840733,
		0.390697, 0.853434, 0.344973,
		-0.878278, 0.233379, 0.417328,
		33.379059, 32.382408, 40.367931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187317, 32.568218, 40.719955>,  <33.993855, 32.219040, 40.075802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187317, 32.568218, 40.719955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819656, 32.420048, 40.773548>,  <33.599060, 32.331146, 40.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819656, 32.420048, 40.773548>,  <34.187317, 32.568218, 40.719955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819656, 32.420048, 40.773548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306973, -0.460439, 0.832924,
		-0.246844, 0.806711, 0.536922,
		-0.919149, -0.370423, 0.133982,
		33.543911, 32.308922, 40.813744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067535, 32.780548, 41.361629>,  <34.187317, 32.568218, 40.719955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067535, 32.780548, 41.361629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855663, 32.454487, 41.267845>,  <33.728539, 32.258850, 41.211575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855663, 32.454487, 41.267845>,  <34.067535, 32.780548, 41.361629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855663, 32.454487, 41.267845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358710, -0.465764, 0.808944,
		-0.768614, 0.344377, 0.539108,
		-0.529679, -0.815149, -0.234461,
		33.696758, 32.209942, 41.197506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887665, 32.548046, 42.009731>,  <34.067535, 32.780548, 41.361629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887665, 32.548046, 42.009731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785019, 32.231113, 41.788334>,  <33.723431, 32.040955, 41.655495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785019, 32.231113, 41.788334>,  <33.887665, 32.548046, 42.009731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785019, 32.231113, 41.788334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102293, -0.591723, 0.799625,
		-0.961085, 0.148578, 0.232895,
		-0.256616, -0.792331, -0.553498,
		33.708035, 31.993414, 41.622284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410671, 32.256351, 42.404610>,  <33.887665, 32.548046, 42.009731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410671, 32.256351, 42.404610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578297, 31.997604, 42.149754>,  <33.678871, 31.842356, 41.996838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578297, 31.997604, 42.149754>,  <33.410671, 32.256351, 42.404610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578297, 31.997604, 42.149754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180331, -0.628456, 0.756653,
		-0.889870, -0.431980, -0.146710,
		0.419060, -0.646867, -0.637143,
		33.704014, 31.803545, 41.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182293, 31.586908, 42.643135>,  <33.410671, 32.256351, 42.404610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182293, 31.586908, 42.643135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503353, 31.494045, 42.423370>,  <33.695988, 31.438328, 42.291512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503353, 31.494045, 42.423370>,  <33.182293, 31.586908, 42.643135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503353, 31.494045, 42.423370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250328, -0.704967, 0.663594,
		-0.541376, -0.670168, -0.507726,
		0.802650, -0.232156, -0.549414,
		33.744148, 31.424398, 42.258545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251457, 30.835468, 42.640697>,  <33.182293, 31.586908, 42.643135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251457, 30.835468, 42.640697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613106, 30.968483, 42.533382>,  <33.830097, 31.048292, 42.468994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613106, 30.968483, 42.533382>,  <33.251457, 30.835468, 42.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613106, 30.968483, 42.533382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416545, -0.546239, 0.726714,
		0.095111, -0.768794, -0.632384,
		0.904126, 0.332535, -0.268284,
		33.884342, 31.068243, 42.452896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763885, 30.238848, 42.570656>,  <33.251457, 30.835468, 42.640697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763885, 30.238848, 42.570656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985844, 30.563175, 42.645130>,  <34.119019, 30.757772, 42.689816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985844, 30.563175, 42.645130>,  <33.763885, 30.238848, 42.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985844, 30.563175, 42.645130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521289, -0.513296, 0.681751,
		0.648344, -0.281245, -0.707497,
		0.554895, 0.810819, 0.186182,
		34.152313, 30.806421, 42.700985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427650, 29.976265, 42.678669>,  <33.763885, 30.238848, 42.570656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427650, 29.976265, 42.678669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393742, 30.322823, 42.875511>,  <34.373394, 30.530758, 42.993618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393742, 30.322823, 42.875511>,  <34.427650, 29.976265, 42.678669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393742, 30.322823, 42.875511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429374, -0.413913, 0.802692,
		0.899139, 0.279348, -0.336918,
		-0.084776, 0.866395, 0.492110,
		34.368309, 30.582741, 43.023144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938969, 29.802494, 43.137703>,  <34.427650, 29.976265, 42.678669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938969, 29.802494, 43.137703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778954, 30.141973, 43.276081>,  <34.682945, 30.345661, 43.359108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778954, 30.141973, 43.276081>,  <34.938969, 29.802494, 43.137703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778954, 30.141973, 43.276081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243905, -0.265270, 0.932814,
		0.883448, 0.457539, -0.100884,
		-0.400037, 0.848699, 0.345948,
		34.658943, 30.396584, 43.379864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514393, 30.032711, 43.502998>,  <34.938969, 29.802494, 43.137703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514393, 30.032711, 43.502998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197117, 30.218174, 43.660923>,  <35.006752, 30.329451, 43.755676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197117, 30.218174, 43.660923>,  <35.514393, 30.032711, 43.502998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197117, 30.218174, 43.660923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395696, -0.100407, 0.912876,
		0.462903, 0.880308, -0.103826,
		-0.793187, 0.463656, 0.394813,
		34.959160, 30.357271, 43.779366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748482, 30.595100, 43.946270>,  <35.514393, 30.032711, 43.502998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748482, 30.595100, 43.946270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375938, 30.514202, 44.067379>,  <35.152412, 30.465664, 44.140045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375938, 30.514202, 44.067379>,  <35.748482, 30.595100, 43.946270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375938, 30.514202, 44.067379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322115, -0.069980, 0.944110,
		-0.169753, 0.976832, 0.130323,
		-0.931357, -0.202244, 0.302773,
		35.096531, 30.453529, 44.158211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578350, 31.037346, 44.517536>,  <35.748482, 30.595100, 43.946270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578350, 31.037346, 44.517536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319054, 30.739607, 44.581696>,  <35.163475, 30.560965, 44.620193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319054, 30.739607, 44.581696>,  <35.578350, 31.037346, 44.517536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319054, 30.739607, 44.581696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197650, 0.038942, 0.979499,
		-0.735333, 0.666657, 0.121876,
		-0.648244, -0.744346, 0.160400,
		35.124580, 30.516302, 44.629814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195206, 31.265928, 45.139076>,  <35.578350, 31.037346, 44.517536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195206, 31.265928, 45.139076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136848, 30.870752, 45.118313>,  <35.101833, 30.633648, 45.105854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136848, 30.870752, 45.118313>,  <35.195206, 31.265928, 45.139076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136848, 30.870752, 45.118313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017674, -0.049858, 0.998600,
		-0.989142, 0.146606, -0.010186,
		-0.145893, -0.987937, -0.051908,
		35.093082, 30.574371, 45.102741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592297, 31.120808, 45.495399>,  <35.195206, 31.265928, 45.139076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592297, 31.120808, 45.495399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807949, 30.784266, 45.480152>,  <34.937340, 30.582340, 45.471004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807949, 30.784266, 45.480152>,  <34.592297, 31.120808, 45.495399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807949, 30.784266, 45.480152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133935, 0.040969, 0.990143,
		-0.831503, -0.538924, 0.134775,
		0.539133, -0.841358, -0.038115,
		34.969688, 30.531858, 45.468716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407845, 30.779982, 46.089043>,  <34.592297, 31.120808, 45.495399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407845, 30.779982, 46.089043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726830, 30.564796, 45.979752>,  <34.918221, 30.435684, 45.914177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726830, 30.564796, 45.979752>,  <34.407845, 30.779982, 46.089043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726830, 30.564796, 45.979752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265886, -0.093177, 0.959491,
		-0.541631, -0.837802, 0.068732,
		0.797459, -0.537965, -0.273228,
		34.966068, 30.403406, 45.897781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374191, 30.153492, 46.405212>,  <34.407845, 30.779982, 46.089043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374191, 30.153492, 46.405212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762318, 30.204052, 46.322746>,  <34.995193, 30.234388, 46.273266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762318, 30.204052, 46.322746>,  <34.374191, 30.153492, 46.405212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762318, 30.204052, 46.322746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226406, -0.175239, 0.958139,
		0.084981, -0.976378, -0.198656,
		0.970319, 0.126400, -0.206166,
		35.053413, 30.241972, 46.260895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780014, 29.637501, 46.793907>,  <34.374191, 30.153492, 46.405212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780014, 29.637501, 46.793907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055294, 29.919878, 46.726936>,  <35.220463, 30.089304, 46.686756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055294, 29.919878, 46.726936>,  <34.780014, 29.637501, 46.793907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055294, 29.919878, 46.726936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373830, -0.147254, 0.915733,
		0.621800, -0.692793, -0.365242,
		0.688197, 0.705942, -0.167424,
		35.261753, 30.131660, 46.676708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404087, 29.442442, 47.171799>,  <34.780014, 29.637501, 46.793907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404087, 29.442442, 47.171799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452248, 29.834927, 47.111492>,  <35.481144, 30.070417, 47.075310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452248, 29.834927, 47.111492>,  <35.404087, 29.442442, 47.171799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452248, 29.834927, 47.111492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290166, 0.110452, 0.950581,
		0.949372, -0.158200, -0.271414,
		0.120404, 0.981210, -0.150765,
		35.488369, 30.129290, 47.066261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158115, 29.563416, 47.308605>,  <35.404087, 29.442442, 47.171799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158115, 29.563416, 47.308605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946800, 29.899258, 47.359165>,  <35.820011, 30.100763, 47.389503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946800, 29.899258, 47.359165>,  <36.158115, 29.563416, 47.308605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946800, 29.899258, 47.359165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314313, 0.055089, 0.947720,
		0.788746, 0.540397, -0.293002,
		-0.528286, 0.839605, 0.126403,
		35.788315, 30.151138, 47.397087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624001, 30.111233, 47.618736>,  <36.158115, 29.563416, 47.308605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624001, 30.111233, 47.618736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251923, 30.234041, 47.699207>,  <36.028675, 30.307726, 47.747490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251923, 30.234041, 47.699207>,  <36.624001, 30.111233, 47.618736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251923, 30.234041, 47.699207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271112, 0.205191, 0.940423,
		0.247450, 0.929320, -0.274105,
		-0.930197, 0.307021, 0.201175,
		35.972862, 30.326147, 47.759560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048073, 30.660273, 47.278370>,  <36.624001, 30.111233, 47.618736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048073, 30.660273, 47.278370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391525, 30.483091, 47.381561>,  <37.597595, 30.376783, 47.443478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391525, 30.483091, 47.381561>,  <37.048073, 30.660273, 47.278370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391525, 30.483091, 47.381561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206219, -0.162261, -0.964959,
		0.469290, 0.881740, -0.047977,
		0.858627, -0.442951, 0.257979,
		37.649113, 30.350206, 47.458954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510712, 30.929638, 46.810032>,  <37.048073, 30.660273, 47.278370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510712, 30.929638, 46.810032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615494, 30.570250, 46.950958>,  <37.678364, 30.354616, 47.035515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615494, 30.570250, 46.950958>,  <37.510712, 30.929638, 46.810032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615494, 30.570250, 46.950958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065303, -0.347730, -0.935318,
		0.962869, 0.268017, -0.032416,
		0.261953, -0.898472, 0.352320,
		37.694080, 30.300709, 47.056656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122154, 30.924303, 46.611614>,  <37.510712, 30.929638, 46.810032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122154, 30.924303, 46.611614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966930, 30.561607, 46.677628>,  <37.873795, 30.343990, 46.717236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966930, 30.561607, 46.677628>,  <38.122154, 30.924303, 46.611614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966930, 30.561607, 46.677628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215608, -0.263415, -0.940280,
		0.896060, -0.329301, 0.297720,
		-0.388059, -0.906738, 0.165036,
		37.850513, 30.289585, 46.727139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624771, 30.438385, 46.428108>,  <38.122154, 30.924303, 46.611614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624771, 30.438385, 46.428108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291542, 30.218401, 46.404339>,  <38.091602, 30.086411, 46.390076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291542, 30.218401, 46.404339>,  <38.624771, 30.438385, 46.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291542, 30.218401, 46.404339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208225, -0.212252, -0.954773,
		0.512474, -0.807771, 0.291337,
		-0.833074, -0.549960, -0.059424,
		38.041618, 30.053413, 46.386513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785183, 29.821352, 46.120136>,  <38.624771, 30.438385, 46.428108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785183, 29.821352, 46.120136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393574, 29.864632, 46.051071>,  <38.158607, 29.890600, 46.009632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393574, 29.864632, 46.051071>,  <38.785183, 29.821352, 46.120136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393574, 29.864632, 46.051071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143062, -0.238370, -0.960579,
		-0.145088, -0.965128, 0.217891,
		-0.979021, 0.108196, -0.172658,
		38.099869, 29.897091, 45.999275>
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
