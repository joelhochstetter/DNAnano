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
	<36.007431, 52.674782, 50.390957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254543, 52.822670, 50.113350>,  <36.402809, 52.911404, 49.946785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254543, 52.822670, 50.113350>,  <36.007431, 52.674782, 50.390957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254543, 52.822670, 50.113350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149261, 0.811399, 0.565113,
		0.772056, -0.452704, 0.446081,
		0.617779, 0.369716, -0.694017,
		36.439877, 52.933586, 49.905144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501274, 53.013725, 50.677200>,  <36.007431, 52.674782, 50.390957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501274, 53.013725, 50.677200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565701, 53.168282, 50.313934>,  <36.604359, 53.261013, 50.095974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565701, 53.168282, 50.313934>,  <36.501274, 53.013725, 50.677200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565701, 53.168282, 50.313934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239857, 0.877266, 0.415780,
		0.957353, -0.284799, 0.048623,
		0.161069, 0.386386, -0.908165,
		36.614021, 53.284199, 50.041485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274429, 53.199314, 50.617607>,  <36.501274, 53.013725, 50.677200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274429, 53.199314, 50.617607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016258, 53.424610, 50.411232>,  <36.861355, 53.559788, 50.287407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016258, 53.424610, 50.411232>,  <37.274429, 53.199314, 50.617607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016258, 53.424610, 50.411232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291397, 0.805945, 0.515305,
		0.706056, 0.182248, -0.684303,
		-0.645424, 0.563238, -0.515936,
		36.822632, 53.593582, 50.256451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265480, 53.836044, 50.969490>,  <37.274429, 53.199314, 50.617607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265480, 53.836044, 50.969490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 53.934940, 50.725838>,  <37.747749, 53.994278, 50.579647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566898, 53.934940, 50.725838>,  <37.265480, 53.836044, 50.969490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566898, 53.934940, 50.725838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589901, 0.154633, 0.792531,
		0.290135, -0.956536, -0.029323,
		0.753550, 0.247239, -0.609127,
		37.792965, 54.009113, 50.543098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990749, 53.674412, 51.332817>,  <37.265480, 53.836044, 50.969490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990749, 53.674412, 51.332817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052525, 54.018803, 51.138962>,  <38.089588, 54.225437, 51.022648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052525, 54.018803, 51.138962>,  <37.990749, 53.674412, 51.332817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052525, 54.018803, 51.138962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571125, 0.322465, 0.754873,
		0.806205, -0.393367, -0.441924,
		0.154436, 0.860976, -0.484634,
		38.098854, 54.277096, 50.993572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649456, 53.354767, 50.887901>,  <37.990749, 53.674412, 51.332817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649456, 53.354767, 50.887901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764587, 53.454906, 51.257652>,  <38.833668, 53.514988, 51.479504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764587, 53.454906, 51.257652>,  <38.649456, 53.354767, 50.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764587, 53.454906, 51.257652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934409, -0.284910, -0.213792,
		0.209843, 0.925285, -0.315931,
		0.287830, 0.250346, 0.924381,
		38.850937, 53.530010, 51.534966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374088, 53.379791, 50.740997>,  <38.649456, 53.354767, 50.887901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374088, 53.379791, 50.740997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375687, 53.463943, 51.132042>,  <39.376644, 53.514435, 51.366669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375687, 53.463943, 51.132042>,  <39.374088, 53.379791, 50.740997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375687, 53.463943, 51.132042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993372, -0.113143, 0.020287,
		0.114878, 0.971050, -0.209438,
		0.003996, 0.210380, 0.977611,
		39.376884, 53.527058, 51.425323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786839, 53.964275, 50.859924>,  <39.374088, 53.379791, 50.740997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786839, 53.964275, 50.859924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775570, 53.756233, 51.201378>,  <39.768806, 53.631409, 51.406250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775570, 53.756233, 51.201378>,  <39.786839, 53.964275, 50.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775570, 53.756233, 51.201378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999496, -0.002180, 0.031662,
		-0.014606, 0.854100, 0.519904,
		-0.028176, -0.520104, 0.853638,
		39.767117, 53.600201, 51.457470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090954, 53.299896, 50.660114>,  <39.786839, 53.964275, 50.859924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090954, 53.299896, 50.660114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344746, 53.402573, 50.951744>,  <40.497021, 53.464180, 51.126720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344746, 53.402573, 50.951744>,  <40.090954, 53.299896, 50.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344746, 53.402573, 50.951744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354707, -0.741364, 0.569704,
		0.686749, -0.620071, -0.379326,
		0.634475, 0.256694, 0.729075,
		40.535088, 53.479580, 51.170467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598854, 52.669762, 50.959724>,  <40.090954, 53.299896, 50.660114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598854, 52.669762, 50.959724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493481, 52.970039, 51.202065>,  <40.430256, 53.150208, 51.347469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493481, 52.970039, 51.202065>,  <40.598854, 52.669762, 50.959724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493481, 52.970039, 51.202065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426699, -0.653934, 0.624739,
		0.865177, -0.093941, 0.492589,
		-0.263432, 0.750697, 0.605853,
		40.414452, 53.195248, 51.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817841, 52.531658, 51.743576>,  <40.598854, 52.669762, 50.959724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817841, 52.531658, 51.743576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481026, 52.740170, 51.688080>,  <40.278938, 52.865276, 51.654781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481026, 52.740170, 51.688080>,  <40.817841, 52.531658, 51.743576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481026, 52.740170, 51.688080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410955, -0.453302, 0.790970,
		0.349423, 0.723039, 0.595917,
		-0.842033, 0.521279, -0.138743,
		40.228416, 52.896553, 51.646458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684921, 52.814861, 52.372669>,  <40.817841, 52.531658, 51.743576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684921, 52.814861, 52.372669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356422, 52.768990, 52.149097>,  <40.159321, 52.741467, 52.014954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356422, 52.768990, 52.149097>,  <40.684921, 52.814861, 52.372669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356422, 52.768990, 52.149097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447733, -0.477679, 0.755882,
		-0.353674, 0.871017, 0.340946,
		-0.821249, -0.114683, -0.558926,
		40.110046, 52.734585, 51.981419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404018, 52.862652, 52.129654>,  <40.684921, 52.814861, 52.372669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404018, 52.862652, 52.129654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304996, 52.900429, 52.515358>,  <41.245583, 52.923096, 52.746780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304996, 52.900429, 52.515358>,  <41.404018, 52.862652, 52.129654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304996, 52.900429, 52.515358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817527, -0.513756, 0.260200,
		0.519968, 0.852723, 0.049976,
		-0.247554, 0.094439, 0.964261,
		41.230732, 52.928761, 52.804638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426403, 52.143566, 51.757195>,  <41.404018, 52.862652, 52.129654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426403, 52.143566, 51.757195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721302, 51.934528, 51.585915>,  <41.898243, 51.809105, 51.483147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721302, 51.934528, 51.585915>,  <41.426403, 52.143566, 51.757195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721302, 51.934528, 51.585915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638964, 0.333398, 0.693232,
		-0.219516, -0.784692, 0.579716,
		0.737250, -0.522593, -0.428204,
		41.942478, 51.777752, 51.457455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637493, 51.511326, 52.195728>,  <41.426403, 52.143566, 51.757195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637493, 51.511326, 52.195728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925182, 51.683769, 51.977791>,  <42.097797, 51.787235, 51.847027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925182, 51.683769, 51.977791>,  <41.637493, 51.511326, 52.195728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925182, 51.683769, 51.977791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487785, 0.245112, 0.837846,
		0.494753, -0.868368, -0.033998,
		0.719226, 0.431111, -0.544846,
		42.140949, 51.813103, 51.814339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325352, 51.379623, 52.469482>,  <41.637493, 51.511326, 52.195728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325352, 51.379623, 52.469482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527431, 51.660389, 52.268646>,  <42.648678, 51.828850, 52.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527431, 51.660389, 52.268646>,  <42.325352, 51.379623, 52.469482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527431, 51.660389, 52.268646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699316, 0.007956, 0.714769,
		0.505700, -0.712218, -0.486839,
		0.505198, 0.701913, -0.502089,
		42.678989, 51.870964, 52.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992970, 51.099361, 52.721294>,  <42.325352, 51.379623, 52.469482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992970, 51.099361, 52.721294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036659, 51.479736, 52.605515>,  <43.062874, 51.707962, 52.536045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036659, 51.479736, 52.605515>,  <42.992970, 51.099361, 52.721294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036659, 51.479736, 52.605515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824350, 0.076060, 0.560947,
		0.555443, -0.299878, -0.775600,
		0.109224, 0.950941, -0.289451,
		43.069427, 51.765018, 52.518681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670021, 51.112556, 52.697159>,  <42.992970, 51.099361, 52.721294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670021, 51.112556, 52.697159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555874, 51.495342, 52.718250>,  <43.487385, 51.725014, 52.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555874, 51.495342, 52.718250>,  <43.670021, 51.112556, 52.697159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555874, 51.495342, 52.718250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853864, 0.228864, 0.467479,
		0.435295, 0.178425, -0.882430,
		-0.285366, 0.956967, 0.052728,
		43.470264, 51.782433, 52.734070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320293, 51.365040, 52.778931>,  <43.670021, 51.112556, 52.697159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320293, 51.365040, 52.778931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061195, 51.652622, 52.879753>,  <43.905735, 51.825172, 52.940247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061195, 51.652622, 52.879753>,  <44.320293, 51.365040, 52.778931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061195, 51.652622, 52.879753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720323, 0.470201, 0.509947,
		0.248112, 0.511876, -0.822450,
		-0.647746, 0.718953, 0.252053,
		43.866871, 51.868309, 52.955368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643349, 52.021191, 52.840687>,  <44.320293, 51.365040, 52.778931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643349, 52.021191, 52.840687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327675, 52.092537, 53.075760>,  <44.138271, 52.135345, 53.216805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327675, 52.092537, 53.075760>,  <44.643349, 52.021191, 52.840687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327675, 52.092537, 53.075760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490994, 0.758058, 0.429270,
		-0.368933, 0.627323, -0.685824,
		-0.789185, 0.178364, 0.587685,
		44.090919, 52.146046, 53.252064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320984, 52.672363, 52.678879>,  <44.643349, 52.021191, 52.840687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320984, 52.672363, 52.678879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287529, 52.571190, 53.064423>,  <44.267456, 52.510487, 53.295750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287529, 52.571190, 53.064423>,  <44.320984, 52.672363, 52.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287529, 52.571190, 53.064423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596777, 0.761904, 0.251714,
		-0.798037, 0.596263, 0.087222,
		-0.083633, -0.252929, 0.963863,
		44.262440, 52.495312, 53.353580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998333, 53.276009, 53.141491>,  <44.320984, 52.672363, 52.678879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998333, 53.276009, 53.141491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265106, 53.021759, 53.297020>,  <44.425171, 52.869209, 53.390339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265106, 53.021759, 53.297020>,  <43.998333, 53.276009, 53.141491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265106, 53.021759, 53.297020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656448, 0.748112, 0.096976,
		-0.352525, 0.190568, 0.916193,
		0.666935, -0.635620, 0.388826,
		44.465187, 52.831074, 53.413670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311207, 53.667461, 53.682018>,  <43.998333, 53.276009, 53.141491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311207, 53.667461, 53.682018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549088, 53.352287, 53.618164>,  <44.691814, 53.163181, 53.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549088, 53.352287, 53.618164>,  <44.311207, 53.667461, 53.682018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549088, 53.352287, 53.618164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803484, 0.575774, 0.151320,
		-0.027315, -0.218257, 0.975509,
		0.594699, -0.787939, -0.159639,
		44.727497, 53.115906, 53.570271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725079, 53.524815, 54.343605>,  <44.311207, 53.667461, 53.682018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725079, 53.524815, 54.343605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953068, 53.410679, 54.035397>,  <45.089863, 53.342197, 53.850471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953068, 53.410679, 54.035397>,  <44.725079, 53.524815, 54.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953068, 53.410679, 54.035397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748204, 0.567815, 0.343186,
		0.339590, -0.772117, 0.537135,
		0.569973, -0.285344, -0.770526,
		45.124058, 53.325077, 53.804237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307114, 53.284378, 54.588928>,  <44.725079, 53.524815, 54.343605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307114, 53.284378, 54.588928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392269, 53.388165, 54.212128>,  <45.443363, 53.450436, 53.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392269, 53.388165, 54.212128>,  <45.307114, 53.284378, 54.588928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392269, 53.388165, 54.212128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853914, 0.419165, 0.308434,
		0.474880, -0.870046, -0.132325,
		0.212886, 0.259464, -0.941997,
		45.456135, 53.466003, 53.929527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975124, 53.063229, 54.590096>,  <45.307114, 53.284378, 54.588928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975124, 53.063229, 54.590096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890610, 53.346523, 54.320648>,  <45.839901, 53.516499, 54.158981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890610, 53.346523, 54.320648>,  <45.975124, 53.063229, 54.590096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890610, 53.346523, 54.320648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930257, 0.357216, 0.083786,
		0.299966, -0.608934, -0.734316,
		-0.211289, 0.708235, -0.673617,
		45.827225, 53.558994, 54.118565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371967, 52.952961, 54.021973>,  <45.975124, 53.063229, 54.590096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371967, 52.952961, 54.021973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291088, 53.343410, 54.053719>,  <46.242561, 53.577679, 54.072765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291088, 53.343410, 54.053719>,  <46.371967, 52.952961, 54.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291088, 53.343410, 54.053719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965501, 0.212264, -0.150838,
		-0.164083, 0.046128, -0.985368,
		-0.202200, 0.976123, 0.079366,
		46.230427, 53.636246, 54.077530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.790905, 53.396008, 53.503757>,  <46.371967, 52.952961, 54.021973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.790905, 53.396008, 53.503757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699436, 53.583492, 53.845055>,  <46.644554, 53.695984, 54.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.699436, 53.583492, 53.845055>,  <46.790905, 53.396008, 53.503757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699436, 53.583492, 53.845055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938970, 0.337568, 0.066207,
		-0.256994, 0.816305, -0.517302,
		-0.228669, 0.468716, 0.853238,
		46.630836, 53.724106, 54.101025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195648, 54.044979, 53.491810>,  <46.790905, 53.396008, 53.503757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195648, 54.044979, 53.491810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109352, 53.974205, 53.875923>,  <47.057575, 53.931740, 54.106392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.109352, 53.974205, 53.875923>,  <47.195648, 54.044979, 53.491810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109352, 53.974205, 53.875923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960121, 0.140664, 0.241621,
		-0.177829, 0.974119, 0.139533,
		-0.215740, -0.176935, 0.960286,
		47.044628, 53.921124, 54.164009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578136, 54.417168, 53.968410>,  <47.195648, 54.044979, 53.491810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578136, 54.417168, 53.968410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484081, 54.064487, 54.132027>,  <47.427647, 53.852879, 54.230194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.484081, 54.064487, 54.132027>,  <47.578136, 54.417168, 53.968410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.484081, 54.064487, 54.132027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967088, -0.170141, 0.189191,
		-0.097216, 0.440063, 0.892689,
		-0.235139, -0.881701, 0.409039,
		47.413540, 53.799976, 54.254738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545372, 55.034187, 54.343098>,  <47.578136, 54.417168, 53.968410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545372, 55.034187, 54.343098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318478, 55.132927, 54.657372>,  <47.182339, 55.192173, 54.845936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318478, 55.132927, 54.657372>,  <47.545372, 55.034187, 54.343098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318478, 55.132927, 54.657372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395131, 0.918618, -0.003346,
		-0.722572, 0.308551, -0.618616,
		-0.567240, 0.246853, 0.785686,
		47.148304, 55.206982, 54.893078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.611507, 55.470074, 53.705666>,  <47.545372, 55.034187, 54.343098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.611507, 55.470074, 53.705666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907337, 55.478600, 53.974762>,  <48.084835, 55.483715, 54.136219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907337, 55.478600, 53.974762>,  <47.611507, 55.470074, 53.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.907337, 55.478600, 53.974762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173110, 0.959852, -0.220722,
		-0.650435, 0.279697, 0.706189,
		0.739572, 0.021317, 0.672740,
		48.129208, 55.484993, 54.176582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.546318, 56.057842, 53.788193>,  <47.611507, 55.470074, 53.705666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.546318, 56.057842, 53.788193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911407, 55.917351, 53.871693>,  <48.130459, 55.833054, 53.921791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911407, 55.917351, 53.871693>,  <47.546318, 56.057842, 53.788193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.911407, 55.917351, 53.871693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403320, 0.856242, -0.322773,
		-0.065372, 0.378794, 0.923169,
		0.912721, -0.351232, 0.208750,
		48.185223, 55.811981, 53.934319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.178082, 55.946877, 53.414925>,  <47.546318, 56.057842, 53.788193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.178082, 55.946877, 53.414925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.421028, 55.777504, 53.683792>,  <48.566795, 55.675880, 53.845112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.421028, 55.777504, 53.683792>,  <48.178082, 55.946877, 53.414925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.421028, 55.777504, 53.683792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787120, 0.435196, -0.437088,
		-0.107446, 0.794550, 0.597617,
		0.607369, -0.423433, 0.672166,
		48.603237, 55.650475, 53.885441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.676311, 56.453392, 53.706947>,  <48.178082, 55.946877, 53.414925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.676311, 56.453392, 53.706947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.816723, 56.078949, 53.698181>,  <48.900970, 55.854282, 53.692921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.816723, 56.078949, 53.698181>,  <48.676311, 56.453392, 53.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.816723, 56.078949, 53.698181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722470, 0.285654, -0.629633,
		0.595666, 0.205184, 0.776583,
		0.351025, -0.936110, -0.021915,
		48.922031, 55.798115, 53.691608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.337093, 56.627438, 53.455868>,  <48.676311, 56.453392, 53.706947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.337093, 56.627438, 53.455868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.370766, 56.229538, 53.432598>,  <49.390968, 55.990799, 53.418636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.370766, 56.229538, 53.432598>,  <49.337093, 56.627438, 53.455868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.370766, 56.229538, 53.432598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874748, 0.101736, -0.473779,
		0.477211, -0.011007, 0.878720,
		0.084183, -0.994750, -0.058178,
		49.396019, 55.931114, 53.415146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.005386, 56.426056, 53.825478>,  <49.337093, 56.627438, 53.455868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.005386, 56.426056, 53.825478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.883297, 56.171444, 53.542164>,  <49.810043, 56.018677, 53.372177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.883297, 56.171444, 53.542164>,  <50.005386, 56.426056, 53.825478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.883297, 56.171444, 53.542164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818639, 0.204575, -0.536636,
		0.486483, -0.743624, 0.458647,
		-0.305228, -0.636531, -0.708282,
		49.791729, 55.980484, 53.329678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.629215, 56.018261, 53.518566>,  <50.005386, 56.426056, 53.825478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.629215, 56.018261, 53.518566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.333973, 55.993870, 53.249798>,  <50.156826, 55.979237, 53.088535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.333973, 55.993870, 53.249798>,  <50.629215, 56.018261, 53.518566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.333973, 55.993870, 53.249798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648519, 0.210541, -0.731502,
		0.186072, -0.975682, -0.115857,
		-0.738106, -0.060976, -0.671923,
		50.112541, 55.975578, 53.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.972225, 55.651653, 53.018394>,  <50.629215, 56.018261, 53.518566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.972225, 55.651653, 53.018394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.682407, 55.854126, 52.831284>,  <50.508514, 55.975609, 52.719017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.682407, 55.854126, 52.831284>,  <50.972225, 55.651653, 53.018394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.682407, 55.854126, 52.831284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606133, 0.144897, -0.782053,
		-0.328078, -0.850170, -0.411796,
		-0.724546, 0.506178, -0.467778,
		50.465042, 56.005978, 52.690948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.415573, 55.275074, 53.464508>,  <50.972225, 55.651653, 53.018394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.415573, 55.275074, 53.464508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.483036, 55.580475, 53.215149>,  <51.523514, 55.763714, 53.065533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.483036, 55.580475, 53.215149>,  <51.415573, 55.275074, 53.464508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.483036, 55.580475, 53.215149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983791, -0.091318, 0.154321,
		0.060896, -0.639322, -0.766524,
		0.168659, 0.763498, -0.623398,
		51.533634, 55.809525, 53.028130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.816566, 55.276245, 52.736359>,  <51.415573, 55.275074, 53.464508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.816566, 55.276245, 52.736359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884026, 55.581604, 52.985771>,  <51.924500, 55.764820, 53.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.884026, 55.581604, 52.985771>,  <51.816566, 55.276245, 52.736359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.884026, 55.581604, 52.985771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985464, -0.143722, -0.090574,
		0.020471, 0.629739, -0.776537,
		0.168644, 0.763395, 0.623528,
		51.934620, 55.810623, 53.172829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.331520, 55.709686, 52.371494>,  <51.816566, 55.276245, 52.736359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.331520, 55.709686, 52.371494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.342430, 55.790833, 52.763023>,  <52.348976, 55.839520, 52.997940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.342430, 55.790833, 52.763023>,  <52.331520, 55.709686, 52.371494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.342430, 55.790833, 52.763023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978521, 0.194738, -0.067628,
		-0.204334, 0.959647, -0.193197,
		0.027276, 0.202866, 0.978827,
		52.350613, 55.851692, 53.056671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.457287, 56.567013, 52.504635>,  <52.331520, 55.709686, 52.371494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.457287, 56.567013, 52.504635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.573154, 56.291645, 52.770618>,  <52.642677, 56.126423, 52.930206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.573154, 56.291645, 52.770618>,  <52.457287, 56.567013, 52.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.573154, 56.291645, 52.770618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922656, 0.385616, -0.002709,
		-0.254553, 0.614311, 0.746877,
		0.289672, -0.688420, 0.664957,
		52.660057, 56.085117, 52.970104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.830063, 56.891243, 53.078800>,  <52.457287, 56.567013, 52.504635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.830063, 56.891243, 53.078800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.972790, 56.517616, 53.084442>,  <53.058426, 56.293442, 53.087826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.972790, 56.517616, 53.084442>,  <52.830063, 56.891243, 53.078800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.972790, 56.517616, 53.084442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917867, 0.353358, 0.180719,
		-0.173788, -0.051536, 0.983434,
		0.356817, -0.934068, 0.014106,
		53.079834, 56.237396, 53.088673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.434517, 56.906185, 53.494644>,  <52.830063, 56.891243, 53.078800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.434517, 56.906185, 53.494644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.457462, 56.591591, 53.248669>,  <53.471230, 56.402832, 53.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.457462, 56.591591, 53.248669>,  <53.434517, 56.906185, 53.494644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.457462, 56.591591, 53.248669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958448, 0.215785, -0.186582,
		0.279439, -0.578680, 0.766187,
		0.057360, -0.786489, -0.614934,
		53.474670, 56.355644, 53.064190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.947384, 56.423756, 53.706703>,  <53.434517, 56.906185, 53.494644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.947384, 56.423756, 53.706703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.898605, 56.427628, 53.309708>,  <53.869339, 56.429951, 53.071510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.898605, 56.427628, 53.309708>,  <53.947384, 56.423756, 53.706703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.898605, 56.427628, 53.309708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952876, 0.280984, -0.114342,
		0.277767, -0.959663, -0.043486,
		-0.121949, 0.009676, -0.992489,
		53.862022, 56.430531, 53.011959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.600063, 56.816074, 53.560883>,  <53.947384, 56.423756, 53.706703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.600063, 56.816074, 53.560883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.801239, 57.161007, 53.584316>,  <54.921944, 57.367966, 53.598377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.801239, 57.161007, 53.584316>,  <54.600063, 56.816074, 53.560883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.801239, 57.161007, 53.584316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593342, -0.393757, 0.702069,
		0.628486, -0.318339, -0.709695,
		0.502943, 0.862332, 0.058587,
		54.952122, 57.419708, 53.601891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.442108, 56.880306, 53.496380>,  <54.600063, 56.816074, 53.560883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.442108, 56.880306, 53.496380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.228386, 57.122368, 53.732449>,  <55.100151, 57.267605, 53.874092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.228386, 57.122368, 53.732449>,  <55.442108, 56.880306, 53.496380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.228386, 57.122368, 53.732449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602308, -0.217310, 0.768115,
		0.593076, 0.765878, -0.248377,
		-0.534308, 0.605151, 0.590176,
		55.068092, 57.303913, 53.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.861332, 57.408318, 53.765781>,  <55.442108, 56.880306, 53.496380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.861332, 57.408318, 53.765781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.541847, 57.338013, 53.995968>,  <55.350155, 57.295830, 54.134079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.541847, 57.338013, 53.995968>,  <55.861332, 57.408318, 53.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.541847, 57.338013, 53.995968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584335, 0.001606, 0.811511,
		-0.143558, 0.984431, 0.101421,
		-0.798714, -0.175763, 0.575468,
		55.302235, 57.285282, 54.168610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.251900, 56.989716, 53.452820>,  <55.861332, 57.408318, 53.765781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.251900, 56.989716, 53.452820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.370880, 57.049820, 53.075684>,  <56.442268, 57.085880, 52.849403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.370880, 57.049820, 53.075684>,  <56.251900, 56.989716, 53.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.370880, 57.049820, 53.075684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925687, 0.196361, 0.323336,
		0.233721, -0.968950, -0.080685,
		0.297453, 0.150259, -0.942838,
		56.460117, 57.094898, 52.792831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.852196, 56.575413, 53.185738>,  <56.251900, 56.989716, 53.452820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.852196, 56.575413, 53.185738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.815750, 56.962849, 53.093185>,  <56.793884, 57.195309, 53.037655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.815750, 56.962849, 53.093185>,  <56.852196, 56.575413, 53.185738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.815750, 56.962849, 53.093185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657827, 0.232972, 0.716231,
		0.747638, -0.086950, -0.658390,
		-0.091110, 0.968589, -0.231377,
		56.788418, 57.253426, 53.023773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.523571, 56.857864, 53.228748>,  <56.852196, 56.575413, 53.185738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.523571, 56.857864, 53.228748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.227669, 57.123020, 53.274948>,  <57.050129, 57.282112, 53.302666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.227669, 57.123020, 53.274948>,  <57.523571, 56.857864, 53.228748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.227669, 57.123020, 53.274948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463180, 0.377154, 0.802009,
		0.488084, 0.646786, -0.586039,
		-0.739755, 0.662890, 0.115496,
		57.005741, 57.321888, 53.309597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.854481, 57.550182, 53.281948>,  <57.523571, 56.857864, 53.228748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.854481, 57.550182, 53.281948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.497910, 57.526272, 53.461628>,  <57.283966, 57.511925, 53.569435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.497910, 57.526272, 53.461628>,  <57.854481, 57.550182, 53.281948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.497910, 57.526272, 53.461628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424048, 0.239524, 0.873391,
		-0.159802, 0.969049, -0.188171,
		-0.891430, -0.059777, 0.449199,
		57.230480, 57.508339, 53.596386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.779514, 58.166996, 53.499954>,  <57.854481, 57.550182, 53.281948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.779514, 58.166996, 53.499954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.651253, 57.853729, 53.713058>,  <57.574295, 57.665768, 53.840919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.651253, 57.853729, 53.713058>,  <57.779514, 58.166996, 53.499954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.651253, 57.853729, 53.713058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680532, 0.200741, 0.704684,
		-0.658831, 0.588519, 0.468601,
		-0.320653, -0.783165, 0.532760,
		57.555058, 57.618778, 53.872887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.711670, 58.421139, 54.194992>,  <57.779514, 58.166996, 53.499954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.711670, 58.421139, 54.194992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.765099, 58.025444, 54.218903>,  <57.797153, 57.788029, 54.233250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.765099, 58.025444, 54.218903>,  <57.711670, 58.421139, 54.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.765099, 58.025444, 54.218903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603790, 0.129057, 0.786627,
		-0.785874, -0.068978, 0.614528,
		0.133569, -0.989235, 0.059774,
		57.805168, 57.728672, 54.236835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.823746, 58.275078, 54.904438>,  <57.711670, 58.421139, 54.194992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.823746, 58.275078, 54.904438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.976364, 57.965511, 54.702255>,  <58.067936, 57.779774, 54.580948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.976364, 57.965511, 54.702255>,  <57.823746, 58.275078, 54.904438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.976364, 57.965511, 54.702255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745256, -0.065930, 0.663512,
		-0.546824, -0.629852, 0.551607,
		0.381547, -0.773912, -0.505453,
		58.090828, 57.733337, 54.550621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.994225, 57.773170, 55.361454>,  <57.823746, 58.275078, 54.904438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.994225, 57.773170, 55.361454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.227676, 57.752808, 55.037285>,  <58.367748, 57.740589, 54.842781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.227676, 57.752808, 55.037285>,  <57.994225, 57.773170, 55.361454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.227676, 57.752808, 55.037285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810968, 0.087389, 0.578528,
		0.041369, -0.994872, 0.092290,
		0.583626, -0.050911, -0.810425,
		58.402763, 57.737534, 54.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.354404, 57.091679, 55.181847>,  <57.994225, 57.773170, 55.361454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.354404, 57.091679, 55.181847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.570709, 57.406704, 55.063644>,  <58.700493, 57.595718, 54.992722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.570709, 57.406704, 55.063644>,  <58.354404, 57.091679, 55.181847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.570709, 57.406704, 55.063644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696193, -0.221857, 0.682711,
		0.472117, -0.574913, -0.668267,
		0.540760, 0.787562, -0.295508,
		58.732937, 57.642971, 54.974991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.072811, 57.013142, 54.946499>,  <58.354404, 57.091679, 55.181847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.072811, 57.013142, 54.946499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072182, 57.370636, 55.125938>,  <59.071804, 57.585133, 55.233601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072182, 57.370636, 55.125938>,  <59.072811, 57.013142, 54.946499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.072182, 57.370636, 55.125938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710861, -0.314516, 0.629092,
		0.703331, 0.319879, -0.634825,
		-0.001571, 0.893732, 0.448598,
		59.071709, 57.638756, 55.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.788387, 57.225697, 55.084900>,  <59.072811, 57.013142, 54.946499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.788387, 57.225697, 55.084900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.561172, 57.427391, 55.345078>,  <59.424843, 57.548409, 55.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.561172, 57.427391, 55.345078>,  <59.788387, 57.225697, 55.084900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.561172, 57.427391, 55.345078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672561, -0.171100, 0.719991,
		0.474337, 0.846446, -0.241938,
		-0.568038, 0.504236, 0.650445,
		59.390762, 57.578663, 55.540211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.203739, 57.859459, 55.232605>,  <59.788387, 57.225697, 55.084900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.203739, 57.859459, 55.232605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940796, 57.725372, 55.502571>,  <59.783031, 57.644920, 55.664551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.940796, 57.725372, 55.502571>,  <60.203739, 57.859459, 55.232605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.940796, 57.725372, 55.502571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747678, -0.178231, 0.639696,
		-0.094144, 0.925129, 0.367794,
		-0.657354, -0.335215, 0.674920,
		59.743591, 57.624809, 55.705048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.133732, 58.277634, 55.888496>,  <60.203739, 57.859459, 55.232605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.133732, 58.277634, 55.888496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.089302, 57.880150, 55.894318>,  <60.062645, 57.641659, 55.897812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.089302, 57.880150, 55.894318>,  <60.133732, 58.277634, 55.888496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.089302, 57.880150, 55.894318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738726, -0.072761, 0.670067,
		-0.664790, 0.085180, 0.742158,
		-0.111077, -0.993705, 0.014554,
		60.055981, 57.582039, 55.898685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.452545, 58.321732, 56.566792>,  <60.133732, 58.277634, 55.888496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.452545, 58.321732, 56.566792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.395607, 57.945534, 56.690208>,  <60.361443, 57.719814, 56.764259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.395607, 57.945534, 56.690208>,  <60.452545, 58.321732, 56.566792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.395607, 57.945534, 56.690208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129222, 0.291394, 0.947835,
		-0.981346, 0.174791, 0.080055,
		-0.142345, -0.940499, 0.308545,
		60.352905, 57.663383, 56.782772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.738808, 58.103722, 56.915150>,  <60.452545, 58.321732, 56.566792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.738808, 58.103722, 56.915150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.065353, 57.907555, 57.037163>,  <60.261280, 57.789856, 57.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.065353, 57.907555, 57.037163>,  <59.738808, 58.103722, 56.915150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.065353, 57.907555, 57.037163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072814, 0.436540, 0.896733,
		-0.572932, -0.754270, 0.320666,
		0.816362, -0.490418, 0.305029,
		60.310261, 57.760429, 57.128670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.750435, 57.988766, 57.611839>,  <59.738808, 58.103722, 56.915150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.750435, 57.988766, 57.611839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.139542, 57.980976, 57.519455>,  <60.373005, 57.976303, 57.464024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.139542, 57.980976, 57.519455>,  <59.750435, 57.988766, 57.611839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.139542, 57.980976, 57.519455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182939, 0.676369, 0.713483,
		0.142315, -0.736305, 0.661514,
		0.972769, -0.019477, -0.230956,
		60.431374, 57.975132, 57.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.092209, 57.999367, 58.285622>,  <59.750435, 57.988766, 57.611839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.092209, 57.999367, 58.285622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.310730, 58.137600, 57.980431>,  <60.441841, 58.220539, 57.797318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.310730, 58.137600, 57.980431>,  <60.092209, 57.999367, 58.285622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.310730, 58.137600, 57.980431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248904, 0.802788, 0.541829,
		0.799738, -0.485918, 0.352566,
		0.546319, 0.345566, -0.762967,
		60.474621, 58.241272, 57.751537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.449276, 58.530437, 58.535999>,  <60.092209, 57.999367, 58.285622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.449276, 58.530437, 58.535999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499382, 58.627789, 58.151276>,  <60.529446, 58.686199, 57.920441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.499382, 58.627789, 58.151276>,  <60.449276, 58.530437, 58.535999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.499382, 58.627789, 58.151276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070926, 0.969162, 0.235997,
		0.989585, 0.038655, 0.138664,
		0.125265, 0.243374, -0.961810,
		60.536961, 58.700802, 57.862732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.804844, 58.227760, 59.145939>,  <60.449276, 58.530437, 58.535999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.804844, 58.227760, 59.145939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.158157, 58.104698, 59.287445>,  <61.370148, 58.030861, 59.372349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.158157, 58.104698, 59.287445>,  <60.804844, 58.227760, 59.145939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.158157, 58.104698, 59.287445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468389, 0.611927, -0.637304,
		-0.020406, 0.728622, 0.684612,
		0.883287, -0.307660, 0.353766,
		61.423141, 58.012402, 59.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.190804, 58.889324, 59.191002>,  <60.804844, 58.227760, 59.145939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.190804, 58.889324, 59.191002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.399940, 58.557953, 59.110657>,  <61.525425, 58.359131, 59.062450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.399940, 58.557953, 59.110657>,  <61.190804, 58.889324, 59.191002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.399940, 58.557953, 59.110657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452218, 0.469310, -0.758451,
		0.722588, 0.305716, 0.620004,
		0.522844, -0.828424, -0.200867,
		61.556793, 58.309425, 59.050396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.936184, 58.861313, 59.474731>,  <61.190804, 58.889324, 59.191002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.936184, 58.861313, 59.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.858063, 58.693947, 59.119926>,  <61.811188, 58.593529, 58.907043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.858063, 58.693947, 59.119926>,  <61.936184, 58.861313, 59.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.858063, 58.693947, 59.119926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406837, 0.788373, -0.461467,
		0.892379, -0.450995, 0.016253,
		-0.195306, -0.418416, -0.887008,
		61.799473, 58.568420, 58.853825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.579247, 58.824474, 59.043015>,  <61.936184, 58.861313, 59.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.579247, 58.824474, 59.043015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250404, 58.845451, 58.816246>,  <62.053101, 58.858036, 58.680187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.250404, 58.845451, 58.816246>,  <62.579247, 58.824474, 59.043015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.250404, 58.845451, 58.816246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462378, 0.642484, -0.611081,
		0.332191, -0.764503, -0.552435,
		-0.822104, 0.052438, -0.566917,
		62.003773, 58.861183, 58.646172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.556202, 58.504959, 58.295708>,  <62.579247, 58.824474, 59.043015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.556202, 58.504959, 58.295708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.312508, 58.822090, 58.302010>,  <62.166290, 59.012371, 58.305790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.312508, 58.822090, 58.302010>,  <62.556202, 58.504959, 58.295708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.312508, 58.822090, 58.302010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471000, 0.377775, -0.797148,
		-0.637957, -0.478231, -0.603578,
		-0.609238, 0.792832, 0.015757,
		62.129738, 59.059940, 58.306736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.048912, 58.696712, 57.728695>,  <62.556202, 58.504959, 58.295708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.048912, 58.696712, 57.728695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.194046, 59.046844, 57.856537>,  <62.281124, 59.256924, 57.933243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.194046, 59.046844, 57.856537>,  <62.048912, 58.696712, 57.728695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.194046, 59.046844, 57.856537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311818, 0.209154, -0.926836,
		-0.878136, 0.435943, -0.197057,
		0.362833, 0.875333, 0.319600,
		62.302895, 59.309444, 57.952415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.767204, 59.330460, 57.424683>,  <62.048912, 58.696712, 57.728695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.767204, 59.330460, 57.424683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.131317, 59.446022, 57.543289>,  <62.349785, 59.515358, 57.614452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.131317, 59.446022, 57.543289>,  <61.767204, 59.330460, 57.424683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.131317, 59.446022, 57.543289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199781, 0.320783, -0.925843,
		-0.362598, 0.902016, 0.234285,
		0.910280, 0.288904, 0.296521,
		62.404400, 59.532692, 57.632244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.394447, 59.545395, 56.940819>,  <61.767204, 59.330460, 57.424683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.394447, 59.545395, 56.940819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.042091, 59.694447, 57.057556>,  <61.830677, 59.783878, 57.127598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.042091, 59.694447, 57.057556>,  <62.394447, 59.545395, 56.940819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.042091, 59.694447, 57.057556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315077, -0.921786, 0.225914,
		0.353202, 0.107052, 0.929402,
		-0.880895, 0.372627, 0.291847,
		61.777824, 59.806236, 57.145111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.101482, 60.048248, 56.788326>,  <62.394447, 59.545395, 56.940819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.101482, 60.048248, 56.788326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.471619, 60.032360, 56.637505>,  <63.693699, 60.022827, 56.547012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.471619, 60.032360, 56.637505>,  <63.101482, 60.048248, 56.788326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.471619, 60.032360, 56.637505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134866, 0.963934, 0.229441,
		0.354338, -0.263162, 0.897324,
		0.925341, -0.039719, -0.377050,
		63.749222, 60.020443, 56.524391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.592037, 60.466724, 57.199352>,  <63.101482, 60.048248, 56.788326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.592037, 60.466724, 57.199352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729248, 60.463112, 56.823639>,  <63.811573, 60.460945, 56.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.729248, 60.463112, 56.823639>,  <63.592037, 60.466724, 57.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.729248, 60.463112, 56.823639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188616, 0.980250, 0.059453,
		0.920193, -0.197557, 0.337958,
		0.343028, -0.009036, -0.939282,
		63.832157, 60.460400, 56.541855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.216492, 60.808720, 57.194370>,  <63.592037, 60.466724, 57.199352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.216492, 60.808720, 57.194370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.083984, 60.821243, 56.817162>,  <64.004478, 60.828758, 56.590836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.083984, 60.821243, 56.817162>,  <64.216492, 60.808720, 57.194370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.083984, 60.821243, 56.817162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354572, 0.930326, -0.093663,
		0.874383, -0.365396, -0.319280,
		-0.331259, 0.031310, -0.943020,
		63.984608, 60.830635, 56.534256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.767113, 60.875782, 56.754677>,  <64.216492, 60.808720, 57.194370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.767113, 60.875782, 56.754677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.436882, 61.048569, 56.609444>,  <64.238747, 61.152241, 56.522305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.436882, 61.048569, 56.609444>,  <64.767113, 60.875782, 56.754677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.436882, 61.048569, 56.609444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449829, 0.892274, 0.038750,
		0.340705, -0.131332, -0.930952,
		-0.825575, 0.431971, -0.363079,
		64.189209, 61.178162, 56.500519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.468468, 60.412979, 56.565758>,  <64.767113, 60.875782, 56.754677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.468468, 60.412979, 56.565758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.363075, 60.362885, 56.948357>,  <65.299843, 60.332829, 57.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.363075, 60.362885, 56.948357>,  <65.468468, 60.412979, 56.565758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.363075, 60.362885, 56.948357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808595, -0.569399, 0.148184,
		0.526073, 0.812465, 0.251290,
		-0.263479, -0.125236, 0.956501,
		65.284035, 60.325314, 57.235306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.068436, 60.680878, 57.004623>,  <65.468468, 60.412979, 56.565758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.068436, 60.680878, 57.004623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.867882, 60.398354, 57.204521>,  <65.747551, 60.228840, 57.324459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.867882, 60.398354, 57.204521>,  <66.068436, 60.680878, 57.004623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.867882, 60.398354, 57.204521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827725, -0.559754, 0.039327,
		0.251956, 0.433367, 0.865281,
		-0.501387, -0.706306, 0.499742,
		65.717468, 60.186462, 57.354443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.489929, 60.567257, 57.561459>,  <66.068436, 60.680878, 57.004623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.489929, 60.567257, 57.561459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.275772, 60.241318, 57.472572>,  <66.147278, 60.045753, 57.419243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.275772, 60.241318, 57.472572>,  <66.489929, 60.567257, 57.561459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.275772, 60.241318, 57.472572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789922, -0.576213, 0.209768,
		-0.298971, -0.063223, 0.952166,
		-0.535388, -0.814851, -0.222212,
		66.115158, 59.996864, 57.405910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.342957, 60.040882, 58.172134>,  <66.489929, 60.567257, 57.561459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.342957, 60.040882, 58.172134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.370979, 59.869705, 57.811699>,  <66.387794, 59.766998, 57.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.370979, 59.869705, 57.811699>,  <66.342957, 60.040882, 58.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.370979, 59.869705, 57.811699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661995, -0.655786, 0.362915,
		-0.746226, -0.621943, 0.237347,
		0.070064, -0.427939, -0.901088,
		66.391998, 59.741325, 57.541374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.992607, 59.316788, 58.140461>,  <66.342957, 60.040882, 58.172134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.992607, 59.316788, 58.140461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.309288, 59.404350, 57.912323>,  <66.499298, 59.456886, 57.775440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.309288, 59.404350, 57.912323>,  <65.992607, 59.316788, 58.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.309288, 59.404350, 57.912323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554668, -0.648851, 0.520900,
		-0.256044, -0.728748, -0.635112,
		0.791698, 0.218903, -0.570347,
		66.546799, 59.470020, 57.741219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.353577, 58.725613, 57.830353>,  <65.992607, 59.316788, 58.140461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.353577, 58.725613, 57.830353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.607796, 59.022778, 57.914406>,  <66.760330, 59.201077, 57.964840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.607796, 59.022778, 57.914406>,  <66.353577, 58.725613, 57.830353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.607796, 59.022778, 57.914406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498354, -0.602633, 0.623278,
		0.589676, -0.291403, -0.753237,
		0.635551, 0.742911, 0.210137,
		66.798462, 59.245651, 57.977448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.065948, 58.541634, 57.984619>,  <66.353577, 58.725613, 57.830353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.065948, 58.541634, 57.984619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.173836, 58.916012, 58.075188>,  <67.238571, 59.140636, 58.129528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.173836, 58.916012, 58.075188>,  <67.065948, 58.541634, 57.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.173836, 58.916012, 58.075188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708256, -0.352124, 0.611868,
		0.652400, -0.004668, -0.757860,
		0.269717, 0.935942, 0.226420,
		67.254753, 59.196793, 58.143112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.809166, 58.617702, 57.869762>,  <67.065948, 58.541634, 57.984619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.809166, 58.617702, 57.869762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.733521, 58.917084, 58.124023>,  <67.688133, 59.096714, 58.276581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.733521, 58.917084, 58.124023>,  <67.809166, 58.617702, 57.869762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.733521, 58.917084, 58.124023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728287, -0.327294, 0.602060,
		0.658659, 0.576796, -0.483193,
		-0.189119, 0.748455, 0.635648,
		67.676788, 59.141621, 58.314716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.361671, 59.026165, 57.855480>,  <67.809166, 58.617702, 57.869762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.361671, 59.026165, 57.855480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.154129, 59.010353, 58.197060>,  <68.029602, 59.000866, 58.402008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.154129, 59.010353, 58.197060>,  <68.361671, 59.026165, 57.855480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.154129, 59.010353, 58.197060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815199, -0.323624, 0.480332,
		0.257372, 0.945360, 0.200137,
		-0.518855, -0.039528, 0.853948,
		67.998474, 58.998493, 58.453243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.806412, 59.337029, 58.371689>,  <68.361671, 59.026165, 57.855480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.806412, 59.337029, 58.371689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.543068, 59.080887, 58.529938>,  <68.385063, 58.927200, 58.624889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.543068, 59.080887, 58.529938>,  <68.806412, 59.337029, 58.371689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.543068, 59.080887, 58.529938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710826, -0.356034, 0.606602,
		-0.247583, 0.680579, 0.689576,
		-0.658353, -0.640353, 0.395626,
		68.345566, 58.888783, 58.648624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.898537, 59.345726, 59.111137>,  <68.806412, 59.337029, 58.371689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.898537, 59.345726, 59.111137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.827309, 58.988922, 58.944954>,  <68.784569, 58.774841, 58.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.827309, 58.988922, 58.944954>,  <68.898537, 59.345726, 59.111137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.827309, 58.988922, 58.944954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422836, -0.450604, 0.786235,
		-0.888538, -0.035665, 0.457414,
		-0.178072, -0.892011, -0.415460,
		68.773888, 58.721317, 58.820316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.360886, 59.584702, 59.812443>,  <68.898537, 59.345726, 59.111137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.360886, 59.584702, 59.812443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.304939, 59.709702, 60.188271>,  <69.271370, 59.784702, 60.413765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.304939, 59.709702, 60.188271>,  <69.360886, 59.584702, 59.812443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.304939, 59.709702, 60.188271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705680, 0.697090, -0.126811,
		-0.694590, 0.645297, -0.318019,
		-0.139858, 0.312501, 0.939565,
		69.262985, 59.803452, 60.470139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.644539, 58.920029, 59.905827>,  <69.360886, 59.584702, 59.812443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.644539, 58.920029, 59.905827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.957924, 58.672485, 59.928513>,  <70.145950, 58.523960, 59.942123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.957924, 58.672485, 59.928513>,  <69.644539, 58.920029, 59.905827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.957924, 58.672485, 59.928513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156695, 0.108399, -0.981680,
		0.601368, 0.777991, 0.181897,
		0.783456, -0.618854, 0.056719,
		70.192963, 58.486828, 59.945530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.206009, 59.244137, 59.610184>,  <69.644539, 58.920029, 59.905827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.206009, 59.244137, 59.610184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.215050, 58.850281, 59.540939>,  <70.220474, 58.613968, 59.499393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.215050, 58.850281, 59.540939>,  <70.206009, 59.244137, 59.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.215050, 58.850281, 59.540939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293579, 0.172055, -0.940324,
		0.955668, -0.029575, 0.292958,
		0.022595, -0.984644, -0.173110,
		70.221825, 58.554886, 59.489006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.825798, 59.262241, 59.155746>,  <70.206009, 59.244137, 59.610184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.825798, 59.262241, 59.155746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545242, 58.985966, 59.085320>,  <70.376907, 58.820198, 59.043064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.545242, 58.985966, 59.085320>,  <70.825798, 59.262241, 59.155746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.545242, 58.985966, 59.085320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189720, 0.057195, -0.980171,
		0.687067, -0.720883, 0.090922,
		-0.701388, -0.690692, -0.176063,
		70.334824, 58.778759, 59.032501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.065445, 58.753757, 58.611435>,  <70.825798, 59.262241, 59.155746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.065445, 58.753757, 58.611435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.672745, 58.691422, 58.567871>,  <70.437119, 58.654018, 58.541733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.672745, 58.691422, 58.567871>,  <71.065445, 58.753757, 58.611435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.672745, 58.691422, 58.567871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138526, -0.194003, -0.971171,
		0.130223, -0.968543, 0.212052,
		-0.981760, -0.155843, -0.108905,
		70.378220, 58.644669, 58.535198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.394859, 58.100750, 58.780266>,  <71.065445, 58.753757, 58.611435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.394859, 58.100750, 58.780266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.549728, 58.259022, 59.113380>,  <71.642654, 58.353985, 59.313248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.549728, 58.259022, 59.113380>,  <71.394859, 58.100750, 58.780266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.549728, 58.259022, 59.113380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672064, -0.739471, 0.038884,
		0.631207, 0.544631, -0.552227,
		0.387179, 0.395676, 0.832786,
		71.665878, 58.377724, 59.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.163399, 58.048649, 58.904518>,  <71.394859, 58.100750, 58.780266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.163399, 58.048649, 58.904518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.035301, 58.096424, 59.280426>,  <71.958443, 58.125088, 59.505970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.035301, 58.096424, 59.280426>,  <72.163399, 58.048649, 58.904518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.035301, 58.096424, 59.280426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578822, -0.760642, 0.293920,
		0.749937, 0.638090, 0.174462,
		-0.320250, 0.119439, 0.939773,
		71.939224, 58.132256, 59.562359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.746399, 57.889114, 59.223682>,  <72.163399, 58.048649, 58.904518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.746399, 57.889114, 59.223682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.451584, 57.848118, 59.490898>,  <72.274696, 57.823521, 59.651226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.451584, 57.848118, 59.490898>,  <72.746399, 57.889114, 59.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.451584, 57.848118, 59.490898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485172, -0.768364, 0.417403,
		0.470514, 0.631754, 0.616039,
		-0.737038, -0.102491, 0.668035,
		72.230469, 57.817371, 59.691307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.919815, 58.112335, 59.964394>,  <72.746399, 57.889114, 59.223682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.919815, 58.112335, 59.964394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630676, 57.836563, 59.983009>,  <72.457191, 57.671101, 59.994179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630676, 57.836563, 59.983009>,  <72.919815, 58.112335, 59.964394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.630676, 57.836563, 59.983009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641001, -0.643872, 0.417787,
		-0.258067, 0.331833, 0.907352,
		-0.722855, -0.689431, 0.046543,
		72.413818, 57.629734, 59.996971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.166664, 57.729691, 60.453259>,  <72.919815, 58.112335, 59.964394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.166664, 57.729691, 60.453259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.874260, 57.488327, 60.325798>,  <72.698822, 57.343510, 60.249321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.874260, 57.488327, 60.325798>,  <73.166664, 57.729691, 60.453259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.874260, 57.488327, 60.325798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477175, -0.785832, 0.393411,
		-0.487789, 0.135535, 0.862376,
		-0.731003, -0.603406, -0.318647,
		72.654961, 57.307304, 60.230206>
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
