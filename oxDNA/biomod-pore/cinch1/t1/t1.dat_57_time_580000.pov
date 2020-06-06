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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.431683, 33.137405, 23.402235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677639, 33.266171, 23.114269>,  <42.825214, 33.343430, 22.941490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677639, 33.266171, 23.114269>,  <42.431683, 33.137405, 23.402235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677639, 33.266171, 23.114269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439291, 0.618318, 0.651695,
		0.654929, -0.716973, 0.238783,
		0.614892, 0.321919, -0.719914,
		42.862106, 33.362747, 22.898294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970078, 33.433605, 22.979244>,  <42.431683, 33.137405, 23.402235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970078, 33.433605, 22.979244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272205, 33.353848, 22.729530>,  <42.453484, 33.305992, 22.579702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272205, 33.353848, 22.729530>,  <41.970078, 33.433605, 22.979244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272205, 33.353848, 22.729530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564046, -0.287231, 0.774177,
		-0.333683, -0.936877, -0.104482,
		0.755319, -0.199397, -0.624286,
		42.498802, 33.294029, 22.542244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208851, 33.470951, 23.177353>,  <41.970078, 33.433605, 22.979244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208851, 33.470951, 23.177353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968704, 33.634747, 23.452126>,  <40.824615, 33.733025, 23.616989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968704, 33.634747, 23.452126>,  <41.208851, 33.470951, 23.177353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968704, 33.634747, 23.452126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791063, 0.430143, 0.434967,
		-0.117367, 0.804549, -0.582173,
		-0.600370, 0.409485, 0.686934,
		40.788593, 33.757591, 23.658205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403610, 33.573380, 23.069513>,  <41.208851, 33.470951, 23.177353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403610, 33.573380, 23.069513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161163, 33.668655, 22.765965>,  <40.015694, 33.725819, 22.583836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161163, 33.668655, 22.765965>,  <40.403610, 33.573380, 23.069513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161163, 33.668655, 22.765965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488546, 0.864399, -0.118898,
		0.627648, -0.442810, -0.640295,
		-0.606120, 0.238187, -0.758871,
		39.979328, 33.740112, 22.538303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139698, 33.485996, 23.806387>,  <40.403610, 33.573380, 23.069513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139698, 33.485996, 23.806387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886230, 33.785545, 23.883999>,  <39.734150, 33.965275, 23.930565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886230, 33.785545, 23.883999>,  <40.139698, 33.485996, 23.806387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886230, 33.785545, 23.883999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215253, -0.070226, 0.974030,
		0.743051, 0.658982, -0.116697,
		-0.633673, 0.748873, 0.194029,
		39.696129, 34.010208, 23.942207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371899, 34.002106, 24.417807>,  <40.139698, 33.485996, 23.806387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371899, 34.002106, 24.417807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982395, 34.091316, 24.399651>,  <39.748695, 34.144840, 24.388758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982395, 34.091316, 24.399651>,  <40.371899, 34.002106, 24.417807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982395, 34.091316, 24.399651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086239, -0.177001, 0.980425,
		0.210624, 0.958609, 0.191589,
		-0.973756, 0.223023, -0.045389,
		39.690269, 34.158222, 24.386034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164883, 34.556484, 24.858074>,  <40.371899, 34.002106, 24.417807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164883, 34.556484, 24.858074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825531, 34.347401, 24.824554>,  <39.621922, 34.221951, 24.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825531, 34.347401, 24.824554>,  <40.164883, 34.556484, 24.858074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825531, 34.347401, 24.824554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004331, -0.151436, 0.988457,
		-0.529369, 0.838951, 0.126212,
		-0.848380, -0.522713, -0.083799,
		39.571018, 34.190586, 24.799416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837681, 34.804314, 25.429846>,  <40.164883, 34.556484, 24.858074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837681, 34.804314, 25.429846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655029, 34.465469, 25.321110>,  <39.545437, 34.262165, 25.255867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655029, 34.465469, 25.321110>,  <39.837681, 34.804314, 25.429846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655029, 34.465469, 25.321110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001945, -0.304605, 0.952477,
		-0.889656, 0.435456, 0.137444,
		-0.456628, -0.847109, -0.271841,
		39.518040, 34.211338, 25.239557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295029, 34.681366, 25.874365>,  <39.837681, 34.804314, 25.429846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295029, 34.681366, 25.874365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352959, 34.314556, 25.725719>,  <39.387714, 34.094471, 25.636532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352959, 34.314556, 25.725719>,  <39.295029, 34.681366, 25.874365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352959, 34.314556, 25.725719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142408, -0.390982, 0.909315,
		-0.979156, -0.078766, -0.187214,
		0.144820, -0.917022, -0.371616,
		39.396404, 34.039448, 25.614235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787739, 34.265152, 26.221285>,  <39.295029, 34.681366, 25.874365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787739, 34.265152, 26.221285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069096, 34.016914, 26.082664>,  <39.237911, 33.867973, 25.999493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069096, 34.016914, 26.082664>,  <38.787739, 34.265152, 26.221285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069096, 34.016914, 26.082664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041909, -0.450494, 0.891795,
		-0.709562, -0.641808, -0.290868,
		0.703395, -0.620594, -0.346551,
		39.280113, 33.830738, 25.978699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546776, 33.652084, 26.534023>,  <38.787739, 34.265152, 26.221285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546776, 33.652084, 26.534023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935516, 33.606380, 26.451603>,  <39.168758, 33.578957, 26.402151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935516, 33.606380, 26.451603>,  <38.546776, 33.652084, 26.534023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935516, 33.606380, 26.451603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106192, -0.568247, 0.815977,
		-0.210322, -0.814886, -0.540115,
		0.971847, -0.114262, -0.206050,
		39.227070, 33.572102, 26.389788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749191, 33.001110, 26.772064>,  <38.546776, 33.652084, 26.534023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749191, 33.001110, 26.772064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118973, 33.140568, 26.710308>,  <39.340843, 33.224243, 26.673254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118973, 33.140568, 26.710308>,  <38.749191, 33.001110, 26.772064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118973, 33.140568, 26.710308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319485, -0.487238, 0.812728,
		0.208125, -0.800655, -0.561814,
		0.924453, 0.348641, -0.154391,
		39.396309, 33.245159, 26.663990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247871, 32.444519, 26.786352>,  <38.749191, 33.001110, 26.772064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247871, 32.444519, 26.786352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457237, 32.776386, 26.864002>,  <39.582859, 32.975506, 26.910591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457237, 32.776386, 26.864002>,  <39.247871, 32.444519, 26.786352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457237, 32.776386, 26.864002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515490, -0.489733, 0.703159,
		0.678458, -0.267977, -0.684020,
		0.523417, 0.829669, 0.194124,
		39.614262, 33.025288, 26.922239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001194, 32.296093, 26.890913>,  <39.247871, 32.444519, 26.786352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001194, 32.296093, 26.890913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937439, 32.647572, 27.070904>,  <39.899185, 32.858459, 27.178898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937439, 32.647572, 27.070904>,  <40.001194, 32.296093, 26.890913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937439, 32.647572, 27.070904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572217, -0.289194, 0.767421,
		0.804464, 0.379805, -0.456712,
		-0.159392, 0.878701, 0.449977,
		39.889622, 32.911182, 27.205896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683910, 32.605450, 27.083626>,  <40.001194, 32.296093, 26.890913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683910, 32.605450, 27.083626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462700, 32.838799, 27.321564>,  <40.329975, 32.978809, 27.464327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462700, 32.838799, 27.321564>,  <40.683910, 32.605450, 27.083626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462700, 32.838799, 27.321564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614678, -0.196288, 0.763965,
		0.562438, 0.788128, -0.250035,
		-0.553023, 0.583374, 0.594845,
		40.296791, 33.013809, 27.500017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110706, 33.071461, 27.453331>,  <40.683910, 32.605450, 27.083626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110706, 33.071461, 27.453331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784214, 33.083221, 27.684124>,  <40.588318, 33.090279, 27.822599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784214, 33.083221, 27.684124>,  <41.110706, 33.071461, 27.453331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784214, 33.083221, 27.684124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548835, -0.272439, 0.790289,
		0.180427, 0.961724, 0.206237,
		-0.816227, 0.029399, 0.576983,
		40.539345, 33.092041, 27.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267330, 33.332092, 28.087950>,  <41.110706, 33.071461, 27.453331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267330, 33.332092, 28.087950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922188, 33.159958, 28.194000>,  <40.715103, 33.056679, 28.257631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922188, 33.159958, 28.194000>,  <41.267330, 33.332092, 28.087950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922188, 33.159958, 28.194000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394746, -0.246118, 0.885213,
		-0.315686, 0.868468, 0.382237,
		-0.862854, -0.430336, 0.265128,
		40.663330, 33.030857, 28.273539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300220, 33.456409, 28.795183>,  <41.267330, 33.332092, 28.087950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300220, 33.456409, 28.795183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026829, 33.169472, 28.741119>,  <40.862793, 32.997307, 28.708681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026829, 33.169472, 28.741119>,  <41.300220, 33.456409, 28.795183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026829, 33.169472, 28.741119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270268, -0.420678, 0.866017,
		-0.678094, 0.555376, 0.481400,
		-0.683479, -0.717348, -0.135159,
		40.821785, 32.954266, 28.700571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846970, 33.530373, 29.443146>,  <41.300220, 33.456409, 28.795183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846970, 33.530373, 29.443146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801613, 33.166759, 29.282749>,  <40.774399, 32.948589, 29.186510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801613, 33.166759, 29.282749>,  <40.846970, 33.530373, 29.443146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801613, 33.166759, 29.282749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286432, -0.416369, 0.862898,
		-0.951367, -0.017012, 0.307589,
		-0.113391, -0.909036, -0.400993,
		40.767597, 32.894047, 29.162451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509380, 33.041718, 30.007814>,  <40.846970, 33.530373, 29.443146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509380, 33.041718, 30.007814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668716, 32.803417, 29.728844>,  <40.764317, 32.660439, 29.561460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668716, 32.803417, 29.728844>,  <40.509380, 33.041718, 30.007814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668716, 32.803417, 29.728844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241251, -0.665536, 0.706300,
		-0.884943, -0.449602, -0.121384,
		0.398339, -0.595752, -0.697428,
		40.788219, 32.624691, 29.519615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324356, 32.370102, 30.215229>,  <40.509380, 33.041718, 30.007814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324356, 32.370102, 30.215229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647266, 32.322250, 29.984062>,  <40.841015, 32.293537, 29.845362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647266, 32.322250, 29.984062>,  <40.324356, 32.370102, 30.215229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647266, 32.322250, 29.984062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448984, -0.511054, 0.732965,
		-0.383033, -0.851183, -0.358850,
		0.807279, -0.119632, -0.577918,
		40.889450, 32.286362, 29.810686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445225, 31.643780, 30.132198>,  <40.324356, 32.370102, 30.215229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445225, 31.643780, 30.132198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790722, 31.838058, 30.078468>,  <40.998020, 31.954626, 30.046230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790722, 31.838058, 30.078468>,  <40.445225, 31.643780, 30.132198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790722, 31.838058, 30.078468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418318, -0.542429, 0.728547,
		0.280991, -0.685469, -0.671696,
		0.863744, 0.485698, -0.134326,
		41.049847, 31.983768, 30.038170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907715, 31.114347, 30.051680>,  <40.445225, 31.643780, 30.132198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907715, 31.114347, 30.051680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109535, 31.435078, 30.179745>,  <41.230629, 31.627516, 30.256584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109535, 31.435078, 30.179745>,  <40.907715, 31.114347, 30.051680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109535, 31.435078, 30.179745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388770, -0.542099, 0.744974,
		0.770900, -0.251407, -0.585242,
		0.504551, 0.801825, 0.320165,
		41.260899, 31.675625, 30.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468208, 30.773769, 30.199568>,  <40.907715, 31.114347, 30.051680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468208, 30.773769, 30.199568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514671, 31.127655, 30.380138>,  <41.542549, 31.339987, 30.488482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514671, 31.127655, 30.380138>,  <41.468208, 30.773769, 30.199568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514671, 31.127655, 30.380138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539547, -0.437799, 0.719181,
		0.833905, 0.160031, -0.528198,
		0.116153, 0.884716, 0.451427,
		41.549519, 31.393070, 30.515566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211777, 30.924948, 30.251785>,  <41.468208, 30.773769, 30.199568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211777, 30.924948, 30.251785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017998, 31.127319, 30.537258>,  <41.901730, 31.248743, 30.708542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017998, 31.127319, 30.537258>,  <42.211777, 30.924948, 30.251785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017998, 31.127319, 30.537258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428618, -0.573911, 0.697792,
		0.762623, 0.643943, 0.061181,
		-0.484450, 0.505929, 0.713683,
		41.872662, 31.279099, 30.751364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721542, 31.174385, 30.817633>,  <42.211777, 30.924948, 30.251785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721542, 31.174385, 30.817633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351170, 31.145798, 30.965977>,  <42.128944, 31.128645, 31.054983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351170, 31.145798, 30.965977>,  <42.721542, 31.174385, 30.817633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351170, 31.145798, 30.965977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358319, -0.476603, 0.802781,
		0.119378, 0.876208, 0.466913,
		-0.925935, -0.071470, 0.370858,
		42.073387, 31.124357, 31.077234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849762, 31.243174, 31.509811>,  <42.721542, 31.174385, 30.817633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849762, 31.243174, 31.509811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 31.076195, 31.493633>,  <42.268768, 30.976007, 31.483927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486641, 31.076195, 31.493633>,  <42.849762, 31.243174, 31.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486641, 31.076195, 31.493633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276501, -0.668207, 0.690686,
		-0.315349, 0.615822, 0.722023,
		-0.907801, -0.417447, -0.040443,
		42.214302, 30.950960, 31.481501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759796, 31.164902, 32.104816>,  <42.849762, 31.243174, 31.509811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759796, 31.164902, 32.104816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526516, 30.922668, 31.888245>,  <42.386547, 30.777328, 31.758301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526516, 30.922668, 31.888245>,  <42.759796, 31.164902, 32.104816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526516, 30.922668, 31.888245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293386, -0.778550, 0.554783,
		-0.757499, 0.164700, 0.631720,
		-0.583198, -0.605585, -0.541430,
		42.351555, 30.740993, 31.725815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266430, 30.684813, 32.570381>,  <42.759796, 31.164902, 32.104816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266430, 30.684813, 32.570381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374783, 30.509911, 32.227352>,  <42.439793, 30.404970, 32.021534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374783, 30.509911, 32.227352>,  <42.266430, 30.684813, 32.570381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374783, 30.509911, 32.227352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111900, -0.870537, 0.479211,
		-0.956087, -0.225771, -0.186882,
		0.270879, -0.437256, -0.857573,
		42.456047, 30.378735, 31.970079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101639, 29.963703, 32.467579>,  <42.266430, 30.684813, 32.570381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101639, 29.963703, 32.467579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480061, 30.032127, 32.357510>,  <42.707115, 30.073181, 32.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480061, 30.032127, 32.357510>,  <42.101639, 29.963703, 32.467579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480061, 30.032127, 32.357510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283853, -0.847080, 0.449315,
		-0.156235, -0.503185, -0.849938,
		0.946054, 0.171059, -0.275174,
		42.763878, 30.083445, 32.274956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310196, 29.485788, 31.990923>,  <42.101639, 29.963703, 32.467579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310196, 29.485788, 31.990923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597122, 29.625076, 32.232319>,  <42.769279, 29.708649, 32.377155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597122, 29.625076, 32.232319>,  <42.310196, 29.485788, 31.990923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597122, 29.625076, 32.232319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233012, -0.936173, 0.263223,
		0.656629, -0.048194, -0.752672,
		0.717317, 0.348221, 0.603489,
		42.812317, 29.729542, 32.413364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796974, 29.425983, 31.388899>,  <42.310196, 29.485788, 31.990923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796974, 29.425983, 31.388899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915112, 29.078049, 31.230831>,  <41.985992, 28.869287, 31.135990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915112, 29.078049, 31.230831>,  <41.796974, 29.425983, 31.388899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915112, 29.078049, 31.230831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518066, 0.201719, -0.831214,
		0.802732, 0.450219, -0.391055,
		0.295345, -0.869835, -0.395170,
		42.003716, 28.817099, 31.112280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919315, 29.591452, 30.715937>,  <41.796974, 29.425983, 31.388899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919315, 29.591452, 30.715937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834354, 29.200981, 30.733665>,  <41.783379, 28.966698, 30.744303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834354, 29.200981, 30.733665>,  <41.919315, 29.591452, 30.715937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834354, 29.200981, 30.733665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629260, 0.101933, -0.770482,
		0.747609, -0.191540, -0.635920,
		-0.212399, -0.976178, 0.044323,
		41.770634, 28.908129, 30.746962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153149, 29.170870, 30.081614>,  <41.919315, 29.591452, 30.715937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153149, 29.170870, 30.081614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823765, 29.035183, 30.263538>,  <41.626137, 28.953772, 30.372692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823765, 29.035183, 30.263538>,  <42.153149, 29.170870, 30.081614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823765, 29.035183, 30.263538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552400, 0.296341, -0.779125,
		0.129509, -0.892814, -0.431405,
		-0.823457, -0.339212, 0.454812,
		41.576729, 28.933418, 30.399981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804539, 28.591074, 29.588205>,  <42.153149, 29.170870, 30.081614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804539, 28.591074, 29.588205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583305, 28.824169, 29.826370>,  <41.450565, 28.964027, 29.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583305, 28.824169, 29.826370>,  <41.804539, 28.591074, 29.588205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583305, 28.824169, 29.826370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517373, 0.319928, -0.793707,
		-0.653014, -0.747035, 0.124547,
		-0.553080, 0.582739, 0.595413,
		41.417381, 28.998991, 30.004993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227665, 28.528706, 29.270878>,  <41.804539, 28.591074, 29.588205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227665, 28.528706, 29.270878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217766, 28.848389, 29.511097>,  <41.211826, 29.040199, 29.655228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217766, 28.848389, 29.511097>,  <41.227665, 28.528706, 29.270878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217766, 28.848389, 29.511097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621283, 0.458337, -0.635558,
		-0.783195, -0.388837, 0.485192,
		-0.024747, 0.799208, 0.600546,
		41.210342, 29.088150, 29.691261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523315, 28.648016, 29.554119>,  <41.227665, 28.528706, 29.270878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523315, 28.648016, 29.554119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738472, 28.982418, 29.510723>,  <40.867565, 29.183060, 29.484686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738472, 28.982418, 29.510723>,  <40.523315, 28.648016, 29.554119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738472, 28.982418, 29.510723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698442, 0.369869, -0.612679,
		-0.472077, 0.405326, 0.782850,
		0.537887, 0.836007, -0.108490,
		40.899837, 29.233221, 29.478176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115051, 29.321697, 29.699438>,  <40.523315, 28.648016, 29.554119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115051, 29.321697, 29.699438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410275, 29.370831, 29.434055>,  <40.587410, 29.400311, 29.274826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410275, 29.370831, 29.434055>,  <40.115051, 29.321697, 29.699438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410275, 29.370831, 29.434055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646538, 0.410021, -0.643328,
		0.193012, 0.903767, 0.382036,
		0.738062, 0.122831, -0.663459,
		40.631695, 29.407681, 29.235018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093243, 30.084818, 29.488047>,  <40.115051, 29.321697, 29.699438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093243, 30.084818, 29.488047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288498, 29.887291, 29.200195>,  <40.405651, 29.768774, 29.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288498, 29.887291, 29.200195>,  <40.093243, 30.084818, 29.488047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288498, 29.887291, 29.200195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546578, 0.469855, -0.693173,
		0.680424, 0.731696, -0.040558,
		0.488136, -0.493819, -0.719629,
		40.434940, 29.739145, 28.984306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146091, 30.551865, 28.930990>,  <40.093243, 30.084818, 29.488047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146091, 30.551865, 28.930990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246113, 30.209660, 28.749630>,  <40.306126, 30.004337, 28.640814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246113, 30.209660, 28.749630>,  <40.146091, 30.551865, 28.930990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246113, 30.209660, 28.749630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469374, 0.302468, -0.829579,
		0.846855, 0.420251, -0.325923,
		0.250050, -0.855512, -0.453402,
		40.321129, 29.953007, 28.613609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455364, 30.723778, 28.248377>,  <40.146091, 30.551865, 28.930990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455364, 30.723778, 28.248377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306980, 30.352345, 28.252823>,  <40.217949, 30.129484, 28.255489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306980, 30.352345, 28.252823>,  <40.455364, 30.723778, 28.248377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306980, 30.352345, 28.252823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532139, 0.202745, -0.822024,
		0.761064, -0.310850, -0.569345,
		-0.370957, -0.928583, 0.011113,
		40.195694, 30.073769, 28.256157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601871, 30.458988, 27.461239>,  <40.455364, 30.723778, 28.248377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601871, 30.458988, 27.461239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315628, 30.232998, 27.625534>,  <40.143883, 30.097403, 27.724112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315628, 30.232998, 27.625534>,  <40.601871, 30.458988, 27.461239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315628, 30.232998, 27.625534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537163, 0.069242, -0.840631,
		0.446497, -0.822196, -0.353035,
		-0.715608, -0.564977, 0.410737,
		40.100945, 30.063505, 27.748755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350979, 30.142128, 26.907919>,  <40.601871, 30.458988, 27.461239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350979, 30.142128, 26.907919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066105, 30.076466, 27.180931>,  <39.895180, 30.037067, 27.344738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066105, 30.076466, 27.180931>,  <40.350979, 30.142128, 26.907919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066105, 30.076466, 27.180931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701975, 0.173537, -0.690736,
		-0.005055, -0.971050, -0.238825,
		-0.712184, -0.164157, 0.682529,
		39.852451, 30.027218, 27.385691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866249, 29.751059, 26.586714>,  <40.350979, 30.142128, 26.907919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866249, 29.751059, 26.586714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672901, 29.936497, 26.883747>,  <39.556892, 30.047760, 27.061968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672901, 29.936497, 26.883747>,  <39.866249, 29.751059, 26.586714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672901, 29.936497, 26.883747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739139, 0.238391, -0.629955,
		-0.469069, -0.853375, 0.227430,
		-0.483371, 0.463595, 0.742585,
		39.527889, 30.075575, 27.106524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179409, 29.380793, 26.592052>,  <39.866249, 29.751059, 26.586714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179409, 29.380793, 26.592052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157745, 29.744411, 26.757317>,  <39.144745, 29.962582, 26.856476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157745, 29.744411, 26.757317>,  <39.179409, 29.380793, 26.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157745, 29.744411, 26.757317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649180, 0.282332, -0.706296,
		-0.758704, -0.306472, 0.574842,
		-0.054164, 0.909046, 0.413162,
		39.141495, 30.017124, 26.881266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456165, 29.688450, 26.468658>,  <39.179409, 29.380793, 26.592052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456165, 29.688450, 26.468658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605762, 30.030998, 26.611073>,  <38.695518, 30.236526, 26.696522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605762, 30.030998, 26.611073>,  <38.456165, 29.688450, 26.468658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605762, 30.030998, 26.611073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644987, 0.516018, -0.563664,
		-0.666426, -0.018834, 0.745333,
		0.373989, 0.856371, 0.356036,
		38.717960, 30.287909, 26.717884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927395, 30.141712, 26.894159>,  <38.456165, 29.688450, 26.468658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927395, 30.141712, 26.894159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222183, 30.364994, 26.741692>,  <38.399055, 30.498962, 26.650211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222183, 30.364994, 26.741692>,  <37.927395, 30.141712, 26.894159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222183, 30.364994, 26.741692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674316, 0.568221, -0.471616,
		-0.046669, 0.604594, 0.795165,
		0.736967, 0.558202, -0.381170,
		38.443272, 30.532455, 26.627340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675671, 30.840832, 26.837288>,  <37.927395, 30.141712, 26.894159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675671, 30.840832, 26.837288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983227, 30.850372, 26.581715>,  <38.167763, 30.856096, 26.428371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983227, 30.850372, 26.581715>,  <37.675671, 30.840832, 26.837288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983227, 30.850372, 26.581715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394423, 0.804198, -0.444629,
		0.503222, 0.593882, 0.627751,
		0.768894, 0.023852, -0.638931,
		38.213894, 30.857529, 26.390036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585732, 31.532883, 26.635635>,  <37.675671, 30.840832, 26.837288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585732, 31.532883, 26.635635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833385, 31.358421, 26.374424>,  <37.981976, 31.253744, 26.217697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833385, 31.358421, 26.374424>,  <37.585732, 31.532883, 26.635635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833385, 31.358421, 26.374424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334358, 0.606023, -0.721762,
		0.710550, 0.665210, 0.229376,
		0.619131, -0.436155, -0.653028,
		38.019123, 31.227575, 26.178516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955639, 32.080662, 26.425270>,  <37.585732, 31.532883, 26.635635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955639, 32.080662, 26.425270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962883, 31.780128, 26.161400>,  <37.967228, 31.599810, 26.003077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962883, 31.780128, 26.161400>,  <37.955639, 32.080662, 26.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962883, 31.780128, 26.161400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236645, 0.637818, -0.732931,
		0.971427, 0.169383, -0.166247,
		0.018110, -0.751331, -0.659677,
		37.968315, 31.554729, 25.963497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361740, 32.325962, 25.830711>,  <37.955639, 32.080662, 26.425270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361740, 32.325962, 25.830711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135998, 32.020252, 25.705883>,  <38.000553, 31.836826, 25.630985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135998, 32.020252, 25.705883>,  <38.361740, 32.325962, 25.830711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135998, 32.020252, 25.705883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337468, 0.558582, -0.757695,
		0.753403, -0.322296, -0.573157,
		-0.564357, -0.764272, -0.312073,
		37.966690, 31.790970, 25.612261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559292, 32.113277, 25.088388>,  <38.361740, 32.325962, 25.830711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559292, 32.113277, 25.088388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174828, 32.019138, 25.146057>,  <37.944149, 31.962656, 25.180658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174828, 32.019138, 25.146057>,  <38.559292, 32.113277, 25.088388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174828, 32.019138, 25.146057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259601, 0.593548, -0.761779,
		0.093707, -0.769619, -0.631590,
		-0.961159, -0.235346, 0.144174,
		37.886478, 31.948534, 25.189310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351974, 32.119976, 24.463928>,  <38.559292, 32.113277, 25.088388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351974, 32.119976, 24.463928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023014, 32.139702, 24.690636>,  <37.825638, 32.151535, 24.826660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023014, 32.139702, 24.690636>,  <38.351974, 32.119976, 24.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023014, 32.139702, 24.690636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421283, 0.616737, -0.664949,
		-0.382337, -0.785624, -0.486430,
		-0.822398, 0.049310, 0.566771,
		37.776295, 32.154495, 24.860666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815254, 32.182495, 23.987101>,  <38.351974, 32.119976, 24.463928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815254, 32.182495, 23.987101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625031, 32.296505, 24.319992>,  <37.510895, 32.364910, 24.519728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625031, 32.296505, 24.319992>,  <37.815254, 32.182495, 23.987101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625031, 32.296505, 24.319992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678507, 0.483280, -0.553234,
		-0.559885, -0.827768, -0.036437,
		-0.475559, 0.285025, 0.832228,
		37.482365, 32.382011, 24.569660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076344, 32.243423, 23.827103>,  <37.815254, 32.182495, 23.987101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076344, 32.243423, 23.827103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108486, 32.467136, 24.157131>,  <37.127773, 32.601364, 24.355148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108486, 32.467136, 24.157131>,  <37.076344, 32.243423, 23.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108486, 32.467136, 24.157131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463447, 0.753799, -0.465836,
		-0.882473, -0.344942, 0.319775,
		0.080360, 0.559287, 0.825070,
		37.132595, 32.634922, 24.404652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441032, 32.606106, 23.966015>,  <37.076344, 32.243423, 23.827103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441032, 32.606106, 23.966015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728409, 32.819248, 24.144855>,  <36.900837, 32.947136, 24.252161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728409, 32.819248, 24.144855>,  <36.441032, 32.606106, 23.966015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728409, 32.819248, 24.144855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354572, 0.833541, -0.423660,
		-0.598429, 0.145845, 0.787789,
		0.718443, 0.532858, 0.447102,
		36.943943, 32.979107, 24.278986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077034, 33.123013, 24.160021>,  <36.441032, 32.606106, 23.966015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077034, 33.123013, 24.160021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448132, 33.269073, 24.190887>,  <36.670792, 33.356709, 24.209408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448132, 33.269073, 24.190887>,  <36.077034, 33.123013, 24.160021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448132, 33.269073, 24.190887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320512, 0.885452, -0.336522,
		-0.191210, 0.287473, 0.938508,
		0.927745, 0.365149, 0.077169,
		36.726456, 33.378620, 24.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056770, 33.760365, 24.524757>,  <36.077034, 33.123013, 24.160021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056770, 33.760365, 24.524757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383530, 33.735996, 24.295334>,  <36.579586, 33.721375, 24.157681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383530, 33.735996, 24.295334>,  <36.056770, 33.760365, 24.524757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383530, 33.735996, 24.295334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, 0.847674, -0.461844,
		0.514325, 0.527008, 0.676559,
		0.816897, -0.060920, -0.573557,
		36.628597, 33.717720, 24.123266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081135, 34.323456, 25.045315>,  <36.056770, 33.760365, 24.524757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081135, 34.323456, 25.045315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890339, 34.545483, 24.772732>,  <35.775864, 34.678699, 24.609182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890339, 34.545483, 24.772732>,  <36.081135, 34.323456, 25.045315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890339, 34.545483, 24.772732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534847, -0.798569, -0.276090,
		-0.697439, 0.232784, 0.677783,
		-0.476988, 0.555066, -0.681457,
		35.747242, 34.712002, 24.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317650, 34.296822, 25.111422>,  <36.081135, 34.323456, 25.045315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317650, 34.296822, 25.111422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381771, 34.385448, 24.726669>,  <35.420242, 34.438625, 24.495817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381771, 34.385448, 24.726669>,  <35.317650, 34.296822, 25.111422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381771, 34.385448, 24.726669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669577, -0.691582, -0.270890,
		-0.725238, 0.687477, 0.037491,
		0.160302, 0.221563, -0.961880,
		35.429863, 34.451916, 24.438105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725101, 34.537689, 24.686396>,  <35.317650, 34.296822, 25.111422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725101, 34.537689, 24.686396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988144, 34.319473, 24.478573>,  <35.145969, 34.188545, 24.353878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988144, 34.319473, 24.478573>,  <34.725101, 34.537689, 24.686396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988144, 34.319473, 24.478573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700514, -0.696544, -0.155264,
		-0.277193, 0.466060, -0.840209,
		0.657605, -0.545540, -0.519559,
		35.185425, 34.155811, 24.322704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399815, 34.195107, 24.111116>,  <34.725101, 34.537689, 24.686396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399815, 34.195107, 24.111116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731617, 33.972775, 24.132965>,  <34.930698, 33.839375, 24.146074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731617, 33.972775, 24.132965>,  <34.399815, 34.195107, 24.111116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731617, 33.972775, 24.132965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521933, -0.806278, -0.278391,
		0.198776, 0.202419, -0.958914,
		0.829502, -0.555826, 0.054620,
		34.980469, 33.806026, 24.149351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438118, 33.805862, 23.428671>,  <34.399815, 34.195107, 24.111116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438118, 33.805862, 23.428671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630783, 33.653538, 23.744389>,  <34.746380, 33.562145, 23.933819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630783, 33.653538, 23.744389>,  <34.438118, 33.805862, 23.428671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630783, 33.653538, 23.744389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390540, -0.899549, -0.195678,
		0.784526, -0.214001, -0.581999,
		0.481661, -0.380809, 0.789296,
		34.775280, 33.539295, 23.981176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764019, 33.162621, 23.337425>,  <34.438118, 33.805862, 23.428671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764019, 33.162621, 23.337425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701485, 33.152283, 23.732372>,  <34.663963, 33.146080, 23.969339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701485, 33.152283, 23.732372>,  <34.764019, 33.162621, 23.337425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701485, 33.152283, 23.732372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523123, -0.845768, -0.104967,
		0.837795, -0.532924, 0.118705,
		-0.156336, -0.025843, 0.987366,
		34.654583, 33.144531, 24.028582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913971, 32.467098, 23.588358>,  <34.764019, 33.162621, 23.337425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913971, 32.467098, 23.588358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693970, 32.639526, 23.874481>,  <34.561970, 32.742985, 24.046156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693970, 32.639526, 23.874481>,  <34.913971, 32.467098, 23.588358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693970, 32.639526, 23.874481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471524, -0.867207, 0.160056,
		0.689317, -0.249254, 0.680232,
		-0.550007, 0.431075, 0.715309,
		34.528969, 32.768848, 24.089073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949703, 31.993462, 24.184029>,  <34.913971, 32.467098, 23.588358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949703, 31.993462, 24.184029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624680, 32.222858, 24.225700>,  <34.429665, 32.360497, 24.250704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624680, 32.222858, 24.225700>,  <34.949703, 31.993462, 24.184029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624680, 32.222858, 24.225700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520426, -0.794305, 0.313425,
		0.262499, 0.200458, 0.943881,
		-0.812558, 0.573494, 0.104181,
		34.380913, 32.394905, 24.256954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672550, 31.492373, 24.653961>,  <34.949703, 31.993462, 24.184029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672550, 31.492373, 24.653961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402760, 31.770023, 24.553345>,  <34.240887, 31.936613, 24.492975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402760, 31.770023, 24.553345>,  <34.672550, 31.492373, 24.653961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402760, 31.770023, 24.553345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735368, -0.661930, 0.145197,
		-0.065718, 0.282908, 0.956893,
		-0.674474, 0.694126, -0.251542,
		34.200417, 31.978262, 24.477882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216663, 31.575188, 25.240633>,  <34.672550, 31.492373, 24.653961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216663, 31.575188, 25.240633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023312, 31.680889, 24.906803>,  <33.907299, 31.744310, 24.706505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023312, 31.680889, 24.906803>,  <34.216663, 31.575188, 25.240633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023312, 31.680889, 24.906803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691866, -0.699418, 0.179268,
		-0.536344, 0.664068, 0.520913,
		-0.483381, 0.264253, -0.834574,
		33.878296, 31.760164, 24.656431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522030, 31.655617, 25.488840>,  <34.216663, 31.575188, 25.240633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522030, 31.655617, 25.488840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511189, 31.611137, 25.091469>,  <33.504684, 31.584450, 24.853046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511189, 31.611137, 25.091469>,  <33.522030, 31.655617, 25.488840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511189, 31.611137, 25.091469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702247, -0.705144, 0.098086,
		-0.711417, 0.700291, -0.058977,
		-0.027101, -0.111197, -0.993429,
		33.503059, 31.577778, 24.793440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808498, 31.678101, 25.402359>,  <33.522030, 31.655617, 25.488840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808498, 31.678101, 25.402359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990719, 31.511990, 25.087395>,  <33.100052, 31.412323, 24.898417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990719, 31.511990, 25.087395>,  <32.808498, 31.678101, 25.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990719, 31.511990, 25.087395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572426, -0.814060, 0.098156,
		-0.681762, 0.406019, -0.608564,
		0.455554, -0.415277, -0.787411,
		33.127384, 31.387407, 24.851171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272934, 31.420298, 24.991243>,  <32.808498, 31.678101, 25.402359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272934, 31.420298, 24.991243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605843, 31.212234, 24.914551>,  <32.805588, 31.087397, 24.868534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605843, 31.212234, 24.914551>,  <32.272934, 31.420298, 24.991243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605843, 31.212234, 24.914551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488060, -0.851527, 0.191571,
		-0.262913, -0.065862, -0.962569,
		0.832271, -0.520158, -0.191733,
		32.855522, 31.056187, 24.857031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015850, 30.872223, 24.508255>,  <32.272934, 31.420298, 24.991243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015850, 30.872223, 24.508255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358967, 30.758209, 24.679348>,  <32.564835, 30.689802, 24.782003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358967, 30.758209, 24.679348>,  <32.015850, 30.872223, 24.508255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358967, 30.758209, 24.679348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420490, -0.867727, 0.265024,
		0.295616, -0.407192, -0.864179,
		0.857787, -0.285033, 0.427734,
		32.616302, 30.672699, 24.807669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014412, 30.158152, 24.379770>,  <32.015850, 30.872223, 24.508255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014412, 30.158152, 24.379770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315701, 30.164860, 24.642792>,  <32.496475, 30.168884, 24.800604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315701, 30.164860, 24.642792>,  <32.014412, 30.158152, 24.379770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315701, 30.164860, 24.642792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381802, -0.802882, 0.457830,
		0.535615, -0.595902, -0.598345,
		0.753222, 0.016771, 0.657552,
		32.541668, 30.169891, 24.840057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225594, 29.523251, 24.347904>,  <32.014412, 30.158152, 24.379770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225594, 29.523251, 24.347904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379303, 29.666840, 24.688133>,  <32.471527, 29.752993, 24.892271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379303, 29.666840, 24.688133>,  <32.225594, 29.523251, 24.347904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379303, 29.666840, 24.688133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291262, -0.827122, 0.480661,
		0.876071, -0.432445, -0.213287,
		0.384274, 0.358971, 0.850572,
		32.494587, 29.774530, 24.943304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418316, 28.961809, 24.678299>,  <32.225594, 29.523251, 24.347904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418316, 28.961809, 24.678299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472179, 29.210140, 24.987217>,  <32.504498, 29.359138, 25.172567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472179, 29.210140, 24.987217>,  <32.418316, 28.961809, 24.678299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472179, 29.210140, 24.987217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252479, -0.732171, 0.632598,
		0.958186, -0.280176, 0.058150,
		0.134663, 0.620828, 0.772294,
		32.512577, 29.396389, 25.218904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805004, 28.559872, 25.152475>,  <32.418316, 28.961809, 24.678299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805004, 28.559872, 25.152475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611969, 28.844017, 25.357410>,  <32.496147, 29.014503, 25.480371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611969, 28.844017, 25.357410>,  <32.805004, 28.559872, 25.152475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611969, 28.844017, 25.357410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123943, -0.634466, 0.762949,
		0.867031, 0.304693, 0.394232,
		-0.482592, 0.710363, 0.512337,
		32.467190, 29.057125, 25.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171013, 28.686581, 25.768026>,  <32.805004, 28.559872, 25.152475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171013, 28.686581, 25.768026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793373, 28.799522, 25.836086>,  <32.566788, 28.867287, 25.876923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793373, 28.799522, 25.836086>,  <33.171013, 28.686581, 25.768026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793373, 28.799522, 25.836086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017685, -0.558777, 0.829129,
		0.329183, 0.779772, 0.532535,
		-0.944100, 0.282353, 0.170150,
		32.510143, 28.884228, 25.887131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083881, 28.807333, 26.478226>,  <33.171013, 28.686581, 25.768026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083881, 28.807333, 26.478226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702755, 28.806328, 26.356815>,  <32.474079, 28.805725, 26.283970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702755, 28.806328, 26.356815>,  <33.083881, 28.807333, 26.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702755, 28.806328, 26.356815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266834, -0.469717, 0.841526,
		-0.144684, 0.882814, 0.446885,
		-0.952820, -0.002511, -0.303525,
		32.416908, 28.805574, 26.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739681, 29.179070, 26.966753>,  <33.083881, 28.807333, 26.478226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739681, 29.179070, 26.966753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478035, 28.935764, 26.786911>,  <32.321045, 28.789782, 26.679005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478035, 28.935764, 26.786911>,  <32.739681, 29.179070, 26.966753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478035, 28.935764, 26.786911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135642, -0.490444, 0.860852,
		-0.744130, 0.624085, 0.238303,
		-0.654119, -0.608262, -0.449607,
		32.281799, 28.753286, 26.652029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335438, 28.983248, 27.456593>,  <32.739681, 29.179070, 26.966753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335438, 28.983248, 27.456593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257511, 28.700504, 27.184593>,  <32.210754, 28.530859, 27.021395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257511, 28.700504, 27.184593>,  <32.335438, 28.983248, 27.456593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257511, 28.700504, 27.184593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159638, -0.661185, 0.733041,
		-0.967760, 0.251365, 0.015971,
		-0.194821, -0.706859, -0.679996,
		32.199066, 28.488447, 26.980595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643751, 28.800789, 27.459070>,  <32.335438, 28.983248, 27.456593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643751, 28.800789, 27.459070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808992, 28.467377, 27.312332>,  <31.908136, 28.267330, 27.224289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808992, 28.467377, 27.312332>,  <31.643751, 28.800789, 27.459070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808992, 28.467377, 27.312332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385661, -0.525041, 0.758682,
		-0.824992, -0.171935, -0.538355,
		0.413102, -0.833529, -0.366846,
		31.932922, 28.217318, 27.202278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234058, 28.157982, 27.780069>,  <31.643751, 28.800789, 27.459070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234058, 28.157982, 27.780069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567244, 27.997086, 27.628082>,  <31.767155, 27.900547, 27.536890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567244, 27.997086, 27.628082>,  <31.234058, 28.157982, 27.780069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567244, 27.997086, 27.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126805, -0.807185, 0.576517,
		-0.538602, -0.432036, -0.723362,
		0.832963, -0.402240, -0.379968,
		31.817133, 27.876413, 27.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073839, 27.444902, 27.755095>,  <31.234058, 28.157982, 27.780069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073839, 27.444902, 27.755095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471832, 27.459103, 27.717682>,  <31.710629, 27.467623, 27.695234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471832, 27.459103, 27.717682>,  <31.073839, 27.444902, 27.755095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471832, 27.459103, 27.717682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079693, -0.846445, 0.526479,
		-0.060480, -0.531291, -0.845028,
		0.994983, 0.035501, -0.093533,
		31.770327, 27.469753, 27.689623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243526, 26.753365, 27.586126>,  <31.073839, 27.444902, 27.755095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243526, 26.753365, 27.586126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565630, 26.930843, 27.743450>,  <31.758892, 27.037331, 27.837845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565630, 26.930843, 27.743450>,  <31.243526, 26.753365, 27.586126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565630, 26.930843, 27.743450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195621, -0.825007, 0.530185,
		0.559726, -0.349995, -0.751139,
		0.805257, 0.443697, 0.393311,
		31.807207, 27.063953, 27.861443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651585, 26.256618, 27.695709>,  <31.243526, 26.753365, 27.586126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651585, 26.256618, 27.695709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825533, 26.521404, 27.939903>,  <31.929903, 26.680275, 28.086420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825533, 26.521404, 27.939903>,  <31.651585, 26.256618, 27.695709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825533, 26.521404, 27.939903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121473, -0.714873, 0.688622,
		0.892261, -0.225305, -0.391289,
		0.434872, 0.661962, 0.610485,
		31.955996, 26.719994, 28.123049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280258, 26.002096, 27.880907>,  <31.651585, 26.256618, 27.695709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280258, 26.002096, 27.880907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204350, 26.268684, 28.169296>,  <32.158802, 26.428637, 28.342331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204350, 26.268684, 28.169296>,  <32.280258, 26.002096, 27.880907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204350, 26.268684, 28.169296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210365, -0.689665, 0.692899,
		0.959027, 0.283162, -0.009322,
		-0.189774, 0.666469, 0.720975,
		32.147419, 26.468626, 28.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900261, 26.014540, 28.354849>,  <32.280258, 26.002096, 27.880907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900261, 26.014540, 28.354849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603321, 26.172623, 28.571266>,  <32.425156, 26.267471, 28.701117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603321, 26.172623, 28.571266>,  <32.900261, 26.014540, 28.354849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603321, 26.172623, 28.571266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296027, -0.530957, 0.794011,
		0.601068, 0.749598, 0.277165,
		-0.742352, 0.395206, 0.541042,
		32.380615, 26.291185, 28.733580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246662, 26.067993, 29.074135>,  <32.900261, 26.014540, 28.354849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246662, 26.067993, 29.074135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868050, 26.153408, 29.170864>,  <32.640881, 26.204657, 29.228901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868050, 26.153408, 29.170864>,  <33.246662, 26.067993, 29.074135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868050, 26.153408, 29.170864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102928, -0.510522, 0.853682,
		0.305749, 0.832928, 0.461247,
		-0.946532, 0.213537, 0.241823,
		32.584091, 26.217468, 29.243412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262268, 26.230000, 29.802776>,  <33.246662, 26.067993, 29.074135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262268, 26.230000, 29.802776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883213, 26.147984, 29.704838>,  <32.655781, 26.098774, 29.646074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883213, 26.147984, 29.704838>,  <33.262268, 26.230000, 29.802776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883213, 26.147984, 29.704838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138443, -0.427144, 0.893522,
		-0.287794, 0.880628, 0.376389,
		-0.947633, -0.205042, -0.244847,
		32.598923, 26.086472, 29.631384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773342, 26.325829, 30.465136>,  <33.262268, 26.230000, 29.802776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773342, 26.325829, 30.465136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574299, 26.062965, 30.238674>,  <32.454872, 25.905249, 30.102797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574299, 26.062965, 30.238674>,  <32.773342, 26.325829, 30.465136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574299, 26.062965, 30.238674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300065, -0.481987, 0.823195,
		-0.813847, 0.579512, 0.042651,
		-0.497608, -0.657156, -0.566155,
		32.425014, 25.865818, 30.068827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058243, 26.232336, 30.803225>,  <32.773342, 26.325829, 30.465136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058243, 26.232336, 30.803225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102322, 25.923641, 30.552696>,  <32.128769, 25.738424, 30.402380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102322, 25.923641, 30.552696>,  <32.058243, 26.232336, 30.803225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102322, 25.923641, 30.552696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323207, -0.623733, 0.711684,
		-0.939890, 0.124003, -0.318167,
		0.110200, -0.771738, -0.626320,
		32.135380, 25.692120, 30.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427925, 25.865402, 30.878759>,  <32.058243, 26.232336, 30.803225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427925, 25.865402, 30.878759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703533, 25.615582, 30.731689>,  <31.868898, 25.465689, 30.643448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703533, 25.615582, 30.731689>,  <31.427925, 25.865402, 30.878759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703533, 25.615582, 30.731689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210863, -0.658126, 0.722777,
		-0.693391, -0.420478, -0.585156,
		0.689019, -0.624555, -0.367675,
		31.910240, 25.428215, 30.621387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271837, 25.254181, 31.123901>,  <31.427925, 25.865402, 30.878759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271837, 25.254181, 31.123901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656313, 25.146572, 31.099422>,  <31.886997, 25.082006, 31.084736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656313, 25.146572, 31.099422>,  <31.271837, 25.254181, 31.123901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656313, 25.146572, 31.099422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149008, -0.692872, 0.705496,
		-0.232196, -0.668995, -0.706067,
		0.961187, -0.269023, -0.061197,
		31.944670, 25.065865, 31.081064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218983, 24.538116, 31.070175>,  <31.271837, 25.254181, 31.123901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218983, 24.538116, 31.070175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566959, 24.648785, 31.233471>,  <31.775745, 24.715185, 31.331448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566959, 24.648785, 31.233471>,  <31.218983, 24.538116, 31.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566959, 24.648785, 31.233471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136838, -0.659875, 0.738810,
		0.473793, -0.698583, -0.536193,
		0.869940, 0.276671, 0.408237,
		31.827942, 24.731787, 31.355942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427137, 23.912003, 31.378019>,  <31.218983, 24.538116, 31.070175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427137, 23.912003, 31.378019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669991, 24.164677, 31.570835>,  <31.815702, 24.316280, 31.686525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669991, 24.164677, 31.570835>,  <31.427137, 23.912003, 31.378019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669991, 24.164677, 31.570835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142700, -0.510102, 0.848194,
		0.781680, -0.583755, -0.219559,
		0.607135, 0.631685, 0.482039,
		31.852131, 24.354181, 31.715446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849766, 23.440559, 31.678249>,  <31.427137, 23.912003, 31.378019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849766, 23.440559, 31.678249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844320, 23.800072, 31.853523>,  <31.841053, 24.015779, 31.958687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844320, 23.800072, 31.853523>,  <31.849766, 23.440559, 31.678249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844320, 23.800072, 31.853523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185790, -0.432868, 0.882104,
		0.982495, -0.069401, 0.172878,
		-0.013614, 0.898782, 0.438185,
		31.840237, 24.069706, 31.984980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501011, 23.523746, 32.246128>,  <31.849766, 23.440559, 31.678249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501011, 23.523746, 32.246128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230957, 23.807011, 32.328789>,  <32.068924, 23.976969, 32.378384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230957, 23.807011, 32.328789>,  <32.501011, 23.523746, 32.246128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230957, 23.807011, 32.328789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043196, -0.317602, 0.947240,
		0.736429, 0.630588, 0.245014,
		-0.675135, 0.708158, 0.206652,
		32.028416, 24.019459, 32.390785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589706, 23.535002, 32.967632>,  <32.501011, 23.523746, 32.246128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589706, 23.535002, 32.967632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264866, 23.765728, 32.932346>,  <32.069962, 23.904163, 32.911175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264866, 23.765728, 32.932346>,  <32.589706, 23.535002, 32.967632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264866, 23.765728, 32.932346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324520, -0.320808, 0.889814,
		0.484959, 0.751242, 0.447715,
		-0.812096, 0.576816, -0.088215,
		32.021236, 23.938772, 32.905884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503899, 23.999496, 33.617649>,  <32.589706, 23.535002, 32.967632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503899, 23.999496, 33.617649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164421, 23.959881, 33.409836>,  <31.960735, 23.936111, 33.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164421, 23.959881, 33.409836>,  <32.503899, 23.999496, 33.617649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164421, 23.959881, 33.409836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465195, -0.327557, 0.822374,
		-0.251623, 0.939626, 0.231923,
		-0.848692, -0.099039, -0.519531,
		31.909813, 23.930170, 33.253975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019054, 24.325094, 34.059803>,  <32.503899, 23.999496, 33.617649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019054, 24.325094, 34.059803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835352, 24.075043, 33.807362>,  <31.725130, 23.925013, 33.655895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835352, 24.075043, 33.807362>,  <32.019054, 24.325094, 34.059803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835352, 24.075043, 33.807362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376344, -0.506624, 0.775691,
		-0.804641, 0.593755, -0.002593,
		-0.459257, -0.625129, -0.631107,
		31.697575, 23.887505, 33.618031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334312, 24.221844, 34.331566>,  <32.019054, 24.325094, 34.059803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334312, 24.221844, 34.331566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454313, 23.920727, 34.097198>,  <31.526314, 23.740057, 33.956577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454313, 23.920727, 34.097198>,  <31.334312, 24.221844, 34.331566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454313, 23.920727, 34.097198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327315, -0.658157, 0.678008,
		-0.896026, -0.011624, -0.443850,
		0.300004, -0.752791, -0.585921,
		31.544315, 23.694889, 33.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805557, 23.752464, 34.477341>,  <31.334312, 24.221844, 34.331566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805557, 23.752464, 34.477341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097204, 23.550568, 34.292461>,  <31.272192, 23.429430, 34.181534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097204, 23.550568, 34.292461>,  <30.805557, 23.752464, 34.477341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097204, 23.550568, 34.292461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079920, -0.733516, 0.674957,
		-0.679708, -0.455183, -0.575157,
		0.729115, -0.504740, -0.462199,
		31.315939, 23.399145, 34.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584810, 23.144495, 34.555206>,  <30.805557, 23.752464, 34.477341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584810, 23.144495, 34.555206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968307, 23.084576, 34.458565>,  <31.198406, 23.048624, 34.400581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968307, 23.084576, 34.458565>,  <30.584810, 23.144495, 34.555206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968307, 23.084576, 34.458565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027584, -0.796855, 0.603540,
		-0.282930, -0.585305, -0.759848,
		0.958744, -0.149800, -0.241599,
		31.255930, 23.039635, 34.386086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581072, 22.427069, 34.459648>,  <30.584810, 23.144495, 34.555206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581072, 22.427069, 34.459648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941534, 22.588314, 34.523426>,  <31.157810, 22.685061, 34.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941534, 22.588314, 34.523426>,  <30.581072, 22.427069, 34.459648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941534, 22.588314, 34.523426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087713, -0.529747, 0.843608,
		0.424533, -0.746236, -0.512742,
		0.901154, 0.403114, 0.159441,
		31.211880, 22.709248, 34.571259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016846, 21.766205, 34.686474>,  <30.581072, 22.427069, 34.459648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016846, 21.766205, 34.686474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232748, 22.083702, 34.798641>,  <31.362289, 22.274200, 34.865940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232748, 22.083702, 34.798641>,  <31.016846, 21.766205, 34.686474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232748, 22.083702, 34.798641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307602, -0.496037, 0.811990,
		0.783610, -0.352020, -0.511896,
		0.539756, 0.793744, 0.280418,
		31.394674, 22.321825, 34.882767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764313, 21.514742, 34.621807>,  <31.016846, 21.766205, 34.686474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764313, 21.514742, 34.621807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726402, 21.828632, 34.866829>,  <31.703657, 22.016966, 35.013844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726402, 21.828632, 34.866829>,  <31.764313, 21.514742, 34.621807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726402, 21.828632, 34.866829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285320, -0.568099, 0.771917,
		0.953735, 0.247932, -0.170056,
		-0.094774, 0.784725, 0.612556,
		31.697969, 22.064051, 35.050594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405304, 21.584837, 35.036655>,  <31.764313, 21.514742, 34.621807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405304, 21.584837, 35.036655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099636, 21.734913, 35.246521>,  <31.916235, 21.824959, 35.372440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099636, 21.734913, 35.246521>,  <32.405304, 21.584837, 35.036655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099636, 21.734913, 35.246521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160957, -0.676766, 0.718387,
		0.624609, 0.633419, 0.456776,
		-0.764171, 0.375190, 0.524667,
		31.870384, 21.847469, 35.403923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678860, 21.848803, 35.646099>,  <32.405304, 21.584837, 35.036655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678860, 21.848803, 35.646099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311119, 21.691467, 35.649811>,  <32.090477, 21.597067, 35.652039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311119, 21.691467, 35.649811>,  <32.678860, 21.848803, 35.646099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311119, 21.691467, 35.649811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275040, -0.625636, 0.730023,
		-0.281341, 0.673696, 0.683360,
		-0.919348, -0.393336, 0.009276,
		32.035316, 21.573467, 35.652596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506779, 21.657419, 36.343769>,  <32.678860, 21.848803, 35.646099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506779, 21.657419, 36.343769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222218, 21.457157, 36.146488>,  <32.051479, 21.337000, 36.028118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222218, 21.457157, 36.146488>,  <32.506779, 21.657419, 36.343769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222218, 21.457157, 36.146488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169025, -0.803073, 0.571405,
		-0.682156, 0.323135, 0.655932,
		-0.711402, -0.500656, -0.493204,
		32.008797, 21.306961, 35.998528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829212, 21.420437, 36.767010>,  <32.506779, 21.657419, 36.343769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829212, 21.420437, 36.767010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929426, 21.189228, 36.456367>,  <31.989555, 21.050503, 36.269981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929426, 21.189228, 36.456367>,  <31.829212, 21.420437, 36.767010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929426, 21.189228, 36.456367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066712, -0.789979, 0.609494,
		-0.965806, -0.204510, -0.159358,
		0.250537, -0.578022, -0.776609,
		32.004589, 21.015821, 36.223385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279970, 20.899916, 36.572510>,  <31.829212, 21.420437, 36.767010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279970, 20.899916, 36.572510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661522, 20.791225, 36.521469>,  <31.890453, 20.726011, 36.490845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661522, 20.791225, 36.521469>,  <31.279970, 20.899916, 36.572510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661522, 20.791225, 36.521469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033271, -0.518139, 0.854649,
		-0.298343, -0.810986, -0.503282,
		0.953879, -0.271723, -0.127601,
		31.947685, 20.709709, 36.483189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869509, 21.427788, 36.876499>,  <31.279970, 20.899916, 36.572510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869509, 21.427788, 36.876499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843641, 21.479095, 37.272350>,  <30.828121, 21.509880, 37.509861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843641, 21.479095, 37.272350>,  <30.869509, 21.427788, 36.876499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843641, 21.479095, 37.272350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420896, -0.895671, 0.143594,
		0.904801, 0.425817, 0.003934,
		-0.064668, 0.128268, 0.989629,
		30.824242, 21.517576, 37.569241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037374, 22.033691, 37.276608>,  <30.869509, 21.427788, 36.876499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037374, 22.033691, 37.276608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372931, 21.854740, 37.400620>,  <31.574265, 21.747370, 37.475025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372931, 21.854740, 37.400620>,  <31.037374, 22.033691, 37.276608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372931, 21.854740, 37.400620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222258, 0.801490, 0.555171,
		-0.496854, -0.396822, 0.771795,
		0.838891, -0.447377, 0.310026,
		31.624598, 21.720528, 37.493626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782694, 22.288050, 36.600433>,  <31.037374, 22.033691, 37.276608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782694, 22.288050, 36.600433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542206, 22.451580, 36.875065>,  <30.397913, 22.549698, 37.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542206, 22.451580, 36.875065>,  <30.782694, 22.288050, 36.600433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542206, 22.451580, 36.875065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701023, 0.682246, 0.207623,
		-0.383536, 0.606137, -0.696777,
		-0.601221, 0.408826, 0.686582,
		30.361839, 22.574228, 37.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631046, 22.995501, 36.354126>,  <30.782694, 22.288050, 36.600433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631046, 22.995501, 36.354126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647913, 22.947464, 36.750874>,  <30.658033, 22.918642, 36.988922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647913, 22.947464, 36.750874>,  <30.631046, 22.995501, 36.354126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647913, 22.947464, 36.750874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777786, 0.627067, 0.042857,
		-0.627114, 0.769652, 0.119849,
		0.042168, -0.120093, 0.991867,
		30.660563, 22.911436, 37.048435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368792, 23.604326, 36.857967>,  <30.631046, 22.995501, 36.354126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368792, 23.604326, 36.857967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688868, 23.402222, 36.987217>,  <30.880913, 23.280960, 37.064766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688868, 23.402222, 36.987217>,  <30.368792, 23.604326, 36.857967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688868, 23.402222, 36.987217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537708, 0.843025, -0.013377,
		-0.265643, 0.184451, 0.946262,
		0.800190, -0.505259, 0.323124,
		30.928925, 23.250645, 37.084156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510454, 23.847094, 37.535114>,  <30.368792, 23.604326, 36.857967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510454, 23.847094, 37.535114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801411, 23.731754, 37.286034>,  <30.975985, 23.662552, 37.136585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801411, 23.731754, 37.286034>,  <30.510454, 23.847094, 37.535114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801411, 23.731754, 37.286034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340597, 0.939474, -0.037171,
		0.595729, -0.185052, 0.781577,
		0.727393, -0.288347, -0.622700,
		31.019629, 23.645250, 37.099224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122820, 24.122417, 37.832020>,  <30.510454, 23.847094, 37.535114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122820, 24.122417, 37.832020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138258, 24.058495, 37.437462>,  <31.147520, 24.020142, 37.200726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138258, 24.058495, 37.437462>,  <31.122820, 24.122417, 37.832020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138258, 24.058495, 37.437462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192117, 0.969900, -0.149617,
		0.980613, -0.183729, 0.068132,
		0.038593, -0.159806, -0.986394,
		31.149836, 24.010553, 37.141544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742104, 24.336565, 37.570274>,  <31.122820, 24.122417, 37.832020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742104, 24.336565, 37.570274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462336, 24.346161, 37.284550>,  <31.294476, 24.351917, 37.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462336, 24.346161, 37.284550>,  <31.742104, 24.336565, 37.570274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462336, 24.346161, 37.284550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109549, 0.991225, -0.073978,
		0.706267, -0.129993, -0.695908,
		-0.699418, 0.023988, -0.714310,
		31.252510, 24.353357, 37.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044945, 24.730612, 37.160732>,  <31.742104, 24.336565, 37.570274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044945, 24.730612, 37.160732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667849, 24.710548, 37.028835>,  <31.441591, 24.698511, 36.949699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667849, 24.710548, 37.028835>,  <32.044945, 24.730612, 37.160732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667849, 24.710548, 37.028835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004759, 0.986504, -0.163667,
		0.333499, -0.155864, -0.929777,
		-0.942738, -0.050158, -0.329740,
		31.385027, 24.695501, 36.929913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023239, 25.170574, 36.574661>,  <32.044945, 24.730612, 37.160732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023239, 25.170574, 36.574661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 25.120850, 36.699444>,  <31.420404, 25.091015, 36.774315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646467, 25.120850, 36.699444>,  <32.023239, 25.170574, 36.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646467, 25.120850, 36.699444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136230, 0.990538, -0.016612,
		-0.306938, -0.058145, -0.949952,
		-0.941929, -0.124313, 0.311955,
		31.363888, 25.083555, 36.793030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790466, 25.695211, 36.176636>,  <32.023239, 25.170574, 36.574661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790466, 25.695211, 36.176636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510900, 25.596050, 36.444981>,  <31.343161, 25.536554, 36.605988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510900, 25.596050, 36.444981>,  <31.790466, 25.695211, 36.176636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510900, 25.596050, 36.444981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402624, 0.911632, -0.082589,
		-0.591109, -0.327829, -0.736965,
		-0.698916, -0.247901, 0.670866,
		31.301226, 25.521679, 36.646240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232059, 25.711809, 35.864616>,  <31.790466, 25.695211, 36.176636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232059, 25.711809, 35.864616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138634, 25.781502, 36.247257>,  <31.082579, 25.823317, 36.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138634, 25.781502, 36.247257>,  <31.232059, 25.711809, 35.864616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138634, 25.781502, 36.247257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334296, 0.909454, -0.247265,
		-0.913068, -0.377541, -0.154173,
		-0.233566, 0.174231, 0.956604,
		31.068563, 25.833771, 36.534237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428223, 25.946033, 35.897949>,  <31.232059, 25.711809, 35.864616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428223, 25.946033, 35.897949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653234, 26.094398, 36.193512>,  <30.788240, 26.183416, 36.370850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653234, 26.094398, 36.193512>,  <30.428223, 25.946033, 35.897949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653234, 26.094398, 36.193512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236141, 0.928572, -0.286343,
		-0.792338, -0.013412, 0.609935,
		0.562528, 0.370911, 0.738910,
		30.821993, 26.205671, 36.415184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219357, 26.591957, 35.959156>,  <30.428223, 25.946033, 35.897949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219357, 26.591957, 35.959156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566961, 26.586781, 36.157005>,  <30.775524, 26.583673, 36.275715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566961, 26.586781, 36.157005>,  <30.219357, 26.591957, 35.959156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566961, 26.586781, 36.157005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050398, 0.996774, -0.062464,
		-0.492217, 0.079210, 0.866861,
		0.869012, -0.012942, 0.494621,
		30.827665, 26.582897, 36.305393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106195, 27.036583, 36.463902>,  <30.219357, 26.591957, 35.959156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106195, 27.036583, 36.463902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502090, 26.986889, 36.435661>,  <30.739628, 26.957071, 36.418716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502090, 26.986889, 36.435661>,  <30.106195, 27.036583, 36.463902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502090, 26.986889, 36.435661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128482, 0.989946, 0.059150,
		0.062539, -0.067614, 0.995750,
		0.989738, -0.124237, -0.070597,
		30.799011, 26.949617, 36.414482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366844, 27.628195, 36.835373>,  <30.106195, 27.036583, 36.463902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366844, 27.628195, 36.835373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669308, 27.496624, 36.609089>,  <30.850786, 27.417681, 36.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669308, 27.496624, 36.609089>,  <30.366844, 27.628195, 36.835373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669308, 27.496624, 36.609089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138506, 0.925352, -0.352904,
		0.639565, 0.188496, 0.745270,
		0.756157, -0.328929, -0.565714,
		30.896154, 27.397945, 36.439373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929386, 28.133076, 36.975033>,  <30.366844, 27.628195, 36.835373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929386, 28.133076, 36.975033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977135, 27.945950, 36.624741>,  <31.005783, 27.833673, 36.414566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977135, 27.945950, 36.624741>,  <30.929386, 28.133076, 36.975033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977135, 27.945950, 36.624741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077344, 0.874974, -0.477953,
		0.989833, 0.124786, 0.068263,
		0.119370, -0.467814, -0.875729,
		31.012945, 27.805605, 36.362022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237755, 28.651260, 36.564735>,  <30.929386, 28.133076, 36.975033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237755, 28.651260, 36.564735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139557, 28.379116, 36.288521>,  <31.080637, 28.215830, 36.122791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139557, 28.379116, 36.288521>,  <31.237755, 28.651260, 36.564735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139557, 28.379116, 36.288521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113317, 0.687314, -0.717467,
		0.962752, -0.254385, -0.091636,
		-0.245496, -0.680359, -0.690539,
		31.065908, 28.175009, 36.081360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647961, 28.799635, 36.012432>,  <31.237755, 28.651260, 36.564735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647961, 28.799635, 36.012432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365496, 28.563240, 35.856445>,  <31.196016, 28.421404, 35.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365496, 28.563240, 35.856445>,  <31.647961, 28.799635, 36.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365496, 28.563240, 35.856445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174689, 0.388314, -0.904818,
		0.686164, -0.707069, -0.170973,
		-0.706160, -0.590987, -0.389964,
		31.153648, 28.385944, 35.739456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957644, 28.329222, 35.481297>,  <31.647961, 28.799635, 36.012432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957644, 28.329222, 35.481297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574343, 28.413067, 35.403515>,  <31.344362, 28.463375, 35.356846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574343, 28.413067, 35.403515>,  <31.957644, 28.329222, 35.481297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574343, 28.413067, 35.403515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257640, 0.338139, -0.905143,
		-0.123980, -0.917455, -0.378028,
		-0.958254, 0.209615, -0.194451,
		31.286867, 28.475952, 35.345181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816313, 28.059820, 34.835262>,  <31.957644, 28.329222, 35.481297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816313, 28.059820, 34.835262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555481, 28.356239, 34.899319>,  <31.398983, 28.534090, 34.937752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555481, 28.356239, 34.899319>,  <31.816313, 28.059820, 34.835262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555481, 28.356239, 34.899319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290772, 0.439522, -0.849866,
		-0.700176, -0.507614, -0.502078,
		-0.652078, 0.741046, 0.160143,
		31.359858, 28.578552, 34.947361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428732, 28.042545, 34.246502>,  <31.816313, 28.059820, 34.835262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428732, 28.042545, 34.246502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350763, 28.405239, 34.396084>,  <31.303982, 28.622854, 34.485832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350763, 28.405239, 34.396084>,  <31.428732, 28.042545, 34.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350763, 28.405239, 34.396084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203855, 0.410394, -0.888831,
		-0.959401, -0.097018, -0.264836,
		-0.194920, 0.906733, 0.373955,
		31.292288, 28.677259, 34.508270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039711, 28.370209, 33.811913>,  <31.428732, 28.042545, 34.246502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039711, 28.370209, 33.811913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167997, 28.691032, 34.013443>,  <31.244968, 28.883526, 34.134361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167997, 28.691032, 34.013443>,  <31.039711, 28.370209, 33.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167997, 28.691032, 34.013443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267806, 0.433436, -0.860473,
		-0.908528, 0.410894, -0.075788,
		0.320714, 0.802060, 0.503828,
		31.264212, 28.931650, 34.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774685, 28.952446, 33.443275>,  <31.039711, 28.370209, 33.811913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774685, 28.952446, 33.443275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083521, 29.096050, 33.653034>,  <31.268822, 29.182213, 33.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083521, 29.096050, 33.653034>,  <30.774685, 28.952446, 33.443275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083521, 29.096050, 33.653034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271721, 0.559439, -0.783068,
		-0.574497, 0.747088, 0.334386,
		0.772089, 0.359010, 0.524395,
		31.315147, 29.203753, 33.810352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713154, 29.599329, 33.203182>,  <30.774685, 28.952446, 33.443275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713154, 29.599329, 33.203182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075397, 29.527637, 33.356937>,  <31.292744, 29.484623, 33.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075397, 29.527637, 33.356937>,  <30.713154, 29.599329, 33.203182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075397, 29.527637, 33.356937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405720, 0.630142, -0.662052,
		-0.123560, 0.755512, 0.643377,
		0.905607, -0.179228, 0.384387,
		31.347080, 29.473869, 33.472252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028992, 30.215895, 33.296513>,  <30.713154, 29.599329, 33.203182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028992, 30.215895, 33.296513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334330, 29.957943, 33.281338>,  <31.517532, 29.803173, 33.272232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334330, 29.957943, 33.281338>,  <31.028992, 30.215895, 33.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334330, 29.957943, 33.281338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369525, 0.484067, -0.793177,
		0.529865, 0.591450, 0.607808,
		0.763344, -0.644877, -0.037935,
		31.563334, 29.764481, 33.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596367, 30.554399, 33.156868>,  <31.028992, 30.215895, 33.296513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596367, 30.554399, 33.156868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764669, 30.201397, 33.072826>,  <31.865652, 29.989595, 33.022400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764669, 30.201397, 33.072826>,  <31.596367, 30.554399, 33.156868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764669, 30.201397, 33.072826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413782, 0.392806, -0.821272,
		0.807308, 0.258621, 0.530442,
		0.420759, -0.882507, -0.210103,
		31.890898, 29.936646, 33.009796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174217, 30.725559, 32.921074>,  <31.596367, 30.554399, 33.156868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174217, 30.725559, 32.921074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178478, 30.354984, 32.770557>,  <32.181034, 30.132639, 32.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178478, 30.354984, 32.770557>,  <32.174217, 30.725559, 32.921074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178478, 30.354984, 32.770557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, 0.357204, -0.869806,
		0.940236, -0.118807, 0.319126,
		0.010654, -0.926439, -0.376293,
		32.181675, 30.077053, 32.657669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864594, 30.509611, 32.610523>,  <32.174217, 30.725559, 32.921074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864594, 30.509611, 32.610523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576584, 30.287689, 32.443790>,  <32.403778, 30.154535, 32.343750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576584, 30.287689, 32.443790>,  <32.864594, 30.509611, 32.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576584, 30.287689, 32.443790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254108, 0.348157, -0.902339,
		0.645747, -0.755630, -0.109702,
		-0.720028, -0.554807, -0.416833,
		32.360577, 30.121248, 32.318741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170067, 30.140144, 32.105560>,  <32.864594, 30.509611, 32.610523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170067, 30.140144, 32.105560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785599, 30.128246, 31.995815>,  <32.554920, 30.121107, 31.929970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785599, 30.128246, 31.995815>,  <33.170067, 30.140144, 32.105560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785599, 30.128246, 31.995815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254759, 0.286556, -0.923571,
		0.106088, -0.957602, -0.267852,
		-0.961168, -0.029742, -0.274357,
		32.497250, 30.119324, 31.913507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217529, 29.892672, 31.515913>,  <33.170067, 30.140144, 32.105560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217529, 29.892672, 31.515913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835598, 30.010498, 31.500229>,  <32.606438, 30.081194, 31.490818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835598, 30.010498, 31.500229>,  <33.217529, 29.892672, 31.515913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835598, 30.010498, 31.500229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205852, 0.560492, -0.802168,
		-0.214315, -0.774003, -0.595809,
		-0.954826, 0.294565, -0.039208,
		32.549149, 30.098867, 31.488466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834496, 29.706619, 30.905676>,  <33.217529, 29.892672, 31.515913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834496, 29.706619, 30.905676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663673, 30.040859, 31.043888>,  <32.561180, 30.241404, 31.126816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663673, 30.040859, 31.043888>,  <32.834496, 29.706619, 30.905676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663673, 30.040859, 31.043888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163390, 0.447152, -0.879408,
		-0.889341, -0.319100, -0.327488,
		-0.427056, 0.835602, 0.345533,
		32.535557, 30.291540, 31.147549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313000, 29.844530, 30.332869>,  <32.834496, 29.706619, 30.905676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313000, 29.844530, 30.332869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371010, 30.179924, 30.542976>,  <32.405815, 30.381161, 30.669041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371010, 30.179924, 30.542976>,  <32.313000, 29.844530, 30.332869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371010, 30.179924, 30.542976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012880, 0.529236, -0.848377,
		-0.989344, 0.129803, 0.065954,
		0.145027, 0.838487, 0.525268,
		32.414516, 30.431471, 30.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994474, 30.355955, 29.880873>,  <32.313000, 29.844530, 30.332869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994474, 30.355955, 29.880873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215710, 30.575832, 30.131290>,  <32.348450, 30.707758, 30.281542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215710, 30.575832, 30.131290>,  <31.994474, 30.355955, 29.880873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215710, 30.575832, 30.131290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089008, 0.708154, -0.700425,
		-0.828355, 0.443120, 0.342744,
		0.553088, 0.549693, 0.626044,
		32.381638, 30.740740, 30.319103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859035, 31.003361, 29.664959>,  <31.994474, 30.355955, 29.880873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859035, 31.003361, 29.664959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193405, 31.072083, 29.873463>,  <32.394028, 31.113316, 29.998566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193405, 31.072083, 29.873463>,  <31.859035, 31.003361, 29.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193405, 31.072083, 29.873463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266135, 0.703731, -0.658737,
		-0.480003, 0.689380, 0.542543,
		0.835924, 0.171806, 0.521261,
		32.444183, 31.123625, 30.029840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934931, 31.746212, 29.604265>,  <31.859035, 31.003361, 29.664959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934931, 31.746212, 29.604265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301853, 31.623474, 29.705772>,  <32.522007, 31.549831, 29.766678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301853, 31.623474, 29.705772>,  <31.934931, 31.746212, 29.604265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301853, 31.623474, 29.705772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396238, 0.766376, -0.505631,
		-0.039334, 0.564371, 0.824584,
		0.917305, -0.306843, 0.253770,
		32.577045, 31.531422, 29.781904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165482, 32.272804, 30.018009>,  <31.934931, 31.746212, 29.604265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165482, 32.272804, 30.018009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453030, 32.065624, 29.832554>,  <32.625557, 31.941317, 29.721281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453030, 32.065624, 29.832554>,  <32.165482, 32.272804, 30.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453030, 32.065624, 29.832554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145668, 0.764391, -0.628082,
		0.679715, 0.383969, 0.624943,
		0.718865, -0.517951, -0.463637,
		32.668690, 31.910238, 29.693462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689972, 32.772812, 29.852001>,  <32.165482, 32.272804, 30.018009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689972, 32.772812, 29.852001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851059, 32.480240, 29.631878>,  <32.947712, 32.304699, 29.499804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851059, 32.480240, 29.631878>,  <32.689972, 32.772812, 29.852001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851059, 32.480240, 29.631878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276237, 0.670300, -0.688761,
		0.872648, 0.125358, 0.471986,
		0.402714, -0.731425, -0.550308,
		32.971874, 32.260811, 29.466785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224270, 33.125576, 29.468801>,  <32.689972, 32.772812, 29.852001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224270, 33.125576, 29.468801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156738, 32.783054, 29.273563>,  <33.116219, 32.577541, 29.156420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156738, 32.783054, 29.273563>,  <33.224270, 33.125576, 29.468801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156738, 32.783054, 29.273563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356721, 0.408551, -0.840141,
		0.918830, -0.315951, 0.236488,
		-0.168826, -0.856307, -0.488095,
		33.106091, 32.526161, 29.127134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890301, 32.912708, 29.006504>,  <33.224270, 33.125576, 29.468801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890301, 32.912708, 29.006504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560631, 32.735676, 28.865166>,  <33.362827, 32.629456, 28.780363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560631, 32.735676, 28.865166>,  <33.890301, 32.912708, 29.006504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560631, 32.735676, 28.865166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171954, 0.398903, -0.900726,
		0.539599, -0.803116, -0.252662,
		-0.824175, -0.442585, -0.353347,
		33.313377, 32.602901, 28.759161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000095, 32.530830, 28.281969>,  <33.890301, 32.912708, 29.006504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000095, 32.530830, 28.281969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611668, 32.623875, 28.303551>,  <33.378609, 32.679703, 28.316500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611668, 32.623875, 28.303551>,  <34.000095, 32.530830, 28.281969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611668, 32.623875, 28.303551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028527, 0.337340, -0.940951,
		-0.237080, -0.912191, -0.334217,
		-0.971071, 0.232615, 0.053954,
		33.320347, 32.693661, 28.319736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685551, 32.181084, 27.745903>,  <34.000095, 32.530830, 28.281969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685551, 32.181084, 27.745903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420822, 32.468243, 27.832264>,  <33.261986, 32.640537, 27.884081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420822, 32.468243, 27.832264>,  <33.685551, 32.181084, 27.745903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420822, 32.468243, 27.832264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010251, 0.279307, -0.960147,
		-0.749595, -0.637655, -0.177491,
		-0.661817, 0.717902, 0.215903,
		33.222279, 32.683613, 27.897036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101097, 32.116982, 27.272251>,  <33.685551, 32.181084, 27.745903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101097, 32.116982, 27.272251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038792, 32.479290, 27.429893>,  <33.001408, 32.696674, 27.524479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038792, 32.479290, 27.429893>,  <33.101097, 32.116982, 27.272251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038792, 32.479290, 27.429893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156609, 0.371284, -0.915217,
		-0.975301, -0.204276, 0.084020,
		-0.155762, 0.905770, 0.394105,
		32.992062, 32.751022, 27.548124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551865, 32.444927, 26.908213>,  <33.101097, 32.116982, 27.272251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551865, 32.444927, 26.908213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745422, 32.756638, 27.067501>,  <32.861557, 32.943665, 27.163074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745422, 32.756638, 27.067501>,  <32.551865, 32.444927, 26.908213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745422, 32.756638, 27.067501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170055, 0.530099, -0.830708,
		-0.858445, 0.334256, 0.389031,
		0.483894, 0.779274, 0.398219,
		32.890591, 32.990421, 27.186966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071400, 33.060028, 26.892832>,  <32.551865, 32.444927, 26.908213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071400, 33.060028, 26.892832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443542, 33.202984, 26.925602>,  <32.666828, 33.288757, 26.945265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443542, 33.202984, 26.925602>,  <32.071400, 33.060028, 26.892832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443542, 33.202984, 26.925602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153345, 0.582227, -0.798434,
		-0.333048, 0.730265, 0.596482,
		0.930357, 0.357385, 0.081927,
		32.722649, 33.310200, 26.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589310, 32.644211, 27.179852>,  <32.071400, 33.060028, 26.892832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589310, 32.644211, 27.179852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201569, 32.707024, 27.104275>,  <30.968924, 32.744713, 27.058929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201569, 32.707024, 27.104275>,  <31.589310, 32.644211, 27.179852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201569, 32.707024, 27.104275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169428, 0.129633, 0.976979,
		0.177912, 0.979048, -0.099054,
		-0.969351, 0.157033, -0.188942,
		30.910763, 32.754135, 27.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394588, 33.114048, 27.682579>,  <31.589310, 32.644211, 27.179852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394588, 33.114048, 27.682579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035843, 32.997288, 27.549652>,  <30.820597, 32.927231, 27.469896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035843, 32.997288, 27.549652>,  <31.394588, 33.114048, 27.682579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035843, 32.997288, 27.549652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391553, 0.174486, 0.903461,
		-0.205732, 0.940399, -0.270783,
		-0.896862, -0.291896, -0.332318,
		30.766785, 32.909718, 27.449957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833624, 33.541870, 27.998516>,  <31.394588, 33.114048, 27.682579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833624, 33.541870, 27.998516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642675, 33.213585, 27.872952>,  <30.528107, 33.016613, 27.797613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642675, 33.213585, 27.872952>,  <30.833624, 33.541870, 27.998516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642675, 33.213585, 27.872952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551723, 0.001908, 0.834025,
		-0.683899, 0.571333, -0.453719,
		-0.477372, -0.820716, -0.313913,
		30.499464, 32.967369, 27.778778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173668, 33.698441, 28.089535>,  <30.833624, 33.541870, 27.998516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173668, 33.698441, 28.089535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234304, 33.303085, 28.093822>,  <30.270687, 33.065872, 28.096395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234304, 33.303085, 28.093822>,  <30.173668, 33.698441, 28.089535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234304, 33.303085, 28.093822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520296, -0.070571, 0.851065,
		-0.840424, -0.134591, -0.524951,
		0.151592, -0.988385, 0.010718,
		30.279781, 33.006569, 28.097038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586821, 33.412323, 28.464815>,  <30.173668, 33.698441, 28.089535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586821, 33.412323, 28.464815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837275, 33.100990, 28.483353>,  <29.987547, 32.914188, 28.494474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837275, 33.100990, 28.483353>,  <29.586821, 33.412323, 28.464815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837275, 33.100990, 28.483353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529212, -0.380574, 0.758352,
		-0.572615, -0.499357, -0.650196,
		0.626136, -0.778335, 0.046343,
		30.025116, 32.867489, 28.497255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125917, 32.861225, 28.615042>,  <29.586821, 33.412323, 28.464815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125917, 32.861225, 28.615042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501028, 32.757538, 28.707458>,  <29.726095, 32.695324, 28.762909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501028, 32.757538, 28.707458>,  <29.125917, 32.861225, 28.615042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501028, 32.757538, 28.707458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309595, -0.322861, 0.894378,
		-0.157244, -0.910257, -0.383024,
		0.937777, -0.259218, 0.231043,
		29.782362, 32.679771, 28.776772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996128, 32.327591, 28.889009>,  <29.125917, 32.861225, 28.615042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996128, 32.327591, 28.889009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361153, 32.416325, 29.026428>,  <29.580168, 32.469563, 29.108879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361153, 32.416325, 29.026428>,  <28.996128, 32.327591, 28.889009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361153, 32.416325, 29.026428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234160, -0.405282, 0.883694,
		0.335265, -0.886869, -0.317900,
		0.912561, 0.221832, 0.343546,
		29.634920, 32.482876, 29.129492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236788, 31.703796, 29.104118>,  <28.996128, 32.327591, 28.889009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236788, 31.703796, 29.104118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412088, 31.996380, 29.313080>,  <29.517269, 32.171928, 29.438457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412088, 31.996380, 29.313080>,  <29.236788, 31.703796, 29.104118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412088, 31.996380, 29.313080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170729, -0.502872, 0.847332,
		0.882490, -0.460534, -0.095503,
		0.438251, 0.731457, 0.522405,
		29.543564, 32.215816, 29.469801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655733, 31.412485, 29.665398>,  <29.236788, 31.703796, 29.104118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655733, 31.412485, 29.665398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657555, 31.786320, 29.807678>,  <29.658648, 32.010620, 29.893047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657555, 31.786320, 29.807678>,  <29.655733, 31.412485, 29.665398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657555, 31.786320, 29.807678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201086, -0.347584, 0.915833,
		0.979563, -0.075696, 0.186350,
		0.004553, 0.934589, 0.355701,
		29.658920, 32.066696, 29.914389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120905, 31.311768, 30.218481>,  <29.655733, 31.412485, 29.665398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120905, 31.311768, 30.218481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868765, 31.619415, 30.260658>,  <29.717482, 31.804005, 30.285965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868765, 31.619415, 30.260658>,  <30.120905, 31.311768, 30.218481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868765, 31.619415, 30.260658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400923, -0.438832, 0.804169,
		0.664772, 0.464632, 0.584974,
		-0.630348, 0.769119, 0.105442,
		29.679661, 31.850151, 30.292292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187452, 31.523060, 30.959608>,  <30.120905, 31.311768, 30.218481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187452, 31.523060, 30.959608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851791, 31.693588, 30.824509>,  <29.650394, 31.795904, 30.743448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851791, 31.693588, 30.824509>,  <30.187452, 31.523060, 30.959608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851791, 31.693588, 30.824509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432827, -0.147381, 0.889348,
		0.329369, 0.892486, 0.308197,
		-0.839153, 0.426319, -0.337749,
		29.600046, 31.821484, 30.723185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896753, 32.030834, 31.475258>,  <30.187452, 31.523060, 30.959608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896753, 32.030834, 31.475258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569920, 31.954220, 31.257748>,  <29.373819, 31.908251, 31.127241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569920, 31.954220, 31.257748>,  <29.896753, 32.030834, 31.475258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569920, 31.954220, 31.257748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552936, -0.006659, 0.833197,
		-0.163208, 0.981463, -0.100466,
		-0.817083, -0.191536, -0.543773,
		29.324795, 31.896759, 31.094616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399496, 32.352089, 31.782957>,  <29.896753, 32.030834, 31.475258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399496, 32.352089, 31.782957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171591, 32.113598, 31.556725>,  <29.034847, 31.970503, 31.420984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171591, 32.113598, 31.556725>,  <29.399496, 32.352089, 31.782957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171591, 32.113598, 31.556725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599012, -0.169868, 0.782515,
		-0.562630, 0.784639, -0.260363,
		-0.569764, -0.596227, -0.565581,
		29.000662, 31.934731, 31.387051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765247, 32.569695, 31.956921>,  <29.399496, 32.352089, 31.782957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765247, 32.569695, 31.956921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719332, 32.198181, 31.815956>,  <28.691782, 31.975275, 31.731377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719332, 32.198181, 31.815956>,  <28.765247, 32.569695, 31.956921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719332, 32.198181, 31.815956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536772, -0.240516, 0.808720,
		-0.835882, 0.281996, -0.470934,
		-0.114789, -0.928779, -0.352411,
		28.684895, 31.919548, 31.710234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077778, 32.290894, 32.158276>,  <28.765247, 32.569695, 31.956921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077778, 32.290894, 32.158276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314596, 31.978966, 32.076920>,  <28.456688, 31.791811, 32.028107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314596, 31.978966, 32.076920>,  <28.077778, 32.290894, 32.158276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314596, 31.978966, 32.076920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210312, -0.393134, 0.895106,
		-0.777977, -0.487169, -0.396759,
		0.592047, -0.779815, -0.203392,
		28.492210, 31.745022, 32.015903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676720, 31.684912, 32.304344>,  <28.077778, 32.290894, 32.158276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676720, 31.684912, 32.304344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058386, 31.568180, 32.330875>,  <28.287386, 31.498140, 32.346794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058386, 31.568180, 32.330875>,  <27.676720, 31.684912, 32.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058386, 31.568180, 32.330875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211404, -0.500371, 0.839605,
		-0.211830, -0.815147, -0.539132,
		0.954168, -0.291829, 0.066332,
		28.344637, 31.480631, 32.350777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565701, 31.003531, 32.553585>,  <27.676720, 31.684912, 32.304344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565701, 31.003531, 32.553585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946293, 31.099163, 32.631069>,  <28.174648, 31.156542, 32.677559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946293, 31.099163, 32.631069>,  <27.565701, 31.003531, 32.553585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946293, 31.099163, 32.631069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037274, -0.535348, 0.843809,
		0.305441, -0.810089, -0.500462,
		0.951481, 0.239080, 0.193713,
		28.231737, 31.170887, 32.689182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718216, 30.436098, 32.960236>,  <27.565701, 31.003531, 32.553585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718216, 30.436098, 32.960236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039162, 30.661522, 33.038837>,  <28.231730, 30.796776, 33.085999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039162, 30.661522, 33.038837>,  <27.718216, 30.436098, 32.960236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039162, 30.661522, 33.038837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119884, -0.474711, 0.871939,
		0.584670, -0.676055, -0.448453,
		0.802365, 0.563558, 0.196501,
		28.279871, 30.830589, 33.097786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285170, 30.070215, 33.136852>,  <27.718216, 30.436098, 32.960236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285170, 30.070215, 33.136852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380146, 30.419456, 33.307175>,  <28.437132, 30.629002, 33.409367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380146, 30.419456, 33.307175>,  <28.285170, 30.070215, 33.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380146, 30.419456, 33.307175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236376, -0.477098, 0.846465,
		0.942204, -0.100335, -0.319664,
		0.237441, 0.873104, 0.425807,
		28.451378, 30.681387, 33.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943949, 30.096659, 33.293594>,  <28.285170, 30.070215, 33.136852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943949, 30.096659, 33.293594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772106, 30.341736, 33.558937>,  <28.669001, 30.488783, 33.718143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772106, 30.341736, 33.558937>,  <28.943949, 30.096659, 33.293594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772106, 30.341736, 33.558937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320425, -0.583373, 0.746327,
		0.844256, 0.533183, 0.054298,
		-0.429605, 0.612693, 0.663361,
		28.643225, 30.525543, 33.757946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464109, 30.159685, 33.879360>,  <28.943949, 30.096659, 33.293594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464109, 30.159685, 33.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118299, 30.298843, 34.024448>,  <28.910812, 30.382338, 34.111500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118299, 30.298843, 34.024448>,  <29.464109, 30.159685, 33.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118299, 30.298843, 34.024448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117485, -0.561813, 0.818880,
		0.488663, 0.750557, 0.444830,
		-0.864526, 0.347895, 0.362716,
		28.858942, 30.403212, 34.133263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605421, 30.173456, 34.629414>,  <29.464109, 30.159685, 33.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605421, 30.173456, 34.629414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214369, 30.178009, 34.545403>,  <28.979738, 30.180740, 34.494995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214369, 30.178009, 34.545403>,  <29.605421, 30.173456, 34.629414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214369, 30.178009, 34.545403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169371, -0.634688, 0.753979,
		-0.124719, 0.772684, 0.622418,
		-0.977629, 0.011384, -0.210028,
		28.921080, 30.181425, 34.482395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383650, 30.089678, 35.255970>,  <29.605421, 30.173456, 34.629414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383650, 30.089678, 35.255970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077217, 29.971153, 35.027824>,  <28.893358, 29.900038, 34.890938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077217, 29.971153, 35.027824>,  <29.383650, 30.089678, 35.255970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077217, 29.971153, 35.027824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157051, -0.774198, 0.613150,
		-0.623260, 0.559300, 0.546562,
		-0.766082, -0.296314, -0.570365,
		28.847393, 29.882259, 34.856716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804873, 29.896357, 35.718533>,  <29.383650, 30.089678, 35.255970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804873, 29.896357, 35.718533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744598, 29.715294, 35.366989>,  <28.708433, 29.606657, 35.156063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744598, 29.715294, 35.366989>,  <28.804873, 29.896357, 35.718533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744598, 29.715294, 35.366989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260493, -0.839412, 0.477002,
		-0.953644, 0.300814, 0.008573,
		-0.150685, -0.452657, -0.878861,
		28.699392, 29.579496, 35.103333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274252, 29.409176, 35.903393>,  <28.804873, 29.896357, 35.718533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274252, 29.409176, 35.903393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394636, 29.279095, 35.544804>,  <28.466867, 29.201046, 35.329651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394636, 29.279095, 35.544804>,  <28.274252, 29.409176, 35.903393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394636, 29.279095, 35.544804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262779, -0.931944, 0.249853,
		-0.916717, 0.160379, -0.365935,
		0.300960, -0.325204, -0.896474,
		28.484924, 29.181534, 35.275860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799202, 28.930780, 35.638420>,  <28.274252, 29.409176, 35.903393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799202, 28.930780, 35.638420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123587, 28.805054, 35.441017>,  <28.318218, 28.729618, 35.322575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123587, 28.805054, 35.441017>,  <27.799202, 28.930780, 35.638420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123587, 28.805054, 35.441017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136891, -0.921969, 0.362263,
		-0.568859, -0.226226, -0.790709,
		0.810962, -0.314318, -0.493502,
		28.366875, 28.710758, 35.292965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570158, 28.306738, 35.306000>,  <27.799202, 28.930780, 35.638420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570158, 28.306738, 35.306000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968256, 28.301689, 35.344627>,  <28.207115, 28.298660, 35.367802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968256, 28.301689, 35.344627>,  <27.570158, 28.306738, 35.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968256, 28.301689, 35.344627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034659, -0.972554, 0.230081,
		0.091011, -0.232335, -0.968369,
		0.995246, -0.012623, 0.096565,
		28.266830, 28.297903, 35.373596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939655, 27.737354, 34.919971>,  <27.570158, 28.306738, 35.306000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939655, 27.737354, 34.919971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216528, 27.809376, 35.199532>,  <28.382650, 27.852589, 35.367268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216528, 27.809376, 35.199532>,  <27.939655, 27.737354, 34.919971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216528, 27.809376, 35.199532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164421, -0.982256, 0.090212,
		0.702746, 0.052471, -0.709503,
		0.692181, 0.180053, 0.698904,
		28.424183, 27.863392, 35.409203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467196, 27.291641, 34.665272>,  <27.939655, 27.737354, 34.919971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467196, 27.291641, 34.665272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540945, 27.389843, 35.045952>,  <28.585196, 27.448765, 35.274361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540945, 27.389843, 35.045952>,  <28.467196, 27.291641, 34.665272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540945, 27.389843, 35.045952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169304, -0.961760, 0.215300,
		0.968164, 0.121431, -0.218889,
		0.184374, 0.245504, 0.951700,
		28.596258, 27.463495, 35.331463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161346, 26.956192, 34.912224>,  <28.467196, 27.291641, 34.665272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161346, 26.956192, 34.912224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937481, 27.035961, 35.233971>,  <28.803162, 27.083822, 35.427017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937481, 27.035961, 35.233971>,  <29.161346, 26.956192, 34.912224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937481, 27.035961, 35.233971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024656, -0.966177, 0.256697,
		0.828353, 0.163497, 0.535817,
		-0.559664, 0.199424, 0.804367,
		28.769581, 27.095789, 35.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389563, 26.477144, 35.462578>,  <29.161346, 26.956192, 34.912224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389563, 26.477144, 35.462578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039940, 26.606422, 35.607666>,  <28.830166, 26.683990, 35.694721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039940, 26.606422, 35.607666>,  <29.389563, 26.477144, 35.462578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039940, 26.606422, 35.607666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169778, -0.902744, 0.395257,
		0.455192, 0.283894, 0.843922,
		-0.874057, 0.323197, 0.362723,
		28.777723, 26.703382, 35.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350119, 26.159687, 36.162014>,  <29.389563, 26.477144, 35.462578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350119, 26.159687, 36.162014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966686, 26.266418, 36.122162>,  <28.736628, 26.330458, 36.098251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966686, 26.266418, 36.122162>,  <29.350119, 26.159687, 36.162014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966686, 26.266418, 36.122162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279782, -0.816585, 0.504888,
		0.053361, 0.511851, 0.857416,
		-0.958580, 0.266830, -0.099633,
		28.679111, 26.346468, 36.092274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030823, 25.999775, 36.710793>,  <29.350119, 26.159687, 36.162014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030823, 25.999775, 36.710793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737549, 26.024799, 36.439934>,  <28.561584, 26.039814, 36.277420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737549, 26.024799, 36.439934>,  <29.030823, 25.999775, 36.710793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737549, 26.024799, 36.439934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417399, -0.827517, 0.375491,
		-0.536857, 0.557944, 0.632837,
		-0.733186, 0.062560, -0.677144,
		28.517593, 26.043568, 36.236790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375673, 25.891523, 37.049137>,  <29.030823, 25.999775, 36.710793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375673, 25.891523, 37.049137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337057, 25.782623, 36.666187>,  <28.313887, 25.717283, 36.436417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337057, 25.782623, 36.666187>,  <28.375673, 25.891523, 37.049137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337057, 25.782623, 36.666187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422338, -0.859775, 0.287085,
		-0.901283, 0.432050, -0.031977,
		-0.096542, -0.272249, -0.957371,
		28.308094, 25.700949, 36.378975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765213, 25.551941, 37.084789>,  <28.375673, 25.891523, 37.049137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765213, 25.551941, 37.084789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902607, 25.437050, 36.727127>,  <27.985043, 25.368114, 36.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902607, 25.437050, 36.727127>,  <27.765213, 25.551941, 37.084789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902607, 25.437050, 36.727127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414630, -0.900651, 0.130038,
		-0.842675, 0.326078, -0.428454,
		0.343485, -0.287230, -0.894158,
		28.005651, 25.350882, 36.458881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147879, 25.304119, 36.747517>,  <27.765213, 25.551941, 37.084789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147879, 25.304119, 36.747517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487804, 25.163574, 36.590363>,  <27.691759, 25.079248, 36.496071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487804, 25.163574, 36.590363>,  <27.147879, 25.304119, 36.747517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487804, 25.163574, 36.590363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305191, -0.935751, 0.176715,
		-0.429737, -0.030269, -0.902446,
		0.849814, -0.351360, -0.392889,
		27.742748, 25.058167, 36.472496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916986, 24.651518, 36.469326>,  <27.147879, 25.304119, 36.747517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916986, 24.651518, 36.469326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314541, 24.625252, 36.504841>,  <27.553074, 24.609491, 36.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314541, 24.625252, 36.504841>,  <26.916986, 24.651518, 36.469326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314541, 24.625252, 36.504841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096453, -0.907699, 0.408386,
		0.053772, -0.414452, -0.908481,
		0.993884, -0.065666, 0.088784,
		27.612705, 24.605553, 36.531475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214695, 24.085018, 36.123875>,  <26.916986, 24.651518, 36.469326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214695, 24.085018, 36.123875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483810, 24.148548, 36.412910>,  <27.645279, 24.186666, 36.586330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483810, 24.148548, 36.412910>,  <27.214695, 24.085018, 36.123875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483810, 24.148548, 36.412910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115134, -0.942310, 0.314318,
		0.730823, -0.294663, -0.615688,
		0.672787, 0.158824, 0.722588,
		27.685646, 24.196196, 36.629688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440248, 23.368443, 36.001610>,  <27.214695, 24.085018, 36.123875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440248, 23.368443, 36.001610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209917, 23.129128, 35.778728>,  <27.071718, 22.985538, 35.645000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209917, 23.129128, 35.778728>,  <27.440248, 23.368443, 36.001610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209917, 23.129128, 35.778728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251537, 0.518833, -0.817032,
		0.777914, -0.610628, -0.148268,
		-0.575829, -0.598286, -0.557203,
		27.037169, 22.949642, 35.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825125, 23.292074, 35.387028>,  <27.440248, 23.368443, 36.001610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825125, 23.292074, 35.387028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449181, 23.190540, 35.295612>,  <27.223614, 23.129620, 35.240765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449181, 23.190540, 35.295612>,  <27.825125, 23.292074, 35.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449181, 23.190540, 35.295612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098620, 0.438935, -0.893090,
		0.327008, -0.861919, -0.387506,
		-0.939861, -0.253832, -0.228538,
		27.167223, 23.114389, 35.227051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839441, 22.958483, 34.696415>,  <27.825125, 23.292074, 35.387028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839441, 22.958483, 34.696415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474262, 23.097141, 34.782539>,  <27.255154, 23.180336, 34.834213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474262, 23.097141, 34.782539>,  <27.839441, 22.958483, 34.696415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474262, 23.097141, 34.782539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001001, 0.529528, -0.848292,
		-0.408072, -0.774232, -0.483779,
		-0.912949, 0.346649, 0.215311,
		27.200378, 23.201136, 34.847134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471750, 22.934414, 34.083946>,  <27.839441, 22.958483, 34.696415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471750, 22.934414, 34.083946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273098, 23.198311, 34.309547>,  <27.153908, 23.356649, 34.444908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273098, 23.198311, 34.309547>,  <27.471750, 22.934414, 34.083946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273098, 23.198311, 34.309547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139897, 0.580461, -0.802181,
		-0.856614, -0.477289, -0.195978,
		-0.496630, 0.659743, 0.564003,
		27.124109, 23.396235, 34.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101393, 23.307856, 33.582199>,  <27.471750, 22.934414, 34.083946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101393, 23.307856, 33.582199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088987, 23.556377, 33.895382>,  <27.081545, 23.705490, 34.083290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.088987, 23.556377, 33.895382>,  <27.101393, 23.307856, 33.582199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088987, 23.556377, 33.895382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065053, 0.780417, -0.621866,
		-0.997400, -0.070218, 0.016216,
		-0.031011, 0.621304, 0.782956,
		27.079683, 23.742769, 34.130268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475185, 23.761282, 33.460983>,  <27.101393, 23.307856, 33.582199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475185, 23.761282, 33.460983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689550, 23.962299, 33.732349>,  <26.818169, 24.082911, 33.895168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689550, 23.962299, 33.732349>,  <26.475185, 23.761282, 33.460983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689550, 23.962299, 33.732349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223937, 0.859379, -0.459695,
		-0.814034, 0.094433, 0.573089,
		0.535912, 0.502543, 0.678417,
		26.850325, 24.113062, 33.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086864, 24.358992, 33.732513>,  <26.475185, 23.761282, 33.460983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086864, 24.358992, 33.732513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460541, 24.477425, 33.812138>,  <26.684746, 24.548485, 33.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460541, 24.477425, 33.812138>,  <26.086864, 24.358992, 33.732513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460541, 24.477425, 33.812138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223141, 0.920229, -0.321539,
		-0.278383, 0.255960, 0.925736,
		0.934190, 0.296081, 0.199061,
		26.740797, 24.566248, 33.871857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006281, 25.029001, 33.799530>,  <26.086864, 24.358992, 33.732513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006281, 25.029001, 33.799530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397461, 24.985348, 33.728306>,  <26.632168, 24.959156, 33.685570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397461, 24.985348, 33.728306>,  <26.006281, 25.029001, 33.799530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397461, 24.985348, 33.728306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027044, 0.911603, -0.410181,
		0.207088, 0.396320, 0.894452,
		0.977949, -0.109133, -0.178064,
		26.690845, 24.952608, 33.674885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356710, 25.605417, 34.183167>,  <26.006281, 25.029001, 33.799530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356710, 25.605417, 34.183167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625906, 25.493412, 33.909325>,  <26.787422, 25.426208, 33.745022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625906, 25.493412, 33.909325>,  <26.356710, 25.605417, 34.183167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625906, 25.493412, 33.909325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191621, 0.959975, -0.204276,
		0.714402, 0.006291, 0.699707,
		0.672987, -0.280013, -0.684603,
		26.827803, 25.409409, 33.703945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015444, 25.990580, 34.328327>,  <26.356710, 25.605417, 34.183167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015444, 25.990580, 34.328327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024420, 25.872715, 33.946194>,  <27.029804, 25.801996, 33.716911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024420, 25.872715, 33.946194>,  <27.015444, 25.990580, 34.328327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024420, 25.872715, 33.946194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213785, 0.934889, -0.283333,
		0.976623, -0.197880, 0.083971,
		0.022438, -0.294661, -0.955338,
		27.031151, 25.784317, 33.659592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629902, 26.371326, 34.007454>,  <27.015444, 25.990580, 34.328327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629902, 26.371326, 34.007454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394867, 26.265694, 33.701511>,  <27.253847, 26.202314, 33.517944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394867, 26.265694, 33.701511>,  <27.629902, 26.371326, 34.007454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394867, 26.265694, 33.701511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158725, 0.889264, -0.428971,
		0.793442, -0.373458, -0.480602,
		-0.587585, -0.264081, -0.764856,
		27.218592, 26.186470, 33.472054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917526, 26.553661, 33.438534>,  <27.629902, 26.371326, 34.007454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917526, 26.553661, 33.438534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549520, 26.497486, 33.292191>,  <27.328716, 26.463781, 33.204384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549520, 26.497486, 33.292191>,  <27.917526, 26.553661, 33.438534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549520, 26.497486, 33.292191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104913, 0.811235, -0.575231,
		0.377579, -0.567604, -0.731615,
		-0.920015, -0.140439, -0.365854,
		27.273516, 26.455355, 33.182434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981768, 26.592556, 32.746639>,  <27.917526, 26.553661, 33.438534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981768, 26.592556, 32.746639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596216, 26.665428, 32.824360>,  <27.364885, 26.709150, 32.870991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596216, 26.665428, 32.824360>,  <27.981768, 26.592556, 32.746639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596216, 26.665428, 32.824360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078613, 0.891582, -0.445983,
		-0.254483, -0.414599, -0.873697,
		-0.963877, 0.182179, 0.194300,
		27.307053, 26.720081, 32.882648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688095, 26.694132, 32.108639>,  <27.981768, 26.592556, 32.746639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688095, 26.694132, 32.108639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461195, 26.868908, 32.387871>,  <27.325054, 26.973774, 32.555408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461195, 26.868908, 32.387871>,  <27.688095, 26.694132, 32.108639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461195, 26.868908, 32.387871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068239, 0.819795, -0.568576,
		-0.820714, -0.370161, -0.435212,
		-0.567250, 0.436940, 0.698077,
		27.291019, 26.999990, 32.597294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930233, 26.867428, 31.777639>,  <27.688095, 26.694132, 32.108639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930233, 26.867428, 31.777639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001900, 27.087231, 32.104061>,  <27.044899, 27.219112, 32.299915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001900, 27.087231, 32.104061>,  <26.930233, 26.867428, 31.777639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001900, 27.087231, 32.104061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120201, 0.835487, -0.536203,
		-0.976448, -0.002022, 0.215741,
		0.179165, 0.549507, 0.816053,
		27.055649, 27.252083, 32.348877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416788, 27.308195, 31.706558>,  <26.930233, 26.867428, 31.777639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416788, 27.308195, 31.706558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681305, 27.473907, 31.956699>,  <26.840015, 27.573336, 32.106785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681305, 27.473907, 31.956699>,  <26.416788, 27.308195, 31.706558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681305, 27.473907, 31.956699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001599, 0.832878, -0.553454,
		-0.750126, 0.366995, 0.550114,
		0.661293, 0.414281, 0.625351,
		26.879692, 27.598192, 32.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252396, 28.009523, 31.554800>,  <26.416788, 27.308195, 31.706558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252396, 28.009523, 31.554800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582869, 28.011402, 31.780151>,  <26.781153, 28.012529, 31.915363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582869, 28.011402, 31.780151>,  <26.252396, 28.009523, 31.554800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582869, 28.011402, 31.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264716, 0.879478, -0.395530,
		-0.497337, 0.475917, 0.725368,
		0.826184, 0.004695, 0.563380,
		26.830725, 28.012812, 31.949165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265976, 28.609358, 32.026154>,  <26.252396, 28.009523, 31.554800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265976, 28.609358, 32.026154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632948, 28.471466, 31.946671>,  <26.853130, 28.388731, 31.898981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632948, 28.471466, 31.946671>,  <26.265976, 28.609358, 32.026154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632948, 28.471466, 31.946671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270343, 0.906461, -0.324411,
		0.291956, 0.243905, 0.924809,
		0.917429, -0.344730, -0.198709,
		26.908176, 28.368048, 31.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713688, 29.081129, 32.297359>,  <26.265976, 28.609358, 32.026154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713688, 29.081129, 32.297359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941542, 28.878368, 32.038574>,  <27.078255, 28.756712, 31.883303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941542, 28.878368, 32.038574>,  <26.713688, 29.081129, 32.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941542, 28.878368, 32.038574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312991, 0.861639, -0.399518,
		0.759968, 0.025085, 0.649476,
		0.569636, -0.506902, -0.646966,
		27.112432, 28.726297, 31.844484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329510, 29.492043, 32.237560>,  <26.713688, 29.081129, 32.297359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329510, 29.492043, 32.237560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337252, 29.264168, 31.908909>,  <27.341896, 29.127443, 31.711718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337252, 29.264168, 31.908909>,  <27.329510, 29.492043, 32.237560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337252, 29.264168, 31.908909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232960, 0.801737, -0.550406,
		0.972294, -0.180755, 0.148232,
		0.019354, -0.569688, -0.821633,
		27.343058, 29.093262, 31.662418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880428, 29.790096, 31.931301>,  <27.329510, 29.492043, 32.237560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880428, 29.790096, 31.931301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710049, 29.564083, 31.648655>,  <27.607821, 29.428476, 31.479067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710049, 29.564083, 31.648655>,  <27.880428, 29.790096, 31.931301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710049, 29.564083, 31.648655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140000, 0.730439, -0.668475,
		0.893848, -0.383664, -0.232027,
		-0.425951, -0.565031, -0.706615,
		27.582264, 29.394573, 31.436670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269220, 29.968060, 31.458853>,  <27.880428, 29.790096, 31.931301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269220, 29.968060, 31.458853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928364, 29.813629, 31.317543>,  <27.723850, 29.720972, 31.232758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928364, 29.813629, 31.317543>,  <28.269220, 29.968060, 31.458853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928364, 29.813629, 31.317543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068005, 0.751046, -0.656738,
		0.518877, -0.535608, -0.666251,
		-0.852139, -0.386075, -0.353276,
		27.672722, 29.697807, 31.211559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195049, 30.101755, 30.692955>,  <28.269220, 29.968060, 31.458853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195049, 30.101755, 30.692955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820185, 30.032318, 30.814011>,  <27.595266, 29.990656, 30.886644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820185, 30.032318, 30.814011>,  <28.195049, 30.101755, 30.692955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820185, 30.032318, 30.814011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333914, 0.697693, -0.633818,
		-0.101125, -0.695047, -0.711817,
		-0.937163, -0.173590, 0.302640,
		27.539036, 29.980242, 30.904802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906725, 30.147503, 30.070047>,  <28.195049, 30.101755, 30.692955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906725, 30.147503, 30.070047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612993, 30.204666, 30.335480>,  <27.436754, 30.238964, 30.494740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612993, 30.204666, 30.335480>,  <27.906725, 30.147503, 30.070047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612993, 30.204666, 30.335480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440758, 0.643079, -0.626244,
		-0.516229, -0.752348, -0.409245,
		-0.734330, 0.142907, 0.663580,
		27.392694, 30.247538, 30.534554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246201, 30.044298, 29.731138>,  <27.906725, 30.147503, 30.070047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246201, 30.044298, 29.731138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185020, 30.264301, 30.059551>,  <27.148312, 30.396303, 30.256599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185020, 30.264301, 30.059551>,  <27.246201, 30.044298, 29.731138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185020, 30.264301, 30.059551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521061, 0.661056, -0.539908,
		-0.839704, -0.510387, 0.185480,
		-0.152950, 0.550009, 0.821033,
		27.139135, 30.429304, 30.305861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496752, 30.220686, 29.819916>,  <27.246201, 30.044298, 29.731138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496752, 30.220686, 29.819916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710058, 30.487087, 30.028557>,  <26.838041, 30.646929, 30.153742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710058, 30.487087, 30.028557>,  <26.496752, 30.220686, 29.819916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710058, 30.487087, 30.028557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565110, 0.739285, -0.366209,
		-0.629508, -0.099475, 0.770600,
		0.533264, 0.666005, 0.521600,
		26.870037, 30.686888, 30.185038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983393, 30.619059, 30.236900>,  <26.496752, 30.220686, 29.819916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983393, 30.619059, 30.236900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313927, 30.842308, 30.206783>,  <26.512247, 30.976257, 30.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313927, 30.842308, 30.206783>,  <25.983393, 30.619059, 30.236900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313927, 30.842308, 30.206783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518344, 0.701444, -0.489179,
		-0.220209, 0.443252, 0.868928,
		0.826334, 0.558125, -0.075292,
		26.561827, 31.009745, 30.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771227, 31.240808, 30.510445>,  <25.983393, 30.619059, 30.236900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771227, 31.240808, 30.510445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092165, 31.297241, 30.278465>,  <26.284727, 31.331100, 30.139278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092165, 31.297241, 30.278465>,  <25.771227, 31.240808, 30.510445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092165, 31.297241, 30.278465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489340, 0.711830, -0.503829,
		0.341745, 0.688036, 0.640169,
		0.802344, 0.141080, -0.579948,
		26.332869, 31.339565, 30.104481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822493, 31.971472, 30.360483>,  <25.771227, 31.240808, 30.510445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822493, 31.971472, 30.360483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024578, 31.808964, 30.055931>,  <26.145830, 31.711458, 29.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024578, 31.808964, 30.055931>,  <25.822493, 31.971472, 30.360483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024578, 31.808964, 30.055931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354631, 0.706587, -0.612350,
		0.786762, 0.579377, 0.212903,
		0.505216, -0.406272, -0.761380,
		26.176144, 31.687082, 29.827517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096792, 32.511852, 29.926659>,  <25.822493, 31.971472, 30.360483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096792, 32.511852, 29.926659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103687, 32.197868, 29.678936>,  <26.107824, 32.009480, 29.530302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103687, 32.197868, 29.678936>,  <26.096792, 32.511852, 29.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103687, 32.197868, 29.678936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313399, 0.583945, -0.748859,
		0.949465, 0.207000, -0.235939,
		0.017238, -0.784958, -0.619309,
		26.108858, 31.962381, 29.493143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390480, 32.777649, 29.221544>,  <26.096792, 32.511852, 29.926659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390480, 32.777649, 29.221544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193810, 32.438587, 29.141815>,  <26.075808, 32.235149, 29.093977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193810, 32.438587, 29.141815>,  <26.390480, 32.777649, 29.221544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193810, 32.438587, 29.141815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346452, 0.400431, -0.848308,
		0.798890, -0.348037, -0.490555,
		-0.491676, -0.847659, -0.199322,
		26.046307, 32.184288, 29.082018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526062, 32.674358, 28.452646>,  <26.390480, 32.777649, 29.221544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526062, 32.674358, 28.452646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210852, 32.470371, 28.590599>,  <26.021725, 32.347977, 28.673370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210852, 32.470371, 28.590599>,  <26.526062, 32.674358, 28.452646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210852, 32.470371, 28.590599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525581, 0.265555, -0.808236,
		0.320597, -0.818172, -0.477297,
		-0.788024, -0.509976, 0.344879,
		25.974443, 32.317379, 28.694063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238169, 32.560921, 27.815203>,  <26.526062, 32.674358, 28.452646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238169, 32.560921, 27.815203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961044, 32.451973, 28.082283>,  <25.794769, 32.386604, 28.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961044, 32.451973, 28.082283>,  <26.238169, 32.560921, 27.815203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961044, 32.451973, 28.082283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716257, 0.152583, -0.680951,
		0.083587, -0.950019, -0.300794,
		-0.692813, -0.272365, 0.667704,
		25.753201, 32.370262, 28.282595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743576, 32.114086, 27.419218>,  <26.238169, 32.560921, 27.815203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743576, 32.114086, 27.419218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542820, 32.223377, 27.747475>,  <25.422367, 32.288952, 27.944427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542820, 32.223377, 27.747475>,  <25.743576, 32.114086, 27.419218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542820, 32.223377, 27.747475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775261, 0.278579, -0.566890,
		-0.383505, -0.920727, 0.072010,
		-0.501890, 0.273232, 0.820640,
		25.392252, 32.305347, 27.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202211, 31.696909, 27.391651>,  <25.743576, 32.114086, 27.419218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202211, 31.696909, 27.391651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108150, 32.024757, 27.600620>,  <25.051714, 32.221466, 27.726002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.108150, 32.024757, 27.600620>,  <25.202211, 31.696909, 27.391651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108150, 32.024757, 27.600620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676877, 0.247636, -0.693191,
		-0.697524, -0.516622, 0.496550,
		-0.235154, 0.819621, 0.522421,
		25.037603, 32.270645, 27.757347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.483011, 31.739210, 27.512028>,  <25.202211, 31.696909, 27.391651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.483011, 31.739210, 27.512028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572994, 32.125393, 27.564617>,  <24.626984, 32.357101, 27.596170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572994, 32.125393, 27.564617>,  <24.483011, 31.739210, 27.512028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572994, 32.125393, 27.564617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686356, 0.252789, -0.681919,
		-0.691599, 0.063166, 0.719514,
		0.224959, 0.965457, 0.131475,
		24.640482, 32.415031, 27.604059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895746, 31.985006, 27.314049>,  <24.483011, 31.739210, 27.512028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895746, 31.985006, 27.314049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134779, 32.305180, 27.332817>,  <24.278198, 32.497284, 27.344078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134779, 32.305180, 27.332817>,  <23.895746, 31.985006, 27.314049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134779, 32.305180, 27.332817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573790, 0.467785, -0.672266,
		-0.560054, 0.374811, 0.738821,
		0.597582, 0.800434, 0.046922,
		24.314054, 32.545311, 27.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.414387, 32.514690, 27.323811>,  <23.895746, 31.985006, 27.314049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.414387, 32.514690, 27.323811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754400, 32.679787, 27.192913>,  <23.958408, 32.778847, 27.114374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754400, 32.679787, 27.192913>,  <23.414387, 32.514690, 27.323811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.754400, 32.679787, 27.192913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497342, 0.424296, -0.756719,
		-0.173483, 0.805987, 0.565941,
		0.850032, 0.412744, -0.327243,
		24.009409, 32.803612, 27.094740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163403, 33.248936, 27.154835>,  <23.414387, 32.514690, 27.323811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163403, 33.248936, 27.154835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491875, 33.126427, 26.962227>,  <23.688957, 33.052921, 26.846663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.491875, 33.126427, 26.962227>,  <23.163403, 33.248936, 27.154835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.491875, 33.126427, 26.962227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403380, 0.285332, -0.869408,
		0.403672, 0.908174, 0.110763,
		0.821178, -0.306276, -0.481520,
		23.738228, 33.034542, 26.817772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.431776, 33.832382, 26.868675>,  <23.163403, 33.248936, 27.154835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.431776, 33.832382, 26.868675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.519419, 33.507568, 26.652309>,  <23.572004, 33.312679, 26.522490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.519419, 33.507568, 26.652309>,  <23.431776, 33.832382, 26.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.519419, 33.507568, 26.652309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558140, 0.350408, -0.752126,
		0.800295, 0.466701, -0.376454,
		0.219106, -0.812037, -0.540914,
		23.585150, 33.263958, 26.490036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.656036, 34.022297, 26.168768>,  <23.431776, 33.832382, 26.868675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.656036, 34.022297, 26.168768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487257, 33.659824, 26.180119>,  <23.385990, 33.442341, 26.186928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.487257, 33.659824, 26.180119>,  <23.656036, 34.022297, 26.168768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.487257, 33.659824, 26.180119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732552, 0.322327, -0.599560,
		0.534162, -0.273768, -0.799827,
		-0.421946, -0.906177, 0.028375,
		23.360674, 33.387970, 26.188631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.330555, 34.574837, 25.776030>,  <23.656036, 34.022297, 26.168768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.330555, 34.574837, 25.776030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111130, 34.766869, 25.502213>,  <22.979475, 34.882088, 25.337921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.111130, 34.766869, 25.502213>,  <23.330555, 34.574837, 25.776030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.111130, 34.766869, 25.502213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829422, -0.415808, 0.373046,
		-0.105546, 0.772415, 0.626287,
		-0.548561, 0.480082, -0.684545,
		22.946562, 34.910892, 25.296848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.720095, 34.801998, 26.096960>,  <23.330555, 34.574837, 25.776030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.720095, 34.801998, 26.096960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575035, 34.799755, 25.724197>,  <22.487999, 34.798409, 25.500540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575035, 34.799755, 25.724197>,  <22.720095, 34.801998, 26.096960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575035, 34.799755, 25.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763979, -0.570873, 0.300733,
		-0.533687, 0.821019, 0.202746,
		-0.362650, -0.005603, -0.931909,
		22.466240, 34.798073, 25.444624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.045918, 34.821011, 26.147295>,  <22.720095, 34.801998, 26.096960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.045918, 34.821011, 26.147295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.061605, 34.706215, 25.764442>,  <22.071018, 34.637337, 25.534731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.061605, 34.706215, 25.764442>,  <22.045918, 34.821011, 26.147295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.061605, 34.706215, 25.764442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837706, -0.531608, 0.125070,
		-0.544712, 0.796889, -0.261261,
		0.039221, -0.286987, -0.957131,
		22.073372, 34.620117, 25.477303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482246, 35.163204, 25.702732>,  <22.045918, 34.821011, 26.147295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482246, 35.163204, 25.702732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589891, 34.783230, 25.639244>,  <21.654478, 34.555244, 25.601152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589891, 34.783230, 25.639244>,  <21.482246, 35.163204, 25.702732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589891, 34.783230, 25.639244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861923, -0.311079, 0.400397,
		-0.429727, 0.029051, -0.902491,
		0.269114, -0.949940, -0.158718,
		21.670626, 34.498249, 25.591629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431705, 35.148224, 24.861609>,  <21.482246, 35.163204, 25.702732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431705, 35.148224, 24.861609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344179, 34.926956, 24.540081>,  <21.291662, 34.794197, 24.347164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.344179, 34.926956, 24.540081>,  <21.431705, 35.148224, 24.861609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344179, 34.926956, 24.540081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902803, 0.197785, -0.381875,
		0.370224, -0.809250, 0.456123,
		-0.218818, -0.553168, -0.803818,
		21.278534, 34.761005, 24.298935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863472, 34.639786, 24.791836>,  <21.431705, 35.148224, 24.861609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863472, 34.639786, 24.791836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732449, 34.724350, 24.423485>,  <21.653835, 34.775089, 24.202475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.732449, 34.724350, 24.423485>,  <21.863472, 34.639786, 24.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732449, 34.724350, 24.423485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942214, 0.145585, -0.301725,
		0.070278, -0.966494, -0.246879,
		-0.327558, 0.211408, -0.920876,
		21.634182, 34.787773, 24.147223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172031, 34.116138, 24.273445>,  <21.863472, 34.639786, 24.791836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172031, 34.116138, 24.273445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078197, 34.474323, 24.122120>,  <22.021896, 34.689232, 24.031324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.078197, 34.474323, 24.122120>,  <22.172031, 34.116138, 24.273445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078197, 34.474323, 24.122120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917574, 0.075470, -0.390336,
		-0.320979, -0.438698, -0.839355,
		-0.234586, 0.895460, -0.378314,
		22.007822, 34.742962, 24.008625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.270008, 34.118370, 23.575439>,  <22.172031, 34.116138, 24.273445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.270008, 34.118370, 23.575439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292980, 34.506809, 23.668102>,  <22.306765, 34.739872, 23.723700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292980, 34.506809, 23.668102>,  <22.270008, 34.118370, 23.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292980, 34.506809, 23.668102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892590, 0.053992, -0.447624,
		-0.447195, 0.232484, -0.863694,
		0.057432, 0.971101, 0.231658,
		22.310209, 34.798138, 23.737600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428356, 34.491924, 22.922689>,  <22.270008, 34.118370, 23.575439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428356, 34.491924, 22.922689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550247, 34.699482, 23.242161>,  <22.623383, 34.824017, 23.433844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550247, 34.699482, 23.242161>,  <22.428356, 34.491924, 22.922689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550247, 34.699482, 23.242161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931778, 0.011304, -0.362853,
		-0.197311, 0.854764, -0.480049,
		0.304727, 0.518894, 0.798680,
		22.641665, 34.855152, 23.481766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.878742, 34.992626, 22.650192>,  <22.428356, 34.491924, 22.922689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.878742, 34.992626, 22.650192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960642, 34.996891, 23.041695>,  <23.009781, 34.999451, 23.276596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960642, 34.996891, 23.041695>,  <22.878742, 34.992626, 22.650192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960642, 34.996891, 23.041695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955334, 0.215531, -0.202197,
		-0.213109, 0.976439, 0.033940,
		0.204748, 0.010666, 0.978757,
		23.022066, 35.000092, 23.335321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446859, 35.432518, 22.781763>,  <22.878742, 34.992626, 22.650192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446859, 35.432518, 22.781763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470598, 35.235847, 23.129265>,  <23.484842, 35.117847, 23.337767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.470598, 35.235847, 23.129265>,  <23.446859, 35.432518, 22.781763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.470598, 35.235847, 23.129265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966336, -0.189961, -0.173522,
		0.250345, 0.849807, 0.463849,
		0.059347, -0.491674, 0.868755,
		23.488401, 35.088345, 23.389891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044622, 35.682018, 23.112934>,  <23.446859, 35.432518, 22.781763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044622, 35.682018, 23.112934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.000834, 35.352333, 23.335175>,  <23.974560, 35.154522, 23.468519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.000834, 35.352333, 23.335175>,  <24.044622, 35.682018, 23.112934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.000834, 35.352333, 23.335175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942086, -0.264296, -0.206449,
		0.317001, 0.500823, 0.805411,
		-0.109472, -0.824211, 0.555601,
		23.967991, 35.105068, 23.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577511, 35.588310, 23.645884>,  <24.044622, 35.682018, 23.112934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577511, 35.588310, 23.645884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453127, 35.211826, 23.593086>,  <24.378496, 34.985935, 23.561407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453127, 35.211826, 23.593086>,  <24.577511, 35.588310, 23.645884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453127, 35.211826, 23.593086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942283, -0.323446, 0.086516,
		-0.124122, -0.097471, 0.987468,
		-0.310960, -0.941213, -0.131993,
		24.359838, 34.929462, 23.553488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109409, 35.299183, 23.913631>,  <24.577511, 35.588310, 23.645884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109409, 35.299183, 23.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921343, 34.997314, 23.730583>,  <24.808502, 34.816193, 23.620754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921343, 34.997314, 23.730583>,  <25.109409, 35.299183, 23.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921343, 34.997314, 23.730583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865428, -0.495934, -0.071300,
		-0.173142, -0.429561, 0.886284,
		-0.470166, -0.754670, -0.457622,
		24.780293, 34.770912, 23.593296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325382, 34.708549, 24.243902>,  <25.109409, 35.299183, 23.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325382, 34.708549, 24.243902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208967, 34.602859, 23.876102>,  <25.139118, 34.539444, 23.655422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.208967, 34.602859, 23.876102>,  <25.325382, 34.708549, 24.243902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.208967, 34.602859, 23.876102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873322, -0.465814, -0.142567,
		-0.390646, -0.844512, 0.366327,
		-0.291040, -0.264228, -0.919499,
		25.121655, 34.523590, 23.600252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595615, 34.065876, 24.182722>,  <25.325382, 34.708549, 24.243902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595615, 34.065876, 24.182722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529442, 34.164169, 23.800674>,  <25.489738, 34.223145, 23.571445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529442, 34.164169, 23.800674>,  <25.595615, 34.065876, 24.182722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529442, 34.164169, 23.800674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769852, -0.573133, -0.280798,
		-0.616409, -0.781752, -0.094360,
		-0.165434, 0.245730, -0.955117,
		25.479813, 34.237888, 23.514139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629116, 33.438633, 23.752171>,  <25.595615, 34.065876, 24.182722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629116, 33.438633, 23.752171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693150, 33.753975, 23.514561>,  <25.731569, 33.943180, 23.371994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693150, 33.753975, 23.514561>,  <25.629116, 33.438633, 23.752171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693150, 33.753975, 23.514561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766593, -0.478406, -0.428325,
		-0.621859, -0.386808, -0.680934,
		0.160084, 0.788357, -0.594025,
		25.741175, 33.990482, 23.336353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833462, 33.149086, 23.038052>,  <25.629116, 33.438633, 23.752171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833462, 33.149086, 23.038052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943281, 33.533710, 23.039707>,  <26.009172, 33.764484, 23.040701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943281, 33.533710, 23.039707>,  <25.833462, 33.149086, 23.038052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943281, 33.533710, 23.039707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891294, -0.252863, -0.376372,
		-0.360859, 0.107022, -0.926459,
		0.274547, 0.961565, 0.004140,
		26.025646, 33.822182, 23.040949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146551, 33.327816, 22.353397>,  <25.833462, 33.149086, 23.038052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146551, 33.327816, 22.353397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277496, 33.605659, 22.609631>,  <26.356064, 33.772366, 22.763371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277496, 33.605659, 22.609631>,  <26.146551, 33.327816, 22.353397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277496, 33.605659, 22.609631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899173, -0.020665, -0.437105,
		-0.290381, 0.719087, -0.631342,
		0.327363, 0.694613, 0.640583,
		26.375706, 33.814045, 22.801805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490053, 33.812794, 21.988184>,  <26.146551, 33.327816, 22.353397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490053, 33.812794, 21.988184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633898, 33.866795, 22.357498>,  <26.720205, 33.899193, 22.579086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633898, 33.866795, 22.357498>,  <26.490053, 33.812794, 21.988184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633898, 33.866795, 22.357498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930832, 0.017081, -0.365049,
		-0.065052, 0.990699, -0.119518,
		0.359612, 0.134998, 0.923285,
		26.741781, 33.907295, 22.634483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982693, 34.296677, 21.939754>,  <26.490053, 33.812794, 21.988184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982693, 34.296677, 21.939754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079012, 34.174278, 22.308186>,  <27.136803, 34.100842, 22.529243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079012, 34.174278, 22.308186>,  <26.982693, 34.296677, 21.939754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079012, 34.174278, 22.308186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948713, 0.274498, -0.156830,
		-0.204845, 0.911602, 0.356399,
		0.240797, -0.305994, 0.921078,
		27.151251, 34.082481, 22.584509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449656, 34.756115, 22.206499>,  <26.982693, 34.296677, 21.939754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449656, 34.756115, 22.206499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517517, 34.424168, 22.419117>,  <27.558233, 34.224998, 22.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517517, 34.424168, 22.419117>,  <27.449656, 34.756115, 22.206499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517517, 34.424168, 22.419117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983602, 0.176080, -0.039035,
		-0.061200, 0.529449, 0.846131,
		0.169654, -0.829867, 0.531543,
		27.568413, 34.175209, 22.578579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837082, 34.992119, 22.811689>,  <27.449656, 34.756115, 22.206499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837082, 34.992119, 22.811689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907028, 34.601658, 22.760246>,  <27.948996, 34.367382, 22.729380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907028, 34.601658, 22.760246>,  <27.837082, 34.992119, 22.811689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907028, 34.601658, 22.760246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980485, 0.160728, 0.113209,
		-0.089838, -0.145896, 0.985212,
		0.174868, -0.976156, -0.128610,
		27.959488, 34.308811, 22.721663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446135, 34.732136, 23.300222>,  <27.837082, 34.992119, 22.811689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446135, 34.732136, 23.300222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426447, 34.449429, 23.017929>,  <28.414635, 34.279804, 22.848553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426447, 34.449429, 23.017929>,  <28.446135, 34.732136, 23.300222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426447, 34.449429, 23.017929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987517, 0.071417, -0.140395,
		0.149628, -0.703834, 0.694427,
		-0.049220, -0.706765, -0.705734,
		28.411680, 34.237400, 22.806210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960901, 34.155704, 23.407976>,  <28.446135, 34.732136, 23.300222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960901, 34.155704, 23.407976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854818, 34.134411, 23.022888>,  <28.791168, 34.121635, 22.791836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854818, 34.134411, 23.022888>,  <28.960901, 34.155704, 23.407976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854818, 34.134411, 23.022888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963168, -0.060616, -0.261979,
		-0.044409, -0.996741, 0.067351,
		-0.265208, -0.053236, -0.962720,
		28.775255, 34.118439, 22.734072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370993, 33.675205, 23.182596>,  <28.960901, 34.155704, 23.407976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370993, 33.675205, 23.182596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255793, 33.860302, 22.847233>,  <29.186672, 33.971359, 22.646015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255793, 33.860302, 22.847233>,  <29.370993, 33.675205, 23.182596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255793, 33.860302, 22.847233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913876, -0.128810, -0.385018,
		-0.286158, -0.877087, -0.385787,
		-0.288001, 0.462738, -0.838409,
		29.169392, 33.999123, 22.595711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689268, 33.319614, 22.726303>,  <29.370993, 33.675205, 23.182596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689268, 33.319614, 22.726303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596781, 33.647171, 22.516178>,  <29.541288, 33.843704, 22.390102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596781, 33.647171, 22.516178>,  <29.689268, 33.319614, 22.726303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596781, 33.647171, 22.516178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913183, -0.003589, -0.407533,
		-0.335611, -0.573937, -0.746968,
		-0.231218, 0.818892, -0.525314,
		29.527416, 33.892838, 22.358583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914133, 33.363811, 21.933388>,  <29.689268, 33.319614, 22.726303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914133, 33.363811, 21.933388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910374, 33.723736, 22.107857>,  <29.908117, 33.939690, 22.212538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910374, 33.723736, 22.107857>,  <29.914133, 33.363811, 21.933388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910374, 33.723736, 22.107857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892573, 0.204197, -0.402016,
		-0.450805, 0.385539, -0.805068,
		-0.009400, 0.899813, 0.436175,
		29.907555, 33.993679, 22.238708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115944, 33.866650, 21.617313>,  <29.914133, 33.363811, 21.933388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115944, 33.866650, 21.617313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238539, 34.101723, 21.916832>,  <30.312096, 34.242767, 22.096542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238539, 34.101723, 21.916832>,  <30.115944, 33.866650, 21.617313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238539, 34.101723, 21.916832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859005, 0.168150, -0.483565,
		-0.410093, 0.791426, -0.453287,
		0.306486, 0.587683, 0.748796,
		30.330484, 34.278027, 22.141470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286716, 34.585320, 21.345524>,  <30.115944, 33.866650, 21.617313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286716, 34.585320, 21.345524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495752, 34.507103, 21.677467>,  <30.621174, 34.460171, 21.876633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495752, 34.507103, 21.677467>,  <30.286716, 34.585320, 21.345524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495752, 34.507103, 21.677467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850180, 0.046463, -0.524438,
		0.063994, 0.979593, 0.190530,
		0.522589, -0.195546, 0.829857,
		30.652529, 34.448441, 21.926424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059313, 34.719261, 21.301413>,  <30.286716, 34.585320, 21.345524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059313, 34.719261, 21.301413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329937, 34.901093, 21.069679>,  <31.492311, 35.010189, 20.930639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329937, 34.901093, 21.069679>,  <31.059313, 34.719261, 21.301413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329937, 34.901093, 21.069679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014972, -0.778071, -0.627998,
		-0.736234, 0.433553, -0.519607,
		0.676562, 0.454574, -0.579333,
		31.532906, 35.037464, 20.895880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898508, 34.917278, 20.590549>,  <31.059313, 34.719261, 21.301413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898508, 34.917278, 20.590549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269926, 34.773075, 20.625969>,  <31.492777, 34.686554, 20.647221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269926, 34.773075, 20.625969>,  <30.898508, 34.917278, 20.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269926, 34.773075, 20.625969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287858, -0.849863, -0.441441,
		0.234396, 0.384408, -0.892910,
		0.928545, -0.360503, 0.088549,
		31.548491, 34.664925, 20.652534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289366, 34.601791, 20.342493>,  <30.898508, 34.917278, 20.590549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289366, 34.601791, 20.342493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367058, 34.588238, 19.950344>,  <30.413673, 34.580105, 19.715055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367058, 34.588238, 19.950344>,  <30.289366, 34.601791, 20.342493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367058, 34.588238, 19.950344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525641, 0.840217, -0.133182,
		0.828236, 0.541191, 0.145386,
		0.194232, -0.033885, -0.980370,
		30.425327, 34.578072, 19.656233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758566, 35.070221, 20.152393>,  <30.289366, 34.601791, 20.342493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758566, 35.070221, 20.152393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837221, 35.239094, 19.798424>,  <29.884415, 35.340420, 19.586042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837221, 35.239094, 19.798424>,  <29.758566, 35.070221, 20.152393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837221, 35.239094, 19.798424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949124, -0.144450, -0.279819,
		-0.245963, 0.894927, 0.372300,
		0.196639, 0.422184, -0.884926,
		29.896214, 35.365749, 19.532946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475466, 35.696507, 19.782412>,  <29.758566, 35.070221, 20.152393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475466, 35.696507, 19.782412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484671, 35.430420, 19.483894>,  <29.490192, 35.270767, 19.304783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484671, 35.430420, 19.483894>,  <29.475466, 35.696507, 19.782412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484671, 35.430420, 19.483894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911177, 0.293212, -0.289453,
		0.411372, 0.686667, -0.599384,
		0.023011, -0.665218, -0.746294,
		29.491573, 35.230854, 19.260006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296480, 36.098656, 19.180538>,  <29.475466, 35.696507, 19.782412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296480, 36.098656, 19.180538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221043, 35.709755, 19.125160>,  <29.175781, 35.476414, 19.091934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221043, 35.709755, 19.125160>,  <29.296480, 36.098656, 19.180538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221043, 35.709755, 19.125160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915833, 0.225010, -0.332597,
		0.354518, 0.064068, -0.932852,
		-0.188592, -0.972248, -0.138446,
		29.164465, 35.418079, 19.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825125, 36.074081, 18.530005>,  <29.296480, 36.098656, 19.180538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825125, 36.074081, 18.530005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803602, 35.813320, 18.832561>,  <28.790688, 35.656864, 19.014095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803602, 35.813320, 18.832561>,  <28.825125, 36.074081, 18.530005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803602, 35.813320, 18.832561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995417, 0.094990, 0.011057,
		-0.079058, -0.752331, -0.654024,
		-0.053807, -0.651901, 0.756393,
		28.787460, 35.617748, 19.059479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204208, 35.620766, 18.457090>,  <28.825125, 36.074081, 18.530005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204208, 35.620766, 18.457090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268457, 35.578327, 18.849609>,  <28.307007, 35.552864, 19.085121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268457, 35.578327, 18.849609>,  <28.204208, 35.620766, 18.457090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268457, 35.578327, 18.849609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986277, 0.021206, 0.163731,
		-0.038181, -0.994130, -0.101234,
		0.160623, -0.106096, 0.981297,
		28.316645, 35.546497, 19.143999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753735, 35.076969, 18.683002>,  <28.204208, 35.620766, 18.457090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753735, 35.076969, 18.683002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837088, 35.263035, 19.027142>,  <27.887098, 35.374672, 19.233625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837088, 35.263035, 19.027142>,  <27.753735, 35.076969, 18.683002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837088, 35.263035, 19.027142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953509, -0.099188, 0.284573,
		0.217709, -0.879651, 0.422867,
		0.208382, 0.465162, 0.860350,
		27.899603, 35.402584, 19.285246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414642, 34.734928, 19.289898>,  <27.753735, 35.076969, 18.683002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414642, 34.734928, 19.289898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494328, 35.110535, 19.402012>,  <27.542139, 35.335899, 19.469280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494328, 35.110535, 19.402012>,  <27.414642, 34.734928, 19.289898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494328, 35.110535, 19.402012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897420, 0.059921, 0.437089,
		0.393640, -0.338609, 0.854630,
		0.199212, 0.939017, 0.280287,
		27.554090, 35.392239, 19.486097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046625, 34.728870, 19.853144>,  <27.414642, 34.734928, 19.289898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046625, 34.728870, 19.853144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121162, 35.115910, 19.784981>,  <27.165884, 35.348133, 19.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121162, 35.115910, 19.784981>,  <27.046625, 34.728870, 19.853144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121162, 35.115910, 19.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841772, 0.246677, 0.480178,
		0.506653, 0.053968, 0.860460,
		0.186341, 0.967594, -0.170408,
		27.177065, 35.406189, 19.733858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024290, 35.007187, 20.512539>,  <27.046625, 34.728870, 19.853144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024290, 35.007187, 20.512539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958170, 35.291138, 20.238678>,  <26.918497, 35.461510, 20.074362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958170, 35.291138, 20.238678>,  <27.024290, 35.007187, 20.512539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958170, 35.291138, 20.238678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862616, 0.232455, 0.449286,
		0.478089, 0.664862, 0.573925,
		-0.165302, 0.709875, -0.684655,
		26.908579, 35.504101, 20.033281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855106, 35.615021, 20.900888>,  <27.024290, 35.007187, 20.512539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855106, 35.615021, 20.900888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706715, 35.687119, 20.536495>,  <26.617680, 35.730377, 20.317860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706715, 35.687119, 20.536495>,  <26.855106, 35.615021, 20.900888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706715, 35.687119, 20.536495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888131, 0.217717, 0.404749,
		0.271288, 0.959225, 0.079309,
		-0.370978, 0.180241, -0.910982,
		26.595421, 35.741192, 20.263201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512758, 36.220184, 20.938820>,  <26.855106, 35.615021, 20.900888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512758, 36.220184, 20.938820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343678, 36.044285, 20.621849>,  <26.242229, 35.938744, 20.431665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343678, 36.044285, 20.621849>,  <26.512758, 36.220184, 20.938820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343678, 36.044285, 20.621849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906130, 0.220433, 0.361024,
		0.015916, 0.870648, -0.491650,
		-0.422700, -0.439753, -0.792428,
		26.216867, 35.912357, 20.384121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175293, 36.668186, 20.591915>,  <26.512758, 36.220184, 20.938820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175293, 36.668186, 20.591915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003023, 36.344418, 20.432240>,  <25.899662, 36.150154, 20.336433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003023, 36.344418, 20.432240>,  <26.175293, 36.668186, 20.591915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003023, 36.344418, 20.432240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901330, 0.363159, 0.236049,
		-0.046095, 0.461460, -0.885963,
		-0.430673, -0.809426, -0.399189,
		25.873821, 36.101589, 20.312483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590063, 36.857971, 20.435522>,  <26.175293, 36.668186, 20.591915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590063, 36.857971, 20.435522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535053, 36.462948, 20.466038>,  <25.502047, 36.225933, 20.484348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535053, 36.462948, 20.466038>,  <25.590063, 36.857971, 20.435522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535053, 36.462948, 20.466038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930698, 0.155195, 0.331235,
		-0.338953, -0.025451, -0.940459,
		-0.137524, -0.987556, 0.076291,
		25.493795, 36.166679, 20.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.961250, 36.801800, 20.010672>,  <25.590063, 36.857971, 20.435522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.961250, 36.801800, 20.010672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036421, 36.497311, 20.258938>,  <25.081524, 36.314617, 20.407898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036421, 36.497311, 20.258938>,  <24.961250, 36.801800, 20.010672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036421, 36.497311, 20.258938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932762, 0.059607, 0.355531,
		-0.307634, -0.645748, -0.698835,
		0.187928, -0.761220, 0.620667,
		25.092800, 36.268944, 20.445137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351749, 36.399036, 19.939308>,  <24.961250, 36.801800, 20.010672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351749, 36.399036, 19.939308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511639, 36.271675, 20.283131>,  <24.607573, 36.195259, 20.489424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511639, 36.271675, 20.283131>,  <24.351749, 36.399036, 19.939308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511639, 36.271675, 20.283131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898630, 0.048828, 0.435982,
		-0.180790, -0.946696, -0.266612,
		0.399724, -0.318406, 0.859556,
		24.631556, 36.176155, 20.540998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918804, 35.895542, 20.211445>,  <24.351749, 36.399036, 19.939308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918804, 35.895542, 20.211445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122011, 35.995903, 20.541042>,  <24.243937, 36.056118, 20.738802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122011, 35.995903, 20.541042>,  <23.918804, 35.895542, 20.211445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122011, 35.995903, 20.541042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848286, -0.020219, 0.529152,
		0.149424, -0.967802, 0.202563,
		0.508019, 0.250899, 0.823995,
		24.274416, 36.071171, 20.788240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.528517, 35.612892, 20.666306>,  <23.918804, 35.895542, 20.211445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.528517, 35.612892, 20.666306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.730820, 35.876152, 20.889393>,  <23.852201, 36.034107, 21.023245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.730820, 35.876152, 20.889393>,  <23.528517, 35.612892, 20.666306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730820, 35.876152, 20.889393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734935, -0.009832, 0.678066,
		0.451751, -0.752824, 0.478724,
		0.505758, 0.658148, 0.557719,
		23.882547, 36.073597, 21.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.429989, 35.410591, 21.394323>,  <23.528517, 35.612892, 20.666306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.429989, 35.410591, 21.394323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.528097, 35.798302, 21.386894>,  <23.586964, 36.030930, 21.382437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.528097, 35.798302, 21.386894>,  <23.429989, 35.410591, 21.394323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.528097, 35.798302, 21.386894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727529, 0.196693, 0.657277,
		0.640736, -0.147701, 0.753420,
		0.245273, 0.969276, -0.018572,
		23.601679, 36.089085, 21.381323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.194586, 35.487171, 22.063057>,  <23.429989, 35.410591, 21.394323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.194586, 35.487171, 22.063057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229767, 35.836975, 21.872272>,  <23.250875, 36.046860, 21.757801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229767, 35.836975, 21.872272>,  <23.194586, 35.487171, 22.063057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229767, 35.836975, 21.872272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804644, 0.344630, 0.483507,
		0.587208, 0.341261, 0.733981,
		0.087950, 0.874512, -0.476963,
		23.256151, 36.099327, 21.729183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.058121, 36.016743, 22.587833>,  <23.194586, 35.487171, 22.063057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.058121, 36.016743, 22.587833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999493, 36.159916, 22.218964>,  <22.964315, 36.245819, 21.997643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999493, 36.159916, 22.218964>,  <23.058121, 36.016743, 22.587833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999493, 36.159916, 22.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743126, 0.575465, 0.341473,
		0.652902, 0.735340, 0.181642,
		-0.146570, 0.357931, -0.922173,
		22.955523, 36.267296, 21.942312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.988968, 36.770901, 22.594835>,  <23.058121, 36.016743, 22.587833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.988968, 36.770901, 22.594835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797628, 36.676327, 22.256538>,  <22.682825, 36.619583, 22.053560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.797628, 36.676327, 22.256538>,  <22.988968, 36.770901, 22.594835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797628, 36.676327, 22.256538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824844, 0.451461, 0.340316,
		0.301358, 0.860396, -0.410977,
		-0.478347, -0.236435, -0.845744,
		22.654125, 36.605396, 22.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560478, 37.274445, 22.611502>,  <22.988968, 36.770901, 22.594835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560478, 37.274445, 22.611502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395344, 37.045967, 22.327724>,  <22.296263, 36.908882, 22.157457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395344, 37.045967, 22.327724>,  <22.560478, 37.274445, 22.611502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395344, 37.045967, 22.327724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910061, 0.290192, 0.295936,
		0.036839, 0.767809, -0.639619,
		-0.412834, -0.571190, -0.709443,
		22.271494, 36.874611, 22.114891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109478, 37.659889, 22.152523>,  <22.560478, 37.274445, 22.611502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109478, 37.659889, 22.152523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.961157, 37.288414, 22.149727>,  <21.872164, 37.065529, 22.148048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.961157, 37.288414, 22.149727>,  <22.109478, 37.659889, 22.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.961157, 37.288414, 22.149727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919598, 0.366104, 0.142505,
		-0.129783, 0.059269, -0.989769,
		-0.370805, -0.928685, -0.006990,
		21.849915, 37.009808, 22.147631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404751, 37.696026, 21.765993>,  <22.109478, 37.659889, 22.152523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404751, 37.696026, 21.765993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395601, 37.347290, 21.961693>,  <21.390112, 37.138046, 22.079113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395601, 37.347290, 21.961693>,  <21.404751, 37.696026, 21.765993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395601, 37.347290, 21.961693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946829, 0.175985, 0.269339,
		-0.320922, -0.457076, -0.829512,
		-0.022873, -0.871844, 0.489250,
		21.388739, 37.085735, 22.108467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714451, 37.335861, 21.569378>,  <21.404751, 37.696026, 21.765993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714451, 37.335861, 21.569378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827847, 37.173710, 21.917011>,  <20.895884, 37.076420, 22.125591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827847, 37.173710, 21.917011>,  <20.714451, 37.335861, 21.569378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827847, 37.173710, 21.917011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924531, 0.125177, 0.359962,
		-0.254709, -0.905539, -0.339297,
		0.283488, -0.405376, 0.869083,
		20.912893, 37.052097, 22.177736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150120, 36.910465, 21.835381>,  <20.714451, 37.335861, 21.569378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150120, 36.910465, 21.835381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354490, 37.038368, 22.154556>,  <20.477112, 37.115108, 22.346062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.354490, 37.038368, 22.154556>,  <20.150120, 36.910465, 21.835381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.354490, 37.038368, 22.154556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859281, 0.163746, 0.484586,
		0.024289, -0.933244, 0.358421,
		0.510927, 0.319755, 0.797942,
		20.507769, 37.134296, 22.393938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075129, 36.464611, 22.406515>,  <20.150120, 36.910465, 21.835381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.075129, 36.464611, 22.406515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.108250, 36.863159, 22.414471>,  <20.128122, 37.102287, 22.419243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.108250, 36.863159, 22.414471>,  <20.075129, 36.464611, 22.406515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108250, 36.863159, 22.414471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966143, 0.075364, 0.246756,
		0.244361, -0.039645, 0.968874,
		0.082801, 0.996367, 0.019887,
		20.133089, 37.162071, 22.420437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530994, 36.701675, 22.839775>,  <20.075129, 36.464611, 22.406515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530994, 36.701675, 22.839775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647749, 37.044098, 22.669140>,  <19.717802, 37.249550, 22.566759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.647749, 37.044098, 22.669140>,  <19.530994, 36.701675, 22.839775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647749, 37.044098, 22.669140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867648, 0.424671, 0.258538,
		0.402480, 0.294661, 0.866709,
		0.291885, 0.856055, -0.426584,
		19.735313, 37.300915, 22.541164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436367, 37.266819, 23.360828>,  <19.530994, 36.701675, 22.839775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.436367, 37.266819, 23.360828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396433, 37.340015, 22.969616>,  <19.372473, 37.383934, 22.734888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.396433, 37.340015, 22.969616>,  <19.436367, 37.266819, 23.360828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.396433, 37.340015, 22.969616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928147, 0.337101, 0.157817,
		0.358575, 0.923513, 0.136188,
		-0.099837, 0.182992, -0.978032,
		19.366482, 37.394913, 22.676207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982456, 37.861694, 23.502823>,  <19.436367, 37.266819, 23.360828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982456, 37.861694, 23.502823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673883, 37.643589, 23.371624>,  <18.488739, 37.512726, 23.292904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673883, 37.643589, 23.371624>,  <18.982456, 37.861694, 23.502823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673883, 37.643589, 23.371624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586274, -0.809428, -0.033303,
		-0.247331, -0.217987, 0.944092,
		-0.771434, -0.545260, -0.327997,
		18.442453, 37.480011, 23.273226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.499626, 25.305597, 28.055794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875643, 25.213795, 28.156704>,  <29.101254, 25.158712, 28.217251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.875643, 25.213795, 28.156704>,  <28.499626, 25.305597, 28.055794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875643, 25.213795, 28.156704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340806, 0.603959, -0.720475,
		0.012990, 0.763255, 0.645966,
		0.940044, -0.229508, 0.252276,
		29.157656, 25.144941, 28.232388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841518, 25.991783, 28.256256>,  <28.499626, 25.305597, 28.055794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841518, 25.991783, 28.256256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117338, 25.726547, 28.139751>,  <29.282829, 25.567406, 28.069849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.117338, 25.726547, 28.139751>,  <28.841518, 25.991783, 28.256256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117338, 25.726547, 28.139751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383722, 0.675571, -0.629573,
		0.614232, 0.322358, 0.720281,
		0.689549, -0.663091, -0.291261,
		29.324203, 25.527620, 28.052374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584801, 26.353273, 28.294121>,  <28.841518, 25.991783, 28.256256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584801, 26.353273, 28.294121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.636909, 26.058464, 28.028843>,  <29.668175, 25.881578, 27.869677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.636909, 26.058464, 28.028843>,  <29.584801, 26.353273, 28.294121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636909, 26.058464, 28.028843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253976, 0.671381, -0.696235,
		0.958397, -0.077735, 0.274649,
		0.130272, -0.737024, -0.663193,
		29.675991, 25.837357, 27.829885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216673, 26.431236, 27.950851>,  <29.584801, 26.353273, 28.294121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216673, 26.431236, 27.950851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.004812, 26.200474, 27.702126>,  <29.877697, 26.062017, 27.552891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.004812, 26.200474, 27.702126>,  <30.216673, 26.431236, 27.950851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004812, 26.200474, 27.702126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202029, 0.626184, -0.753046,
		0.823805, -0.524475, -0.215107,
		-0.529650, -0.576905, -0.621813,
		29.845917, 26.027403, 27.515581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596537, 26.470898, 27.420820>,  <30.216673, 26.431236, 27.950851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596537, 26.470898, 27.420820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.270779, 26.309334, 27.254150>,  <30.075325, 26.212395, 27.154148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.270779, 26.309334, 27.254150>,  <30.596537, 26.470898, 27.420820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270779, 26.309334, 27.254150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170287, 0.520080, -0.836970,
		0.554764, -0.752579, -0.354770,
		-0.814395, -0.403909, -0.416676,
		30.026461, 26.188160, 27.129147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798912, 26.212936, 26.793459>,  <30.596537, 26.470898, 27.420820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798912, 26.212936, 26.793459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408409, 26.296906, 26.772102>,  <30.174107, 26.347286, 26.759289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.408409, 26.296906, 26.772102>,  <30.798912, 26.212936, 26.793459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408409, 26.296906, 26.772102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154251, 0.500734, -0.851746,
		-0.152065, -0.839761, -0.521227,
		-0.976260, 0.209921, -0.053390,
		30.115532, 26.359882, 26.756086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728449, 26.410440, 26.114227>,  <30.798912, 26.212936, 26.793459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728449, 26.410440, 26.114227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.397102, 26.539417, 26.297459>,  <30.198294, 26.616802, 26.407398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.397102, 26.539417, 26.297459>,  <30.728449, 26.410440, 26.114227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397102, 26.539417, 26.297459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025251, 0.795408, -0.605548,
		-0.559614, -0.513184, -0.650749,
		-0.828368, 0.322441, 0.458080,
		30.148592, 26.636150, 26.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280424, 26.675781, 25.551323>,  <30.728449, 26.410440, 26.114227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280424, 26.675781, 25.551323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.135204, 26.837948, 25.886902>,  <30.048073, 26.935247, 26.088249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.135204, 26.837948, 25.886902>,  <30.280424, 26.675781, 25.551323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135204, 26.837948, 25.886902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377468, 0.759196, -0.530226,
		-0.851888, -0.509173, -0.122592,
		-0.363048, 0.405418, 0.838947,
		30.026289, 26.959574, 26.138586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650898, 27.067402, 25.284515>,  <30.280424, 26.675781, 25.551323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650898, 27.067402, 25.284515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743149, 27.208984, 25.647068>,  <29.798500, 27.293934, 25.864599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.743149, 27.208984, 25.647068>,  <29.650898, 27.067402, 25.284515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743149, 27.208984, 25.647068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214659, 0.927050, -0.307407,
		-0.949069, -0.123666, 0.289783,
		0.230627, 0.353955, 0.906381,
		29.812338, 27.315170, 25.918982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122757, 27.445976, 25.384613>,  <29.650898, 27.067402, 25.284515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122757, 27.445976, 25.384613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371424, 27.602688, 25.655918>,  <29.520624, 27.696714, 25.818701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.371424, 27.602688, 25.655918>,  <29.122757, 27.445976, 25.384613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371424, 27.602688, 25.655918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323400, 0.917053, -0.233293,
		-0.713401, -0.074319, 0.696804,
		0.621668, 0.391778, 0.678262,
		29.557924, 27.720221, 25.859396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751930, 27.958685, 25.693943>,  <29.122757, 27.445976, 25.384613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751930, 27.958685, 25.693943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.131046, 28.058018, 25.773968>,  <29.358517, 28.117617, 25.821981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.131046, 28.058018, 25.773968>,  <28.751930, 27.958685, 25.693943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131046, 28.058018, 25.773968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192923, 0.946049, -0.260332,
		-0.253916, 0.208144, 0.944565,
		0.947791, 0.248330, 0.200061,
		29.415384, 28.132517, 25.833986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692116, 28.528893, 26.074175>,  <28.751930, 27.958685, 25.693943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692116, 28.528893, 26.074175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.057032, 28.549461, 25.911652>,  <29.275980, 28.561802, 25.814137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.057032, 28.549461, 25.911652>,  <28.692116, 28.528893, 26.074175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057032, 28.549461, 25.911652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192374, 0.929632, -0.314288,
		0.361557, 0.364885, 0.857984,
		0.912288, 0.051420, -0.406309,
		29.330717, 28.564888, 25.789759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075790, 29.169647, 26.274208>,  <28.692116, 28.528893, 26.074175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075790, 29.169647, 26.274208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.239994, 29.068371, 25.923809>,  <29.338516, 29.007605, 25.713570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.239994, 29.068371, 25.923809>,  <29.075790, 29.169647, 26.274208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239994, 29.068371, 25.923809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235034, 0.898837, -0.369935,
		0.881045, 0.357752, 0.309472,
		0.410510, -0.253193, -0.876000,
		29.363148, 28.992413, 25.661009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471113, 29.712776, 26.135492>,  <29.075790, 29.169647, 26.274208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471113, 29.712776, 26.135492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.430380, 29.528934, 25.782585>,  <29.405941, 29.418631, 25.570841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.430380, 29.528934, 25.782585>,  <29.471113, 29.712776, 26.135492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430380, 29.528934, 25.782585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273347, 0.865668, -0.419406,
		0.956510, 0.198457, -0.213783,
		-0.101831, -0.459603, -0.882267,
		29.399830, 29.391054, 25.517904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770025, 30.136404, 25.691206>,  <29.471113, 29.712776, 26.135492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770025, 30.136404, 25.691206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.520990, 29.913788, 25.471153>,  <29.371569, 29.780218, 25.339121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.520990, 29.913788, 25.471153>,  <29.770025, 30.136404, 25.691206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520990, 29.913788, 25.471153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202679, 0.793691, -0.573565,
		0.755845, -0.245597, -0.606944,
		-0.622591, -0.556541, -0.550130,
		29.334213, 29.746826, 25.306114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870644, 30.272848, 24.929846>,  <29.770025, 30.136404, 25.691206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870644, 30.272848, 24.929846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.496510, 30.134514, 24.959633>,  <29.272030, 30.051514, 24.977505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.496510, 30.134514, 24.959633>,  <29.870644, 30.272848, 24.929846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496510, 30.134514, 24.959633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326317, 0.762135, -0.559167,
		0.136626, -0.547308, -0.825704,
		-0.935335, -0.345838, 0.074469,
		29.215910, 30.030762, 24.981974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608646, 30.125252, 24.299957>,  <29.870644, 30.272848, 24.929846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608646, 30.125252, 24.299957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.292747, 30.198540, 24.534130>,  <29.103209, 30.242514, 24.674635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.292747, 30.198540, 24.534130>,  <29.608646, 30.125252, 24.299957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292747, 30.198540, 24.534130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345596, 0.655594, -0.671387,
		-0.506819, -0.732548, -0.454432,
		-0.789745, 0.183222, 0.585434,
		29.055824, 30.253506, 24.709761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183779, 30.369677, 23.866865>,  <29.608646, 30.125252, 24.299957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183779, 30.369677, 23.866865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.969212, 30.448723, 24.195061>,  <28.840471, 30.496151, 24.391979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.969212, 30.448723, 24.195061>,  <29.183779, 30.369677, 23.866865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969212, 30.448723, 24.195061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470637, 0.736950, -0.485186,
		-0.700541, -0.646416, -0.302307,
		-0.536417, 0.197616, 0.820490,
		28.808287, 30.508007, 24.441208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580095, 30.497332, 23.542191>,  <29.183779, 30.369677, 23.866865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580095, 30.497332, 23.542191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.625015, 30.668179, 23.901070>,  <28.651966, 30.770687, 24.116396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.625015, 30.668179, 23.901070>,  <28.580095, 30.497332, 23.542191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625015, 30.668179, 23.901070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373976, 0.854688, -0.360070,
		-0.920615, -0.295094, 0.255711,
		0.112299, 0.427116, 0.897196,
		28.658705, 30.796314, 24.170229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083881, 31.015329, 23.598524>,  <28.580095, 30.497332, 23.542191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083881, 31.015329, 23.598524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308580, 31.120922, 23.912148>,  <28.443399, 31.184278, 24.100323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.308580, 31.120922, 23.912148>,  <28.083881, 31.015329, 23.598524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308580, 31.120922, 23.912148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181229, 0.963972, -0.194714,
		-0.807214, -0.032714, 0.589352,
		0.561749, 0.263984, 0.784060,
		28.477104, 31.200117, 24.147366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714367, 31.505934, 23.954195>,  <28.083881, 31.015329, 23.598524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714367, 31.505934, 23.954195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093605, 31.567497, 24.065498>,  <28.321148, 31.604435, 24.132280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093605, 31.567497, 24.065498>,  <27.714367, 31.505934, 23.954195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093605, 31.567497, 24.065498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142743, 0.987934, -0.060084,
		-0.284149, 0.017246, 0.958625,
		0.948095, 0.153909, 0.278258,
		28.378033, 31.613670, 24.148975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578217, 32.140247, 24.209187>,  <27.714367, 31.505934, 23.954195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578217, 32.140247, 24.209187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.972511, 32.118080, 24.145618>,  <28.209087, 32.104778, 24.107477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.972511, 32.118080, 24.145618>,  <27.578217, 32.140247, 24.209187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972511, 32.118080, 24.145618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005903, 0.932264, -0.361731,
		0.168203, 0.357509, 0.918638,
		0.985735, -0.055422, -0.158920,
		28.268232, 32.101452, 24.097942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979586, 32.615044, 24.378750>,  <27.578217, 32.140247, 24.209187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979586, 32.615044, 24.378750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581953, 32.657726, 24.386879>,  <26.343372, 32.683338, 24.391756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.581953, 32.657726, 24.386879>,  <26.979586, 32.615044, 24.378750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581953, 32.657726, 24.386879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092556, -0.929982, 0.355761,
		0.056862, 0.351775, 0.934356,
		-0.994083, 0.106709, 0.020321,
		26.283728, 32.689739, 24.392975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790529, 32.316860, 25.041754>,  <26.979586, 32.615044, 24.378750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790529, 32.316860, 25.041754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.432985, 32.323242, 24.862530>,  <26.218458, 32.327072, 24.754995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.432985, 32.323242, 24.862530>,  <26.790529, 32.316860, 25.041754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432985, 32.323242, 24.862530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230179, -0.873936, 0.428081,
		-0.384748, 0.485779, 0.784848,
		-0.893860, 0.015952, -0.448062,
		26.164827, 32.328030, 24.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429886, 32.193577, 25.598598>,  <26.790529, 32.316860, 25.041754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429886, 32.193577, 25.598598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197727, 32.077198, 25.294365>,  <26.058432, 32.007370, 25.111824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.197727, 32.077198, 25.294365>,  <26.429886, 32.193577, 25.598598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197727, 32.077198, 25.294365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036307, -0.923824, 0.381092,
		-0.813523, 0.248800, 0.525622,
		-0.580398, -0.290944, -0.760585,
		26.023607, 31.989916, 25.066189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786331, 31.926054, 25.888729>,  <26.429886, 32.193577, 25.598598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786331, 31.926054, 25.888729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.862450, 31.742950, 25.541340>,  <25.908121, 31.633089, 25.332907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.862450, 31.742950, 25.541340>,  <25.786331, 31.926054, 25.888729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862450, 31.742950, 25.541340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056387, -0.888274, 0.455841,
		-0.980106, -0.037773, -0.194846,
		0.190295, -0.457759, -0.868472,
		25.919538, 31.605623, 25.280798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298054, 31.347141, 25.841705>,  <25.786331, 31.926054, 25.888729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298054, 31.347141, 25.841705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.604849, 31.276413, 25.594978>,  <25.788925, 31.233976, 25.446941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.604849, 31.276413, 25.594978>,  <25.298054, 31.347141, 25.841705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604849, 31.276413, 25.594978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064556, -0.935140, 0.348347,
		-0.638408, -0.306997, -0.705825,
		0.766987, -0.176823, -0.616819,
		25.834946, 31.223366, 25.409933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191828, 30.610729, 25.495306>,  <25.298054, 31.347141, 25.841705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191828, 30.610729, 25.495306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.583202, 30.691696, 25.478874>,  <25.818027, 30.740276, 25.469015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.583202, 30.691696, 25.478874>,  <25.191828, 30.610729, 25.495306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583202, 30.691696, 25.478874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204419, -0.920544, 0.332885,
		0.029565, -0.334105, -0.942072,
		0.978437, 0.202419, -0.041081,
		25.876734, 30.752422, 25.466549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495905, 29.918037, 25.347765>,  <25.191828, 30.610729, 25.495306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495905, 29.918037, 25.347765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.826387, 30.125542, 25.435650>,  <26.024677, 30.250044, 25.488380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.826387, 30.125542, 25.435650>,  <25.495905, 29.918037, 25.347765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826387, 30.125542, 25.435650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389410, -0.807695, 0.442705,
		0.407118, -0.280208, -0.869333,
		0.826205, 0.518760, 0.219711,
		26.074249, 30.281170, 25.501564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120117, 29.534121, 25.193615>,  <25.495905, 29.918037, 25.347765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120117, 29.534121, 25.193615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.253620, 29.819073, 25.440556>,  <26.333723, 29.990044, 25.588720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.253620, 29.819073, 25.440556>,  <26.120117, 29.534121, 25.193615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253620, 29.819073, 25.440556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567746, -0.674710, 0.471626,
		0.752509, 0.193089, -0.629640,
		0.333759, 0.712379, 0.617351,
		26.353748, 30.032785, 25.625761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894281, 29.385384, 25.261652>,  <26.120117, 29.534121, 25.193615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894281, 29.385384, 25.261652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.778103, 29.588364, 25.586155>,  <26.708395, 29.710152, 25.780857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.778103, 29.588364, 25.586155>,  <26.894281, 29.385384, 25.261652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778103, 29.588364, 25.586155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552281, -0.603443, 0.575188,
		0.781426, 0.615103, -0.104986,
		-0.290447, 0.507448, 0.811256,
		26.690969, 29.740599, 25.829533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415323, 29.522970, 25.670088>,  <26.894281, 29.385384, 25.261652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415323, 29.522970, 25.670088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.135607, 29.559731, 25.953651>,  <26.967777, 29.581787, 26.123789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.135607, 29.559731, 25.953651>,  <27.415323, 29.522970, 25.670088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135607, 29.559731, 25.953651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563492, -0.539345, 0.625766,
		0.439853, 0.837055, 0.325373,
		-0.699289, 0.091900, 0.708907,
		26.925819, 29.587301, 26.166323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716530, 29.762028, 26.305557>,  <27.415323, 29.522970, 25.670088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716530, 29.762028, 26.305557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.376553, 29.617130, 26.458591>,  <27.172565, 29.530191, 26.550413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.376553, 29.617130, 26.458591>,  <27.716530, 29.762028, 26.305557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376553, 29.617130, 26.458591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526155, -0.621433, 0.580501,
		0.027470, 0.694694, 0.718781,
		-0.849945, -0.362244, 0.382587,
		27.121569, 29.508457, 26.573368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922089, 29.661358, 26.967537>,  <27.716530, 29.762028, 26.305557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922089, 29.661358, 26.967537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.590315, 29.447220, 26.903728>,  <27.391251, 29.318737, 26.865444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.590315, 29.447220, 26.903728>,  <27.922089, 29.661358, 26.967537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590315, 29.447220, 26.903728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295237, -0.662547, 0.688379,
		-0.474208, 0.523869, 0.707593,
		-0.829434, -0.535343, -0.159520,
		27.341484, 29.286617, 26.855873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658554, 29.433165, 27.552971>,  <27.922089, 29.661358, 26.967537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658554, 29.433165, 27.552971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.444094, 29.158203, 27.357006>,  <27.315416, 28.993225, 27.239428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.444094, 29.158203, 27.357006>,  <27.658554, 29.433165, 27.552971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444094, 29.158203, 27.357006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128264, -0.639985, 0.757606,
		-0.834319, 0.343355, 0.431299,
		-0.536153, -0.687406, -0.489912,
		27.283247, 28.951981, 27.210033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222097, 29.119402, 28.063093>,  <27.658554, 29.433165, 27.552971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222097, 29.119402, 28.063093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258221, 28.849110, 27.770454>,  <27.279894, 28.686934, 27.594872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.258221, 28.849110, 27.770454>,  <27.222097, 29.119402, 28.063093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258221, 28.849110, 27.770454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015092, -0.733585, 0.679431,
		-0.995800, -0.072399, -0.056051,
		0.090309, -0.675731, -0.731596,
		27.285313, 28.646391, 27.550976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605108, 28.613668, 28.112139>,  <27.222097, 29.119402, 28.063093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605108, 28.613668, 28.112139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890385, 28.434025, 27.896858>,  <27.061550, 28.326239, 27.767689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.890385, 28.434025, 27.896858>,  <26.605108, 28.613668, 28.112139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890385, 28.434025, 27.896858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063279, -0.805911, 0.588646,
		-0.698108, -0.385760, -0.603187,
		0.713191, -0.449107, -0.538202,
		27.104342, 28.299292, 27.735397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312447, 27.941332, 28.027992>,  <26.605108, 28.613668, 28.112139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312447, 27.941332, 28.027992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.694393, 27.878170, 27.927357>,  <26.923561, 27.840273, 27.866976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.694393, 27.878170, 27.927357>,  <26.312447, 27.941332, 28.027992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694393, 27.878170, 27.927357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036102, -0.779019, 0.625960,
		-0.294836, -0.606790, -0.738158,
		0.954866, -0.157906, -0.251589,
		26.980852, 27.830799, 27.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361824, 27.253561, 27.732553>,  <26.312447, 27.941332, 28.027992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361824, 27.253561, 27.732553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.714636, 27.378010, 27.874104>,  <26.926323, 27.452679, 27.959034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.714636, 27.378010, 27.874104>,  <26.361824, 27.253561, 27.732553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714636, 27.378010, 27.874104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098636, -0.856291, 0.506988,
		0.460753, -0.412274, -0.785962,
		0.882031, 0.311120, 0.353873,
		26.979244, 27.471346, 27.980265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760010, 26.778490, 27.464333>,  <26.361824, 27.253561, 27.732553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760010, 26.778490, 27.464333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.902267, 26.957233, 27.792683>,  <26.987623, 27.064480, 27.989693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.902267, 26.957233, 27.792683>,  <26.760010, 26.778490, 27.464333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902267, 26.957233, 27.792683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071568, -0.888738, 0.452794,
		0.931877, -0.102286, -0.348056,
		0.355646, 0.446858, 0.820874,
		27.008961, 27.091291, 28.038944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.323799, 26.310276, 27.736626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258507, 26.551743, 28.048763>,  <27.219332, 26.696623, 28.236046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258507, 26.551743, 28.048763>,  <27.323799, 26.310276, 27.736626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258507, 26.551743, 28.048763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194751, -0.755675, 0.625321,
		0.967175, 0.254045, 0.005785,
		-0.163232, 0.603669, 0.780346,
		27.209538, 26.732843, 28.282867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892553, 26.295908, 28.150810>,  <27.323799, 26.310276, 27.736626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892553, 26.295908, 28.150810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596527, 26.413849, 28.392593>,  <27.418911, 26.484613, 28.537663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596527, 26.413849, 28.392593>,  <27.892553, 26.295908, 28.150810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596527, 26.413849, 28.392593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121028, -0.825708, 0.550962,
		0.661557, 0.480903, 0.575391,
		-0.740064, 0.294854, 0.604456,
		27.374508, 26.502306, 28.573931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128363, 26.099854, 28.760378>,  <27.892553, 26.295908, 28.150810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128363, 26.099854, 28.760378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.740011, 26.163486, 28.832031>,  <27.507000, 26.201666, 28.875023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.740011, 26.163486, 28.832031>,  <28.128363, 26.099854, 28.760378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740011, 26.163486, 28.832031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042870, -0.620285, 0.783204,
		0.235710, 0.768075, 0.595401,
		-0.970877, 0.159084, 0.179135,
		27.448748, 26.211212, 28.885773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177561, 26.123501, 29.455582>,  <28.128363, 26.099854, 28.760378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177561, 26.123501, 29.455582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807867, 26.047047, 29.323368>,  <27.586050, 26.001175, 29.244040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.807867, 26.047047, 29.323368>,  <28.177561, 26.123501, 29.455582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807867, 26.047047, 29.323368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106821, -0.701678, 0.704441,
		-0.366574, 0.686379, 0.628099,
		-0.924237, -0.191135, -0.330536,
		27.530596, 25.989706, 29.224207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727715, 26.123686, 30.067125>,  <28.177561, 26.123501, 29.455582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727715, 26.123686, 30.067125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.530951, 25.920380, 29.784370>,  <27.412891, 25.798395, 29.614717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.530951, 25.920380, 29.784370>,  <27.727715, 26.123686, 30.067125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530951, 25.920380, 29.784370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064083, -0.788574, 0.611592,
		-0.868284, 0.346148, 0.355337,
		-0.491910, -0.508265, -0.706888,
		27.383377, 25.767900, 29.572304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195295, 25.753101, 30.389883>,  <27.727715, 26.123686, 30.067125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195295, 25.753101, 30.389883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.221384, 25.565449, 30.037598>,  <27.237038, 25.452856, 29.826225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.221384, 25.565449, 30.037598>,  <27.195295, 25.753101, 30.389883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221384, 25.565449, 30.037598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302937, -0.850250, 0.430471,
		-0.950776, 0.238725, -0.197572,
		0.065221, -0.469133, -0.880716,
		27.240950, 25.424709, 29.773382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691095, 25.352934, 30.484631>,  <27.195295, 25.753101, 30.389883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691095, 25.352934, 30.484631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879807, 25.168522, 30.183998>,  <26.993034, 25.057875, 30.003618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.879807, 25.168522, 30.183998>,  <26.691095, 25.352934, 30.484631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879807, 25.168522, 30.183998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222804, -0.887080, 0.404287,
		-0.853100, -0.023281, -0.521227,
		0.471782, -0.461029, -0.751581,
		27.021341, 25.030212, 29.958523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252947, 24.874706, 30.169336>,  <26.691095, 25.352934, 30.484631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252947, 24.874706, 30.169336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.615469, 24.737820, 30.070141>,  <26.832983, 24.655687, 30.010624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.615469, 24.737820, 30.070141>,  <26.252947, 24.874706, 30.169336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615469, 24.737820, 30.070141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199320, -0.863540, 0.463217,
		-0.372669, -0.370387, -0.850842,
		0.906306, -0.342216, -0.247989,
		26.887362, 24.635155, 29.995745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138870, 24.205435, 29.898775>,  <26.252947, 24.874706, 30.169336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138870, 24.205435, 29.898775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.524683, 24.204563, 30.004356>,  <26.756170, 24.204041, 30.067705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.524683, 24.204563, 30.004356>,  <26.138870, 24.205435, 29.898775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524683, 24.204563, 30.004356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093546, -0.937885, 0.334098,
		0.246832, -0.346941, -0.904824,
		0.964533, -0.002177, 0.263955,
		26.814043, 24.203911, 30.083542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306162, 23.551609, 29.752630>,  <26.138870, 24.205435, 29.898775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306162, 23.551609, 29.752630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.600849, 23.664379, 29.998482>,  <26.777660, 23.732040, 30.145992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.600849, 23.664379, 29.998482>,  <26.306162, 23.551609, 29.752630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600849, 23.664379, 29.998482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045182, -0.927434, 0.371247,
		0.674690, -0.245734, -0.695994,
		0.736717, 0.281923, 0.614628,
		26.821865, 23.748957, 30.182871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673378, 22.903465, 29.917410>,  <26.306162, 23.551609, 29.752630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673378, 22.903465, 29.917410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.810875, 23.158089, 30.193565>,  <26.893373, 23.310863, 30.359259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.810875, 23.158089, 30.193565>,  <26.673378, 22.903465, 29.917410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810875, 23.158089, 30.193565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230840, -0.769907, 0.594943,
		0.910249, -0.045139, -0.411594,
		0.343744, 0.636558, 0.690387,
		26.913998, 23.349056, 30.400681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267694, 22.647543, 29.981968>,  <26.673378, 22.903465, 29.917410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267694, 22.647543, 29.981968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175709, 22.862595, 30.306454>,  <27.120518, 22.991627, 30.501144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.175709, 22.862595, 30.306454>,  <27.267694, 22.647543, 29.981968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175709, 22.862595, 30.306454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286514, -0.759211, 0.584387,
		0.930068, 0.366813, 0.020553,
		-0.229965, 0.537631, 0.811215,
		27.106720, 23.023884, 30.549818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754955, 22.594679, 30.384186>,  <27.267694, 22.647543, 29.981968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754955, 22.594679, 30.384186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455425, 22.671494, 30.637920>,  <27.275707, 22.717583, 30.790161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455425, 22.671494, 30.637920>,  <27.754955, 22.594679, 30.384186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455425, 22.671494, 30.637920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286064, -0.769711, 0.570712,
		0.597856, 0.608824, 0.521442,
		-0.748823, 0.192038, 0.634339,
		27.230778, 22.729105, 30.828222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079144, 22.539553, 31.017681>,  <27.754955, 22.594679, 30.384186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079144, 22.539553, 31.017681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.686308, 22.489120, 31.073692>,  <27.450607, 22.458862, 31.107300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.686308, 22.489120, 31.073692>,  <28.079144, 22.539553, 31.017681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686308, 22.489120, 31.073692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187891, -0.711243, 0.677370,
		0.014194, 0.691547, 0.722192,
		-0.982087, -0.126079, 0.140030,
		27.391682, 22.451296, 31.115702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134369, 22.443903, 31.744066>,  <28.079144, 22.539553, 31.017681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134369, 22.443903, 31.744066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.769531, 22.330086, 31.626003>,  <27.550629, 22.261795, 31.555164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.769531, 22.330086, 31.626003>,  <28.134369, 22.443903, 31.744066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769531, 22.330086, 31.626003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010663, -0.703226, 0.710887,
		-0.409842, 0.651543, 0.638374,
		-0.912094, -0.284544, -0.295159,
		27.495903, 22.244722, 31.537455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809664, 22.348677, 32.321270>,  <28.134369, 22.443903, 31.744066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809664, 22.348677, 32.321270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.547489, 22.165173, 32.081291>,  <27.390184, 22.055071, 31.937304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.547489, 22.165173, 32.081291>,  <27.809664, 22.348677, 32.321270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547489, 22.165173, 32.081291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151589, -0.698298, 0.699571,
		-0.739880, 0.549472, 0.388148,
		-0.655437, -0.458760, -0.599951,
		27.350859, 22.027544, 31.901306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282068, 22.297852, 32.693867>,  <27.809664, 22.348677, 32.321270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282068, 22.297852, 32.693867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.257168, 22.004459, 32.423126>,  <27.242228, 21.828424, 32.260681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.257168, 22.004459, 32.423126>,  <27.282068, 22.297852, 32.693867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257168, 22.004459, 32.423126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516374, -0.556679, 0.650742,
		-0.854097, 0.390021, -0.344095,
		-0.062252, -0.733479, -0.676855,
		27.238493, 21.784416, 32.220070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612341, 21.941568, 32.853470>,  <27.282068, 22.297852, 32.693867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612341, 21.941568, 32.853470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.847269, 21.687523, 32.652798>,  <26.988226, 21.535095, 32.532394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.847269, 21.687523, 32.652798>,  <26.612341, 21.941568, 32.853470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847269, 21.687523, 32.652798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183310, -0.708134, 0.681868,
		-0.788322, -0.308511, -0.532324,
		0.587320, -0.635112, -0.501684,
		27.023466, 21.496990, 32.502293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242958, 21.292433, 32.630394>,  <26.612341, 21.941568, 32.853470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242958, 21.292433, 32.630394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.622393, 21.168468, 32.656120>,  <26.850054, 21.094090, 32.671555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.622393, 21.168468, 32.656120>,  <26.242958, 21.292433, 32.630394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622393, 21.168468, 32.656120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269780, -0.685397, 0.676350,
		-0.165530, -0.658927, -0.733768,
		0.948587, -0.309913, 0.064311,
		26.906969, 21.075495, 32.675415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211451, 20.571205, 32.720154>,  <26.242958, 21.292433, 32.630394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211451, 20.571205, 32.720154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.585651, 20.652485, 32.835770>,  <26.810171, 20.701252, 32.905140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.585651, 20.652485, 32.835770>,  <26.211451, 20.571205, 32.720154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585651, 20.652485, 32.835770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088147, -0.657981, 0.747858,
		0.342148, -0.725101, -0.597631,
		0.935502, 0.203199, 0.289043,
		26.866302, 20.713444, 32.922482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346872, 19.960020, 33.039600>,  <26.211451, 20.571205, 32.720154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346872, 19.960020, 33.039600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.623789, 20.220573, 33.163815>,  <26.789940, 20.376905, 33.238342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.623789, 20.220573, 33.163815>,  <26.346872, 19.960020, 33.039600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623789, 20.220573, 33.163815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237067, -0.611744, 0.754698,
		0.681564, -0.448854, -0.577927,
		0.692293, 0.651383, 0.310534,
		26.831476, 20.415989, 33.256973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983498, 19.588253, 33.118263>,  <26.346872, 19.960020, 33.039600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983498, 19.588253, 33.118263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005827, 19.915131, 33.347725>,  <27.019224, 20.111258, 33.485401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.005827, 19.915131, 33.347725>,  <26.983498, 19.588253, 33.118263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005827, 19.915131, 33.347725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107148, -0.576136, 0.810300,
		0.992675, 0.016232, -0.119723,
		0.055824, 0.817193, 0.573655,
		27.022573, 20.160288, 33.519821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619972, 19.488235, 33.580097>,  <26.983498, 19.588253, 33.118263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619972, 19.488235, 33.580097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.340229, 19.723660, 33.742332>,  <27.172384, 19.864914, 33.839672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.340229, 19.723660, 33.742332>,  <27.619972, 19.488235, 33.580097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340229, 19.723660, 33.742332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063096, -0.616051, 0.785175,
		0.711983, 0.523526, 0.467975,
		-0.699356, 0.588559, 0.405586,
		27.130423, 19.900227, 33.864010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894682, 19.703636, 34.321991>,  <27.619972, 19.488235, 33.580097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894682, 19.703636, 34.321991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.496166, 19.695377, 34.288559>,  <27.257057, 19.690422, 34.268501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.496166, 19.695377, 34.288559>,  <27.894682, 19.703636, 34.321991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496166, 19.695377, 34.288559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062177, -0.498883, 0.864436,
		-0.059545, 0.866423, 0.495747,
		-0.996287, -0.020648, -0.083578,
		27.197281, 19.689182, 34.263485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349022, 20.311108, 34.036709>,  <27.894682, 19.703636, 34.321991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349022, 20.311108, 34.036709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734730, 20.249546, 34.122959>,  <28.966154, 20.212610, 34.174709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734730, 20.249546, 34.122959>,  <28.349022, 20.311108, 34.036709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734730, 20.249546, 34.122959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223987, 0.908268, -0.353382,
		-0.141462, 0.389054, 0.910289,
		0.964271, -0.153902, 0.215629,
		29.024012, 20.203375, 34.187649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575705, 20.926262, 34.255749>,  <28.349022, 20.311108, 34.036709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575705, 20.926262, 34.255749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926138, 20.738323, 34.212440>,  <29.136398, 20.625561, 34.186455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.926138, 20.738323, 34.212440>,  <28.575705, 20.926262, 34.255749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926138, 20.738323, 34.212440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355339, 0.780943, -0.513675,
		0.325899, 0.411551, 0.851126,
		0.876085, -0.469844, -0.108268,
		29.188963, 20.597370, 34.179958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131332, 21.427092, 34.498428>,  <28.575705, 20.926262, 34.255749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131332, 21.427092, 34.498428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311407, 21.158630, 34.262840>,  <29.419451, 20.997553, 34.121487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311407, 21.158630, 34.262840>,  <29.131332, 21.427092, 34.498428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311407, 21.158630, 34.262840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337723, 0.738571, -0.583486,
		0.826605, 0.063768, 0.559158,
		0.450186, -0.671153, -0.588971,
		29.446463, 20.957285, 34.086147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810015, 21.680073, 34.389866>,  <29.131332, 21.427092, 34.498428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810015, 21.680073, 34.389866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773991, 21.407490, 34.099350>,  <29.752377, 21.243940, 33.925041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773991, 21.407490, 34.099350>,  <29.810015, 21.680073, 34.389866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773991, 21.407490, 34.099350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453504, 0.621206, -0.639091,
		0.886693, -0.386933, 0.253099,
		-0.090058, -0.681459, -0.726294,
		29.746973, 21.203053, 33.881462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519115, 21.711205, 33.996162>,  <29.810015, 21.680073, 34.389866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519115, 21.711205, 33.996162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226074, 21.562595, 33.768032>,  <30.050249, 21.473431, 33.631153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.226074, 21.562595, 33.768032>,  <30.519115, 21.711205, 33.996162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226074, 21.562595, 33.768032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306590, 0.567969, -0.763815,
		0.607700, -0.734426, -0.302189,
		-0.732600, -0.371523, -0.570323,
		30.006294, 21.451139, 33.596935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833832, 21.665506, 33.384773>,  <30.519115, 21.711205, 33.996162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833832, 21.665506, 33.384773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437832, 21.656940, 33.329002>,  <30.200232, 21.651800, 33.295540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437832, 21.656940, 33.329002>,  <30.833832, 21.665506, 33.384773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437832, 21.656940, 33.329002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107824, 0.522429, -0.845838,
		0.090953, -0.852414, -0.514896,
		-0.990001, -0.021414, -0.139427,
		30.140831, 21.650517, 33.287174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811796, 21.367981, 32.790062>,  <30.833832, 21.665506, 33.384773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811796, 21.367981, 32.790062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459566, 21.545937, 32.855381>,  <30.248228, 21.652710, 32.894573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459566, 21.545937, 32.855381>,  <30.811796, 21.367981, 32.790062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459566, 21.545937, 32.855381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121929, 0.545662, -0.829087,
		-0.457957, -0.710161, -0.534740,
		-0.880573, 0.444887, 0.163300,
		30.195395, 21.679403, 32.904369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486578, 21.337156, 32.143372>,  <30.811796, 21.367981, 32.790062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486578, 21.337156, 32.143372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287025, 21.627186, 32.333271>,  <30.167294, 21.801205, 32.447208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287025, 21.627186, 32.333271>,  <30.486578, 21.337156, 32.143372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287025, 21.627186, 32.333271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035933, 0.530005, -0.847233,
		-0.865925, -0.439727, -0.238355,
		-0.498881, 0.725076, 0.474745,
		30.137362, 21.844709, 32.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876812, 21.506376, 31.680347>,  <30.486578, 21.337156, 32.143372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876812, 21.506376, 31.680347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901413, 21.829063, 31.915440>,  <29.916174, 22.022676, 32.056496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.901413, 21.829063, 31.915440>,  <29.876812, 21.506376, 31.680347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901413, 21.829063, 31.915440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286028, 0.578392, -0.763971,
		-0.956245, -0.121119, 0.266317,
		0.061504, 0.806717, 0.587728,
		29.919865, 22.071079, 32.091759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251415, 21.824072, 31.709497>,  <29.876812, 21.506376, 31.680347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251415, 21.824072, 31.709497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519375, 22.114723, 31.770485>,  <29.680151, 22.289114, 31.807077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519375, 22.114723, 31.770485>,  <29.251415, 21.824072, 31.709497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519375, 22.114723, 31.770485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305957, 0.457283, -0.835035,
		-0.676481, 0.512740, 0.528650,
		0.669898, 0.726629, 0.152467,
		29.720345, 22.332712, 31.816225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975996, 22.544346, 31.587894>,  <29.251415, 21.824072, 31.709497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975996, 22.544346, 31.587894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366064, 22.618717, 31.539780>,  <29.600105, 22.663340, 31.510910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366064, 22.618717, 31.539780>,  <28.975996, 22.544346, 31.587894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366064, 22.618717, 31.539780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210484, 0.609439, -0.764382,
		-0.068814, 0.770723, 0.633443,
		0.975173, 0.185930, -0.120287,
		29.658615, 22.674496, 31.503695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052593, 23.284092, 31.593494>,  <28.975996, 22.544346, 31.587894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052593, 23.284092, 31.593494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398218, 23.180721, 31.420700>,  <29.605593, 23.118700, 31.317024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398218, 23.180721, 31.420700>,  <29.052593, 23.284092, 31.593494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398218, 23.180721, 31.420700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083669, 0.772495, -0.629485,
		0.496380, 0.580059, 0.645863,
		0.864064, -0.258425, -0.431984,
		29.657436, 23.103193, 31.291105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429155, 23.926155, 31.410604>,  <29.052593, 23.284092, 31.593494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429155, 23.926155, 31.410604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598530, 23.648930, 31.177242>,  <29.700155, 23.482594, 31.037226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598530, 23.648930, 31.177242>,  <29.429155, 23.926155, 31.410604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598530, 23.648930, 31.177242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260526, 0.523624, -0.811137,
		0.867657, 0.495457, 0.041160,
		0.423436, -0.693066, -0.583406,
		29.725561, 23.441010, 31.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996000, 24.299395, 31.077183>,  <29.429155, 23.926155, 31.410604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996000, 24.299395, 31.077183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923698, 23.971573, 30.859684>,  <29.880318, 23.774879, 30.729185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.923698, 23.971573, 30.859684>,  <29.996000, 24.299395, 31.077183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923698, 23.971573, 30.859684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315397, 0.571958, -0.757225,
		0.931586, 0.034624, -0.361868,
		-0.180755, -0.819552, -0.543748,
		29.869473, 23.725708, 30.696560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440224, 24.361160, 30.436377>,  <29.996000, 24.299395, 31.077183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440224, 24.361160, 30.436377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157990, 24.085846, 30.368961>,  <29.988649, 23.920656, 30.328512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.157990, 24.085846, 30.368961>,  <30.440224, 24.361160, 30.436377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157990, 24.085846, 30.368961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272479, 0.483083, -0.832098,
		0.654142, -0.541193, -0.528401,
		-0.705587, -0.688289, -0.168541,
		29.946314, 23.879360, 30.318399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583691, 24.162600, 29.833241>,  <30.440224, 24.361160, 30.436377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583691, 24.162600, 29.833241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198597, 24.057674, 29.859581>,  <29.967541, 23.994719, 29.875385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198597, 24.057674, 29.859581>,  <30.583691, 24.162600, 29.833241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198597, 24.057674, 29.859581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172412, 0.407664, -0.896707,
		0.208372, -0.874644, -0.437698,
		-0.962733, -0.262313, 0.065853,
		29.909777, 23.978981, 29.879337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422100, 23.824387, 29.219263>,  <30.583691, 24.162600, 29.833241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422100, 23.824387, 29.219263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068871, 23.938278, 29.368450>,  <29.856932, 24.006613, 29.457962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068871, 23.938278, 29.368450>,  <30.422100, 23.824387, 29.219263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068871, 23.938278, 29.368450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237511, 0.414274, -0.878616,
		-0.404680, -0.864469, -0.298209,
		-0.883076, 0.284730, 0.372969,
		29.803947, 24.023697, 29.480341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962320, 23.526194, 28.766508>,  <30.422100, 23.824387, 29.219263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962320, 23.526194, 28.766508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778688, 23.829384, 28.951859>,  <29.668509, 24.011299, 29.063068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.778688, 23.829384, 28.951859>,  <29.962320, 23.526194, 28.766508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778688, 23.829384, 28.951859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209763, 0.414356, -0.885612,
		-0.863275, -0.503767, -0.031227,
		-0.459081, 0.757977, 0.463375,
		29.640965, 24.056776, 29.090872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360189, 23.522564, 28.379620>,  <29.962320, 23.526194, 28.766508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360189, 23.522564, 28.379620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359606, 23.863514, 28.588791>,  <29.359255, 24.068085, 28.714294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359606, 23.863514, 28.588791>,  <29.360189, 23.522564, 28.379620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359606, 23.863514, 28.588791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376675, 0.483944, -0.789883,
		-0.926344, -0.198126, 0.320363,
		-0.001459, 0.852376, 0.522928,
		29.359169, 24.119226, 28.745668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754959, 23.982494, 28.261589>,  <29.360189, 23.522564, 28.379620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754959, 23.982494, 28.261589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013088, 24.268639, 28.368782>,  <29.167967, 24.440325, 28.433098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.013088, 24.268639, 28.368782>,  <28.754959, 23.982494, 28.261589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013088, 24.268639, 28.368782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380345, 0.605115, -0.699409,
		-0.662491, 0.349420, 0.662580,
		0.645325, 0.715361, 0.267983,
		29.206686, 24.483248, 28.449177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<29.324121, 35.054096, 21.709291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.365280, 34.695950, 21.882603>,  <29.389975, 34.481060, 21.986589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.365280, 34.695950, 21.882603>,  <29.324121, 35.054096, 21.709291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365280, 34.695950, 21.882603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994690, -0.091790, 0.046535,
		-0.001895, -0.435767, -0.900058,
		0.102895, -0.895367, 0.433279,
		29.396149, 34.427338, 22.012587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657000, 34.735744, 21.611094>,  <29.324121, 35.054096, 21.709291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657000, 34.735744, 21.611094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.836172, 34.505352, 21.884621>,  <28.943676, 34.367119, 22.048737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.836172, 34.505352, 21.884621>,  <28.657000, 34.735744, 21.611094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836172, 34.505352, 21.884621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874544, -0.441231, 0.201216,
		0.185826, -0.688161, -0.701359,
		0.447931, -0.575978, 0.683819,
		28.970551, 34.332558, 22.089766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436310, 34.032051, 21.507162>,  <28.657000, 34.735744, 21.611094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436310, 34.032051, 21.507162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.575384, 34.076317, 21.879585>,  <28.658829, 34.102875, 22.103039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.575384, 34.076317, 21.879585>,  <28.436310, 34.032051, 21.507162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575384, 34.076317, 21.879585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859977, -0.358006, 0.363692,
		0.373571, -0.927138, -0.029307,
		0.347684, 0.110662, 0.931058,
		28.679689, 34.109516, 22.158903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392311, 33.392700, 21.870823>,  <28.436310, 34.032051, 21.507162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392311, 33.392700, 21.870823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.374973, 33.681503, 22.147034>,  <28.364571, 33.854786, 22.312761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.374973, 33.681503, 22.147034>,  <28.392311, 33.392700, 21.870823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374973, 33.681503, 22.147034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850031, -0.389824, 0.354239,
		0.524947, -0.571616, 0.630623,
		-0.043343, 0.722006, 0.690528,
		28.361971, 33.898106, 22.354193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091103, 33.056175, 22.459938>,  <28.392311, 33.392700, 21.870823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091103, 33.056175, 22.459938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.058222, 33.443195, 22.555515>,  <28.038494, 33.675407, 22.612862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.058222, 33.443195, 22.555515>,  <28.091103, 33.056175, 22.459938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058222, 33.443195, 22.555515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954313, -0.145527, 0.260976,
		0.287279, -0.206574, 0.935306,
		-0.082202, 0.967548, 0.238943,
		28.033562, 33.733459, 22.627197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812874, 33.061993, 23.080416>,  <28.091103, 33.056175, 22.459938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812874, 33.061993, 23.080416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.743280, 33.437820, 22.962471>,  <27.701525, 33.663315, 22.891705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.743280, 33.437820, 22.962471>,  <27.812874, 33.061993, 23.080416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743280, 33.437820, 22.962471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911186, -0.040045, 0.410044,
		0.373456, 0.340014, 0.863088,
		-0.173983, 0.939568, -0.294861,
		27.691086, 33.719692, 22.874012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526484, 33.460026, 23.607235>,  <27.812874, 33.061993, 23.080416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526484, 33.460026, 23.607235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.423592, 33.675144, 23.286083>,  <27.361856, 33.804214, 23.093393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.423592, 33.675144, 23.286083>,  <27.526484, 33.460026, 23.607235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423592, 33.675144, 23.286083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920604, 0.116226, 0.372800,
		0.293804, 0.835028, 0.465197,
		-0.257231, 0.537792, -0.802877,
		27.346422, 33.836483, 23.045219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196199, 34.190125, 23.791275>,  <27.526484, 33.460026, 23.607235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196199, 34.190125, 23.791275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.051308, 34.131554, 23.423069>,  <26.964373, 34.096413, 23.202145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.051308, 34.131554, 23.423069>,  <27.196199, 34.190125, 23.791275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051308, 34.131554, 23.423069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906281, 0.286116, 0.311115,
		0.217819, 0.946941, -0.236342,
		-0.362229, -0.146426, -0.920516,
		26.942638, 34.087627, 23.146914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719418, 34.794407, 23.544769>,  <27.196199, 34.190125, 23.791275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719418, 34.794407, 23.544769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.625910, 34.495113, 23.296413>,  <26.569805, 34.315536, 23.147400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.625910, 34.495113, 23.296413>,  <26.719418, 34.794407, 23.544769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625910, 34.495113, 23.296413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963026, 0.266134, 0.041873,
		0.133909, 0.607720, -0.782780,
		-0.233771, -0.748231, -0.620888,
		26.555779, 34.270645, 23.110147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360205, 35.062878, 22.920349>,  <26.719418, 34.794407, 23.544769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360205, 35.062878, 22.920349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.251413, 34.683971, 22.988125>,  <26.186138, 34.456627, 23.028791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.251413, 34.683971, 22.988125>,  <26.360205, 35.062878, 22.920349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251413, 34.683971, 22.988125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961764, 0.261680, -0.080835,
		0.032233, -0.184948, -0.982220,
		-0.271978, -0.947268, 0.169442,
		26.169821, 34.399792, 23.038958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886429, 34.813042, 22.358120>,  <26.360205, 35.062878, 22.920349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886429, 34.813042, 22.358120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.834217, 34.595905, 22.689972>,  <25.802891, 34.465626, 22.889084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.834217, 34.595905, 22.689972>,  <25.886429, 34.813042, 22.358120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834217, 34.595905, 22.689972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988901, 0.131187, -0.069751,
		-0.070973, -0.829528, -0.553936,
		-0.130530, -0.542838, 0.829632,
		25.795057, 34.433052, 22.938862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281530, 34.650620, 22.243357>,  <25.886429, 34.813042, 22.358120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281530, 34.650620, 22.243357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.345352, 34.533947, 22.620602>,  <25.383644, 34.463943, 22.846949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.345352, 34.533947, 22.620602>,  <25.281530, 34.650620, 22.243357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345352, 34.533947, 22.620602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890488, 0.369847, 0.265036,
		-0.426115, -0.882118, -0.200733,
		0.159553, -0.291686, 0.943113,
		25.393219, 34.446442, 22.903536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737886, 34.108360, 22.468210>,  <25.281530, 34.650620, 22.243357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737886, 34.108360, 22.468210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.856102, 34.281643, 22.808796>,  <24.927031, 34.385612, 23.013147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.856102, 34.281643, 22.808796>,  <24.737886, 34.108360, 22.468210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856102, 34.281643, 22.808796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953244, 0.192600, 0.232876,
		-0.063109, -0.880476, 0.469871,
		0.295539, 0.433205, 0.851463,
		24.944763, 34.411606, 23.064236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.204962, 33.916828, 22.868517>,  <24.737886, 34.108360, 22.468210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.204962, 33.916828, 22.868517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.382862, 34.183693, 23.107544>,  <24.489601, 34.343811, 23.250961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.382862, 34.183693, 23.107544>,  <24.204962, 33.916828, 22.868517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382862, 34.183693, 23.107544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890150, 0.255400, 0.377363,
		0.099144, -0.699759, 0.707466,
		0.444750, 0.667164, 0.597570,
		24.516287, 34.383842, 23.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.925468, 33.712761, 23.561874>,  <24.204962, 33.916828, 22.868517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.925468, 33.712761, 23.561874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.063692, 34.088116, 23.563232>,  <24.146626, 34.313328, 23.564047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.063692, 34.088116, 23.563232>,  <23.925468, 33.712761, 23.561874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063692, 34.088116, 23.563232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892162, 0.327408, 0.311208,
		0.290923, -0.110571, 0.950336,
		0.345558, 0.938391, 0.003397,
		24.167360, 34.369633, 23.564251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.783970, 33.980381, 24.191727>,  <23.925468, 33.712761, 23.561874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.783970, 33.980381, 24.191727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.843580, 34.308826, 23.971340>,  <23.879347, 34.505894, 23.839109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.843580, 34.308826, 23.971340>,  <23.783970, 33.980381, 24.191727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.843580, 34.308826, 23.971340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896693, 0.347083, 0.274726,
		0.416812, 0.453106, 0.788012,
		0.149025, 0.821114, -0.550966,
		23.888288, 34.555161, 23.806051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.523832, 34.557671, 24.558998>,  <23.783970, 33.980381, 24.191727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.523832, 34.557671, 24.558998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.500582, 34.703415, 24.187222>,  <23.486631, 34.790863, 23.964155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.500582, 34.703415, 24.187222>,  <23.523832, 34.557671, 24.558998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.500582, 34.703415, 24.187222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934389, 0.307933, 0.179150,
		0.351481, 0.878873, 0.322556,
		-0.058124, 0.364361, -0.929442,
		23.483145, 34.812721, 23.908388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.003668, 35.098961, 24.710583>,  <23.523832, 34.557671, 24.558998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.003668, 35.098961, 24.710583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047073, 35.094513, 24.312969>,  <23.073116, 35.091846, 24.074402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.047073, 35.094513, 24.312969>,  <23.003668, 35.098961, 24.710583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047073, 35.094513, 24.312969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966148, 0.234252, -0.108092,
		0.234056, 0.972113, 0.014680,
		0.108516, -0.011116, -0.994033,
		23.079628, 35.091179, 24.014759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.872059, 35.774010, 24.387644>,  <23.003668, 35.098961, 24.710583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.872059, 35.774010, 24.387644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.809715, 35.474644, 24.129780>,  <22.772308, 35.295025, 23.975061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.809715, 35.474644, 24.129780>,  <22.872059, 35.774010, 24.387644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.809715, 35.474644, 24.129780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981588, 0.190303, 0.016387,
		0.110417, 0.635346, -0.764293,
		-0.155859, -0.748412, -0.644661,
		22.762959, 35.250122, 23.936382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356552, 36.091908, 23.974276>,  <22.872059, 35.774010, 24.387644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356552, 36.091908, 23.974276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.335405, 35.697456, 23.911335>,  <22.322718, 35.460785, 23.873571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.335405, 35.697456, 23.911335>,  <22.356552, 36.091908, 23.974276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335405, 35.697456, 23.911335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995933, 0.040557, 0.080448,
		-0.072950, 0.160965, -0.984261,
		-0.052868, -0.986127, -0.157352,
		22.319546, 35.401619, 23.864130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678820, 35.955086, 23.658943>,  <22.356552, 36.091908, 23.974276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678820, 35.955086, 23.658943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.789434, 35.579098, 23.738926>,  <21.855804, 35.353504, 23.786915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.789434, 35.579098, 23.738926>,  <21.678820, 35.955086, 23.658943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.789434, 35.579098, 23.738926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923743, -0.202624, 0.325026,
		-0.265000, -0.274590, -0.924325,
		0.276539, -0.939970, 0.199955,
		21.872396, 35.297108, 23.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142662, 36.440968, 23.276274>,  <21.678820, 35.955086, 23.658943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142662, 36.440968, 23.276274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064083, 36.609924, 22.922325>,  <21.016935, 36.711296, 22.709957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064083, 36.609924, 22.922325>,  <21.142662, 36.440968, 23.276274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064083, 36.609924, 22.922325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818149, -0.426773, -0.385354,
		-0.540408, -0.799657, -0.261739,
		-0.196447, 0.422390, -0.884870,
		21.005148, 36.736641, 22.656864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288538, 35.928631, 22.781227>,  <21.142662, 36.440968, 23.276274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288538, 35.928631, 22.781227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336346, 36.276188, 22.589085>,  <21.365030, 36.484722, 22.473799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336346, 36.276188, 22.589085>,  <21.288538, 35.928631, 22.781227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336346, 36.276188, 22.589085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859216, -0.332943, -0.388454,
		-0.497456, -0.366303, -0.786358,
		0.119521, 0.868891, -0.480358,
		21.372202, 36.536854, 22.444977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342270, 35.847240, 21.890755>,  <21.288538, 35.928631, 22.781227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342270, 35.847240, 21.890755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.509203, 36.195496, 21.994926>,  <21.609364, 36.404449, 22.057430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.509203, 36.195496, 21.994926>,  <21.342270, 35.847240, 21.890755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.509203, 36.195496, 21.994926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877607, -0.311740, -0.364177,
		-0.235880, 0.380538, -0.894177,
		0.417333, 0.870637, 0.260430,
		21.634403, 36.456688, 22.073055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656996, 36.036934, 21.345301>,  <21.342270, 35.847240, 21.890755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656996, 36.036934, 21.345301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860998, 36.280914, 21.587902>,  <21.983398, 36.427303, 21.733463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.860998, 36.280914, 21.587902>,  <21.656996, 36.036934, 21.345301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860998, 36.280914, 21.587902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826820, -0.153191, -0.541203,
		-0.237198, 0.777488, -0.582452,
		0.510005, 0.609955, 0.606506,
		22.014000, 36.463902, 21.769854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254349, 36.254406, 20.858173>,  <21.656996, 36.036934, 21.345301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254349, 36.254406, 20.858173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375008, 36.391296, 21.214127>,  <22.447403, 36.473431, 21.427698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.375008, 36.391296, 21.214127>,  <22.254349, 36.254406, 20.858173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.375008, 36.391296, 21.214127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952639, -0.145944, -0.266796,
		0.038570, 0.928216, -0.370038,
		0.301649, 0.342222, 0.889883,
		22.465502, 36.493961, 21.481092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782883, 36.875603, 20.787846>,  <22.254349, 36.254406, 20.858173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782883, 36.875603, 20.787846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837868, 36.687389, 21.136490>,  <22.870859, 36.574463, 21.345676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837868, 36.687389, 21.136490>,  <22.782883, 36.875603, 20.787846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.837868, 36.687389, 21.136490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973277, -0.099250, -0.207077,
		0.183944, 0.876783, 0.444315,
		0.137464, -0.470533, 0.871609,
		22.879107, 36.546230, 21.397972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391064, 37.235783, 21.069263>,  <22.782883, 36.875603, 20.787846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391064, 37.235783, 21.069263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354483, 36.882271, 21.252815>,  <23.332535, 36.670162, 21.362946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354483, 36.882271, 21.252815>,  <23.391064, 37.235783, 21.069263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.354483, 36.882271, 21.252815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941913, -0.226315, -0.248155,
		0.323165, 0.409530, 0.853141,
		-0.091452, -0.883780, 0.458878,
		23.327047, 36.617138, 21.390478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010952, 37.310402, 21.427631>,  <23.391064, 37.235783, 21.069263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010952, 37.310402, 21.427631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.872421, 36.936092, 21.401115>,  <23.789303, 36.711506, 21.385206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.872421, 36.936092, 21.401115>,  <24.010952, 37.310402, 21.427631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872421, 36.936092, 21.401115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881891, -0.300660, -0.363141,
		0.319887, -0.184223, 0.929373,
		-0.346324, -0.935770, -0.066288,
		23.768524, 36.655361, 21.381229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468904, 36.917980, 21.839993>,  <24.010952, 37.310402, 21.427631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468904, 36.917980, 21.839993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311100, 36.656651, 21.581528>,  <24.216417, 36.499851, 21.426449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311100, 36.656651, 21.581528>,  <24.468904, 36.917980, 21.839993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311100, 36.656651, 21.581528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917285, -0.321576, -0.234900,
		-0.054324, -0.685386, 0.726151,
		-0.394510, -0.653326, -0.646163,
		24.192747, 36.460651, 21.387678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087166, 36.366608, 21.712387>,  <24.468904, 36.917980, 21.839993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087166, 36.366608, 21.712387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.830416, 36.210453, 21.448391>,  <24.676365, 36.116760, 21.289993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.830416, 36.210453, 21.448391>,  <25.087166, 36.366608, 21.712387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830416, 36.210453, 21.448391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765680, -0.372947, -0.524065,
		-0.041553, -0.841729, 0.538299,
		-0.641877, -0.390388, -0.659993,
		24.637852, 36.093338, 21.250393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268133, 35.664955, 21.578312>,  <25.087166, 36.366608, 21.712387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268133, 35.664955, 21.578312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.083927, 35.836678, 21.267540>,  <24.973404, 35.939713, 21.081078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.083927, 35.836678, 21.267540>,  <25.268133, 35.664955, 21.578312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083927, 35.836678, 21.267540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670933, -0.404724, -0.621328,
		-0.581183, -0.807399, -0.101655,
		-0.460517, 0.429309, -0.776929,
		24.945772, 35.965469, 21.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220373, 35.161644, 21.088875>,  <25.268133, 35.664955, 21.578312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220373, 35.161644, 21.088875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.176165, 35.500107, 20.880337>,  <25.149639, 35.703186, 20.755215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.176165, 35.500107, 20.880337>,  <25.220373, 35.161644, 21.088875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176165, 35.500107, 20.880337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665608, -0.326533, -0.671075,
		-0.738072, -0.421179, -0.527122,
		-0.110520, 0.846159, -0.521345,
		25.143009, 35.753956, 20.723932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219908, 34.921513, 20.348509>,  <25.220373, 35.161644, 21.088875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219908, 34.921513, 20.348509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.310087, 35.308857, 20.391304>,  <25.364195, 35.541264, 20.416981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.310087, 35.308857, 20.391304>,  <25.219908, 34.921513, 20.348509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310087, 35.308857, 20.391304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843167, -0.138917, -0.519395,
		-0.488101, 0.207304, -0.847811,
		0.225448, 0.968363, 0.106987,
		25.377722, 35.599365, 20.423401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387772, 35.031792, 19.779776>,  <25.219908, 34.921513, 20.348509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387772, 35.031792, 19.779776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.523855, 35.368111, 19.948212>,  <25.605505, 35.569901, 20.049273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.523855, 35.368111, 19.948212>,  <25.387772, 35.031792, 19.779776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.523855, 35.368111, 19.948212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836073, -0.065505, -0.544694,
		-0.430394, 0.537371, -0.725254,
		0.340210, 0.840798, 0.421088,
		25.625917, 35.620350, 20.074537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832720, 35.382942, 19.260241>,  <25.387772, 35.031792, 19.779776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832720, 35.382942, 19.260241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.945499, 35.555824, 19.602867>,  <26.013166, 35.659554, 19.808443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.945499, 35.555824, 19.602867>,  <25.832720, 35.382942, 19.260241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945499, 35.555824, 19.602867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918961, 0.134906, -0.370556,
		-0.275712, 0.891627, -0.359143,
		0.281947, 0.432205, 0.856565,
		26.030083, 35.685486, 19.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040487, 36.061031, 19.121790>,  <25.832720, 35.382942, 19.260241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040487, 36.061031, 19.121790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.208244, 35.947830, 19.466816>,  <26.308899, 35.879910, 19.673832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.208244, 35.947830, 19.466816>,  <26.040487, 36.061031, 19.121790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208244, 35.947830, 19.466816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907789, 0.125014, -0.400363,
		0.005472, 0.950936, 0.309339,
		0.419391, -0.283005, 0.862565,
		26.334063, 35.862930, 19.725586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631254, 36.437943, 19.196802>,  <26.040487, 36.061031, 19.121790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631254, 36.437943, 19.196802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.719135, 36.143147, 19.452480>,  <26.771864, 35.966267, 19.605888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.719135, 36.143147, 19.452480>,  <26.631254, 36.437943, 19.196802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719135, 36.143147, 19.452480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966742, 0.076538, -0.244034,
		0.130928, 0.671553, 0.729297,
		0.219701, -0.736992, 0.639198,
		26.785046, 35.922050, 19.644239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309801, 36.656120, 19.503838>,  <26.631254, 36.437943, 19.196802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309801, 36.656120, 19.503838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.267029, 36.260944, 19.548618>,  <27.241365, 36.023838, 19.575487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.267029, 36.260944, 19.548618>,  <27.309801, 36.656120, 19.503838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267029, 36.260944, 19.548618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994253, -0.105659, 0.017259,
		-0.005222, 0.113152, 0.993564,
		-0.106932, -0.987944, 0.111950,
		27.234949, 35.964561, 19.582203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736885, 36.479553, 20.143917>,  <27.309801, 36.656120, 19.503838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736885, 36.479553, 20.143917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.692932, 36.143723, 19.931110>,  <27.666561, 35.942223, 19.803427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.692932, 36.143723, 19.931110>,  <27.736885, 36.479553, 20.143917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692932, 36.143723, 19.931110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993632, -0.106218, -0.037601,
		-0.024940, -0.532758, 0.845900,
		-0.109882, -0.839575, -0.532014,
		27.659967, 35.891850, 19.771505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227068, 36.105465, 20.312746>,  <27.736885, 36.479553, 20.143917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227068, 36.105465, 20.312746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.131962, 35.905582, 19.979576>,  <28.074898, 35.785652, 19.779675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.131962, 35.905582, 19.979576>,  <28.227068, 36.105465, 20.312746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131962, 35.905582, 19.979576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969190, -0.178844, -0.169369,
		-0.064329, -0.847532, 0.526832,
		-0.237766, -0.499705, -0.832924,
		28.060633, 35.755672, 19.729698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639965, 35.596577, 20.389791>,  <28.227068, 36.105465, 20.312746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639965, 35.596577, 20.389791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.535017, 35.592796, 20.003822>,  <28.472048, 35.590527, 19.772242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.535017, 35.592796, 20.003822>,  <28.639965, 35.596577, 20.389791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535017, 35.592796, 20.003822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964945, -0.009415, -0.262284,
		-0.006605, -0.999911, 0.011592,
		-0.262369, -0.009453, -0.964921,
		28.456306, 35.589962, 19.714346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.289299, 28.487146, 26.725212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616325, 28.715267, 26.757061>,  <26.812542, 28.852140, 26.776171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616325, 28.715267, 26.757061>,  <26.289299, 28.487146, 26.725212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616325, 28.715267, 26.757061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510608, 0.781919, -0.357607,
		-0.266200, 0.251713, 0.930472,
		0.817568, 0.570302, 0.079620,
		26.861595, 28.886358, 26.780947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998449, 29.058954, 26.967287>,  <26.289299, 28.487146, 26.725212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998449, 29.058954, 26.967287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356075, 29.171421, 26.827805>,  <26.570650, 29.238901, 26.744114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356075, 29.171421, 26.827805>,  <25.998449, 29.058954, 26.967287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356075, 29.171421, 26.827805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410566, 0.825668, -0.386922,
		0.179127, 0.489100, 0.853636,
		0.894063, 0.281166, -0.348707,
		26.624294, 29.255772, 26.723192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035767, 29.770573, 27.142225>,  <25.998449, 29.058954, 26.967287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035767, 29.770573, 27.142225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288568, 29.705463, 26.839153>,  <26.440250, 29.666399, 26.657310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288568, 29.705463, 26.839153>,  <26.035767, 29.770573, 27.142225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288568, 29.705463, 26.839153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302232, 0.848507, -0.434386,
		0.713601, 0.503528, 0.487066,
		0.632004, -0.162771, -0.757678,
		26.478170, 29.656631, 26.611851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429886, 30.369337, 26.937029>,  <26.035767, 29.770573, 27.142225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429886, 30.369337, 26.937029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499134, 30.176567, 26.593452>,  <26.540684, 30.060905, 26.387306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499134, 30.176567, 26.593452>,  <26.429886, 30.369337, 26.937029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499134, 30.176567, 26.593452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429339, 0.747956, -0.506191,
		0.886396, 0.456408, -0.077423,
		0.173121, -0.481926, -0.858939,
		26.551071, 30.031990, 26.335772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722504, 30.911221, 26.481197>,  <26.429886, 30.369337, 26.937029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722504, 30.911221, 26.481197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568687, 30.631882, 26.239723>,  <26.476398, 30.464277, 26.094839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568687, 30.631882, 26.239723>,  <26.722504, 30.911221, 26.481197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568687, 30.631882, 26.239723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092410, 0.679808, -0.727545,
		0.918471, -0.223985, -0.325949,
		-0.384541, -0.698349, -0.603686,
		26.453325, 30.422377, 26.058617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116135, 30.981131, 25.859774>,  <26.722504, 30.911221, 26.481197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116135, 30.981131, 25.859774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774750, 30.791523, 25.773136>,  <26.569920, 30.677759, 25.721153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774750, 30.791523, 25.773136>,  <27.116135, 30.981131, 25.859774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774750, 30.791523, 25.773136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163787, 0.638500, -0.751992,
		0.494752, -0.606320, -0.622572,
		-0.853460, -0.474018, -0.216592,
		26.518711, 30.649317, 25.708158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117937, 31.014456, 25.157457>,  <27.116135, 30.981131, 25.859774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117937, 31.014456, 25.157457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738102, 30.932625, 25.252480>,  <26.510201, 30.883526, 25.309494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738102, 30.932625, 25.252480>,  <27.117937, 31.014456, 25.157457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738102, 30.932625, 25.252480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309385, 0.733946, -0.604652,
		-0.050657, -0.647666, -0.760238,
		-0.949587, -0.204577, 0.237558,
		26.453226, 30.871252, 25.323748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745602, 30.988077, 24.523619>,  <27.117937, 31.014456, 25.157457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745602, 30.988077, 24.523619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459902, 31.053574, 24.795807>,  <26.288483, 31.092871, 24.959120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459902, 31.053574, 24.795807>,  <26.745602, 30.988077, 24.523619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459902, 31.053574, 24.795807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333138, 0.775511, -0.536285,
		-0.615523, -0.609731, -0.499360,
		-0.714248, 0.163740, 0.680469,
		26.245626, 31.102695, 24.999949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098045, 31.099648, 24.101770>,  <26.745602, 30.988077, 24.523619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098045, 31.099648, 24.101770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029875, 31.260452, 24.461624>,  <25.988974, 31.356936, 24.677536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029875, 31.260452, 24.461624>,  <26.098045, 31.099648, 24.101770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029875, 31.260452, 24.461624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209978, 0.877204, -0.431768,
		-0.962738, -0.262487, -0.065083,
		-0.170424, 0.402013, 0.899634,
		25.978748, 31.381056, 24.731514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514868, 31.413280, 23.962570>,  <26.098045, 31.099648, 24.101770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514868, 31.413280, 23.962570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680941, 31.618496, 24.263081>,  <25.780584, 31.741625, 24.443386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680941, 31.618496, 24.263081>,  <25.514868, 31.413280, 23.962570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680941, 31.618496, 24.263081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373063, 0.849201, -0.373741,
		-0.829727, -0.125102, 0.543970,
		0.415184, 0.513038, 0.751275,
		25.805496, 31.772408, 24.488462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037605, 32.023525, 24.056704>,  <25.514868, 31.413280, 23.962570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037605, 32.023525, 24.056704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379213, 32.113567, 24.244308>,  <25.584179, 32.167595, 24.356873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379213, 32.113567, 24.244308>,  <25.037605, 32.023525, 24.056704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379213, 32.113567, 24.244308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136887, 0.967002, -0.214869,
		-0.501906, 0.119301, 0.856655,
		0.854021, 0.225109, 0.469013,
		25.635420, 32.181099, 24.385012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995249, 32.672821, 24.321913>,  <25.037605, 32.023525, 24.056704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.995249, 32.672821, 24.321913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393639, 32.670673, 24.357712>,  <25.632671, 32.669384, 24.379190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393639, 32.670673, 24.357712>,  <24.995249, 32.672821, 24.321913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393639, 32.670673, 24.357712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005656, 0.999980, -0.002896,
		-0.089479, 0.003390, 0.995983,
		0.995973, -0.005374, 0.089496,
		25.692430, 32.669060, 24.384562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350582, 32.292019, 24.430706>,  <24.995249, 32.672821, 24.321913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350582, 32.292019, 24.430706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499626, 32.299847, 24.801819>,  <24.589052, 32.304543, 25.024487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499626, 32.299847, 24.801819>,  <24.350582, 32.292019, 24.430706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499626, 32.299847, 24.801819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146970, 0.985915, -0.079818,
		-0.916276, 0.166097, 0.364486,
		0.372610, 0.019567, 0.927782,
		24.611408, 32.305717, 25.080153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211660, 32.760113, 25.080423>,  <24.350582, 32.292019, 24.430706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211660, 32.760113, 25.080423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.974722, 32.699726, 25.396988>,  <23.832560, 32.663494, 25.586927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.974722, 32.699726, 25.396988>,  <24.211660, 32.760113, 25.080423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974722, 32.699726, 25.396988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539190, -0.655611, -0.528629,
		0.598667, -0.739853, 0.306946,
		-0.592345, -0.150970, 0.791414,
		23.797018, 32.654434, 25.634413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230993, 32.408657, 25.728346>,  <24.211660, 32.760113, 25.080423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230993, 32.408657, 25.728346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027039, 32.652489, 25.971138>,  <23.904665, 32.798790, 26.116814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027039, 32.652489, 25.971138>,  <24.230993, 32.408657, 25.728346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.027039, 32.652489, 25.971138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688518, -0.133810, 0.712768,
		0.515711, 0.781347, -0.351481,
		-0.509887, 0.609583, 0.606979,
		23.874073, 32.835365, 26.153233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738653, 32.801956, 26.108555>,  <24.230993, 32.408657, 25.728346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738653, 32.801956, 26.108555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417328, 32.863029, 26.338814>,  <24.224533, 32.899673, 26.476969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417328, 32.863029, 26.338814>,  <24.738653, 32.801956, 26.108555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417328, 32.863029, 26.338814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592707, 0.110557, 0.797794,
		0.058169, 0.982071, -0.179310,
		-0.803315, 0.152685, 0.575649,
		24.176332, 32.908836, 26.511509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985048, 33.285355, 26.454996>,  <24.738653, 32.801956, 26.108555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985048, 33.285355, 26.454996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674639, 33.135448, 26.657909>,  <24.488392, 33.045506, 26.779657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674639, 33.135448, 26.657909>,  <24.985048, 33.285355, 26.454996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.674639, 33.135448, 26.657909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557916, -0.032802, 0.829249,
		-0.294132, 0.926540, 0.234541,
		-0.776026, -0.374763, 0.507284,
		24.441832, 33.023018, 26.810095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036951, 33.601433, 27.091267>,  <24.985048, 33.285355, 26.454996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036951, 33.601433, 27.091267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844193, 33.257370, 27.158081>,  <24.728537, 33.050930, 27.198170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844193, 33.257370, 27.158081>,  <25.036951, 33.601433, 27.091267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844193, 33.257370, 27.158081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523007, -0.129414, 0.842446,
		-0.703022, 0.493333, 0.512233,
		-0.481897, -0.860160, 0.167036,
		24.699623, 32.999321, 27.208191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997349, 33.673862, 27.778904>,  <25.036951, 33.601433, 27.091267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997349, 33.673862, 27.778904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903545, 33.290710, 27.712601>,  <24.847263, 33.060822, 27.672819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.903545, 33.290710, 27.712601>,  <24.997349, 33.673862, 27.778904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.903545, 33.290710, 27.712601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395804, -0.249821, 0.883702,
		-0.887888, 0.141629, 0.437717,
		-0.234508, -0.957878, -0.165756,
		24.833193, 33.003345, 27.662874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687674, 33.351318, 28.436722>,  <24.997349, 33.673862, 27.778904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687674, 33.351318, 28.436722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826456, 33.041397, 28.225327>,  <24.909725, 32.855446, 28.098490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.826456, 33.041397, 28.225327>,  <24.687674, 33.351318, 28.436722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826456, 33.041397, 28.225327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318933, -0.432443, 0.843371,
		-0.881988, -0.461167, 0.097070,
		0.346958, -0.774802, -0.528490,
		24.930544, 32.808956, 28.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647829, 32.787151, 28.942947>,  <24.687674, 33.351318, 28.436722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647829, 32.787151, 28.942947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882885, 32.624527, 28.663124>,  <25.023918, 32.526951, 28.495230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882885, 32.624527, 28.663124>,  <24.647829, 32.787151, 28.942947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.882885, 32.624527, 28.663124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581425, -0.389088, 0.714531,
		-0.562693, -0.826630, 0.007741,
		0.587641, -0.406562, -0.699560,
		25.059177, 32.502560, 28.453257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728872, 32.071487, 29.049097>,  <24.647829, 32.787151, 28.942947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728872, 32.071487, 29.049097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050560, 32.152382, 28.825550>,  <25.243572, 32.200920, 28.691422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050560, 32.152382, 28.825550>,  <24.728872, 32.071487, 29.049097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050560, 32.152382, 28.825550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576861, -0.491954, 0.652083,
		-0.143061, -0.846805, -0.512302,
		0.804217, 0.202240, -0.558868,
		25.291824, 32.213055, 28.657890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047768, 31.407433, 29.076120>,  <24.728872, 32.071487, 29.049097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047768, 31.407433, 29.076120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302137, 31.685638, 28.942341>,  <25.454760, 31.852562, 28.862074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302137, 31.685638, 28.942341>,  <25.047768, 31.407433, 29.076120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302137, 31.685638, 28.942341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741784, -0.431270, 0.513579,
		0.212965, -0.574686, -0.790178,
		0.635926, 0.695516, -0.334448,
		25.492916, 31.894293, 28.842007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584164, 31.035252, 28.755428>,  <25.047768, 31.407433, 29.076120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584164, 31.035252, 28.755428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713804, 31.396927, 28.866714>,  <25.791590, 31.613932, 28.933487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713804, 31.396927, 28.866714>,  <25.584164, 31.035252, 28.755428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713804, 31.396927, 28.866714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801690, -0.418643, 0.426652,
		0.502246, 0.084763, -0.860560,
		0.324103, 0.904187, 0.278216,
		25.811035, 31.668182, 28.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320257, 30.953075, 28.746883>,  <25.584164, 31.035252, 28.755428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320257, 30.953075, 28.746883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277927, 31.278183, 28.976040>,  <26.252529, 31.473248, 29.113533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277927, 31.278183, 28.976040>,  <26.320257, 30.953075, 28.746883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277927, 31.278183, 28.976040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794474, -0.277364, 0.540259,
		0.598006, 0.512321, -0.616373,
		-0.105827, 0.812771, 0.572892,
		26.246180, 31.522015, 29.147907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982450, 31.045477, 29.059975>,  <26.320257, 30.953075, 28.746883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982450, 31.045477, 29.059975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753811, 31.288773, 29.280273>,  <26.616627, 31.434750, 29.412453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753811, 31.288773, 29.280273>,  <26.982450, 31.045477, 29.059975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753811, 31.288773, 29.280273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579607, -0.175802, 0.795707,
		0.580800, 0.774042, -0.252050,
		-0.571600, 0.608237, 0.550746,
		26.582331, 31.471243, 29.445498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398392, 31.633242, 29.444641>,  <26.982450, 31.045477, 29.059975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398392, 31.633242, 29.444641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062002, 31.557453, 29.647369>,  <26.860168, 31.511980, 29.769007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062002, 31.557453, 29.647369>,  <27.398392, 31.633242, 29.444641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062002, 31.557453, 29.647369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538974, -0.375880, 0.753804,
		0.047680, 0.907091, 0.418225,
		-0.840972, -0.189471, 0.506821,
		26.809711, 31.500612, 29.799416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634951, 31.742737, 30.075024>,  <27.398392, 31.633242, 29.444641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634951, 31.742737, 30.075024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305094, 31.521107, 30.120564>,  <27.107180, 31.388128, 30.147888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305094, 31.521107, 30.120564>,  <27.634951, 31.742737, 30.075024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305094, 31.521107, 30.120564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447717, -0.516342, 0.730028,
		-0.345705, 0.652987, 0.673867,
		-0.824644, -0.554075, 0.113851,
		27.057701, 31.354883, 30.154718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411207, 31.693066, 30.213266>,  <27.634951, 31.742737, 30.075024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411207, 31.693066, 30.213266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678085, 31.769829, 30.501160>,  <28.838213, 31.815887, 30.673897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678085, 31.769829, 30.501160>,  <28.411207, 31.693066, 30.213266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678085, 31.769829, 30.501160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576066, 0.479620, -0.661901,
		-0.472224, 0.856233, 0.209449,
		0.667197, 0.191909, 0.719735,
		28.878244, 31.827402, 30.717081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587194, 32.406147, 30.149469>,  <28.411207, 31.693066, 30.213266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587194, 32.406147, 30.149469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882875, 32.222515, 30.346581>,  <29.060284, 32.112335, 30.464848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882875, 32.222515, 30.346581>,  <28.587194, 32.406147, 30.149469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882875, 32.222515, 30.346581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671061, 0.440066, -0.596673,
		0.057065, 0.771745, 0.633367,
		0.739203, -0.459077, 0.492775,
		29.104637, 32.084793, 30.494413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029175, 32.956657, 30.459667>,  <28.587194, 32.406147, 30.149469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029175, 32.956657, 30.459667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238600, 32.619625, 30.409172>,  <29.364254, 32.417404, 30.378876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238600, 32.619625, 30.409172>,  <29.029175, 32.956657, 30.459667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238600, 32.619625, 30.409172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587403, 0.464309, -0.662853,
		0.617121, 0.272894, 0.738031,
		0.523563, -0.842583, -0.126236,
		29.395668, 32.366852, 30.371302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719877, 33.291653, 30.228745>,  <29.029175, 32.956657, 30.459667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719877, 33.291653, 30.228745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721638, 32.898792, 30.153530>,  <29.722694, 32.663074, 30.108402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721638, 32.898792, 30.153530>,  <29.719877, 33.291653, 30.228745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721638, 32.898792, 30.153530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398042, 0.174220, -0.900672,
		0.917357, -0.070881, 0.391705,
		0.004402, -0.982153, -0.188035,
		29.722958, 32.604145, 30.097120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408466, 32.996586, 30.073465>,  <29.719877, 33.291653, 30.228745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408466, 32.996586, 30.073465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140776, 32.757351, 29.897091>,  <29.980162, 32.613808, 29.791267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140776, 32.757351, 29.897091>,  <30.408466, 32.996586, 30.073465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140776, 32.757351, 29.897091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488311, 0.093288, -0.867669,
		0.560079, -0.795981, 0.229624,
		-0.669227, -0.598091, -0.440934,
		29.940008, 32.577923, 29.764811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828279, 32.793861, 29.586849>,  <30.408466, 32.996586, 30.073465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828279, 32.793861, 29.586849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473083, 32.677341, 29.444519>,  <30.259966, 32.607430, 29.359121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473083, 32.677341, 29.444519>,  <30.828279, 32.793861, 29.586849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473083, 32.677341, 29.444519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363694, 0.028647, -0.931078,
		0.281420, -0.956202, 0.080508,
		-0.887992, -0.291304, -0.355827,
		30.206686, 32.589951, 29.337770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015776, 32.451069, 29.001863>,  <30.828279, 32.793861, 29.586849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015776, 32.451069, 29.001863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623644, 32.492050, 28.934383>,  <30.388365, 32.516640, 28.893894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623644, 32.492050, 28.934383>,  <31.015776, 32.451069, 29.001863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623644, 32.492050, 28.934383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, 0.012076, -0.985230,
		-0.098901, -0.994665, -0.029338,
		-0.980328, 0.102452, -0.168702,
		30.329546, 32.522785, 28.883772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862637, 31.925240, 28.459793>,  <31.015776, 32.451069, 29.001863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862637, 31.925240, 28.459793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603920, 32.229500, 28.481956>,  <30.448690, 32.412056, 28.495255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603920, 32.229500, 28.481956>,  <30.862637, 31.925240, 28.459793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603920, 32.229500, 28.481956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192443, 0.233069, -0.953228,
		-0.737990, -0.605876, -0.297129,
		-0.646790, 0.760653, 0.055406,
		30.409883, 32.457695, 28.498579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403036, 31.729305, 28.020271>,  <30.862637, 31.925240, 28.459793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403036, 31.729305, 28.020271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367159, 32.126659, 28.048962>,  <30.345633, 32.365070, 28.066175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367159, 32.126659, 28.048962>,  <30.403036, 31.729305, 28.020271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367159, 32.126659, 28.048962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089360, 0.079753, -0.992801,
		-0.991952, -0.082639, -0.095922,
		-0.089694, 0.993383, 0.071727,
		30.340250, 32.424675, 28.070480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900658, 31.904015, 27.414427>,  <30.403036, 31.729305, 28.020271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900658, 31.904015, 27.414427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081274, 32.242676, 27.527061>,  <30.189644, 32.445873, 27.594643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081274, 32.242676, 27.527061>,  <29.900658, 31.904015, 27.414427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081274, 32.242676, 27.527061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111083, 0.259793, -0.959254,
		-0.885309, 0.464421, 0.023258,
		0.451540, 0.846653, 0.281586,
		30.216736, 32.496670, 27.611538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524590, 32.526695, 27.127968>,  <29.900658, 31.904015, 27.414427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524590, 32.526695, 27.127968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897881, 32.641895, 27.213894>,  <30.121855, 32.711014, 27.265450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897881, 32.641895, 27.213894>,  <29.524590, 32.526695, 27.127968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897881, 32.641895, 27.213894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135423, 0.271834, -0.952768,
		-0.332792, 0.918238, 0.214680,
		0.933226, 0.288001, 0.214815,
		30.177849, 32.728294, 27.278337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624876, 32.984440, 26.691376>,  <29.524590, 32.526695, 27.127968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624876, 32.984440, 26.691376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003944, 32.910469, 26.795471>,  <30.231384, 32.866085, 26.857929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003944, 32.910469, 26.795471>,  <29.624876, 32.984440, 26.691376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003944, 32.910469, 26.795471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292212, 0.174119, -0.940369,
		0.128590, 0.967204, 0.219046,
		0.947669, -0.184930, 0.260239,
		30.288244, 32.854988, 26.873543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.727625, 30.851612, 34.605232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.061142, 30.700554, 34.444153>,  <28.261253, 30.609919, 34.347504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.061142, 30.700554, 34.444153>,  <27.727625, 30.851612, 34.605232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061142, 30.700554, 34.444153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118071, 0.834539, -0.538148,
		0.539301, 0.401157, 0.740423,
		0.833794, -0.377646, -0.402703,
		28.311281, 30.587259, 34.323341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986959, 31.486788, 34.341087>,  <27.727625, 30.851612, 34.605232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986959, 31.486788, 34.341087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184231, 31.180550, 34.175854>,  <28.302593, 30.996807, 34.076714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.184231, 31.180550, 34.175854>,  <27.986959, 31.486788, 34.341087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184231, 31.180550, 34.175854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196459, 0.560600, -0.804445,
		0.847454, 0.315582, 0.426884,
		0.493180, -0.765595, -0.413083,
		28.332184, 30.950871, 34.051929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592703, 31.829412, 33.956272>,  <27.986959, 31.486788, 34.341087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592703, 31.829412, 33.956272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.527639, 31.461239, 33.814091>,  <28.488602, 31.240335, 33.728783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.527639, 31.461239, 33.814091>,  <28.592703, 31.829412, 33.956272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527639, 31.461239, 33.814091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108051, 0.341464, -0.933663,
		0.980748, -0.190275, 0.043912,
		-0.162658, -0.920433, -0.355450,
		28.478842, 31.185108, 33.707455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098509, 31.667425, 33.484138>,  <28.592703, 31.829412, 33.956272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098509, 31.667425, 33.484138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.870192, 31.366138, 33.353382>,  <28.733200, 31.185366, 33.274929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.870192, 31.366138, 33.353382>,  <29.098509, 31.667425, 33.484138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870192, 31.366138, 33.353382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142557, 0.301163, -0.942857,
		0.808623, -0.584777, -0.064526,
		-0.570794, -0.753218, -0.326891,
		28.698954, 31.140173, 33.255314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487837, 31.274910, 32.881107>,  <29.098509, 31.667425, 33.484138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487837, 31.274910, 32.881107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096691, 31.239647, 32.805202>,  <28.862003, 31.218489, 32.759659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.096691, 31.239647, 32.805202>,  <29.487837, 31.274910, 32.881107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096691, 31.239647, 32.805202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145070, 0.367923, -0.918470,
		0.150790, -0.925668, -0.346989,
		-0.977864, -0.088158, -0.189765,
		28.803331, 31.213200, 32.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420097, 30.785858, 32.342850>,  <29.487837, 31.274910, 32.881107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420097, 30.785858, 32.342850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092468, 31.015327, 32.344578>,  <28.895891, 31.153009, 32.345615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.092468, 31.015327, 32.344578>,  <29.420097, 30.785858, 32.342850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092468, 31.015327, 32.344578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116678, 0.173954, -0.977817,
		-0.561697, -0.800400, -0.209416,
		-0.819074, 0.573672, 0.004320,
		28.846746, 31.187429, 32.345875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042753, 30.614086, 31.791447>,  <29.420097, 30.785858, 32.342850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042753, 30.614086, 31.791447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897528, 30.977222, 31.875362>,  <28.810392, 31.195105, 31.925713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.897528, 30.977222, 31.875362>,  <29.042753, 30.614086, 31.791447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897528, 30.977222, 31.875362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073013, 0.196743, -0.977733,
		-0.928900, -0.370295, -0.005146,
		-0.363062, 0.907840, 0.209791,
		28.788609, 31.249575, 31.938299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542147, 30.694971, 31.173611>,  <29.042753, 30.614086, 31.791447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542147, 30.694971, 31.173611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.565746, 31.060310, 31.334763>,  <28.579906, 31.279514, 31.431454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.565746, 31.060310, 31.334763>,  <28.542147, 30.694971, 31.173611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565746, 31.060310, 31.334763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133465, 0.392743, -0.909912,
		-0.989296, 0.107456, -0.098728,
		0.059001, 0.913348, 0.402881,
		28.583447, 31.334314, 31.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199205, 31.182623, 30.689516>,  <28.542147, 30.694971, 31.173611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199205, 31.182623, 30.689516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.469322, 31.376530, 30.911861>,  <28.631392, 31.492874, 31.045269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.469322, 31.376530, 30.911861>,  <28.199205, 31.182623, 30.689516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469322, 31.376530, 30.911861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363390, 0.437153, -0.822706,
		-0.641818, 0.757560, 0.119045,
		0.675290, 0.484768, 0.555862,
		28.671909, 31.521959, 31.078621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495506, 31.428612, 31.024136>,  <28.199205, 31.182623, 30.689516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495506, 31.428612, 31.024136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.297188, 31.211998, 30.752567>,  <27.178198, 31.082029, 30.589626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.297188, 31.211998, 30.752567>,  <27.495506, 31.428612, 31.024136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297188, 31.211998, 30.752567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067733, -0.803499, 0.591440,
		-0.865795, 0.247247, 0.435050,
		-0.495794, -0.541533, -0.678919,
		27.148449, 31.049538, 30.548891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069889, 31.079205, 31.432499>,  <27.495506, 31.428612, 31.024136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069889, 31.079205, 31.432499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.104582, 30.884377, 31.084881>,  <27.125399, 30.767479, 30.876310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.104582, 30.884377, 31.084881>,  <27.069889, 31.079205, 31.432499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104582, 30.884377, 31.084881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027743, -0.873175, 0.486616,
		-0.995845, -0.018096, -0.089246,
		0.086733, -0.487070, -0.869045,
		27.130602, 30.738256, 30.824167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506565, 30.462189, 31.488758>,  <27.069889, 31.079205, 31.432499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506565, 30.462189, 31.488758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.769123, 30.382004, 31.197838>,  <26.926657, 30.333893, 31.023287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.769123, 30.382004, 31.197838>,  <26.506565, 30.462189, 31.488758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769123, 30.382004, 31.197838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149683, -0.910279, 0.385988,
		-0.739421, -0.362224, -0.567495,
		0.656393, -0.200463, -0.727298,
		26.966042, 30.321865, 30.979649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347738, 29.760229, 31.310699>,  <26.506565, 30.462189, 31.488758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347738, 29.760229, 31.310699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.707809, 29.793087, 31.139618>,  <26.923853, 29.812801, 31.036968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.707809, 29.793087, 31.139618>,  <26.347738, 29.760229, 31.310699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707809, 29.793087, 31.139618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273622, -0.870705, 0.408661,
		-0.338835, -0.484897, -0.806266,
		0.900178, 0.082144, -0.427704,
		26.977863, 29.817730, 31.011307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511446, 29.342577, 30.715982>,  <26.347738, 29.760229, 31.310699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511446, 29.342577, 30.715982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.875229, 29.425919, 30.859913>,  <27.093498, 29.475924, 30.946270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.875229, 29.425919, 30.859913>,  <26.511446, 29.342577, 30.715982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875229, 29.425919, 30.859913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082935, -0.938900, 0.334049,
		0.407440, -0.273962, -0.871170,
		0.909459, 0.208355, 0.359824,
		27.148066, 29.488424, 30.967859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826471, 28.669273, 30.617912>,  <26.511446, 29.342577, 30.715982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826471, 28.669273, 30.617912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.047859, 28.890404, 30.867088>,  <27.180693, 29.023083, 31.016594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.047859, 28.890404, 30.867088>,  <26.826471, 28.669273, 30.617912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047859, 28.890404, 30.867088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230434, -0.820389, 0.523319,
		0.800357, -0.146095, -0.581450,
		0.553470, 0.552828, 0.622939,
		27.213900, 29.056252, 31.053970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551451, 28.452534, 30.583416>,  <26.826471, 28.669273, 30.617912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551451, 28.452534, 30.583416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462635, 28.624382, 30.933529>,  <27.409346, 28.727491, 31.143597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462635, 28.624382, 30.933529>,  <27.551451, 28.452534, 30.583416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462635, 28.624382, 30.933529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262621, -0.838166, 0.478025,
		0.939004, 0.336008, 0.073278,
		-0.222039, 0.429623, 0.875284,
		27.396023, 28.753269, 31.196114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986071, 28.095963, 31.083582>,  <27.551451, 28.452534, 30.583416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986071, 28.095963, 31.083582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.709728, 28.280846, 31.305962>,  <27.543922, 28.391775, 31.439390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.709728, 28.280846, 31.305962>,  <27.986071, 28.095963, 31.083582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709728, 28.280846, 31.305962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106214, -0.825500, 0.554318,
		0.715147, 0.323905, 0.619395,
		-0.690857, 0.462207, 0.555951,
		27.502472, 28.419508, 31.472746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168520, 27.935564, 31.766609>,  <27.986071, 28.095963, 31.083582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168520, 27.935564, 31.766609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.789177, 28.050835, 31.819637>,  <27.561571, 28.119997, 31.851454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.789177, 28.050835, 31.819637>,  <28.168520, 27.935564, 31.766609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789177, 28.050835, 31.819637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110352, -0.691545, 0.713854,
		0.297393, 0.662359, 0.687632,
		-0.948356, 0.288177, 0.132568,
		27.504669, 28.137287, 31.859407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988514, 28.076635, 32.486187>,  <28.168520, 27.935564, 31.766609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988514, 28.076635, 32.486187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.610945, 28.064095, 32.354717>,  <27.384403, 28.056570, 32.275833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.610945, 28.064095, 32.354717>,  <27.988514, 28.076635, 32.486187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610945, 28.064095, 32.354717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198389, -0.741879, 0.640514,
		-0.263921, 0.669801, 0.694055,
		-0.943921, -0.031352, -0.328679,
		27.327768, 28.054689, 32.256115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636326, 28.125196, 33.053955>,  <27.988514, 28.076635, 32.486187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636326, 28.125196, 33.053955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.410442, 27.965595, 32.764984>,  <27.274912, 27.869835, 32.591602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.410442, 27.965595, 32.764984>,  <27.636326, 28.125196, 33.053955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410442, 27.965595, 32.764984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168771, -0.801029, 0.574342,
		-0.807850, 0.446260, 0.385007,
		-0.564708, -0.399004, -0.722427,
		27.241030, 27.845894, 32.548256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073425, 27.954138, 33.485828>,  <27.636326, 28.125196, 33.053955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073425, 27.954138, 33.485828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.088755, 27.752636, 33.140629>,  <27.097952, 27.631735, 32.933510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.088755, 27.752636, 33.140629>,  <27.073425, 27.954138, 33.485828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088755, 27.752636, 33.140629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217400, -0.847146, 0.484851,
		-0.975330, 0.169035, -0.141981,
		0.038322, -0.503757, -0.862995,
		27.100252, 27.601509, 32.881729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395187, 27.562782, 33.383186>,  <27.073425, 27.954138, 33.485828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395187, 27.562782, 33.383186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.674292, 27.386616, 33.157207>,  <26.841755, 27.280916, 33.021622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.674292, 27.386616, 33.157207>,  <26.395187, 27.562782, 33.383186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674292, 27.386616, 33.157207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201454, -0.877484, 0.435245,
		-0.687421, -0.189886, -0.700997,
		0.697760, -0.440415, -0.564947,
		26.883619, 27.254492, 32.987724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093021, 26.920925, 33.252277>,  <26.395187, 27.562782, 33.383186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093021, 26.920925, 33.252277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.467274, 26.849804, 33.130310>,  <26.691826, 26.807131, 33.057129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.467274, 26.849804, 33.130310>,  <26.093021, 26.920925, 33.252277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467274, 26.849804, 33.130310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043403, -0.915260, 0.400519,
		-0.350296, -0.361504, -0.864065,
		0.935633, -0.177803, -0.304921,
		26.747963, 26.796463, 33.038834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.889133, 24.669134, 30.102804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560871, 24.859947, 30.228634>,  <32.363914, 24.974436, 30.304132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.560871, 24.859947, 30.228634>,  <32.889133, 24.669134, 30.102804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560871, 24.859947, 30.228634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056790, 0.615880, -0.785791,
		-0.568590, -0.627001, -0.532518,
		-0.820658, 0.477034, 0.314575,
		32.314674, 25.003057, 30.323006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447121, 24.714052, 29.593708>,  <32.889133, 24.669134, 30.102804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447121, 24.714052, 29.593708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324219, 25.008213, 29.835297>,  <32.250477, 25.184710, 29.980249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.324219, 25.008213, 29.835297>,  <32.447121, 24.714052, 29.593708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324219, 25.008213, 29.835297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127882, 0.597007, -0.791978,
		-0.942995, -0.320577, -0.089390,
		-0.307256, 0.735400, 0.603970,
		32.232040, 25.228832, 30.016487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865339, 25.077093, 29.217884>,  <32.447121, 24.714052, 29.593708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865339, 25.077093, 29.217884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010517, 25.321220, 29.499531>,  <32.097622, 25.467697, 29.668520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010517, 25.321220, 29.499531>,  <31.865339, 25.077093, 29.217884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010517, 25.321220, 29.499531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042755, 0.765756, -0.641708,
		-0.930830, 0.202799, 0.304021,
		0.362943, 0.610319, 0.704118,
		32.119400, 25.504316, 29.710766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450962, 25.667856, 29.215227>,  <31.865339, 25.077093, 29.217884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450962, 25.667856, 29.215227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794470, 25.804432, 29.368031>,  <32.000576, 25.886377, 29.459713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794470, 25.804432, 29.368031>,  <31.450962, 25.667856, 29.215227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794470, 25.804432, 29.368031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039343, 0.787335, -0.615269,
		-0.510846, 0.513346, 0.689574,
		0.858772, 0.341437, 0.382010,
		32.052101, 25.906862, 29.482634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299612, 26.288990, 29.382343>,  <31.450962, 25.667856, 29.215227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299612, 26.288990, 29.382343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695940, 26.286667, 29.328320>,  <31.933737, 26.285273, 29.295906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695940, 26.286667, 29.328320>,  <31.299612, 26.288990, 29.382343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695940, 26.286667, 29.328320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075745, 0.803658, -0.590251,
		0.111969, 0.595063, 0.795841,
		0.990821, -0.005809, -0.135058,
		31.993187, 26.284924, 29.287802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553429, 26.916088, 29.451111>,  <31.299612, 26.288990, 29.382343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553429, 26.916088, 29.451111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838293, 26.748810, 29.225567>,  <32.009212, 26.648443, 29.090240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838293, 26.748810, 29.225567>,  <31.553429, 26.916088, 29.451111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838293, 26.748810, 29.225567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138600, 0.703633, -0.696915,
		0.688199, 0.574466, 0.443138,
		0.712160, -0.418197, -0.563861,
		32.051941, 26.623350, 29.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987728, 27.448174, 29.271652>,  <31.553429, 26.916088, 29.451111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987728, 27.448174, 29.271652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061081, 27.153965, 29.010769>,  <32.105091, 26.977440, 28.854239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061081, 27.153965, 29.010769>,  <31.987728, 27.448174, 29.271652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061081, 27.153965, 29.010769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023314, 0.666528, -0.745116,
		0.982765, 0.121434, 0.139377,
		0.183381, -0.735523, -0.652209,
		32.116096, 26.933308, 28.815105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526810, 27.562326, 28.948954>,  <31.987728, 27.448174, 29.271652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526810, 27.562326, 28.948954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366848, 27.307373, 28.685493>,  <32.270870, 27.154400, 28.527418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366848, 27.307373, 28.685493>,  <32.526810, 27.562326, 28.948954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366848, 27.307373, 28.685493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117432, 0.677059, -0.726499,
		0.909004, -0.367875, -0.195908,
		-0.399902, -0.637385, -0.658650,
		32.246876, 27.116158, 28.487898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852982, 27.598087, 28.435722>,  <32.526810, 27.562326, 28.948954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852982, 27.598087, 28.435722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536518, 27.429390, 28.258541>,  <32.346642, 27.328173, 28.152233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536518, 27.429390, 28.258541>,  <32.852982, 27.598087, 28.435722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536518, 27.429390, 28.258541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104433, 0.620447, -0.777264,
		0.602624, -0.661201, -0.446831,
		-0.791163, -0.421733, -0.442948,
		32.299171, 27.302868, 28.125654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031590, 27.608639, 27.782187>,  <32.852982, 27.598087, 28.435722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031590, 27.608639, 27.782187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645298, 27.521072, 27.726414>,  <32.413525, 27.468533, 27.692949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645298, 27.521072, 27.726414>,  <33.031590, 27.608639, 27.782187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645298, 27.521072, 27.726414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002319, 0.529908, -0.848052,
		0.259540, -0.819312, -0.511240,
		-0.965729, -0.218918, -0.139432,
		32.355579, 27.455397, 27.684584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898243, 27.281202, 27.067732>,  <33.031590, 27.608639, 27.782187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898243, 27.281202, 27.067732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568157, 27.468052, 27.194740>,  <32.370106, 27.580162, 27.270947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568157, 27.468052, 27.194740>,  <32.898243, 27.281202, 27.067732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568157, 27.468052, 27.194740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037927, 0.515068, -0.856310,
		-0.563548, -0.718680, -0.407323,
		-0.825212, 0.467123, 0.317523,
		32.320595, 27.608189, 27.289997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535454, 27.307713, 26.507496>,  <32.898243, 27.281202, 27.067732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535454, 27.307713, 26.507496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330856, 27.575344, 26.723164>,  <32.208096, 27.735924, 26.852564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.330856, 27.575344, 26.723164>,  <32.535454, 27.307713, 26.507496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330856, 27.575344, 26.723164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037584, 0.609443, -0.791939,
		-0.858464, -0.425337, -0.286581,
		-0.511495, 0.669080, 0.539170,
		32.177406, 27.776068, 26.884914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956343, 27.555920, 26.124514>,  <32.535454, 27.307713, 26.507496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956343, 27.555920, 26.124514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008682, 27.853699, 26.386406>,  <32.040085, 28.032366, 26.543541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008682, 27.853699, 26.386406>,  <31.956343, 27.555920, 26.124514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008682, 27.853699, 26.386406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016588, 0.661961, -0.749355,
		-0.991264, 0.087191, 0.098966,
		0.130849, 0.744450, 0.654731,
		32.047935, 28.077034, 26.582825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317030, 27.955851, 26.078186>,  <31.956343, 27.555920, 26.124514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317030, 27.955851, 26.078186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626356, 28.178982, 26.198723>,  <31.811953, 28.312860, 26.271046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.626356, 28.178982, 26.198723>,  <31.317030, 27.955851, 26.078186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626356, 28.178982, 26.198723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213938, 0.676998, -0.704205,
		-0.596835, 0.480104, 0.642875,
		0.773317, 0.557829, 0.301344,
		31.858351, 28.346331, 26.289125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613499, 28.000280, 26.495749>,  <31.317030, 27.955851, 26.078186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613499, 28.000280, 26.495749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258017, 27.934364, 26.324612>,  <30.044727, 27.894815, 26.221930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258017, 27.934364, 26.324612>,  <30.613499, 28.000280, 26.495749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258017, 27.934364, 26.324612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064212, -0.879239, 0.472033,
		-0.453962, 0.446970, 0.770802,
		-0.888704, -0.164790, -0.427842,
		29.991405, 27.884928, 26.196259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165022, 27.840187, 26.997169>,  <30.613499, 28.000280, 26.495749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165022, 27.840187, 26.997169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.041979, 27.671589, 26.655945>,  <29.968153, 27.570431, 26.451210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.041979, 27.671589, 26.655945>,  <30.165022, 27.840187, 26.997169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041979, 27.671589, 26.655945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018232, -0.893759, 0.448177,
		-0.951338, 0.153416, 0.267244,
		-0.307609, -0.421495, -0.853064,
		29.949696, 27.545141, 26.400026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627785, 27.473301, 27.232285>,  <30.165022, 27.840187, 26.997169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627785, 27.473301, 27.232285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.727507, 27.316349, 26.878136>,  <29.787340, 27.222178, 26.665646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.727507, 27.316349, 26.878136>,  <29.627785, 27.473301, 27.232285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727507, 27.316349, 26.878136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038731, -0.917548, 0.395733,
		-0.967651, -0.064366, -0.243945,
		0.249303, -0.392379, -0.885373,
		29.802298, 27.198635, 26.612524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993759, 27.005486, 26.890627>,  <29.627785, 27.473301, 27.232285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993759, 27.005486, 26.890627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331644, 26.871658, 26.723522>,  <29.534376, 26.791363, 26.623260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331644, 26.871658, 26.723522>,  <28.993759, 27.005486, 26.890627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331644, 26.871658, 26.723522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116820, -0.876972, 0.466125,
		-0.522314, -0.344939, -0.779875,
		0.844714, -0.334568, -0.417759,
		29.585058, 26.771288, 26.598194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808346, 26.356249, 26.610779>,  <28.993759, 27.005486, 26.890627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808346, 26.356249, 26.610779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198927, 26.351051, 26.696915>,  <29.433275, 26.347933, 26.748596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198927, 26.351051, 26.696915>,  <28.808346, 26.356249, 26.610779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198927, 26.351051, 26.696915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119873, -0.862584, 0.491507,
		0.179363, -0.505746, -0.843830,
		0.976452, -0.012995, 0.215341,
		29.491863, 26.347153, 26.761517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942532, 25.700415, 26.593582>,  <28.808346, 26.356249, 26.610779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942532, 25.700415, 26.593582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.275721, 25.848515, 26.758057>,  <29.475634, 25.937374, 26.856741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.275721, 25.848515, 26.758057>,  <28.942532, 25.700415, 26.593582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275721, 25.848515, 26.758057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023847, -0.766463, 0.641845,
		0.552803, -0.524832, -0.647271,
		0.832971, 0.370249, 0.411187,
		29.525612, 25.959589, 26.881413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339762, 25.170828, 26.669291>,  <28.942532, 25.700415, 26.593582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339762, 25.170828, 26.669291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.475708, 25.432442, 26.939617>,  <29.557276, 25.589409, 27.101814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.475708, 25.432442, 26.939617>,  <29.339762, 25.170828, 26.669291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475708, 25.432442, 26.939617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053923, -0.703861, 0.708289,
		0.938926, -0.277167, -0.203952,
		0.339868, 0.654033, 0.675819,
		29.577669, 25.628651, 27.142363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852489, 24.756067, 27.058956>,  <29.339762, 25.170828, 26.669291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852489, 24.756067, 27.058956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.790092, 25.086048, 27.276257>,  <29.752653, 25.284037, 27.406637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.790092, 25.086048, 27.276257>,  <29.852489, 24.756067, 27.058956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790092, 25.086048, 27.276257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125036, -0.562050, 0.817598,
		0.979812, 0.059615, 0.190825,
		-0.155994, 0.824952, 0.543249,
		29.743294, 25.333534, 27.439232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341940, 24.742226, 27.743868>,  <29.852489, 24.756067, 27.058956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341940, 24.742226, 27.743868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016335, 24.959766, 27.825459>,  <29.820971, 25.090290, 27.874413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016335, 24.959766, 27.825459>,  <30.341940, 24.742226, 27.743868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016335, 24.959766, 27.825459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101749, -0.479256, 0.871757,
		0.571864, 0.688868, 0.445457,
		-0.814014, 0.543851, 0.203978,
		29.772131, 25.122921, 27.886652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430193, 24.847296, 28.442450>,  <30.341940, 24.742226, 27.743868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430193, 24.847296, 28.442450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044010, 24.925053, 28.373043>,  <29.812302, 24.971706, 28.331398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044010, 24.925053, 28.373043>,  <30.430193, 24.847296, 28.442450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044010, 24.925053, 28.373043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240992, -0.412899, 0.878315,
		0.099090, 0.889791, 0.445482,
		-0.965455, 0.194390, -0.173518,
		29.754374, 24.983370, 28.320988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138548, 25.225132, 28.941563>,  <30.430193, 24.847296, 28.442450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138548, 25.225132, 28.941563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845354, 25.007305, 28.778503>,  <29.669437, 24.876608, 28.680668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.845354, 25.007305, 28.778503>,  <30.138548, 25.225132, 28.941563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845354, 25.007305, 28.778503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133833, -0.472110, 0.871322,
		-0.666950, 0.693222, 0.273167,
		-0.732984, -0.544569, -0.407650,
		29.625460, 24.843935, 28.656208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627203, 25.300591, 29.455248>,  <30.138548, 25.225132, 28.941563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627203, 25.300591, 29.455248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.520872, 24.973850, 29.250469>,  <29.457073, 24.777805, 29.127602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.520872, 24.973850, 29.250469>,  <29.627203, 25.300591, 29.455248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520872, 24.973850, 29.250469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064583, -0.514769, 0.854893,
		-0.961855, 0.260315, 0.084084,
		-0.265826, -0.816853, -0.511945,
		29.441124, 24.728794, 29.096886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948456, 24.995930, 29.674311>,  <29.627203, 25.300591, 29.455248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948456, 24.995930, 29.674311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149096, 24.699783, 29.495312>,  <29.269480, 24.522095, 29.387913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.149096, 24.699783, 29.495312>,  <28.948456, 24.995930, 29.674311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149096, 24.699783, 29.495312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115016, -0.569758, 0.813724,
		-0.857421, -0.356693, -0.370944,
		0.501599, -0.740368, -0.447498,
		29.299576, 24.477673, 29.361063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676933, 24.504168, 30.069290>,  <28.948456, 24.995930, 29.674311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676933, 24.504168, 30.069290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.008276, 24.349174, 29.907459>,  <29.207081, 24.256178, 29.810362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.008276, 24.349174, 29.907459>,  <28.676933, 24.504168, 30.069290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008276, 24.349174, 29.907459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063052, -0.782097, 0.619959,
		-0.556641, -0.488038, -0.672287,
		0.828357, -0.387484, -0.404575,
		29.256783, 24.232929, 29.786087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093639, 24.305099, 29.600891>,  <28.676933, 24.504168, 30.069290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093639, 24.305099, 29.600891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.731598, 24.403603, 29.739540>,  <27.514374, 24.462706, 29.822729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.731598, 24.403603, 29.739540>,  <28.093639, 24.305099, 29.600891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731598, 24.403603, 29.739540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047288, 0.751850, -0.657636,
		-0.422555, -0.611619, -0.668856,
		-0.905102, 0.246259, 0.346620,
		27.460068, 24.477480, 29.843527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653877, 24.348444, 29.042843>,  <28.093639, 24.305099, 29.600891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653877, 24.348444, 29.042843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.466640, 24.571243, 29.317257>,  <27.354298, 24.704922, 29.481905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.466640, 24.571243, 29.317257>,  <27.653877, 24.348444, 29.042843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466640, 24.571243, 29.317257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005075, 0.778021, -0.628218,
		-0.883664, -0.290583, -0.367013,
		-0.468093, 0.556996, 0.686035,
		27.326212, 24.738342, 29.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314713, 24.728079, 28.666550>,  <27.653877, 24.348444, 29.042843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314713, 24.728079, 28.666550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.271648, 24.932453, 29.007690>,  <27.245810, 25.055077, 29.212376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.271648, 24.932453, 29.007690>,  <27.314713, 24.728079, 28.666550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271648, 24.932453, 29.007690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089474, 0.849377, -0.520147,
		-0.990154, -0.132306, -0.045727,
		-0.107658, 0.510934, 0.852852,
		27.239351, 25.085733, 29.263546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680487, 25.158493, 28.571524>,  <27.314713, 24.728079, 28.666550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680487, 25.158493, 28.571524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.897938, 25.341423, 28.853039>,  <27.028408, 25.451181, 29.021948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.897938, 25.341423, 28.853039>,  <26.680487, 25.158493, 28.571524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897938, 25.341423, 28.853039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173829, 0.881684, -0.438654,
		-0.821128, 0.116126, 0.558806,
		0.543629, 0.457327, 0.703789,
		27.061026, 25.478621, 29.064175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292734, 25.725094, 28.897453>,  <26.680487, 25.158493, 28.571524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292734, 25.725094, 28.897453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.670481, 25.823307, 28.984989>,  <26.897129, 25.882235, 29.037510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.670481, 25.823307, 28.984989>,  <26.292734, 25.725094, 28.897453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670481, 25.823307, 28.984989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177007, 0.940197, -0.291030,
		-0.277208, 0.236103, 0.931349,
		0.944365, 0.245531, 0.218838,
		26.953791, 25.896967, 29.050640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248848, 26.395470, 29.200100>,  <26.292734, 25.725094, 28.897453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248848, 26.395470, 29.200100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.630201, 26.357479, 29.085533>,  <26.859015, 26.334684, 29.016792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.630201, 26.357479, 29.085533>,  <26.248848, 26.395470, 29.200100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630201, 26.357479, 29.085533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002597, 0.951721, -0.306954,
		0.301743, 0.291902, 0.907604,
		0.953386, -0.094978, -0.286417,
		26.916218, 26.328985, 28.999607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466110, 27.020151, 29.397308>,  <26.248848, 26.395470, 29.200100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466110, 27.020151, 29.397308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.752295, 26.879047, 29.156086>,  <26.924006, 26.794386, 29.011353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.752295, 26.879047, 29.156086>,  <26.466110, 27.020151, 29.397308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752295, 26.879047, 29.156086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075630, 0.897203, -0.435095,
		0.694547, 0.265684, 0.668593,
		0.715461, -0.352759, -0.603056,
		26.966932, 26.773220, 28.975170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995705, 27.540968, 29.244692>,  <26.466110, 27.020151, 29.397308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995705, 27.540968, 29.244692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.105309, 27.285091, 28.957439>,  <27.171070, 27.131565, 28.785088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.105309, 27.285091, 28.957439>,  <26.995705, 27.540968, 29.244692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105309, 27.285091, 28.957439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155586, 0.766358, -0.623288,
		0.949058, 0.059056, 0.309517,
		0.274009, -0.639693, -0.718131,
		27.187511, 27.093184, 28.742001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662899, 27.642752, 29.073515>,  <26.995705, 27.540968, 29.244692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662899, 27.642752, 29.073515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.459915, 27.481956, 28.768650>,  <27.338125, 27.385479, 28.585732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.459915, 27.481956, 28.768650>,  <27.662899, 27.642752, 29.073515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459915, 27.481956, 28.768650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356283, 0.707474, -0.610363,
		0.784568, -0.581280, -0.215793,
		-0.507460, -0.401988, -0.762162,
		27.307676, 27.361361, 28.540001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138138, 27.708172, 28.510138>,  <27.662899, 27.642752, 29.073515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138138, 27.708172, 28.510138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.777994, 27.637630, 28.351013>,  <27.561909, 27.595306, 28.255539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.777994, 27.637630, 28.351013>,  <28.138138, 27.708172, 28.510138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777994, 27.637630, 28.351013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230556, 0.582006, -0.779816,
		0.369050, -0.793832, -0.483356,
		-0.900359, -0.176351, -0.397812,
		27.507887, 27.584724, 28.231668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283665, 27.730307, 27.749191>,  <28.138138, 27.708172, 28.510138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283665, 27.730307, 27.749191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.884481, 27.749737, 27.765781>,  <27.644972, 27.761395, 27.775736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.884481, 27.749737, 27.765781>,  <28.283665, 27.730307, 27.749191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884481, 27.749737, 27.765781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002941, 0.613739, -0.789504,
		-0.063805, -0.788014, -0.612343,
		-0.997958, 0.048574, 0.041478,
		27.585094, 27.764309, 27.778225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110611, 27.782818, 27.054098>,  <28.283665, 27.730307, 27.749191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110611, 27.782818, 27.054098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.792818, 27.905262, 27.263897>,  <27.602142, 27.978729, 27.389776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.792818, 27.905262, 27.263897>,  <28.110611, 27.782818, 27.054098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792818, 27.905262, 27.263897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229056, 0.648829, -0.725641,
		-0.562435, -0.696647, -0.445366,
		-0.794482, 0.306112, 0.524495,
		27.554474, 27.997095, 27.421246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486370, 27.685955, 26.625225>,  <28.110611, 27.782818, 27.054098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486370, 27.685955, 26.625225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.414011, 27.984249, 26.881710>,  <27.370596, 28.163225, 27.035601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.414011, 27.984249, 26.881710>,  <27.486370, 27.685955, 26.625225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414011, 27.984249, 26.881710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351752, 0.559787, -0.750273,
		-0.918448, -0.361271, 0.161050,
		-0.180898, 0.745736, 0.641213,
		27.359741, 28.207970, 27.074074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794542, 27.998886, 26.534767>,  <27.486370, 27.685955, 26.625225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794542, 27.998886, 26.534767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.964382, 28.303162, 26.731163>,  <27.066286, 28.485727, 26.849001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.964382, 28.303162, 26.731163>,  <26.794542, 27.998886, 26.534767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964382, 28.303162, 26.731163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343033, 0.637032, -0.690303,
		-0.837881, 0.124677, 0.531424,
		0.424599, 0.760688, 0.490989,
		27.091763, 28.531368, 26.878460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.993607, 31.417732, 31.682940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.353371, 31.342354, 31.525181>,  <41.569229, 31.297127, 31.430525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.353371, 31.342354, 31.525181>,  <40.993607, 31.417732, 31.682940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353371, 31.342354, 31.525181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136357, 0.736304, -0.662770,
		0.415294, 0.649880, 0.636543,
		0.899410, -0.188448, -0.394398,
		41.623192, 31.285820, 31.406862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287640, 32.057564, 31.552261>,  <40.993607, 31.417732, 31.682940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287640, 32.057564, 31.552261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457737, 31.807812, 31.290173>,  <41.559795, 31.657961, 31.132919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.457737, 31.807812, 31.290173>,  <41.287640, 32.057564, 31.552261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457737, 31.807812, 31.290173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008402, 0.726632, -0.686975,
		0.905040, 0.286626, 0.314241,
		0.425243, -0.624380, -0.655223,
		41.585308, 31.620497, 31.093605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720600, 32.526493, 31.153435>,  <41.287640, 32.057564, 31.552261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720600, 32.526493, 31.153435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689808, 32.189980, 30.939404>,  <41.671333, 31.988070, 30.810986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689808, 32.189980, 30.939404>,  <41.720600, 32.526493, 31.153435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689808, 32.189980, 30.939404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185329, 0.539392, -0.821408,
		0.979657, 0.035931, -0.197439,
		-0.076983, -0.841288, -0.535077,
		41.666714, 31.937593, 30.778881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115173, 32.632736, 30.521423>,  <41.720600, 32.526493, 31.153435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115173, 32.632736, 30.521423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.847240, 32.346367, 30.442654>,  <41.686481, 32.174545, 30.395391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.847240, 32.346367, 30.442654>,  <42.115173, 32.632736, 30.521423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847240, 32.346367, 30.442654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280766, 0.489730, -0.825430,
		0.687388, -0.497606, -0.529043,
		-0.669827, -0.715928, -0.196923,
		41.646294, 32.131588, 30.383577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239082, 32.430904, 29.820494>,  <42.115173, 32.632736, 30.521423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239082, 32.430904, 29.820494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.863060, 32.311188, 29.885887>,  <41.637447, 32.239357, 29.925123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.863060, 32.311188, 29.885887>,  <42.239082, 32.430904, 29.820494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863060, 32.311188, 29.885887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263466, 0.332984, -0.905377,
		0.216533, -0.894174, -0.391875,
		-0.940052, -0.299290, 0.163483,
		41.581043, 32.221401, 29.934931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996471, 32.334167, 29.182684>,  <42.239082, 32.430904, 29.820494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996471, 32.334167, 29.182684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645050, 32.311588, 29.372402>,  <41.434196, 32.298042, 29.486233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645050, 32.311588, 29.372402>,  <41.996471, 32.334167, 29.182684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645050, 32.311588, 29.372402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465943, 0.319709, -0.825035,
		-0.105065, -0.945833, -0.307184,
		-0.878555, -0.056448, 0.474295,
		41.381485, 32.294655, 29.514690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515961, 31.928465, 28.781403>,  <41.996471, 32.334167, 29.182684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515961, 31.928465, 28.781403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.276730, 32.138832, 29.023300>,  <41.133190, 32.265053, 29.168438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.276730, 32.138832, 29.023300>,  <41.515961, 31.928465, 28.781403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276730, 32.138832, 29.023300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563107, 0.261169, -0.784029,
		-0.570275, -0.809445, 0.139949,
		-0.598078, 0.525918, 0.604742,
		41.097305, 32.296608, 29.204723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835762, 31.765882, 28.575556>,  <41.515961, 31.928465, 28.781403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835762, 31.765882, 28.575556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.798744, 32.114803, 28.767609>,  <40.776531, 32.324154, 28.882841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.798744, 32.114803, 28.767609>,  <40.835762, 31.765882, 28.575556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798744, 32.114803, 28.767609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737088, 0.264172, -0.622025,
		-0.669430, -0.411467, 0.618513,
		-0.092549, 0.872300, 0.480132,
		40.770981, 32.376495, 28.911648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105862, 31.909351, 28.604435>,  <40.835762, 31.765882, 28.575556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105862, 31.909351, 28.604435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.314678, 32.248859, 28.638058>,  <40.439968, 32.452564, 28.658232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.314678, 32.248859, 28.638058>,  <40.105862, 31.909351, 28.604435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314678, 32.248859, 28.638058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489513, 0.378858, -0.785394,
		-0.698464, 0.368860, 0.613262,
		0.522039, 0.848769, 0.084057,
		40.471291, 32.503490, 28.663275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577545, 32.433296, 28.592348>,  <40.105862, 31.909351, 28.604435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577545, 32.433296, 28.592348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.919842, 32.609592, 28.483936>,  <40.125221, 32.715370, 28.418890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.919842, 32.609592, 28.483936>,  <39.577545, 32.433296, 28.592348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919842, 32.609592, 28.483936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478624, 0.475345, -0.738218,
		-0.196528, 0.761445, 0.617720,
		0.855743, 0.440736, -0.271027,
		40.176563, 32.741814, 28.402628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475014, 33.104076, 28.571554>,  <39.577545, 32.433296, 28.592348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475014, 33.104076, 28.571554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.792969, 33.062759, 28.332394>,  <39.983742, 33.037968, 28.188898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.792969, 33.062759, 28.332394>,  <39.475014, 33.104076, 28.571554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792969, 33.062759, 28.332394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497096, 0.454179, -0.739335,
		0.347925, 0.884902, 0.309673,
		0.794886, -0.103296, -0.597902,
		40.031433, 33.031769, 28.153023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448307, 33.710701, 28.181482>,  <39.475014, 33.104076, 28.571554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448307, 33.710701, 28.181482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.698486, 33.479820, 27.971470>,  <39.848595, 33.341293, 27.845463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.698486, 33.479820, 27.971470>,  <39.448307, 33.710701, 28.181482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698486, 33.479820, 27.971470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288934, 0.453725, -0.843002,
		0.724798, 0.678953, 0.117009,
		0.625448, -0.577198, -0.525031,
		39.886120, 33.306660, 27.813961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685898, 34.094315, 27.665850>,  <39.448307, 33.710701, 28.181482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685898, 34.094315, 27.665850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776836, 33.729607, 27.529037>,  <39.831398, 33.510780, 27.446951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776836, 33.729607, 27.529037>,  <39.685898, 34.094315, 27.665850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776836, 33.729607, 27.529037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107419, 0.325603, -0.939385,
		0.967871, 0.250306, -0.023917,
		0.227347, -0.911773, -0.342030,
		39.845039, 33.456074, 27.426428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193527, 34.198021, 27.060381>,  <39.685898, 34.094315, 27.665850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193527, 34.198021, 27.060381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041870, 33.828869, 27.033405>,  <39.950874, 33.607380, 27.017220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041870, 33.828869, 27.033405>,  <40.193527, 34.198021, 27.060381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041870, 33.828869, 27.033405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240033, 0.168476, -0.956034,
		0.893663, -0.346288, -0.285398,
		-0.379145, -0.922876, -0.067440,
		39.928127, 33.552006, 27.013174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413387, 34.007782, 26.488428>,  <40.193527, 34.198021, 27.060381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413387, 34.007782, 26.488428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098522, 33.769764, 26.553291>,  <39.909603, 33.626953, 26.592209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098522, 33.769764, 26.553291>,  <40.413387, 34.007782, 26.488428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098522, 33.769764, 26.553291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317575, 0.165673, -0.933648,
		0.528698, -0.786430, -0.319384,
		-0.787162, -0.595046, 0.162159,
		39.862373, 33.591251, 26.601938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493084, 33.488541, 26.058506>,  <40.413387, 34.007782, 26.488428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493084, 33.488541, 26.058506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101837, 33.506363, 26.139797>,  <39.867088, 33.517056, 26.188572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.101837, 33.506363, 26.139797>,  <40.493084, 33.488541, 26.058506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101837, 33.506363, 26.139797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206038, -0.071778, -0.975908,
		-0.028895, -0.996425, 0.079388,
		-0.978117, 0.044556, 0.203227,
		39.808403, 33.519730, 26.200766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284370, 33.122208, 25.509302>,  <40.493084, 33.488541, 26.058506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284370, 33.122208, 25.509302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970360, 33.322556, 25.655106>,  <39.781952, 33.442764, 25.742588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970360, 33.322556, 25.655106>,  <40.284370, 33.122208, 25.509302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970360, 33.322556, 25.655106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345589, 0.134241, -0.928734,
		-0.514105, -0.855050, 0.067712,
		-0.785025, 0.500868, 0.364510,
		39.734852, 33.472816, 25.764458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645729, 32.865520, 25.146061>,  <40.284370, 33.122208, 25.509302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645729, 32.865520, 25.146061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548752, 33.225021, 25.292194>,  <39.490566, 33.440720, 25.379875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548752, 33.225021, 25.292194>,  <39.645729, 32.865520, 25.146061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548752, 33.225021, 25.292194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420860, 0.241861, -0.874288,
		-0.874127, -0.365720, 0.319611,
		-0.242444, 0.898750, 0.365334,
		39.476017, 33.494648, 25.401794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939560, 33.066280, 25.134241>,  <39.645729, 32.865520, 25.146061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939560, 33.066280, 25.134241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117554, 33.424465, 25.138813>,  <39.224350, 33.639378, 25.141556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.117554, 33.424465, 25.138813>,  <38.939560, 33.066280, 25.134241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117554, 33.424465, 25.138813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297961, 0.160079, -0.941060,
		-0.844514, 0.415356, 0.338046,
		0.444989, 0.895463, 0.011429,
		39.251049, 33.693104, 25.142242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540268, 33.485645, 24.619604>,  <38.939560, 33.066280, 25.134241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540268, 33.485645, 24.619604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869999, 33.706165, 24.671074>,  <39.067837, 33.838478, 24.701956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869999, 33.706165, 24.671074>,  <38.540268, 33.485645, 24.619604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869999, 33.706165, 24.671074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017361, 0.251802, -0.967623,
		-0.565848, 0.795404, 0.217139,
		0.824327, 0.551297, 0.128673,
		39.117298, 33.871555, 24.709675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358322, 34.275509, 24.420572>,  <38.540268, 33.485645, 24.619604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358322, 34.275509, 24.420572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752876, 34.216301, 24.391926>,  <38.989609, 34.180779, 24.374739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752876, 34.216301, 24.391926>,  <38.358322, 34.275509, 24.420572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752876, 34.216301, 24.391926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000269, 0.436990, -0.899466,
		0.164432, 0.887204, 0.431082,
		0.986388, -0.148017, -0.071617,
		39.048794, 34.171894, 24.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898182, 33.848488, 24.211185>,  <38.358322, 34.275509, 24.420572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898182, 33.848488, 24.211185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534767, 33.681847, 24.223858>,  <37.316719, 33.581863, 24.231461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534767, 33.681847, 24.223858>,  <37.898182, 33.848488, 24.211185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534767, 33.681847, 24.223858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324165, -0.655045, 0.682520,
		-0.263586, 0.630364, 0.730180,
		-0.908537, -0.416602, 0.031681,
		37.262207, 33.556866, 24.233362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771275, 33.696358, 24.982185>,  <37.898182, 33.848488, 24.211185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771275, 33.696358, 24.982185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527653, 33.465263, 24.764832>,  <37.381481, 33.326607, 24.634418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.527653, 33.465263, 24.764832>,  <37.771275, 33.696358, 24.982185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527653, 33.465263, 24.764832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161868, -0.761243, 0.627939,
		-0.776434, 0.294493, 0.557157,
		-0.609055, -0.577739, -0.543387,
		37.344936, 33.291943, 24.601816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252392, 33.410583, 25.431747>,  <37.771275, 33.696358, 24.982185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252392, 33.410583, 25.431747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234432, 33.160770, 25.119865>,  <37.223656, 33.010883, 24.932735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234432, 33.160770, 25.119865>,  <37.252392, 33.410583, 25.431747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234432, 33.160770, 25.119865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116176, -0.778462, 0.616847,
		-0.992213, -0.062889, 0.107506,
		-0.044896, -0.624534, -0.779706,
		37.220963, 32.973412, 24.885954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907024, 32.814548, 25.704226>,  <37.252392, 33.410583, 25.431747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907024, 32.814548, 25.704226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068390, 32.684361, 25.362156>,  <37.165211, 32.606247, 25.156914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.068390, 32.684361, 25.362156>,  <36.907024, 32.814548, 25.704226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068390, 32.684361, 25.362156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210303, -0.876602, 0.432830,
		-0.890523, -0.354455, -0.285185,
		0.403413, -0.325470, -0.855177,
		37.189415, 32.586720, 25.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650978, 32.113029, 25.494722>,  <36.907024, 32.814548, 25.704226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650978, 32.113029, 25.494722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003471, 32.139610, 25.307529>,  <37.214970, 32.155560, 25.195213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003471, 32.139610, 25.307529>,  <36.650978, 32.113029, 25.494722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003471, 32.139610, 25.307529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303203, -0.839006, 0.451815,
		-0.362619, -0.540049, -0.759509,
		0.881235, 0.066449, -0.467984,
		37.267841, 32.159546, 25.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779087, 31.363451, 25.360525>,  <36.650978, 32.113029, 25.494722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779087, 31.363451, 25.360525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136963, 31.524319, 25.282757>,  <37.351688, 31.620838, 25.236095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.136963, 31.524319, 25.282757>,  <36.779087, 31.363451, 25.360525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136963, 31.524319, 25.282757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441745, -0.731937, 0.518777,
		0.066332, -0.550026, -0.832509,
		0.894685, 0.402168, -0.194420,
		37.405369, 31.644970, 25.224430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187611, 30.795380, 25.222153>,  <36.779087, 31.363451, 25.360525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187611, 30.795380, 25.222153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437298, 31.091095, 25.323196>,  <37.587109, 31.268524, 25.383821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.437298, 31.091095, 25.323196>,  <37.187611, 30.795380, 25.222153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437298, 31.091095, 25.323196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576516, -0.654099, 0.489677,
		0.527242, -0.160032, -0.834509,
		0.624215, 0.739287, 0.252608,
		37.624561, 31.312881, 25.398979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881927, 30.532190, 25.159830>,  <37.187611, 30.795380, 25.222153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881927, 30.532190, 25.159830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.917423, 30.853260, 25.395741>,  <37.938721, 31.045902, 25.537287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.917423, 30.853260, 25.395741>,  <37.881927, 30.532190, 25.159830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917423, 30.853260, 25.395741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662989, -0.489490, 0.566431,
		0.743351, 0.340752, -0.575602,
		0.088739, 0.802675, 0.589778,
		37.944046, 31.094063, 25.572674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708271, 30.750193, 25.169346>,  <37.881927, 30.532190, 25.159830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708271, 30.750193, 25.169346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.505955, 30.867687, 25.493790>,  <38.384567, 30.938185, 25.688456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.505955, 30.867687, 25.493790>,  <38.708271, 30.750193, 25.169346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505955, 30.867687, 25.493790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726601, -0.361768, 0.584102,
		0.465005, 0.884784, -0.030451,
		-0.505788, 0.293736, 0.811109,
		38.354218, 30.955809, 25.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258465, 30.999022, 25.617989>,  <38.708271, 30.750193, 25.169346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258465, 30.999022, 25.617989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938545, 30.951744, 25.853397>,  <38.746593, 30.923378, 25.994642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.938545, 30.951744, 25.853397>,  <39.258465, 30.999022, 25.617989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938545, 30.951744, 25.853397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588282, -0.349313, 0.729318,
		0.119375, 0.929522, 0.348911,
		-0.799796, -0.118196, 0.588520,
		38.698605, 30.916285, 26.029953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508434, 31.280050, 26.327276>,  <39.258465, 30.999022, 25.617989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508434, 31.280050, 26.327276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.191463, 31.052982, 26.416546>,  <39.001282, 30.916740, 26.470108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.191463, 31.052982, 26.416546>,  <39.508434, 31.280050, 26.327276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191463, 31.052982, 26.416546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420955, -0.244174, 0.873599,
		-0.441424, 0.786211, 0.432454,
		-0.792428, -0.567671, 0.223176,
		38.953735, 30.882681, 26.483500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436848, 31.294889, 26.999235>,  <39.508434, 31.280050, 26.327276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436848, 31.294889, 26.999235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201309, 30.978760, 26.931526>,  <39.059986, 30.789082, 26.890902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.201309, 30.978760, 26.931526>,  <39.436848, 31.294889, 26.999235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201309, 30.978760, 26.931526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440187, -0.489227, 0.752923,
		-0.677865, 0.368842, 0.635968,
		-0.588842, -0.790325, -0.169270,
		39.024658, 30.741663, 26.880745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041279, 31.102053, 27.623026>,  <39.436848, 31.294889, 26.999235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041279, 31.102053, 27.623026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091408, 30.776176, 27.396549>,  <39.121487, 30.580650, 27.260664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.091408, 30.776176, 27.396549>,  <39.041279, 31.102053, 27.623026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091408, 30.776176, 27.396549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387124, -0.485294, 0.783980,
		-0.913470, -0.317439, 0.254567,
		0.125327, -0.814691, -0.566190,
		39.129005, 30.531769, 27.226692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929840, 30.598747, 28.126228>,  <39.041279, 31.102053, 27.623026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929840, 30.598747, 28.126228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102543, 30.415310, 27.815544>,  <39.206165, 30.305248, 27.629133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.102543, 30.415310, 27.815544>,  <38.929840, 30.598747, 28.126228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102543, 30.415310, 27.815544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552016, -0.546672, 0.629625,
		-0.713348, -0.700600, 0.017123,
		0.431755, -0.458595, -0.776710,
		39.232071, 30.277731, 27.582531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924934, 29.906733, 28.297152>,  <38.929840, 30.598747, 28.126228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924934, 29.906733, 28.297152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207367, 29.935505, 28.015362>,  <39.376827, 29.952768, 27.846289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.207367, 29.935505, 28.015362>,  <38.924934, 29.906733, 28.297152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207367, 29.935505, 28.015362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672204, -0.380950, 0.634838,
		-0.222704, -0.921793, -0.317332,
		0.706077, 0.071931, -0.704472,
		39.419189, 29.957085, 27.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243095, 29.231579, 28.209303>,  <38.924934, 29.906733, 28.297152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243095, 29.231579, 28.209303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510124, 29.502071, 28.084690>,  <39.670341, 29.664368, 28.009922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510124, 29.502071, 28.084690>,  <39.243095, 29.231579, 28.209303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510124, 29.502071, 28.084690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720820, -0.482237, 0.497861,
		0.186438, -0.556918, -0.809372,
		0.667577, 0.676232, -0.311531,
		39.710396, 29.704941, 27.991230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819592, 28.854406, 28.022732>,  <39.243095, 29.231579, 28.209303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819592, 28.854406, 28.022732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920883, 29.228859, 28.120331>,  <39.981659, 29.453529, 28.178890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.920883, 29.228859, 28.120331>,  <39.819592, 28.854406, 28.022732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920883, 29.228859, 28.120331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815801, -0.342200, 0.466228,
		0.519946, 0.080992, -0.850351,
		0.253229, 0.936130, 0.243999,
		39.996853, 29.509699, 28.193531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516674, 28.771667, 28.107975>,  <39.819592, 28.854406, 28.022732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516674, 28.771667, 28.107975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.444157, 29.131790, 28.266258>,  <40.400646, 29.347864, 28.361227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.444157, 29.131790, 28.266258>,  <40.516674, 28.771667, 28.107975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444157, 29.131790, 28.266258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741858, -0.138943, 0.656004,
		0.645584, 0.412488, -0.642709,
		-0.181293, 0.900305, 0.395707,
		40.389771, 29.401882, 28.384970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074562, 29.153618, 28.007620>,  <40.516674, 28.771667, 28.107975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074562, 29.153618, 28.007620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873028, 29.314014, 28.313652>,  <40.752106, 29.410252, 28.497272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873028, 29.314014, 28.313652>,  <41.074562, 29.153618, 28.007620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873028, 29.314014, 28.313652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837581, 0.010242, 0.546216,
		0.211192, 0.916025, -0.341023,
		-0.503840, 0.400991, 0.765082,
		40.721874, 29.434311, 28.543177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476643, 29.656311, 28.254297>,  <41.074562, 29.153618, 28.007620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476643, 29.656311, 28.254297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246315, 29.557541, 28.566055>,  <41.108116, 29.498280, 28.753111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.246315, 29.557541, 28.566055>,  <41.476643, 29.656311, 28.254297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246315, 29.557541, 28.566055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817434, -0.156159, 0.554450,
		-0.015197, 0.956370, 0.291764,
		-0.575821, -0.246924, 0.779396,
		41.073570, 29.483463, 28.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569759, 30.077936, 28.833824>,  <41.476643, 29.656311, 28.254297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569759, 30.077936, 28.833824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461403, 29.711060, 28.950699>,  <41.396389, 29.490932, 29.020824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.461403, 29.711060, 28.950699>,  <41.569759, 30.077936, 28.833824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461403, 29.711060, 28.950699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832464, -0.070801, 0.549537,
		-0.483345, 0.392101, 0.782710,
		-0.270891, -0.917194, 0.292188,
		41.380135, 29.435902, 29.038355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.073881, 26.245338, 32.759415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.447353, 26.312958, 32.885693>,  <26.671436, 26.353529, 32.961460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.447353, 26.312958, 32.885693>,  <26.073881, 26.245338, 32.759415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447353, 26.312958, 32.885693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124296, -0.979742, 0.157021,
		0.335840, -0.107369, -0.935780,
		0.933682, 0.169047, 0.315691,
		26.727459, 26.363672, 32.980400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505682, 25.754333, 32.464638>,  <26.073881, 26.245338, 32.759415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505682, 25.754333, 32.464638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.712158, 25.880314, 32.783222>,  <26.836044, 25.955902, 32.974373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.712158, 25.880314, 32.783222>,  <26.505682, 25.754333, 32.464638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712158, 25.880314, 32.783222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091877, -0.944928, 0.314117,
		0.851532, -0.088967, -0.516699,
		0.516190, 0.314953, 0.796463,
		26.867016, 25.974800, 33.022160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109085, 25.421915, 32.407803>,  <26.505682, 25.754333, 32.464638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109085, 25.421915, 32.407803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.074446, 25.525303, 32.792656>,  <27.053661, 25.587336, 33.023567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.074446, 25.525303, 32.792656>,  <27.109085, 25.421915, 32.407803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074446, 25.525303, 32.792656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156179, -0.950295, 0.269348,
		0.983925, 0.173590, 0.041928,
		-0.086600, 0.258470, 0.962130,
		27.048466, 25.602844, 33.081295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707535, 25.087322, 32.795975>,  <27.109085, 25.421915, 32.407803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707535, 25.087322, 32.795975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431105, 25.182674, 33.068913>,  <27.265247, 25.239885, 33.232674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431105, 25.182674, 33.068913>,  <27.707535, 25.087322, 32.795975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431105, 25.182674, 33.068913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090762, -0.907955, 0.409122,
		0.717062, 0.344665, 0.605828,
		-0.691075, 0.238379, 0.682342,
		27.223782, 25.254189, 33.273617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955359, 24.901369, 33.509598>,  <27.707535, 25.087322, 32.795975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955359, 24.901369, 33.509598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.561758, 24.919197, 33.578594>,  <27.325598, 24.929893, 33.619991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.561758, 24.919197, 33.578594>,  <27.955359, 24.901369, 33.509598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561758, 24.919197, 33.578594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077656, -0.764070, 0.640442,
		0.160337, 0.643592, 0.748386,
		-0.984003, 0.044570, 0.172487,
		27.266558, 24.932568, 33.630341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925535, 24.928802, 34.228230>,  <27.955359, 24.901369, 33.509598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925535, 24.928802, 34.228230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.560616, 24.809795, 34.115665>,  <27.341663, 24.738392, 34.048126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.560616, 24.809795, 34.115665>,  <27.925535, 24.928802, 34.228230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560616, 24.809795, 34.115665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054078, -0.768675, 0.637350,
		-0.405935, 0.566237, 0.717351,
		-0.912300, -0.297516, -0.281411,
		27.286926, 24.720541, 34.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631266, 24.685835, 34.826309>,  <27.925535, 24.928802, 34.228230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631266, 24.685835, 34.826309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.382597, 24.529171, 34.554977>,  <27.233397, 24.435173, 34.392178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.382597, 24.529171, 34.554977>,  <27.631266, 24.685835, 34.826309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382597, 24.529171, 34.554977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088236, -0.825480, 0.557492,
		-0.778293, 0.406429, 0.478619,
		-0.621671, -0.391661, -0.678327,
		27.196096, 24.411673, 34.351479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981768, 24.526644, 35.163265>,  <27.631266, 24.685835, 34.826309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981768, 24.526644, 35.163265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.023161, 24.283524, 34.848339>,  <27.047997, 24.137651, 34.659382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.023161, 24.283524, 34.848339>,  <26.981768, 24.526644, 35.163265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023161, 24.283524, 34.848339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202493, -0.787865, 0.581607,
		-0.973801, 0.099241, -0.204604,
		0.103481, -0.607800, -0.787319,
		27.054205, 24.101183, 34.612144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371902, 24.209894, 35.139015>,  <26.981768, 24.526644, 35.163265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371902, 24.209894, 35.139015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.613913, 23.958645, 34.943298>,  <26.759119, 23.807896, 34.825867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.613913, 23.958645, 34.943298>,  <26.371902, 24.209894, 35.139015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613913, 23.958645, 34.943298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294208, -0.747409, 0.595669,
		-0.739840, -0.216456, -0.637012,
		0.605045, -0.628114, -0.489280,
		26.795420, 23.770208, 34.796509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012913, 23.654236, 35.100857>,  <26.371902, 24.209894, 35.139015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012913, 23.654236, 35.100857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.372488, 23.506516, 35.006596>,  <26.588232, 23.417883, 34.950039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.372488, 23.506516, 35.006596>,  <26.012913, 23.654236, 35.100857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372488, 23.506516, 35.006596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163772, -0.782211, 0.601103,
		-0.406314, -0.501761, -0.763639,
		0.898937, -0.369299, -0.235649,
		26.642170, 23.395725, 34.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895853, 22.973589, 34.972729>,  <26.012913, 23.654236, 35.100857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895853, 22.973589, 34.972729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.285519, 22.993298, 35.060890>,  <26.519318, 23.005123, 35.113785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.285519, 22.993298, 35.060890>,  <25.895853, 22.973589, 34.972729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285519, 22.993298, 35.060890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071857, -0.857575, 0.509315,
		0.214105, -0.511994, -0.831878,
		0.974164, 0.049271, 0.220401,
		26.577768, 23.008080, 35.127010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140440, 22.353222, 34.806370>,  <25.895853, 22.973589, 34.972729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140440, 22.353222, 34.806370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413782, 22.509396, 35.053135>,  <26.577787, 22.603100, 35.201195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413782, 22.509396, 35.053135>,  <26.140440, 22.353222, 34.806370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413782, 22.509396, 35.053135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106134, -0.782889, 0.613042,
		0.722332, -0.484400, -0.493552,
		0.683354, 0.390437, 0.616917,
		26.618788, 22.626526, 35.238209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403316, 22.141800, 34.220367>,  <26.140440, 22.353222, 34.806370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403316, 22.141800, 34.220367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.360220, 21.744961, 34.246071>,  <26.334362, 21.506857, 34.261494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.360220, 21.744961, 34.246071>,  <26.403316, 22.141800, 34.220367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360220, 21.744961, 34.246071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486786, -0.003717, -0.873513,
		0.866851, -0.125395, -0.482540,
		-0.107741, -0.992100, 0.064262,
		26.327898, 21.447330, 34.265350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703163, 21.690147, 33.564358>,  <26.403316, 22.141800, 34.220367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703163, 21.690147, 33.564358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.377289, 21.555691, 33.753376>,  <26.181765, 21.475018, 33.866787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.377289, 21.555691, 33.753376>,  <26.703163, 21.690147, 33.564358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377289, 21.555691, 33.753376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510243, 0.028280, -0.859565,
		0.275573, -0.941387, -0.194553,
		-0.814685, -0.336142, 0.472543,
		26.132883, 21.454849, 33.895138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013006, 21.285303, 34.117447>,  <26.703163, 21.690147, 33.564358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013006, 21.285303, 34.117447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.037540, 20.930122, 33.935116>,  <27.052261, 20.717014, 33.825718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.037540, 20.930122, 33.935116>,  <27.013006, 21.285303, 34.117447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037540, 20.930122, 33.935116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087285, 0.450164, -0.888670,
		0.994293, 0.094295, -0.049893,
		0.061338, -0.887953, -0.455826,
		27.055943, 20.663736, 33.798367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674011, 21.291307, 33.696568>,  <27.013006, 21.285303, 34.117447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674011, 21.291307, 33.696568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431395, 21.009357, 33.549454>,  <27.285826, 20.840187, 33.461185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.431395, 21.009357, 33.549454>,  <27.674011, 21.291307, 33.696568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431395, 21.009357, 33.549454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258428, 0.262678, -0.929632,
		0.751881, -0.658903, 0.022835,
		-0.606539, -0.704874, -0.367781,
		27.249434, 20.797895, 33.439117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093151, 20.995720, 33.174118>,  <27.674011, 21.291307, 33.696568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093151, 20.995720, 33.174118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708679, 20.905270, 33.110874>,  <27.477995, 20.851000, 33.072929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708679, 20.905270, 33.110874>,  <28.093151, 20.995720, 33.174118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708679, 20.905270, 33.110874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078473, 0.325319, -0.942343,
		0.264517, -0.918171, -0.294947,
		-0.961183, -0.226120, -0.158104,
		27.420324, 20.837433, 33.063442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111734, 20.635054, 32.530922>,  <28.093151, 20.995720, 33.174118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111734, 20.635054, 32.530922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.735348, 20.764011, 32.572189>,  <27.509516, 20.841387, 32.596951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.735348, 20.764011, 32.572189>,  <28.111734, 20.635054, 32.530922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735348, 20.764011, 32.572189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054210, 0.444363, -0.894205,
		-0.334131, -0.835824, -0.435608,
		-0.940966, 0.322396, 0.103165,
		27.453058, 20.860729, 32.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810421, 20.601202, 31.924204>,  <28.111734, 20.635054, 32.530922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810421, 20.601202, 31.924204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.597750, 20.889877, 32.101509>,  <27.470146, 21.063084, 32.207893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.597750, 20.889877, 32.101509>,  <27.810421, 20.601202, 31.924204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597750, 20.889877, 32.101509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024279, 0.510162, -0.859735,
		-0.846597, -0.467866, -0.253721,
		-0.531680, 0.721690, 0.443261,
		27.438246, 21.106384, 32.234486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198118, 20.733679, 31.431385>,  <27.810421, 20.601202, 31.924204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198118, 20.733679, 31.431385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.249964, 21.047348, 31.674126>,  <27.281071, 21.235550, 31.819771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.249964, 21.047348, 31.674126>,  <27.198118, 20.733679, 31.431385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249964, 21.047348, 31.674126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195137, 0.620219, -0.759769,
		-0.972174, -0.019944, 0.233410,
		0.129612, 0.784175, 0.606853,
		27.288847, 21.282600, 31.856182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766813, 21.230778, 31.100782>,  <27.198118, 20.733679, 31.431385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766813, 21.230778, 31.100782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.940065, 21.479797, 31.361500>,  <27.044018, 21.629210, 31.517929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.940065, 21.479797, 31.361500>,  <26.766813, 21.230778, 31.100782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940065, 21.479797, 31.361500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337485, 0.782554, -0.523175,
		-0.835764, 0.006634, 0.549049,
		0.433132, 0.622547, 0.651792,
		27.070005, 21.666561, 31.557037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339888, 21.705992, 31.339882>,  <26.766813, 21.230778, 31.100782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339888, 21.705992, 31.339882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.689474, 21.896030, 31.380814>,  <26.899225, 22.010054, 31.405373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.689474, 21.896030, 31.380814>,  <26.339888, 21.705992, 31.339882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689474, 21.896030, 31.380814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350353, 0.761844, -0.544836,
		-0.336807, 0.440316, 0.832276,
		0.873965, 0.475094, 0.102328,
		26.951664, 22.038559, 31.411512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081678, 22.350876, 31.317701>,  <26.339888, 21.705992, 31.339882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081678, 22.350876, 31.317701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.478306, 22.394478, 31.289673>,  <26.716282, 22.420639, 31.272856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.478306, 22.394478, 31.289673>,  <26.081678, 22.350876, 31.317701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478306, 22.394478, 31.289673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129177, 0.874295, -0.467891,
		0.010260, 0.472997, 0.881004,
		0.991569, 0.109005, -0.070071,
		26.775776, 22.427179, 31.268652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176214, 23.081018, 31.473557>,  <26.081678, 22.350876, 31.317701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176214, 23.081018, 31.473557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.508505, 22.956764, 31.288776>,  <26.707880, 22.882212, 31.177908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.508505, 22.956764, 31.288776>,  <26.176214, 23.081018, 31.473557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508505, 22.956764, 31.288776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082841, 0.889573, -0.449218,
		0.550481, 0.334909, 0.764727,
		0.830728, -0.310637, -0.461948,
		26.757723, 22.863573, 31.150192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607611, 23.663485, 31.571920>,  <26.176214, 23.081018, 31.473557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607611, 23.663485, 31.571920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.764521, 23.443211, 31.277203>,  <26.858667, 23.311047, 31.100372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.764521, 23.443211, 31.277203>,  <26.607611, 23.663485, 31.571920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764521, 23.443211, 31.277203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038304, 0.810080, -0.585068,
		0.919049, 0.201287, 0.338869,
		0.392277, -0.550686, -0.736793,
		26.882204, 23.278006, 31.056164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180696, 24.034950, 31.435978>,  <26.607611, 23.663485, 31.571920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180696, 24.034950, 31.435978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.111073, 23.820194, 31.105778>,  <27.069298, 23.691339, 30.907658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.111073, 23.820194, 31.105778>,  <27.180696, 24.034950, 31.435978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111073, 23.820194, 31.105778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142168, 0.815814, -0.560568,
		0.974419, -0.214931, -0.065670,
		-0.174057, -0.536892, -0.825501,
		27.058855, 23.659126, 30.858128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729773, 24.133509, 30.999809>,  <27.180696, 24.034950, 31.435978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729773, 24.133509, 30.999809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.459986, 23.997955, 30.737434>,  <27.298115, 23.916622, 30.580009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.459986, 23.997955, 30.737434>,  <27.729773, 24.133509, 30.999809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459986, 23.997955, 30.737434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292679, 0.692921, -0.658939,
		0.677808, -0.636415, -0.368174,
		-0.674474, -0.338877, -0.655933,
		27.257647, 23.896290, 30.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091009, 24.086781, 30.291000>,  <27.729773, 24.133509, 30.999809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091009, 24.086781, 30.291000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698568, 24.135082, 30.230530>,  <27.463104, 24.164064, 30.194246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698568, 24.135082, 30.230530>,  <28.091009, 24.086781, 30.291000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698568, 24.135082, 30.230530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180686, 0.851277, -0.492625,
		0.069207, -0.510632, -0.857010,
		-0.981103, 0.120756, -0.151179,
		27.404238, 24.171309, 30.185177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716255, 23.683184, 30.160830>,  <28.091009, 24.086781, 30.291000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716255, 23.683184, 30.160830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.092623, 23.766232, 30.053825>,  <29.318443, 23.816059, 29.989622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.092623, 23.766232, 30.053825>,  <28.716255, 23.683184, 30.160830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092623, 23.766232, 30.053825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337660, -0.634889, 0.694912,
		-0.025564, -0.744185, -0.667484,
		0.940921, 0.207618, -0.267512,
		29.374899, 23.828516, 29.973572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972855, 23.114220, 29.981693>,  <28.716255, 23.683184, 30.160830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972855, 23.114220, 29.981693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.285591, 23.343052, 30.080849>,  <29.473234, 23.480350, 30.140343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.285591, 23.343052, 30.080849>,  <28.972855, 23.114220, 29.981693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285591, 23.343052, 30.080849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292552, -0.687722, 0.664419,
		0.550578, -0.446951, -0.705052,
		0.781842, 0.572079, 0.247888,
		29.520144, 23.514675, 30.155214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545404, 22.647898, 30.011667>,  <28.972855, 23.114220, 29.981693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545404, 22.647898, 30.011667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648127, 22.972252, 30.222008>,  <29.709761, 23.166864, 30.348211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648127, 22.972252, 30.222008>,  <29.545404, 22.647898, 30.011667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648127, 22.972252, 30.222008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396826, -0.584587, 0.707663,
		0.881237, 0.026938, -0.471906,
		0.256807, 0.810883, 0.525850,
		29.725168, 23.215517, 30.379763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184105, 22.532745, 30.242903>,  <29.545404, 22.647898, 30.011667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184105, 22.532745, 30.242903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059593, 22.821896, 30.489658>,  <29.984886, 22.995386, 30.637712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.059593, 22.821896, 30.489658>,  <30.184105, 22.532745, 30.242903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059593, 22.821896, 30.489658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589966, -0.361906, 0.721778,
		0.745013, 0.588620, -0.313819,
		-0.311280, 0.722877, 0.616890,
		29.966209, 23.038759, 30.674725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783726, 22.861404, 30.742126>,  <30.184105, 22.532745, 30.242903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783726, 22.861404, 30.742126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431805, 22.926228, 30.920872>,  <30.220652, 22.965122, 31.028118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.431805, 22.926228, 30.920872>,  <30.783726, 22.861404, 30.742126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431805, 22.926228, 30.920872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327593, -0.474459, 0.817050,
		0.344428, 0.865232, 0.364341,
		-0.879802, 0.162059, 0.446861,
		30.167864, 22.974846, 31.054930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888617, 23.032141, 31.495974>,  <30.783726, 22.861404, 30.742126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888617, 23.032141, 31.495974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505743, 22.917877, 31.477226>,  <30.276018, 22.849319, 31.465979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.505743, 22.917877, 31.477226>,  <30.888617, 23.032141, 31.495974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505743, 22.917877, 31.477226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093959, -0.459721, 0.883079,
		-0.273806, 0.840866, 0.466878,
		-0.957184, -0.285659, -0.046868,
		30.218588, 22.832180, 31.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743687, 23.096434, 32.208614>,  <30.888617, 23.032141, 31.495974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743687, 23.096434, 32.208614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416126, 22.894577, 32.099258>,  <30.219591, 22.773464, 32.033646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416126, 22.894577, 32.099258>,  <30.743687, 23.096434, 32.208614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416126, 22.894577, 32.099258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050028, -0.537291, 0.841912,
		-0.571752, 0.675764, 0.465234,
		-0.818900, -0.504640, -0.273390,
		30.170456, 22.743185, 32.017242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794462, 23.678040, 32.634609>,  <30.743687, 23.096434, 32.208614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794462, 23.678040, 32.634609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142248, 23.752785, 32.817524>,  <31.350920, 23.797632, 32.927273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142248, 23.752785, 32.817524>,  <30.794462, 23.678040, 32.634609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142248, 23.752785, 32.817524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218581, 0.684622, -0.695353,
		-0.443007, 0.704539, 0.554409,
		0.869464, 0.186863, 0.457291,
		31.403088, 23.808844, 32.954712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858210, 24.432713, 32.675255>,  <30.794462, 23.678040, 32.634609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858210, 24.432713, 32.675255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223881, 24.282307, 32.735779>,  <31.443283, 24.192062, 32.772091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.223881, 24.282307, 32.735779>,  <30.858210, 24.432713, 32.675255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223881, 24.282307, 32.735779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370076, 0.622096, -0.689957,
		0.165307, 0.686737, 0.707860,
		0.914176, -0.376016, 0.151308,
		31.498133, 24.169502, 32.781170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308529, 24.999203, 32.805504>,  <30.858210, 24.432713, 32.675255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308529, 24.999203, 32.805504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510397, 24.681477, 32.670227>,  <31.631517, 24.490841, 32.589062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510397, 24.681477, 32.670227>,  <31.308529, 24.999203, 32.805504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510397, 24.681477, 32.670227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303812, 0.530082, -0.791651,
		0.808087, 0.296777, 0.508840,
		0.504671, -0.794315, -0.338188,
		31.661798, 24.443182, 32.568771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002731, 25.211294, 32.589306>,  <31.308529, 24.999203, 32.805504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002731, 25.211294, 32.589306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946230, 24.871063, 32.386696>,  <31.912329, 24.666925, 32.265129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.946230, 24.871063, 32.386696>,  <32.002731, 25.211294, 32.589306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946230, 24.871063, 32.386696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551967, 0.357077, -0.753544,
		0.821815, -0.386025, 0.419052,
		-0.141253, -0.850577, -0.506524,
		31.903854, 24.615891, 32.234737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544090, 25.345419, 32.183453>,  <32.002731, 25.211294, 32.589306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544090, 25.345419, 32.183453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376499, 25.015388, 32.031818>,  <32.275944, 24.817369, 31.940838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.376499, 25.015388, 32.031818>,  <32.544090, 25.345419, 32.183453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376499, 25.015388, 32.031818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399804, 0.207211, -0.892872,
		0.815238, -0.525655, 0.243052,
		-0.418980, -0.825076, -0.379085,
		32.250805, 24.767866, 31.918093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039219, 24.968163, 31.828234>,  <32.544090, 25.345419, 32.183453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039219, 24.968163, 31.828234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684231, 24.876015, 31.668571>,  <32.471237, 24.820726, 31.572775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684231, 24.876015, 31.668571>,  <33.039219, 24.968163, 31.828234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684231, 24.876015, 31.668571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306934, 0.350620, -0.884792,
		0.343768, -0.907745, -0.240463,
		-0.887477, -0.230357, -0.399150,
		32.417988, 24.806904, 31.548824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228409, 24.628380, 31.235907>,  <33.039219, 24.968163, 31.828234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228409, 24.628380, 31.235907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853310, 24.753548, 31.175629>,  <32.628250, 24.828650, 31.139462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.853310, 24.753548, 31.175629>,  <33.228409, 24.628380, 31.235907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853310, 24.753548, 31.175629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275372, 0.405465, -0.871647,
		-0.211657, -0.858882, -0.466394,
		-0.937748, 0.312922, -0.150692,
		32.571983, 24.847424, 31.130421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.853994, 24.312351, 37.274296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.493389, 24.312592, 37.101192>,  <28.277027, 24.312735, 36.997330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.493389, 24.312592, 37.101192>,  <28.853994, 24.312351, 37.274296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493389, 24.312592, 37.101192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322582, 0.667535, -0.671073,
		0.288477, -0.744579, -0.601983,
		-0.901511, 0.000600, -0.432756,
		28.222937, 24.312771, 36.971367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959393, 24.532692, 36.559147>,  <28.853994, 24.312351, 37.274296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959393, 24.532692, 36.559147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560408, 24.559250, 36.548862>,  <28.321016, 24.575186, 36.542690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560408, 24.559250, 36.548862>,  <28.959393, 24.532692, 36.559147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560408, 24.559250, 36.548862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064978, 0.701243, -0.709955,
		-0.029110, -0.709824, -0.703777,
		-0.997462, 0.066397, -0.025710,
		28.261169, 24.579168, 36.541149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695534, 24.423397, 35.911964>,  <28.959393, 24.532692, 36.559147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695534, 24.423397, 35.911964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.408747, 24.641647, 36.085514>,  <28.236673, 24.772598, 36.189644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.408747, 24.641647, 36.085514>,  <28.695534, 24.423397, 35.911964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408747, 24.641647, 36.085514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025457, 0.642472, -0.765886,
		-0.696640, -0.538072, -0.474522,
		-0.716969, 0.545627, 0.433874,
		28.193657, 24.805336, 36.215675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404650, 24.819920, 35.338703>,  <28.695534, 24.423397, 35.911964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404650, 24.819920, 35.338703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.318565, 24.999180, 35.685768>,  <28.266914, 25.106735, 35.894009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.318565, 24.999180, 35.685768>,  <28.404650, 24.819920, 35.338703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318565, 24.999180, 35.685768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065251, 0.893100, -0.445101,
		-0.974385, -0.039175, -0.221448,
		-0.215212, 0.448149, 0.867667,
		28.254002, 25.133625, 35.946068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027163, 25.439926, 35.156734>,  <28.404650, 24.819920, 35.338703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027163, 25.439926, 35.156734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.112675, 25.516636, 35.539883>,  <28.163982, 25.562662, 35.769772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.112675, 25.516636, 35.539883>,  <28.027163, 25.439926, 35.156734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112675, 25.516636, 35.539883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022152, 0.981241, -0.191510,
		-0.976631, 0.019722, 0.214018,
		0.213780, 0.191776, 0.957873,
		28.176809, 25.574169, 35.827244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638376, 26.035793, 35.298550>,  <28.027163, 25.439926, 35.156734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638376, 26.035793, 35.298550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.893898, 26.041382, 35.606247>,  <28.047211, 26.044735, 35.790867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.893898, 26.041382, 35.606247>,  <27.638376, 26.035793, 35.298550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893898, 26.041382, 35.606247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125173, 0.984626, -0.121829,
		-0.759120, 0.174114, 0.627233,
		0.638802, 0.013970, 0.769244,
		28.085539, 26.045572, 35.837021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429150, 26.580515, 35.933926>,  <27.638376, 26.035793, 35.298550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429150, 26.580515, 35.933926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.822323, 26.518105, 35.972916>,  <28.058226, 26.480658, 35.996311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.822323, 26.518105, 35.972916>,  <27.429150, 26.580515, 35.933926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822323, 26.518105, 35.972916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141032, 0.979276, 0.145357,
		-0.118135, -0.129129, 0.984566,
		0.982932, -0.156027, 0.097476,
		28.117203, 26.471296, 36.002159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713293, 27.080597, 36.302856>,  <27.429150, 26.580515, 35.933926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713293, 27.080597, 36.302856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.048962, 26.960888, 36.121204>,  <28.250362, 26.889063, 36.012215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.048962, 26.960888, 36.121204>,  <27.713293, 27.080597, 36.302856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048962, 26.960888, 36.121204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294436, 0.952033, -0.083311,
		0.457275, -0.063799, 0.887034,
		0.839170, -0.299270, -0.454126,
		28.300713, 26.871107, 35.984966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210714, 27.465837, 36.583519>,  <27.713293, 27.080597, 36.302856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210714, 27.465837, 36.583519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373249, 27.342056, 36.239628>,  <28.470770, 27.267788, 36.033295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.373249, 27.342056, 36.239628>,  <28.210714, 27.465837, 36.583519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373249, 27.342056, 36.239628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275568, 0.938598, -0.207598,
		0.871178, -0.152558, 0.466664,
		0.406339, -0.309452, -0.859726,
		28.495152, 27.249220, 35.981709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991613, 27.708717, 36.560066>,  <28.210714, 27.465837, 36.583519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991613, 27.708717, 36.560066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860914, 27.656822, 36.185600>,  <28.782495, 27.625685, 35.960922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860914, 27.656822, 36.185600>,  <28.991613, 27.708717, 36.560066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860914, 27.656822, 36.185600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129875, 0.974973, -0.180444,
		0.936146, -0.180544, -0.301720,
		-0.326747, -0.129736, -0.936165,
		28.762890, 27.617901, 35.904751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273714, 28.285780, 36.261269>,  <28.991613, 27.708717, 36.560066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273714, 28.285780, 36.261269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050766, 28.132618, 35.966591>,  <28.916998, 28.040722, 35.789783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050766, 28.132618, 35.966591>,  <29.273714, 28.285780, 36.261269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050766, 28.132618, 35.966591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039334, 0.898487, -0.437235,
		0.829331, -0.214725, -0.515852,
		-0.557372, -0.382903, -0.736697,
		28.883554, 28.017748, 35.745583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534111, 28.359310, 35.637611>,  <29.273714, 28.285780, 36.261269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534111, 28.359310, 35.637611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145933, 28.343174, 35.542439>,  <28.913027, 28.333492, 35.485336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145933, 28.343174, 35.542439>,  <29.534111, 28.359310, 35.637611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145933, 28.343174, 35.542439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037315, 0.948989, -0.313094,
		0.238425, -0.312719, -0.919435,
		-0.970444, -0.040341, -0.237932,
		28.854799, 28.331072, 35.471058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103596, 27.882900, 35.311527>,  <29.534111, 28.359310, 35.637611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103596, 27.882900, 35.311527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475506, 28.006012, 35.392315>,  <30.698652, 28.079880, 35.440788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475506, 28.006012, 35.392315>,  <30.103596, 27.882900, 35.311527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475506, 28.006012, 35.392315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110572, -0.756788, 0.644240,
		0.351134, -0.576665, -0.737673,
		0.929773, 0.307781, 0.201970,
		30.754438, 28.098347, 35.452908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633556, 27.330875, 35.211071>,  <30.103596, 27.882900, 35.311527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633556, 27.330875, 35.211071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776381, 27.595478, 35.474865>,  <30.862076, 27.754240, 35.633141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.776381, 27.595478, 35.474865>,  <30.633556, 27.330875, 35.211071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776381, 27.595478, 35.474865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203902, -0.744196, 0.636079,
		0.911555, -0.092648, -0.400605,
		0.357060, 0.661505, 0.659484,
		30.883499, 27.793930, 35.672710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296644, 27.192976, 35.270496>,  <30.633556, 27.330875, 35.211071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296644, 27.192976, 35.270496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186655, 27.385345, 35.603508>,  <31.120663, 27.500767, 35.803314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186655, 27.385345, 35.603508>,  <31.296644, 27.192976, 35.270496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186655, 27.385345, 35.603508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180050, -0.824830, 0.535946,
		0.944443, 0.297266, 0.140215,
		-0.274972, 0.480924, 0.832528,
		31.104164, 27.529623, 35.853268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887068, 26.930109, 35.702595>,  <31.296644, 27.192976, 35.270496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887068, 26.930109, 35.702595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593414, 27.065456, 35.938068>,  <31.417221, 27.146666, 36.079353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593414, 27.065456, 35.938068>,  <31.887068, 26.930109, 35.702595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593414, 27.065456, 35.938068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085810, -0.813800, 0.574776,
		0.673559, 0.472478, 0.568404,
		-0.734136, 0.338370, 0.588685,
		31.373173, 27.166967, 36.114674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127712, 26.847057, 36.319401>,  <31.887068, 26.930109, 35.702595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127712, 26.847057, 36.319401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730145, 26.883121, 36.344662>,  <31.491604, 26.904760, 36.359818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730145, 26.883121, 36.344662>,  <32.127712, 26.847057, 36.319401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730145, 26.883121, 36.344662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042414, -0.843077, 0.536117,
		0.101580, 0.530180, 0.841778,
		-0.993923, 0.090162, 0.063153,
		31.431967, 26.910170, 36.363609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986464, 26.621338, 36.986458>,  <32.127712, 26.847057, 36.319401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986464, 26.621338, 36.986458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.630911, 26.609200, 36.803604>,  <31.417580, 26.601915, 36.693893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.630911, 26.609200, 36.803604>,  <31.986464, 26.621338, 36.986458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630911, 26.609200, 36.803604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223262, -0.842610, 0.490063,
		-0.400058, 0.537668, 0.742204,
		-0.888880, -0.030348, -0.457134,
		31.364246, 26.600096, 36.666466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513893, 26.426159, 37.487900>,  <31.986464, 26.621338, 36.986458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513893, 26.426159, 37.487900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334221, 26.341602, 37.140671>,  <31.226418, 26.290869, 36.932335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334221, 26.341602, 37.140671>,  <31.513893, 26.426159, 37.487900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334221, 26.341602, 37.140671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265638, -0.896069, 0.355664,
		-0.853037, 0.390351, 0.346345,
		-0.449182, -0.211392, -0.868072,
		31.199467, 26.278185, 36.880249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884991, 26.065573, 37.746288>,  <31.513893, 26.426159, 37.487900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884991, 26.065573, 37.746288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930605, 25.989544, 37.356239>,  <30.957973, 25.943928, 37.122208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.930605, 25.989544, 37.356239>,  <30.884991, 26.065573, 37.746288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930605, 25.989544, 37.356239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119672, -0.977009, 0.176442,
		-0.986243, 0.096574, -0.134161,
		0.114037, -0.190070, -0.975125,
		30.964815, 25.932524, 37.063702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406494, 25.475643, 37.592625>,  <30.884991, 26.065573, 37.746288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406494, 25.475643, 37.592625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694014, 25.475121, 37.314537>,  <30.866526, 25.474808, 37.147686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.694014, 25.475121, 37.314537>,  <30.406494, 25.475643, 37.592625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694014, 25.475121, 37.314537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047323, -0.997771, -0.047054,
		-0.693605, 0.066722, -0.717259,
		0.718799, -0.001306, -0.695216,
		30.909653, 25.474730, 37.105972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077370, 24.992788, 37.131691>,  <30.406494, 25.475643, 37.592625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077370, 24.992788, 37.131691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.464685, 25.020679, 37.035728>,  <30.697075, 25.037415, 36.978149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.464685, 25.020679, 37.035728>,  <30.077370, 24.992788, 37.131691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464685, 25.020679, 37.035728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007370, -0.951873, -0.306404,
		-0.249729, 0.298456, -0.921173,
		0.968288, 0.069729, -0.239910,
		30.755171, 25.041597, 36.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172283, 24.644016, 36.518795>,  <30.077370, 24.992788, 37.131691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172283, 24.644016, 36.518795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555502, 24.674137, 36.629414>,  <30.785433, 24.692209, 36.695786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.555502, 24.674137, 36.629414>,  <30.172283, 24.644016, 36.518795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555502, 24.674137, 36.629414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133814, -0.970772, -0.199238,
		0.253465, 0.227885, -0.940119,
		0.958045, 0.075301, 0.276551,
		30.842915, 24.696728, 36.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506697, 24.324308, 36.000698>,  <30.172283, 24.644016, 36.518795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506697, 24.324308, 36.000698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748363, 24.314762, 36.319298>,  <30.893364, 24.309034, 36.510460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748363, 24.314762, 36.319298>,  <30.506697, 24.324308, 36.000698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748363, 24.314762, 36.319298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210384, -0.959309, -0.188323,
		0.768585, 0.281349, -0.574561,
		0.604166, -0.023864, 0.796501,
		30.929613, 24.307604, 36.558247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144560, 23.962914, 35.787731>,  <30.506697, 24.324308, 36.000698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144560, 23.962914, 35.787731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.138809, 23.965191, 36.187683>,  <31.135359, 23.966557, 36.427654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.138809, 23.965191, 36.187683>,  <31.144560, 23.962914, 35.787731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138809, 23.965191, 36.187683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284326, -0.958680, 0.009545,
		0.958620, 0.284429, 0.012162,
		-0.014374, 0.005692, 0.999880,
		31.134497, 23.966898, 36.487648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801943, 23.841862, 36.085579>,  <31.144560, 23.962914, 35.787731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801943, 23.841862, 36.085579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542835, 23.740364, 36.372913>,  <31.387371, 23.679466, 36.545315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542835, 23.740364, 36.372913>,  <31.801943, 23.841862, 36.085579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542835, 23.740364, 36.372913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422997, -0.903999, 0.062116,
		0.633616, 0.344092, 0.692915,
		-0.647769, -0.253743, 0.718339,
		31.348505, 23.664242, 36.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680294, 23.089539, 35.867153>,  <31.801943, 23.841862, 36.085579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680294, 23.089539, 35.867153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.673058, 22.781597, 35.611965>,  <31.668716, 22.596832, 35.458855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.673058, 22.781597, 35.611965>,  <31.680294, 23.089539, 35.867153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673058, 22.781597, 35.611965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116571, 0.632095, -0.766072,
		0.993017, -0.088228, 0.078307,
		-0.018091, -0.769852, -0.637966,
		31.667631, 22.550642, 35.420574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102676, 23.333357, 35.314095>,  <31.680294, 23.089539, 35.867153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102676, 23.333357, 35.314095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886118, 23.029785, 35.169365>,  <31.756182, 22.847643, 35.082527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886118, 23.029785, 35.169365>,  <32.102676, 23.333357, 35.314095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886118, 23.029785, 35.169365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064495, 0.391598, -0.917874,
		0.838290, -0.520270, -0.163063,
		-0.541397, -0.758927, -0.361827,
		31.723700, 22.802107, 35.060818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462193, 23.040752, 34.749939>,  <32.102676, 23.333357, 35.314095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462193, 23.040752, 34.749939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085701, 22.918297, 34.692848>,  <31.859806, 22.844824, 34.658592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.085701, 22.918297, 34.692848>,  <32.462193, 23.040752, 34.749939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085701, 22.918297, 34.692848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037123, 0.326231, -0.944561,
		0.335752, -0.894337, -0.295689,
		-0.941219, -0.306161, -0.142733,
		31.803333, 22.826454, 34.650032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498848, 22.653620, 34.178219>,  <32.462193, 23.040752, 34.749939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498848, 22.653620, 34.178219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126213, 22.794552, 34.214024>,  <31.902634, 22.879112, 34.235508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126213, 22.794552, 34.214024>,  <32.498848, 22.653620, 34.178219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126213, 22.794552, 34.214024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025809, 0.309712, -0.950480,
		-0.362607, -0.883143, -0.297616,
		-0.931585, 0.352332, 0.089511,
		31.846737, 22.900251, 34.240875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183540, 22.595125, 33.449562>,  <32.498848, 22.653620, 34.178219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183540, 22.595125, 33.449562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959890, 22.838779, 33.674538>,  <31.825701, 22.984972, 33.809521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959890, 22.838779, 33.674538>,  <32.183540, 22.595125, 33.449562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959890, 22.838779, 33.674538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188711, 0.567072, -0.801759,
		-0.807322, -0.554420, -0.202113,
		-0.559124, 0.609137, 0.562435,
		31.792152, 23.021521, 33.843269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612963, 22.673733, 33.100346>,  <32.183540, 22.595125, 33.449562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612963, 22.673733, 33.100346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.634640, 22.994621, 33.338173>,  <31.647646, 23.187155, 33.480869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.634640, 22.994621, 33.338173>,  <31.612963, 22.673733, 33.100346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634640, 22.994621, 33.338173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016685, 0.596083, -0.802749,
		-0.998391, 0.033585, 0.045689,
		0.054195, 0.802220, 0.594564,
		31.650898, 23.235287, 33.516541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085281, 23.051609, 32.836220>,  <31.612963, 22.673733, 33.100346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085281, 23.051609, 32.836220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296143, 23.298912, 33.069412>,  <31.422659, 23.447294, 33.209328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.296143, 23.298912, 33.069412>,  <31.085281, 23.051609, 32.836220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296143, 23.298912, 33.069412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074445, 0.717010, -0.693076,
		-0.846503, 0.321958, 0.424001,
		0.527154, 0.618256, 0.582982,
		31.454288, 23.484388, 33.244308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299109, 23.032003, 32.856209>,  <31.085281, 23.051609, 32.836220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299109, 23.032003, 32.856209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.176809, 22.746254, 32.604435>,  <30.103430, 22.574804, 32.453373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.176809, 22.746254, 32.604435>,  <30.299109, 23.032003, 32.856209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176809, 22.746254, 32.604435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137709, -0.620959, 0.771652,
		-0.942100, 0.322611, 0.091482,
		-0.305750, -0.714375, -0.629432,
		30.085085, 22.531940, 32.415604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716452, 22.795660, 33.167339>,  <30.299109, 23.032003, 32.856209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716452, 22.795660, 33.167339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.815098, 22.491608, 32.926876>,  <29.874285, 22.309177, 32.782600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.815098, 22.491608, 32.926876>,  <29.716452, 22.795660, 33.167339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815098, 22.491608, 32.926876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334067, -0.648971, 0.683546,
		-0.909715, 0.032254, -0.413978,
		0.246613, -0.760129, -0.601154,
		29.889082, 22.263569, 32.746529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087366, 22.358282, 33.108700>,  <29.716452, 22.795660, 33.167339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087366, 22.358282, 33.108700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431263, 22.162251, 33.051197>,  <29.637602, 22.044632, 33.016697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.431263, 22.162251, 33.051197>,  <29.087366, 22.358282, 33.108700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431263, 22.162251, 33.051197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311712, -0.726473, 0.612432,
		-0.404573, -0.481724, -0.777343,
		0.859742, -0.490080, -0.143752,
		29.689186, 22.015226, 33.008072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886650, 21.614153, 33.004959>,  <29.087366, 22.358282, 33.108700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886650, 21.614153, 33.004959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280029, 21.625366, 33.076561>,  <29.516056, 21.632093, 33.119522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.280029, 21.625366, 33.076561>,  <28.886650, 21.614153, 33.004959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280029, 21.625366, 33.076561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113690, -0.673797, 0.730118,
		0.141082, -0.738385, -0.659457,
		0.983449, 0.028033, 0.179007,
		29.575064, 21.633776, 33.130264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210176, 20.975971, 32.685585>,  <28.886650, 21.614153, 33.004959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210176, 20.975971, 32.685585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448801, 21.099850, 32.981747>,  <29.591976, 21.174177, 33.159443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448801, 21.099850, 32.981747>,  <29.210176, 20.975971, 32.685585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448801, 21.099850, 32.981747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321586, -0.753006, 0.574078,
		0.735320, -0.580577, -0.349620,
		0.596562, 0.309698, 0.740406,
		29.627769, 21.192759, 33.203869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552431, 20.376637, 32.911610>,  <29.210176, 20.975971, 32.685585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552431, 20.376637, 32.911610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.622084, 20.632446, 33.211124>,  <29.663876, 20.785933, 33.390835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.622084, 20.632446, 33.211124>,  <29.552431, 20.376637, 32.911610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622084, 20.632446, 33.211124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078686, -0.748939, 0.657951,
		0.981574, -0.173489, -0.080091,
		0.174130, 0.639525, 0.748790,
		29.674322, 20.824305, 33.435760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114981, 20.156870, 33.281601>,  <29.552431, 20.376637, 32.911610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114981, 20.156870, 33.281601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.931114, 20.394257, 33.545876>,  <29.820793, 20.536688, 33.704441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.931114, 20.394257, 33.545876>,  <30.114981, 20.156870, 33.281601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931114, 20.394257, 33.545876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018797, -0.737269, 0.675337,
		0.887892, 0.322849, 0.327744,
		-0.459668, 0.593466, 0.660684,
		29.793215, 20.572296, 33.744080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435617, 20.100761, 33.992844>,  <30.114981, 20.156870, 33.281601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435617, 20.100761, 33.992844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064936, 20.243629, 34.039577>,  <29.842527, 20.329351, 34.067616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064936, 20.243629, 34.039577>,  <30.435617, 20.100761, 33.992844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064936, 20.243629, 34.039577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145956, -0.628578, 0.763929,
		0.346292, 0.690882, 0.634636,
		-0.926703, 0.357172, 0.116833,
		29.786924, 20.350780, 34.074627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203547, 20.075230, 34.673988>,  <30.435617, 20.100761, 33.992844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203547, 20.075230, 34.673988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850561, 20.111691, 34.489403>,  <29.638769, 20.133568, 34.378651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.850561, 20.111691, 34.489403>,  <30.203547, 20.075230, 34.673988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850561, 20.111691, 34.489403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407845, -0.637040, 0.654097,
		-0.234346, 0.765423, 0.599342,
		-0.882465, 0.091153, -0.461461,
		29.585821, 20.139036, 34.350964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.530910, 31.971708, 23.744781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167578, 32.021210, 23.904591>,  <28.949577, 32.050911, 24.000475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167578, 32.021210, 23.904591>,  <29.530910, 31.971708, 23.744781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167578, 32.021210, 23.904591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115808, -0.843458, 0.524564,
		0.401898, 0.522746, 0.751808,
		-0.908332, 0.123756, 0.399522,
		28.895079, 32.058338, 24.024446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600264, 31.806131, 24.471869>,  <29.530910, 31.971708, 23.744781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600264, 31.806131, 24.471869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210823, 31.757877, 24.394360>,  <28.977160, 31.728924, 24.347855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210823, 31.757877, 24.394360>,  <29.600264, 31.806131, 24.471869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210823, 31.757877, 24.394360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007185, -0.832311, 0.554262,
		-0.228145, 0.541022, 0.809472,
		-0.973601, -0.120636, -0.193774,
		28.918743, 31.721687, 24.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360538, 31.478024, 25.069204>,  <29.600264, 31.806131, 24.471869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360538, 31.478024, 25.069204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070160, 31.387695, 24.809357>,  <28.895933, 31.333498, 24.653448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070160, 31.387695, 24.809357>,  <29.360538, 31.478024, 25.069204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070160, 31.387695, 24.809357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155016, -0.866527, 0.474449,
		-0.670054, 0.445126, 0.594046,
		-0.725946, -0.225820, -0.649621,
		28.852377, 31.319950, 24.614470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685373, 31.410755, 25.390745>,  <29.360538, 31.478024, 25.069204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685373, 31.410755, 25.390745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681625, 31.194759, 25.054096>,  <28.679377, 31.065163, 24.852108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681625, 31.194759, 25.054096>,  <28.685373, 31.410755, 25.390745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681625, 31.194759, 25.054096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179187, -0.827128, 0.532684,
		-0.983770, 0.155800, -0.089007,
		-0.009372, -0.539987, -0.841621,
		28.678814, 31.032763, 24.801609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184114, 30.891661, 25.524412>,  <28.685373, 31.410755, 25.390745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184114, 30.891661, 25.524412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405138, 30.761181, 25.217617>,  <28.537752, 30.682892, 25.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405138, 30.761181, 25.217617>,  <28.184114, 30.891661, 25.524412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405138, 30.761181, 25.217617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064459, -0.900750, 0.429528,
		-0.830978, -0.286779, -0.476691,
		0.552558, -0.326201, -0.766989,
		28.570906, 30.663321, 24.987520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046247, 30.211010, 25.510752>,  <28.184114, 30.891661, 25.524412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046247, 30.211010, 25.510752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348135, 30.240685, 25.250015>,  <28.529266, 30.258490, 25.093573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348135, 30.240685, 25.250015>,  <28.046247, 30.211010, 25.510752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348135, 30.240685, 25.250015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189507, -0.975882, 0.108353,
		-0.628083, -0.205305, -0.750574,
		0.754718, 0.074184, -0.651842,
		28.574551, 30.262939, 25.054462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015036, 29.622227, 24.903496>,  <28.046247, 30.211010, 25.510752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015036, 29.622227, 24.903496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375975, 29.767628, 24.996136>,  <28.592537, 29.854868, 25.051720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375975, 29.767628, 24.996136>,  <28.015036, 29.622227, 24.903496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375975, 29.767628, 24.996136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323390, -0.926219, 0.193743,
		0.284939, -0.099926, -0.953323,
		0.902346, 0.363500, 0.231601,
		28.646679, 29.876678, 25.065617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520636, 29.165941, 24.551121>,  <28.015036, 29.622227, 24.903496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520636, 29.165941, 24.551121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794508, 29.339748, 24.785183>,  <28.958832, 29.444033, 24.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794508, 29.339748, 24.785183>,  <28.520636, 29.165941, 24.551121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794508, 29.339748, 24.785183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398876, -0.895344, 0.198132,
		0.610007, 0.097748, -0.786344,
		0.684682, 0.434516, 0.585156,
		28.999912, 29.470102, 24.960730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173677, 28.915718, 24.353392>,  <28.520636, 29.165941, 24.551121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173677, 28.915718, 24.353392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273621, 29.081188, 24.703579>,  <29.333586, 29.180470, 24.913691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273621, 29.081188, 24.703579>,  <29.173677, 28.915718, 24.353392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273621, 29.081188, 24.703579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437723, -0.854741, 0.278955,
		0.863695, 0.313514, -0.394638,
		0.249857, 0.413675, 0.875468,
		29.348577, 29.205290, 24.966219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921738, 28.673258, 24.525080>,  <29.173677, 28.915718, 24.353392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921738, 28.673258, 24.525080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753450, 28.760643, 24.877277>,  <29.652477, 28.813074, 25.088596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753450, 28.760643, 24.877277>,  <29.921738, 28.673258, 24.525080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753450, 28.760643, 24.877277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581202, -0.680319, 0.446508,
		0.696562, 0.699600, 0.159252,
		-0.420720, 0.218463, 0.880494,
		29.627235, 28.826181, 25.141426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481718, 28.608517, 25.062365>,  <29.921738, 28.673258, 24.525080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481718, 28.608517, 25.062365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140352, 28.580223, 25.268929>,  <29.935532, 28.563248, 25.392866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.140352, 28.580223, 25.268929>,  <30.481718, 28.608517, 25.062365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140352, 28.580223, 25.268929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425035, -0.667914, 0.610930,
		0.301703, 0.740869, 0.600073,
		-0.853417, -0.070733, 0.516408,
		29.884327, 28.559004, 25.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613487, 28.556046, 25.855833>,  <30.481718, 28.608517, 25.062365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613487, 28.556046, 25.855833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243078, 28.410187, 25.894844>,  <30.020832, 28.322672, 25.918251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243078, 28.410187, 25.894844>,  <30.613487, 28.556046, 25.855833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243078, 28.410187, 25.894844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346610, -0.719148, 0.602236,
		-0.149468, 0.591489, 0.792339,
		-0.926024, -0.364647, 0.097527,
		29.965271, 28.300793, 25.924103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324482, 28.624346, 25.644201>,  <30.613487, 28.556046, 25.855833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324482, 28.624346, 25.644201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654776, 28.677444, 25.863487>,  <31.852953, 28.709305, 25.995058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654776, 28.677444, 25.863487>,  <31.324482, 28.624346, 25.644201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654776, 28.677444, 25.863487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159336, 0.877433, -0.452465,
		-0.541084, 0.460967, 0.703376,
		0.825736, 0.132748, 0.548213,
		31.902496, 28.717268, 26.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237471, 29.277767, 25.934557>,  <31.324482, 28.624346, 25.644201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237471, 29.277767, 25.934557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619392, 29.159725, 25.920380>,  <31.848545, 29.088900, 25.911873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619392, 29.159725, 25.920380>,  <31.237471, 29.277767, 25.934557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619392, 29.159725, 25.920380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261415, 0.890519, -0.372341,
		0.141445, 0.346247, 0.927419,
		0.954806, -0.295107, -0.035446,
		31.905834, 29.071194, 25.909746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607586, 29.903320, 26.074568>,  <31.237471, 29.277767, 25.934557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607586, 29.903320, 26.074568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886827, 29.661797, 25.920650>,  <32.054371, 29.516882, 25.828300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886827, 29.661797, 25.920650>,  <31.607586, 29.903320, 26.074568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886827, 29.661797, 25.920650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403334, 0.775677, -0.485435,
		0.591585, 0.183684, 0.785040,
		0.698104, -0.603809, -0.384793,
		32.096260, 29.480654, 25.805212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266731, 30.207851, 26.207310>,  <31.607586, 29.903320, 26.074568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266731, 30.207851, 26.207310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351215, 29.968773, 25.897949>,  <32.401905, 29.825325, 25.712334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351215, 29.968773, 25.897949>,  <32.266731, 30.207851, 26.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351215, 29.968773, 25.897949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484211, 0.751318, -0.448398,
		0.849077, -0.279783, 0.448096,
		0.211209, -0.597697, -0.773401,
		32.414577, 29.789463, 25.665930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934002, 30.186718, 26.080120>,  <32.266731, 30.207851, 26.207310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934002, 30.186718, 26.080120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811020, 30.049370, 25.725140>,  <32.737232, 29.966961, 25.512152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811020, 30.049370, 25.725140>,  <32.934002, 30.186718, 26.080120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811020, 30.049370, 25.725140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611055, 0.643680, -0.460748,
		0.729441, -0.683940, 0.011917,
		-0.307453, -0.343371, -0.887451,
		32.718784, 29.946358, 25.458904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523243, 30.163363, 25.703821>,  <32.934002, 30.186718, 26.080120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523243, 30.163363, 25.703821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219170, 30.171913, 25.444080>,  <33.036724, 30.177044, 25.288235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219170, 30.171913, 25.444080>,  <33.523243, 30.163363, 25.703821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219170, 30.171913, 25.444080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467037, 0.712776, -0.523284,
		0.451657, -0.701065, -0.551827,
		-0.760186, 0.021379, -0.649354,
		32.991116, 30.178328, 25.249273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806366, 30.165493, 25.028143>,  <33.523243, 30.163363, 25.703821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806366, 30.165493, 25.028143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440926, 30.322029, 24.983974>,  <33.221661, 30.415951, 24.957474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440926, 30.322029, 24.983974>,  <33.806366, 30.165493, 25.028143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440926, 30.322029, 24.983974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389479, 0.764180, -0.514135,
		-0.116819, -0.512720, -0.850571,
		-0.913597, 0.391341, -0.110423,
		33.166847, 30.439432, 24.950848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873913, 30.334660, 24.356796>,  <33.806366, 30.165493, 25.028143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873913, 30.334660, 24.356796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576355, 30.546700, 24.519581>,  <33.397820, 30.673923, 24.617250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576355, 30.546700, 24.519581>,  <33.873913, 30.334660, 24.356796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576355, 30.546700, 24.519581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339389, 0.824237, -0.453265,
		-0.575708, -0.199062, -0.793054,
		-0.743892, 0.530102, 0.406960,
		33.353188, 30.705730, 24.641668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697475, 30.727095, 23.886875>,  <33.873913, 30.334660, 24.356796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697475, 30.727095, 23.886875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531834, 30.934128, 24.186375>,  <33.432449, 31.058348, 24.366074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531834, 30.934128, 24.186375>,  <33.697475, 30.727095, 23.886875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531834, 30.934128, 24.186375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281654, 0.855085, -0.435317,
		-0.865555, 0.030618, -0.499877,
		-0.414109, 0.517583, 0.748746,
		33.407600, 31.089403, 24.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323933, 31.319523, 23.547966>,  <33.697475, 30.727095, 23.886875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323933, 31.319523, 23.547966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398853, 31.412384, 23.929756>,  <33.443806, 31.468102, 24.158831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398853, 31.412384, 23.929756>,  <33.323933, 31.319523, 23.547966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398853, 31.412384, 23.929756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401868, 0.868527, -0.290109,
		-0.896336, 0.437912, 0.069384,
		0.187305, 0.232152, 0.954475,
		33.455044, 31.482029, 24.216099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264156, 32.002781, 23.551641>,  <33.323933, 31.319523, 23.547966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264156, 32.002781, 23.551641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440937, 31.933830, 23.903770>,  <33.547005, 31.892460, 24.115047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440937, 31.933830, 23.903770>,  <33.264156, 32.002781, 23.551641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440937, 31.933830, 23.903770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423561, 0.905176, -0.035400,
		-0.790745, 0.388516, 0.473051,
		0.441948, -0.172374, 0.880324,
		33.573521, 31.882118, 24.167868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164471, 32.647526, 24.029348>,  <33.264156, 32.002781, 23.551641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164471, 32.647526, 24.029348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490417, 32.451653, 24.153416>,  <33.685986, 32.334129, 24.227856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490417, 32.451653, 24.153416>,  <33.164471, 32.647526, 24.029348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490417, 32.451653, 24.153416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494757, 0.866367, 0.067992,
		-0.302012, 0.098053, 0.948248,
		0.814864, -0.489687, 0.310166,
		33.734879, 32.304745, 24.246466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324799, 33.129833, 24.500683>,  <33.164471, 32.647526, 24.029348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324799, 33.129833, 24.500683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651398, 32.920876, 24.402340>,  <33.847355, 32.795502, 24.343334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651398, 32.920876, 24.402340>,  <33.324799, 33.129833, 24.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651398, 32.920876, 24.402340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570179, 0.796511, 0.201165,
		0.090739, -0.304432, 0.948202,
		0.816494, -0.522391, -0.245855,
		33.896347, 32.764156, 24.328583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787895, 33.268932, 25.031185>,  <33.324799, 33.129833, 24.500683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787895, 33.268932, 25.031185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987019, 33.141171, 24.708652>,  <34.106491, 33.064514, 24.515133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987019, 33.141171, 24.708652>,  <33.787895, 33.268932, 25.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987019, 33.141171, 24.708652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705434, 0.689967, 0.162202,
		0.504533, -0.649557, 0.568791,
		0.497806, -0.319408, -0.806330,
		34.136360, 33.045349, 24.466753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655277, 33.324215, 25.828804>,  <33.787895, 33.268932, 25.031185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655277, 33.324215, 25.828804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439213, 33.590229, 26.035088>,  <33.309574, 33.749836, 26.158857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439213, 33.590229, 26.035088>,  <33.655277, 33.324215, 25.828804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439213, 33.590229, 26.035088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276484, -0.438544, 0.855123,
		0.794847, 0.604489, 0.053013,
		-0.540161, 0.665035, 0.515707,
		33.277164, 33.789738, 26.189800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971992, 33.425526, 26.466257>,  <33.655277, 33.324215, 25.828804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971992, 33.425526, 26.466257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590919, 33.521698, 26.540649>,  <33.362274, 33.579403, 26.585285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590919, 33.521698, 26.540649>,  <33.971992, 33.425526, 26.466257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590919, 33.521698, 26.540649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070663, -0.419903, 0.904814,
		0.295640, 0.875142, 0.383044,
		-0.952682, 0.240432, 0.185981,
		33.305115, 33.593826, 26.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948112, 33.633064, 27.187527>,  <33.971992, 33.425526, 26.466257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948112, 33.633064, 27.187527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565567, 33.557816, 27.098106>,  <33.336040, 33.512665, 27.044455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565567, 33.557816, 27.098106>,  <33.948112, 33.633064, 27.187527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565567, 33.557816, 27.098106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175868, -0.240341, 0.954624,
		-0.233314, 0.952285, 0.196769,
		-0.956366, -0.188122, -0.223551,
		33.278656, 33.501377, 27.031040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529930, 33.988853, 27.684740>,  <33.948112, 33.633064, 27.187527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529930, 33.988853, 27.684740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340332, 33.671391, 27.532192>,  <33.226574, 33.480915, 27.440664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340332, 33.671391, 27.532192>,  <33.529930, 33.988853, 27.684740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340332, 33.671391, 27.532192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211387, -0.317884, 0.924265,
		-0.854778, 0.518711, -0.017094,
		-0.473993, -0.793655, -0.381369,
		33.198135, 33.433292, 27.417782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896759, 33.984581, 28.062750>,  <33.529930, 33.988853, 27.684740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896759, 33.984581, 28.062750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931427, 33.616531, 27.909981>,  <32.952229, 33.395702, 27.818319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931427, 33.616531, 27.909981>,  <32.896759, 33.984581, 28.062750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931427, 33.616531, 27.909981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208375, -0.391628, 0.896218,
		-0.974202, 0.001912, -0.225671,
		0.086666, -0.920122, -0.381923,
		32.957428, 33.340496, 27.795404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313007, 33.512810, 28.277874>,  <32.896759, 33.984581, 28.062750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313007, 33.512810, 28.277874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585842, 33.247749, 28.154171>,  <32.749542, 33.088711, 28.079948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585842, 33.247749, 28.154171>,  <32.313007, 33.512810, 28.277874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585842, 33.247749, 28.154171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139130, -0.532782, 0.834737,
		-0.717910, -0.526339, -0.455601,
		0.682091, -0.662654, -0.309260,
		32.790470, 33.048954, 28.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018509, 32.869190, 28.388790>,  <32.313007, 33.512810, 28.277874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018509, 32.869190, 28.388790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413357, 32.805199, 28.389366>,  <32.650265, 32.766804, 28.389711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413357, 32.805199, 28.389366>,  <32.018509, 32.869190, 28.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413357, 32.805199, 28.389366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092556, -0.563703, 0.820775,
		-0.130492, -0.810337, -0.571249,
		0.987120, -0.159977, 0.001442,
		32.709492, 32.757206, 28.389799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118435, 32.119366, 28.436823>,  <32.018509, 32.869190, 28.388790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118435, 32.119366, 28.436823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488834, 32.245472, 28.519897>,  <32.711075, 32.321136, 28.569742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488834, 32.245472, 28.519897>,  <32.118435, 32.119366, 28.436823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488834, 32.245472, 28.519897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079290, -0.700270, 0.709460,
		0.369105, -0.640492, -0.673447,
		0.925999, 0.315263, 0.207689,
		32.766636, 32.340050, 28.582205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652599, 31.532681, 28.490566>,  <32.118435, 32.119366, 28.436823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652599, 31.532681, 28.490566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816891, 31.845871, 28.677433>,  <32.915466, 32.033787, 28.789553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816891, 31.845871, 28.677433>,  <32.652599, 31.532681, 28.490566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816891, 31.845871, 28.677433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205601, -0.578723, 0.789182,
		0.888272, -0.228092, -0.398681,
		0.410731, 0.782978, 0.467168,
		32.940109, 32.080765, 28.817583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375820, 31.332001, 28.689053>,  <32.652599, 31.532681, 28.490566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375820, 31.332001, 28.689053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251320, 31.624393, 28.931965>,  <33.176620, 31.799829, 29.077713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251320, 31.624393, 28.931965>,  <33.375820, 31.332001, 28.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251320, 31.624393, 28.931965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077254, -0.617446, 0.782810,
		0.947182, 0.290565, 0.135710,
		-0.311251, 0.730980, 0.607281,
		33.157944, 31.843687, 29.114149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811897, 31.447056, 29.273802>,  <33.375820, 31.332001, 28.689053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811897, 31.447056, 29.273802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449829, 31.551285, 29.408127>,  <33.232590, 31.613823, 29.488722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449829, 31.551285, 29.408127>,  <33.811897, 31.447056, 29.273802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449829, 31.551285, 29.408127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055306, -0.711134, 0.700878,
		0.421436, 0.652986, 0.629286,
		-0.905170, 0.260572, 0.335812,
		33.178280, 31.629456, 29.508871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813995, 31.172878, 29.972187>,  <33.811897, 31.447056, 29.273802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813995, 31.172878, 29.972187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425842, 31.255817, 29.922600>,  <33.192951, 31.305580, 29.892847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425842, 31.255817, 29.922600>,  <33.813995, 31.172878, 29.972187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425842, 31.255817, 29.922600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229129, -0.627323, 0.744289,
		0.076557, 0.750649, 0.656251,
		-0.970381, 0.207347, -0.123970,
		33.134727, 31.318022, 29.885408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609592, 31.110514, 30.594339>,  <33.813995, 31.172878, 29.972187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609592, 31.110514, 30.594339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244781, 31.138069, 30.432617>,  <33.025894, 31.154602, 30.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244781, 31.138069, 30.432617>,  <33.609592, 31.110514, 30.594339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244781, 31.138069, 30.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400032, -0.366859, 0.839875,
		-0.090466, 0.927723, 0.362142,
		-0.912026, 0.068888, -0.404307,
		32.971172, 31.158735, 30.311325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184093, 31.419191, 31.070955>,  <33.609592, 31.110514, 30.594339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184093, 31.419191, 31.070955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932850, 31.223106, 30.829239>,  <32.782104, 31.105455, 30.684210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932850, 31.223106, 30.829239>,  <33.184093, 31.419191, 31.070955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932850, 31.223106, 30.829239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465402, -0.385704, 0.796639,
		-0.623599, 0.781617, 0.014119,
		-0.628112, -0.490212, -0.604291,
		32.744415, 31.076042, 30.647951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506634, 31.568586, 31.384693>,  <33.184093, 31.419191, 31.070955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506634, 31.568586, 31.384693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490276, 31.229515, 31.173119>,  <32.480461, 31.026073, 31.046175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490276, 31.229515, 31.173119>,  <32.506634, 31.568586, 31.384693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490276, 31.229515, 31.173119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448813, -0.457383, 0.767703,
		-0.892690, 0.268785, -0.361746,
		-0.040891, -0.847677, -0.528935,
		32.478008, 30.975212, 31.014439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887123, 31.292053, 31.595844>,  <32.506634, 31.568586, 31.384693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887123, 31.292053, 31.595844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114246, 30.995331, 31.453117>,  <32.250523, 30.817297, 31.367481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114246, 30.995331, 31.453117>,  <31.887123, 31.292053, 31.595844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114246, 30.995331, 31.453117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315678, -0.596563, 0.737876,
		-0.760224, -0.306333, -0.572905,
		0.567810, -0.741804, -0.356819,
		32.284588, 30.772789, 31.346071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410040, 30.718246, 31.771839>,  <31.887123, 31.292053, 31.595844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410040, 30.718246, 31.771839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758253, 30.551575, 31.667114>,  <31.967182, 30.451572, 31.604279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758253, 30.551575, 31.667114>,  <31.410040, 30.718246, 31.771839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758253, 30.551575, 31.667114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194444, -0.779985, 0.594824,
		-0.452061, -0.466907, -0.760025,
		0.870535, -0.416679, -0.261814,
		32.019413, 30.426571, 31.588570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331964, 29.976831, 31.419434>,  <31.410040, 30.718246, 31.771839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331964, 29.976831, 31.419434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683271, 30.016460, 31.606552>,  <31.894054, 30.040237, 31.718822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683271, 30.016460, 31.606552>,  <31.331964, 29.976831, 31.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683271, 30.016460, 31.606552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264996, -0.713484, 0.648628,
		0.398027, -0.693632, -0.600374,
		0.878266, 0.099075, 0.467796,
		31.946751, 30.046183, 31.746891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403709, 29.366653, 31.851788>,  <31.331964, 29.976831, 31.419434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403709, 29.366653, 31.851788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693611, 29.607555, 31.985664>,  <31.867554, 29.752096, 32.065990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693611, 29.607555, 31.985664>,  <31.403709, 29.366653, 31.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693611, 29.607555, 31.985664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137538, -0.349526, 0.926777,
		0.675138, -0.717720, -0.170488,
		0.724757, 0.602253, 0.334692,
		31.911037, 29.788231, 32.086071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948931, 28.902882, 32.076176>,  <31.403709, 29.366653, 31.851788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948931, 28.902882, 32.076176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975920, 29.257915, 32.258446>,  <31.992113, 29.470936, 32.367805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975920, 29.257915, 32.258446>,  <31.948931, 28.902882, 32.076176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975920, 29.257915, 32.258446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167889, -0.440101, 0.882114,
		0.983494, -0.136020, 0.119321,
		0.067472, 0.887586, 0.455673,
		31.996161, 29.524191, 32.395149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356785, 28.822054, 32.644287>,  <31.948931, 28.902882, 32.076176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356785, 28.822054, 32.644287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184902, 29.164455, 32.759254>,  <32.081772, 29.369896, 32.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184902, 29.164455, 32.759254>,  <32.356785, 28.822054, 32.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184902, 29.164455, 32.759254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064587, -0.346628, 0.935777,
		0.900657, 0.383544, 0.204234,
		-0.429704, 0.856005, 0.287421,
		32.055992, 29.421257, 32.845482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629055, 29.081291, 33.284691>,  <32.356785, 28.822054, 32.644287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629055, 29.081291, 33.284691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274246, 29.265816, 33.276814>,  <32.061363, 29.376532, 33.272087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274246, 29.265816, 33.276814>,  <32.629055, 29.081291, 33.284691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274246, 29.265816, 33.276814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179657, -0.305523, 0.935082,
		0.425347, 0.832975, 0.353882,
		-0.887019, 0.461312, -0.019696,
		32.008141, 29.404209, 33.270905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613041, 29.296003, 33.904434>,  <32.629055, 29.081291, 33.284691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613041, 29.296003, 33.904434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230812, 29.344330, 33.796886>,  <32.001476, 29.373325, 33.732357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230812, 29.344330, 33.796886>,  <32.613041, 29.296003, 33.904434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230812, 29.344330, 33.796886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290201, -0.225742, 0.929959,
		0.051659, 0.966667, 0.250773,
		-0.955570, 0.120815, -0.268866,
		31.944141, 29.380575, 33.716225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327858, 29.552361, 34.495975>,  <32.613041, 29.296003, 33.904434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327858, 29.552361, 34.495975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999910, 29.471874, 34.281563>,  <31.803143, 29.423582, 34.152916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999910, 29.471874, 34.281563>,  <32.327858, 29.552361, 34.495975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999910, 29.471874, 34.281563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475513, -0.282164, 0.833229,
		-0.318906, 0.938028, 0.135657,
		-0.819869, -0.201215, -0.536028,
		31.753950, 29.411510, 34.120754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784979, 29.817738, 34.891815>,  <32.327858, 29.552361, 34.495975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784979, 29.817738, 34.891815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607155, 29.544987, 34.659466>,  <31.500462, 29.381336, 34.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607155, 29.544987, 34.659466>,  <31.784979, 29.817738, 34.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607155, 29.544987, 34.659466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551852, -0.302305, 0.777220,
		-0.705569, 0.666074, -0.241903,
		-0.444558, -0.681878, -0.580871,
		31.473787, 29.340424, 34.485203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968586, 29.828419, 35.019039>,  <31.784979, 29.817738, 34.891815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968586, 29.828419, 35.019039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061565, 29.471878, 34.863365>,  <31.117353, 29.257954, 34.769962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061565, 29.471878, 34.863365>,  <30.968586, 29.828419, 35.019039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061565, 29.471878, 34.863365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567303, -0.449281, 0.690155,
		-0.790022, 0.060358, -0.610101,
		0.232450, -0.891349, -0.389183,
		31.131300, 29.204473, 34.746609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418497, 29.441170, 34.899429>,  <30.968586, 29.828419, 35.019039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418497, 29.441170, 34.899429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714281, 29.177940, 34.956192>,  <30.891752, 29.020002, 34.990250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714281, 29.177940, 34.956192>,  <30.418497, 29.441170, 34.899429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714281, 29.177940, 34.956192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521151, -0.426146, 0.739460,
		-0.426146, -0.620757, -0.658073,
		-0.739460, 0.658073, -0.141908,
		30.936119, 28.980518, 34.998764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052725, 28.864218, 35.014294>,  <30.418497, 29.441170, 34.899429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052725, 28.864218, 35.014294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417110, 28.746441, 35.129841>,  <30.635742, 28.675774, 35.199169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417110, 28.746441, 35.129841>,  <30.052725, 28.864218, 35.014294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417110, 28.746441, 35.129841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408398, -0.545539, 0.731845,
		-0.057898, -0.784659, -0.617218,
		0.910966, -0.294443, 0.288868,
		30.690401, 28.658108, 35.216499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518003, 28.459835, 34.829208>,  <30.052725, 28.864218, 35.014294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518003, 28.459835, 34.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154022, 28.541492, 34.973602>,  <28.935633, 28.590487, 35.060238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154022, 28.541492, 34.973602>,  <29.518003, 28.459835, 34.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154022, 28.541492, 34.973602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039956, 0.823251, -0.566270,
		-0.412784, -0.529703, -0.740962,
		-0.909952, 0.204141, 0.360989,
		28.881037, 28.602736, 35.081898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103474, 28.686571, 34.212418>,  <29.518003, 28.459835, 34.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103474, 28.686571, 34.212418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889589, 28.834705, 34.516243>,  <28.761259, 28.923586, 34.698540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889589, 28.834705, 34.516243>,  <29.103474, 28.686571, 34.212418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889589, 28.834705, 34.516243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097940, 0.865636, -0.491001,
		-0.839341, -0.336934, -0.426593,
		-0.534709, 0.370337, 0.759563,
		28.729176, 28.945807, 34.744110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507044, 28.939655, 33.970394>,  <29.103474, 28.686571, 34.212418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507044, 28.939655, 33.970394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544001, 29.145283, 34.311497>,  <28.566175, 29.268660, 34.516159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544001, 29.145283, 34.311497>,  <28.507044, 28.939655, 33.970394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544001, 29.145283, 34.311497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118189, 0.856030, -0.503234,
		-0.988683, -0.054291, 0.139849,
		0.092394, 0.514068, 0.852759,
		28.571718, 29.299503, 34.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933958, 29.417248, 34.040970>,  <28.507044, 28.939655, 33.970394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933958, 29.417248, 34.040970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200634, 29.579964, 34.290787>,  <28.360640, 29.677593, 34.440678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200634, 29.579964, 34.290787>,  <27.933958, 29.417248, 34.040970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200634, 29.579964, 34.290787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073984, 0.869908, -0.487634,
		-0.741655, 0.278894, 0.610054,
		0.666689, 0.406790, 0.624538,
		28.400640, 29.702002, 34.478149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626268, 30.053539, 34.151066>,  <27.933958, 29.417248, 34.040970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626268, 30.053539, 34.151066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007387, 30.098911, 34.263718>,  <28.236059, 30.126135, 34.331306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007387, 30.098911, 34.263718>,  <27.626268, 30.053539, 34.151066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007387, 30.098911, 34.263718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021087, 0.900628, -0.434079,
		-0.302877, 0.419528, 0.855723,
		0.952796, 0.113428, 0.281626,
		28.293226, 30.132940, 34.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
