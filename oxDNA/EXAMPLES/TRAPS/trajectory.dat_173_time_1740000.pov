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
	<36.144875, 53.115643, 50.248409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321049, 52.793663, 50.407440>,  <36.426754, 52.600475, 50.502861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321049, 52.793663, 50.407440>,  <36.144875, 53.115643, 50.248409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321049, 52.793663, 50.407440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178353, 0.355571, 0.917474,
		-0.879890, -0.474998, 0.013040,
		0.440435, -0.804951, 0.397581,
		36.453178, 52.552177, 50.526714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701458, 52.609192, 50.780369>,  <36.144875, 53.115643, 50.248409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701458, 52.609192, 50.780369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085968, 52.712780, 50.818077>,  <36.316673, 52.774933, 50.840702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085968, 52.712780, 50.818077>,  <35.701458, 52.609192, 50.780369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085968, 52.712780, 50.818077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203546, 0.436555, 0.876350,
		0.185793, -0.861601, 0.472361,
		0.961275, 0.258967, 0.094267,
		36.374352, 52.790470, 50.846355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940094, 52.746334, 51.434952>,  <35.701458, 52.609192, 50.780369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940094, 52.746334, 51.434952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296635, 52.887074, 51.320618>,  <36.510559, 52.971516, 51.252018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296635, 52.887074, 51.320618>,  <35.940094, 52.746334, 51.434952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296635, 52.887074, 51.320618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041939, 0.563830, 0.824825,
		0.451374, -0.747195, 0.487814,
		0.891349, 0.351846, -0.285835,
		36.564037, 52.992626, 51.234867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276520, 52.908535, 52.112957>,  <35.940094, 52.746334, 51.434952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276520, 52.908535, 52.112957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493366, 53.091316, 51.830879>,  <36.623474, 53.200985, 51.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493366, 53.091316, 51.830879>,  <36.276520, 52.908535, 52.112957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493366, 53.091316, 51.830879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170027, 0.762208, 0.624604,
		0.822925, -0.458508, 0.335506,
		0.542112, 0.456957, -0.705198,
		36.655998, 53.228405, 51.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634125, 53.460850, 52.559143>,  <36.276520, 52.908535, 52.112957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634125, 53.460850, 52.559143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760345, 53.604584, 52.207848>,  <36.836079, 53.690823, 51.997070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760345, 53.604584, 52.207848>,  <36.634125, 53.460850, 52.559143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760345, 53.604584, 52.207848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157609, 0.892824, 0.421931,
		0.935727, -0.271560, 0.225099,
		0.315553, 0.359334, -0.878240,
		36.855011, 53.712383, 51.944374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143578, 54.112568, 52.428082>,  <36.634125, 53.460850, 52.559143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143578, 54.112568, 52.428082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284824, 53.757717, 52.309212>,  <37.369572, 53.544807, 52.237888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284824, 53.757717, 52.309212>,  <37.143578, 54.112568, 52.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284824, 53.757717, 52.309212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808575, 0.449173, -0.380067,
		0.470651, -0.106081, 0.875919,
		0.353121, -0.887125, -0.297178,
		37.390762, 53.491581, 52.220058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738506, 53.962307, 52.789253>,  <37.143578, 54.112568, 52.428082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738506, 53.962307, 52.789253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745998, 53.787224, 52.429684>,  <37.750496, 53.682175, 52.213943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745998, 53.787224, 52.429684>,  <37.738506, 53.962307, 52.789253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745998, 53.787224, 52.429684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744466, 0.606255, -0.279688,
		0.667398, -0.663976, 0.337218,
		0.018734, -0.437710, -0.898921,
		37.751617, 53.655910, 52.160007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404438, 53.705673, 52.574039>,  <37.738506, 53.962307, 52.789253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404438, 53.705673, 52.574039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236481, 53.832844, 52.234013>,  <38.135708, 53.909145, 52.029995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236481, 53.832844, 52.234013>,  <38.404438, 53.705673, 52.574039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236481, 53.832844, 52.234013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792392, 0.585090, -0.172580,
		0.442499, -0.746052, -0.497595,
		-0.419892, 0.317924, -0.850068,
		38.110512, 53.928223, 51.978992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831699, 54.227505, 52.855118>,  <38.404438, 53.705673, 52.574039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831699, 54.227505, 52.855118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764507, 54.613182, 52.773026>,  <38.724194, 54.844589, 52.723770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764507, 54.613182, 52.773026>,  <38.831699, 54.227505, 52.855118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764507, 54.613182, 52.773026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961020, 0.113789, -0.251978,
		-0.219601, -0.239560, -0.945720,
		-0.167976, 0.964190, -0.205233,
		38.714115, 54.902439, 52.711456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442131, 54.604172, 52.940147>,  <38.831699, 54.227505, 52.855118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442131, 54.604172, 52.940147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457275, 54.217751, 53.042377>,  <39.466362, 53.985897, 53.103714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457275, 54.217751, 53.042377>,  <39.442131, 54.604172, 52.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457275, 54.217751, 53.042377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202505, -0.257866, -0.944721,
		0.978549, -0.015986, -0.205393,
		0.037862, -0.966048, 0.255572,
		39.468636, 53.927937, 53.119049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777256, 55.177181, 52.950256>,  <39.442131, 54.604172, 52.940147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777256, 55.177181, 52.950256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657349, 55.372356, 53.278172>,  <39.585403, 55.489460, 53.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657349, 55.372356, 53.278172>,  <39.777256, 55.177181, 52.950256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657349, 55.372356, 53.278172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048441, -0.850414, 0.523880,
		0.952782, 0.196753, 0.231288,
		-0.299766, 0.487939, 0.819790,
		39.567417, 55.518738, 53.524109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222210, 54.991264, 53.538750>,  <39.777256, 55.177181, 52.950256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222210, 54.991264, 53.538750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848621, 55.099018, 53.632675>,  <39.624470, 55.163670, 53.689030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848621, 55.099018, 53.632675>,  <40.222210, 54.991264, 53.538750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848621, 55.099018, 53.632675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076517, -0.792600, 0.604921,
		0.349071, 0.547009, 0.760875,
		-0.933967, 0.269381, 0.234818,
		39.568432, 55.179832, 53.703121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499748, 54.751446, 54.284012>,  <40.222210, 54.991264, 53.538750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499748, 54.751446, 54.284012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837688, 54.882854, 54.452911>,  <41.040455, 54.961700, 54.554253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837688, 54.882854, 54.452911>,  <40.499748, 54.751446, 54.284012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837688, 54.882854, 54.452911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203619, -0.532414, 0.821629,
		0.494733, -0.780136, -0.382920,
		0.844854, 0.328517, 0.422253,
		41.091145, 54.981411, 54.579586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065945, 54.259075, 54.446781>,  <40.499748, 54.751446, 54.284012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065945, 54.259075, 54.446781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059967, 54.553154, 54.717857>,  <41.056381, 54.729599, 54.880505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059967, 54.553154, 54.717857>,  <41.065945, 54.259075, 54.446781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059967, 54.553154, 54.717857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234260, -0.661477, 0.712440,
		0.972059, -0.148109, 0.182112,
		-0.014944, 0.735195, 0.677691,
		41.055485, 54.773712, 54.921165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792091, 54.262413, 54.795662>,  <41.065945, 54.259075, 54.446781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792091, 54.262413, 54.795662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970486, 53.906124, 54.760551>,  <42.077522, 53.692348, 54.739487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970486, 53.906124, 54.760551>,  <41.792091, 54.262413, 54.795662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970486, 53.906124, 54.760551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306099, 0.243941, -0.920215,
		0.841071, 0.383535, 0.381445,
		0.445984, -0.890727, -0.087772,
		42.104282, 53.638905, 54.734219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328526, 54.403381, 54.392685>,  <41.792091, 54.262413, 54.795662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328526, 54.403381, 54.392685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275982, 54.008301, 54.358780>,  <42.244457, 53.771252, 54.338436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275982, 54.008301, 54.358780>,  <42.328526, 54.403381, 54.392685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275982, 54.008301, 54.358780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285058, 0.044259, -0.957488,
		0.949467, -0.149935, 0.275739,
		-0.131357, -0.987705, -0.084763,
		42.236576, 53.711990, 54.333351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052528, 53.914913, 54.236263>,  <42.328526, 54.403381, 54.392685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052528, 53.914913, 54.236263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685741, 53.846313, 54.092178>,  <42.465668, 53.805153, 54.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685741, 53.846313, 54.092178>,  <43.052528, 53.914913, 54.236263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685741, 53.846313, 54.092178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318598, 0.228667, -0.919895,
		0.240141, -0.958278, -0.155038,
		-0.916967, -0.171510, -0.360217,
		42.410652, 53.794865, 53.984116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583004, 53.472160, 54.702202>,  <43.052528, 53.914913, 54.236263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583004, 53.472160, 54.702202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777737, 53.167229, 54.531628>,  <43.894577, 52.984268, 54.429283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777737, 53.167229, 54.531628>,  <43.583004, 53.472160, 54.702202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777737, 53.167229, 54.531628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797409, 0.188580, 0.573216,
		-0.356561, -0.619105, 0.699695,
		0.486830, -0.762330, -0.426439,
		43.923786, 52.938530, 54.403694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875858, 52.966686, 55.169518>,  <43.583004, 53.472160, 54.702202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875858, 52.966686, 55.169518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101528, 52.978165, 54.839455>,  <44.236931, 52.985050, 54.641418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101528, 52.978165, 54.839455>,  <43.875858, 52.966686, 55.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101528, 52.978165, 54.839455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814863, 0.141693, 0.562069,
		0.133044, -0.989495, 0.056562,
		0.564179, 0.028689, -0.825154,
		44.270782, 52.986771, 54.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301144, 52.467827, 55.401608>,  <43.875858, 52.966686, 55.169518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301144, 52.467827, 55.401608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480175, 52.688679, 55.120232>,  <44.587593, 52.821190, 54.951408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480175, 52.688679, 55.120232>,  <44.301144, 52.467827, 55.401608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480175, 52.688679, 55.120232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801309, 0.101557, 0.589568,
		0.396956, -0.827552, -0.396969,
		0.447583, 0.552128, -0.703438,
		44.614449, 52.854317, 54.909199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982452, 52.282883, 55.286972>,  <44.301144, 52.467827, 55.401608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982452, 52.282883, 55.286972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940533, 52.672867, 55.208511>,  <44.915382, 52.906857, 55.161434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940533, 52.672867, 55.208511>,  <44.982452, 52.282883, 55.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940533, 52.672867, 55.208511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676780, 0.214440, 0.704262,
		0.728688, -0.058945, -0.682305,
		-0.104800, 0.974957, -0.196153,
		44.909092, 52.965355, 55.149666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665363, 52.631042, 54.972450>,  <44.982452, 52.282883, 55.286972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665363, 52.631042, 54.972450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422203, 52.859768, 55.192810>,  <45.276306, 52.997002, 55.325027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422203, 52.859768, 55.192810>,  <45.665363, 52.631042, 54.972450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422203, 52.859768, 55.192810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777587, 0.288315, 0.558778,
		0.160681, 0.768055, -0.619898,
		-0.607898, 0.571810, 0.550903,
		45.239834, 53.031311, 55.358082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010441, 53.241467, 54.998981>,  <45.665363, 52.631042, 54.972450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010441, 53.241467, 54.998981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778965, 53.213459, 55.323997>,  <45.640079, 53.196655, 55.519005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778965, 53.213459, 55.323997>,  <46.010441, 53.241467, 54.998981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778965, 53.213459, 55.323997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768537, 0.286559, 0.572045,
		-0.272892, 0.955501, -0.112019,
		-0.578689, -0.070016, 0.812537,
		45.605358, 53.192455, 55.567760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022495, 53.908405, 55.377354>,  <46.010441, 53.241467, 54.998981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022495, 53.908405, 55.377354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954857, 53.619621, 55.645737>,  <45.914272, 53.446350, 55.806767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954857, 53.619621, 55.645737>,  <46.022495, 53.908405, 55.377354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954857, 53.619621, 55.645737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656449, 0.425290, 0.623060,
		-0.735174, 0.545805, 0.402014,
		-0.169097, -0.721959, 0.670955,
		45.904129, 53.403034, 55.847023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058380, 54.084373, 56.098614>,  <46.022495, 53.908405, 55.377354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058380, 54.084373, 56.098614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146202, 53.695129, 56.126488>,  <46.198895, 53.461582, 56.143211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.146202, 53.695129, 56.126488>,  <46.058380, 54.084373, 56.098614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146202, 53.695129, 56.126488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787619, 0.218951, 0.575949,
		-0.575717, -0.071570, 0.814511,
		0.219558, -0.973108, 0.069684,
		46.212070, 53.403198, 56.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675575, 53.651550, 56.114067>,  <46.058380, 54.084373, 56.098614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675575, 53.651550, 56.114067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419846, 53.814171, 56.375137>,  <46.266407, 53.911743, 56.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419846, 53.814171, 56.375137>,  <46.675575, 53.651550, 56.114067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419846, 53.814171, 56.375137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115435, -0.889925, 0.441257,
		0.760226, 0.206763, 0.615877,
		-0.639321, 0.406549, 0.652677,
		46.228050, 53.936134, 56.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257492, 54.130066, 56.383835>,  <46.675575, 53.651550, 56.114067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257492, 54.130066, 56.383835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562874, 53.874325, 56.347252>,  <47.746101, 53.720879, 56.325302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562874, 53.874325, 56.347252>,  <47.257492, 54.130066, 56.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562874, 53.874325, 56.347252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037503, 0.185254, -0.981975,
		0.644773, 0.746262, 0.165411,
		0.763454, -0.639354, -0.091459,
		47.791908, 53.682518, 56.319813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811436, 54.480152, 56.065613>,  <47.257492, 54.130066, 56.383835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811436, 54.480152, 56.065613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851288, 54.086529, 56.006676>,  <47.875198, 53.850357, 55.971313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851288, 54.086529, 56.006676>,  <47.811436, 54.480152, 56.065613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851288, 54.086529, 56.006676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094143, 0.156740, -0.983143,
		0.990561, 0.084081, 0.108258,
		0.099632, -0.984054, -0.147345,
		47.881176, 53.791313, 55.962471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.434971, 54.484528, 55.728649>,  <47.811436, 54.480152, 56.065613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.434971, 54.484528, 55.728649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.336227, 54.334507, 56.086060>,  <48.276981, 54.244495, 56.300507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.336227, 54.334507, 56.086060>,  <48.434971, 54.484528, 55.728649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.336227, 54.334507, 56.086060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665106, 0.605017, 0.437709,
		-0.704765, 0.702345, 0.100095,
		-0.246863, -0.375056, 0.893528,
		48.262169, 54.221989, 56.354118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.288010, 55.090927, 56.114925>,  <48.434971, 54.484528, 55.728649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.288010, 55.090927, 56.114925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.407730, 54.770836, 56.322792>,  <48.479565, 54.578781, 56.447514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.407730, 54.770836, 56.322792>,  <48.288010, 55.090927, 56.114925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.407730, 54.770836, 56.322792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680305, 0.560857, 0.471831,
		-0.669030, 0.212310, 0.712266,
		0.299305, -0.800227, 0.519666,
		48.497520, 54.530769, 56.478691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.414810, 55.301502, 56.853584>,  <48.288010, 55.090927, 56.114925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.414810, 55.301502, 56.853584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.609283, 54.952957, 56.827217>,  <48.725967, 54.743828, 56.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.609283, 54.952957, 56.827217>,  <48.414810, 55.301502, 56.853584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.609283, 54.952957, 56.827217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799076, 0.412783, 0.437135,
		-0.353695, -0.265201, 0.896977,
		0.486185, -0.871366, -0.065917,
		48.755138, 54.691547, 56.807442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.648960, 55.316078, 57.497524>,  <48.414810, 55.301502, 56.853584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.648960, 55.316078, 57.497524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.874641, 55.098831, 57.248787>,  <49.010052, 54.968483, 57.099545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.874641, 55.098831, 57.248787>,  <48.648960, 55.316078, 57.497524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.874641, 55.098831, 57.248787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824921, 0.339551, 0.451897,
		-0.034287, -0.767935, 0.639609,
		0.564208, -0.543121, -0.621844,
		49.043903, 54.935894, 57.062233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.136227, 54.935287, 57.854259>,  <48.648960, 55.316078, 57.497524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.136227, 54.935287, 57.854259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.265610, 55.049076, 57.493271>,  <49.343239, 55.117348, 57.276676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.265610, 55.049076, 57.493271>,  <49.136227, 54.935287, 57.854259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.265610, 55.049076, 57.493271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860407, 0.308501, 0.405620,
		0.393799, -0.907692, -0.144974,
		0.323453, 0.284469, -0.902472,
		49.362644, 55.134418, 57.222530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.749168, 54.588108, 57.803833>,  <49.136227, 54.935287, 57.854259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.749168, 54.588108, 57.803833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710190, 54.930431, 57.600624>,  <49.686802, 55.135826, 57.478699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710190, 54.930431, 57.600624>,  <49.749168, 54.588108, 57.803833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.710190, 54.930431, 57.600624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871496, 0.319888, 0.371708,
		0.480624, -0.406519, -0.777009,
		-0.097450, 0.855812, -0.508025,
		49.680954, 55.187176, 57.448215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.243320, 54.650200, 57.272678>,  <49.749168, 54.588108, 57.803833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.243320, 54.650200, 57.272678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.130280, 54.997032, 57.436783>,  <50.062454, 55.205132, 57.535244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.130280, 54.997032, 57.436783>,  <50.243320, 54.650200, 57.272678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.130280, 54.997032, 57.436783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938631, 0.161786, 0.304625,
		0.197759, 0.471171, -0.859587,
		-0.282600, 0.867078, 0.410261,
		50.045498, 55.257156, 57.559860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.723370, 55.245415, 57.124191>,  <50.243320, 54.650200, 57.272678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.723370, 55.245415, 57.124191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.529484, 55.265800, 57.473465>,  <50.413151, 55.278030, 57.683029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.529484, 55.265800, 57.473465>,  <50.723370, 55.245415, 57.124191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.529484, 55.265800, 57.473465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870904, 0.120691, 0.476403,
		-0.081106, 0.991381, -0.102886,
		-0.484714, 0.050965, 0.873187,
		50.384071, 55.281090, 57.735420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.759480, 54.683670, 56.622639>,  <50.723370, 55.245415, 57.124191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.759480, 54.683670, 56.622639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.804909, 54.301399, 56.513985>,  <50.832165, 54.072037, 56.448792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.804909, 54.301399, 56.513985>,  <50.759480, 54.683670, 56.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.804909, 54.301399, 56.513985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967460, 0.168596, -0.188670,
		0.226104, -0.241365, 0.943727,
		0.113570, -0.955677, -0.271632,
		50.838978, 54.014698, 56.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.445282, 54.514736, 56.876003>,  <50.759480, 54.683670, 56.622639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.445282, 54.514736, 56.876003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.296192, 54.318043, 56.561226>,  <51.206738, 54.200027, 56.372360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.296192, 54.318043, 56.561226>,  <51.445282, 54.514736, 56.876003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.296192, 54.318043, 56.561226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861632, 0.131422, -0.490223,
		0.344481, -0.860769, 0.374711,
		-0.372724, -0.491736, -0.786939,
		51.184376, 54.170521, 56.325146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.644669, 53.737129, 56.673595>,  <51.445282, 54.514736, 56.876003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.644669, 53.737129, 56.673595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.565266, 53.979523, 56.365471>,  <51.517624, 54.124958, 56.180595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.565266, 53.979523, 56.365471>,  <51.644669, 53.737129, 56.673595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.565266, 53.979523, 56.365471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949531, -0.075854, -0.304364,
		-0.242870, -0.791853, -0.560342,
		-0.198507, 0.605983, -0.770311,
		51.505714, 54.161316, 56.134377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.815372, 53.484371, 55.930855>,  <51.644669, 53.737129, 56.673595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.815372, 53.484371, 55.930855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869991, 53.874699, 55.999123>,  <51.902763, 54.108894, 56.040085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.869991, 53.874699, 55.999123>,  <51.815372, 53.484371, 55.930855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.869991, 53.874699, 55.999123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973226, -0.099987, -0.206964,
		-0.184895, 0.194363, -0.963347,
		0.136549, 0.975820, 0.170672,
		51.910957, 54.167446, 56.050323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.037045, 53.917236, 55.330166>,  <51.815372, 53.484371, 55.930855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.037045, 53.917236, 55.330166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.174263, 54.070404, 55.673256>,  <52.256596, 54.162304, 55.879108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.174263, 54.070404, 55.673256>,  <52.037045, 53.917236, 55.330166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.174263, 54.070404, 55.673256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938885, -0.112042, -0.325488,
		-0.028534, 0.916963, -0.397951,
		0.343047, 0.382918, 0.857725,
		52.277176, 54.185280, 55.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.511013, 54.525936, 55.333546>,  <52.037045, 53.917236, 55.330166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.511013, 54.525936, 55.333546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.575836, 54.277546, 55.640305>,  <52.614731, 54.128513, 55.824360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.575836, 54.277546, 55.640305>,  <52.511013, 54.525936, 55.333546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.575836, 54.277546, 55.640305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907867, -0.210703, -0.362465,
		0.386669, 0.754979, 0.529616,
		0.162062, -0.620975, 0.766894,
		52.624454, 54.091255, 55.870373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.778629, 55.186279, 55.086018>,  <52.511013, 54.525936, 55.333546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.778629, 55.186279, 55.086018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.645954, 55.045685, 55.436203>,  <52.566349, 54.961327, 55.646317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.645954, 55.045685, 55.436203>,  <52.778629, 55.186279, 55.086018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.645954, 55.045685, 55.436203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688103, 0.544701, 0.479390,
		-0.645368, 0.761418, 0.061191,
		-0.331685, -0.351488, 0.875466,
		52.546448, 54.940239, 55.698841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.481663, 55.278641, 55.288467>,  <52.778629, 55.186279, 55.086018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.481663, 55.278641, 55.288467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523792, 55.640900, 55.124168>,  <53.549068, 55.858253, 55.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523792, 55.640900, 55.124168>,  <53.481663, 55.278641, 55.288467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.523792, 55.640900, 55.124168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696456, -0.362006, -0.619598,
		-0.709828, -0.220806, -0.668871,
		0.105325, 0.905647, -0.410743,
		53.555389, 55.912594, 55.000946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.496452, 55.192837, 54.508514>,  <53.481663, 55.278641, 55.288467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.496452, 55.192837, 54.508514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.708008, 55.510586, 54.628006>,  <53.834942, 55.701237, 54.699703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.708008, 55.510586, 54.628006>,  <53.496452, 55.192837, 54.508514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.708008, 55.510586, 54.628006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756405, -0.281588, -0.590389,
		-0.384872, 0.538214, -0.749800,
		0.528890, 0.794376, 0.298732,
		53.866676, 55.748898, 54.717625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.718349, 55.737427, 53.999134>,  <53.496452, 55.192837, 54.508514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.718349, 55.737427, 53.999134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.006302, 55.694637, 54.273457>,  <54.179073, 55.668964, 54.438049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.006302, 55.694637, 54.273457>,  <53.718349, 55.737427, 53.999134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.006302, 55.694637, 54.273457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688418, -0.016068, -0.725136,
		0.088586, 0.994132, 0.062073,
		0.719884, -0.106969, 0.685802,
		54.222267, 55.662548, 54.479198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.210445, 56.298668, 54.191711>,  <53.718349, 55.737427, 53.999134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.210445, 56.298668, 54.191711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.426674, 55.963074, 54.216637>,  <54.556412, 55.761715, 54.231594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.426674, 55.963074, 54.216637>,  <54.210445, 56.298668, 54.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.426674, 55.963074, 54.216637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598309, 0.331308, -0.729562,
		0.591447, 0.431664, 0.681069,
		0.540570, -0.838988, 0.062318,
		54.588844, 55.711376, 54.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.889210, 56.426571, 54.373035>,  <54.210445, 56.298668, 54.191711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.889210, 56.426571, 54.373035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787178, 56.134243, 54.119789>,  <54.725960, 55.958847, 53.967842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.787178, 56.134243, 54.119789>,  <54.889210, 56.426571, 54.373035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.787178, 56.134243, 54.119789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412881, 0.509756, -0.754770,
		0.874336, -0.453928, 0.171714,
		-0.255079, -0.730820, -0.633117,
		54.710655, 55.914997, 53.929855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.953926, 57.024715, 53.923389>,  <54.889210, 56.426571, 54.373035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.953926, 57.024715, 53.923389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.749443, 57.298935, 54.130730>,  <54.626755, 57.463467, 54.255135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.749443, 57.298935, 54.130730>,  <54.953926, 57.024715, 53.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.749443, 57.298935, 54.130730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187826, -0.499417, 0.845757,
		0.838682, 0.529716, 0.126542,
		-0.511208, 0.685553, 0.518347,
		54.596081, 57.504601, 54.286232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.275021, 57.694366, 54.157349>,  <54.953926, 57.024715, 53.923389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.275021, 57.694366, 54.157349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.593498, 57.933746, 54.193001>,  <55.784584, 58.077374, 54.214394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.593498, 57.933746, 54.193001>,  <55.275021, 57.694366, 54.157349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.593498, 57.933746, 54.193001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370596, -0.598797, 0.710001,
		0.478269, -0.532264, -0.698538,
		0.796190, 0.598446, 0.089131,
		55.832355, 58.113281, 54.219742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.856758, 57.235706, 54.171165>,  <55.275021, 57.694366, 54.157349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.856758, 57.235706, 54.171165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903618, 57.579548, 54.370102>,  <55.931732, 57.785854, 54.489464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903618, 57.579548, 54.370102>,  <55.856758, 57.235706, 54.171165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.903618, 57.579548, 54.370102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278200, -0.509147, 0.814478,
		0.953353, 0.042946, -0.298789,
		0.117149, 0.859607, 0.497344,
		55.938763, 57.837429, 54.519306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.573631, 57.391182, 54.384125>,  <55.856758, 57.235706, 54.171165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.573631, 57.391182, 54.384125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.305573, 57.520210, 54.651512>,  <56.144737, 57.597630, 54.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.305573, 57.520210, 54.651512>,  <56.573631, 57.391182, 54.384125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.305573, 57.520210, 54.651512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401740, -0.599650, 0.692116,
		0.624105, 0.732370, 0.272264,
		-0.670148, 0.322574, 0.668467,
		56.104527, 57.616982, 54.852051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.924202, 57.498100, 55.140205>,  <56.573631, 57.391182, 54.384125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.924202, 57.498100, 55.140205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.536514, 57.400620, 55.154167>,  <56.303902, 57.342129, 55.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.536514, 57.400620, 55.154167>,  <56.924202, 57.498100, 55.140205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.536514, 57.400620, 55.154167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214875, -0.768184, 0.603094,
		-0.120166, 0.592031, 0.796907,
		-0.969221, -0.243706, 0.034903,
		56.245747, 57.327507, 55.164639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.695541, 57.269592, 55.274788>,  <56.924202, 57.498100, 55.140205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.695541, 57.269592, 55.274788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670578, 57.422573, 55.643532>,  <57.655602, 57.514362, 55.864780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.670578, 57.422573, 55.643532>,  <57.695541, 57.269592, 55.274788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.670578, 57.422573, 55.643532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666804, -0.671290, 0.323640,
		0.742616, 0.634899, -0.213131,
		-0.062406, 0.382457, 0.921864,
		57.651855, 57.537312, 55.920090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.410099, 57.489174, 55.650120>,  <57.695541, 57.269592, 55.274788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.410099, 57.489174, 55.650120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118080, 57.396049, 55.907127>,  <57.942867, 57.340176, 56.061333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.118080, 57.396049, 55.907127>,  <58.410099, 57.489174, 55.650120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.118080, 57.396049, 55.907127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620072, -0.620903, 0.479574,
		0.287292, 0.748519, 0.597648,
		-0.730051, -0.232807, 0.642516,
		57.899063, 57.326206, 56.099880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.672737, 57.547630, 56.296478>,  <58.410099, 57.489174, 55.650120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.672737, 57.547630, 56.296478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.381409, 57.274109, 56.278801>,  <58.206612, 57.109997, 56.268196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.381409, 57.274109, 56.278801>,  <58.672737, 57.547630, 56.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.381409, 57.274109, 56.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617903, -0.683270, 0.389021,
		-0.296211, 0.256027, 0.920168,
		-0.728323, -0.683807, -0.044192,
		58.162910, 57.068966, 56.265545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.345753, 57.347603, 56.990421>,  <58.672737, 57.547630, 56.296478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.345753, 57.347603, 56.990421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.325188, 57.055138, 56.718315>,  <58.312851, 56.879658, 56.555054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.325188, 57.055138, 56.718315>,  <58.345753, 57.347603, 56.990421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.325188, 57.055138, 56.718315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554512, -0.587413, 0.589459,
		-0.830586, -0.346909, 0.435638,
		-0.051411, -0.731163, -0.680262,
		58.309765, 56.835789, 56.514236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.001511, 57.192657, 57.307438>,  <58.345753, 57.347603, 56.990421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.001511, 57.192657, 57.307438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011894, 57.472961, 57.022270>,  <59.018124, 57.641144, 56.851170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011894, 57.472961, 57.022270>,  <59.001511, 57.192657, 57.307438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.011894, 57.472961, 57.022270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897259, 0.298091, 0.325680,
		0.440740, -0.648131, -0.621027,
		0.025960, 0.700763, -0.712922,
		59.019684, 57.683189, 56.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.672455, 57.075882, 56.966686>,  <59.001511, 57.192657, 57.307438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.672455, 57.075882, 56.966686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534447, 57.451160, 56.955650>,  <59.451641, 57.676327, 56.949028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.534447, 57.451160, 56.955650>,  <59.672455, 57.075882, 56.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.534447, 57.451160, 56.955650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714016, 0.281426, 0.641077,
		0.609217, 0.201485, -0.766980,
		-0.345016, 0.938191, -0.027585,
		59.430943, 57.732616, 56.947376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.166805, 57.623741, 56.715843>,  <59.672455, 57.075882, 56.966686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.166805, 57.623741, 56.715843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.913315, 57.743038, 57.001343>,  <59.761219, 57.814617, 57.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.913315, 57.743038, 57.001343>,  <60.166805, 57.623741, 56.715843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.913315, 57.743038, 57.001343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765100, 0.105611, 0.635191,
		0.114062, 0.948629, -0.295114,
		-0.633728, 0.298243, 0.713751,
		59.723198, 57.832512, 57.215469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.558121, 58.200520, 57.024796>,  <60.166805, 57.623741, 56.715843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.558121, 58.200520, 57.024796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.301651, 58.057220, 57.296249>,  <60.147770, 57.971241, 57.459122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.301651, 58.057220, 57.296249>,  <60.558121, 58.200520, 57.024796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.301651, 58.057220, 57.296249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703767, 0.078061, 0.706129,
		-0.305946, 0.930357, 0.202073,
		-0.641178, -0.358250, 0.678637,
		60.109299, 57.949745, 57.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.575134, 58.745262, 57.713383>,  <60.558121, 58.200520, 57.024796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.575134, 58.745262, 57.713383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.462730, 58.377892, 57.824753>,  <60.395290, 58.157467, 57.891575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.462730, 58.377892, 57.824753>,  <60.575134, 58.745262, 57.713383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.462730, 58.377892, 57.824753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548949, 0.084144, 0.831610,
		-0.787204, 0.386528, 0.480527,
		-0.281007, -0.918431, 0.278422,
		60.378429, 58.102364, 57.908279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.360367, 58.625298, 58.347290>,  <60.575134, 58.745262, 57.713383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.360367, 58.625298, 58.347290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.529175, 58.281769, 58.231140>,  <60.630459, 58.075649, 58.161449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.529175, 58.281769, 58.231140>,  <60.360367, 58.625298, 58.347290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.529175, 58.281769, 58.231140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536350, -0.021703, 0.843717,
		-0.730907, -0.511808, 0.451472,
		0.422023, -0.858826, -0.290371,
		60.655781, 58.024120, 58.144028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.484234, 58.208447, 58.957661>,  <60.360367, 58.625298, 58.347290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.484234, 58.208447, 58.957661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.762672, 58.110691, 58.687630>,  <60.929733, 58.052036, 58.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.762672, 58.110691, 58.687630>,  <60.484234, 58.208447, 58.957661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.762672, 58.110691, 58.687630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701240, 0.029733, 0.712305,
		-0.154009, -0.969221, 0.192073,
		0.696092, -0.244390, -0.675077,
		60.971500, 58.037373, 58.485107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.888134, 57.539516, 59.184780>,  <60.484234, 58.208447, 58.957661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.888134, 57.539516, 59.184780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.108871, 57.824833, 59.011948>,  <61.241314, 57.996021, 58.908249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.108871, 57.824833, 59.011948>,  <60.888134, 57.539516, 59.184780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.108871, 57.824833, 59.011948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443583, 0.187681, 0.876362,
		0.706191, -0.675275, -0.212833,
		0.551841, 0.713288, -0.432079,
		61.274426, 58.038818, 58.882324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.593025, 57.373669, 59.344814>,  <60.888134, 57.539516, 59.184780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.593025, 57.373669, 59.344814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.553520, 57.768211, 59.292137>,  <61.529819, 58.004936, 59.260532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.553520, 57.768211, 59.292137>,  <61.593025, 57.373669, 59.344814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.553520, 57.768211, 59.292137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308118, 0.156142, 0.938447,
		0.946208, 0.052105, -0.319335,
		-0.098759, 0.986359, -0.131688,
		61.523891, 58.064117, 59.252632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.778141, 57.191715, 58.606144>,  <61.593025, 57.373669, 59.344814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.778141, 57.191715, 58.606144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.567108, 57.522743, 58.529434>,  <61.440487, 57.721359, 58.483410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.567108, 57.522743, 58.529434>,  <61.778141, 57.191715, 58.606144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.567108, 57.522743, 58.529434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384853, 0.031595, -0.922437,
		-0.757325, -0.560469, -0.335163,
		-0.527586, 0.827573, -0.191771,
		61.408833, 57.771015, 58.471905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.216049, 56.708408, 58.320541>,  <61.778141, 57.191715, 58.606144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.216049, 56.708408, 58.320541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232040, 56.370918, 58.106430>,  <62.241634, 56.168423, 57.977962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.232040, 56.370918, 58.106430>,  <62.216049, 56.708408, 58.320541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.232040, 56.370918, 58.106430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953418, -0.192511, 0.232234,
		-0.298989, 0.501063, -0.812121,
		0.039978, -0.843727, -0.535281,
		62.244034, 56.117802, 57.945847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.460270, 56.066631, 58.473988>,  <62.216049, 56.708408, 58.320541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.460270, 56.066631, 58.473988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783798, 55.831863, 58.459366>,  <62.977917, 55.691002, 58.450592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783798, 55.831863, 58.459366>,  <62.460270, 56.066631, 58.473988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.783798, 55.831863, 58.459366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587593, -0.804171, -0.089683,
		0.023237, 0.094019, -0.995299,
		0.808822, -0.586915, -0.036558,
		63.026443, 55.655788, 58.448399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.114071, 56.452572, 58.594296>,  <62.460270, 56.066631, 58.473988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.114071, 56.452572, 58.594296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.285774, 56.544022, 58.244789>,  <63.388798, 56.598892, 58.035084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.285774, 56.544022, 58.244789>,  <63.114071, 56.452572, 58.594296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.285774, 56.544022, 58.244789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815983, 0.316551, 0.483702,
		0.387179, -0.920611, -0.050673,
		0.429261, 0.228628, -0.873765,
		63.414551, 56.612610, 57.982658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.698879, 55.972424, 58.479198>,  <63.114071, 56.452572, 58.594296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.698879, 55.972424, 58.479198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.725075, 56.330578, 58.303017>,  <63.740791, 56.545471, 58.197308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.725075, 56.330578, 58.303017>,  <63.698879, 55.972424, 58.479198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.725075, 56.330578, 58.303017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605372, 0.315242, 0.730854,
		0.793244, -0.314497, -0.521397,
		0.065486, 0.895385, -0.440452,
		63.744720, 56.599194, 58.170879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.334320, 56.219521, 58.288990>,  <63.698879, 55.972424, 58.479198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.334320, 56.219521, 58.288990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157845, 56.572933, 58.351898>,  <64.051964, 56.784981, 58.389645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.157845, 56.572933, 58.351898>,  <64.334320, 56.219521, 58.288990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.157845, 56.572933, 58.351898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668500, 0.206635, 0.714430,
		0.598722, 0.420331, -0.681802,
		-0.441181, 0.883529, 0.157274,
		64.025490, 56.837994, 58.399082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.824104, 56.710960, 58.356964>,  <64.334320, 56.219521, 58.288990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.824104, 56.710960, 58.356964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511917, 56.866074, 58.553131>,  <64.324608, 56.959141, 58.670830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.511917, 56.866074, 58.553131>,  <64.824104, 56.710960, 58.356964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.511917, 56.866074, 58.553131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605125, 0.271335, 0.748465,
		0.157176, 0.880910, -0.446424,
		-0.780461, 0.387783, 0.490413,
		64.277779, 56.982407, 58.700256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.872711, 57.430103, 58.444489>,  <64.824104, 56.710960, 58.356964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.872711, 57.430103, 58.444489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.696793, 57.268654, 58.765404>,  <64.591240, 57.171783, 58.957954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.696793, 57.268654, 58.765404>,  <64.872711, 57.430103, 58.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.696793, 57.268654, 58.765404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713064, 0.386163, 0.585165,
		-0.545997, 0.829440, 0.117971,
		-0.439803, -0.403619, 0.802287,
		64.564850, 57.147568, 59.006088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.632591, 57.929214, 59.020927>,  <64.872711, 57.430103, 58.444489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.632591, 57.929214, 59.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.729553, 57.567215, 59.160767>,  <64.787727, 57.350014, 59.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.729553, 57.567215, 59.160767>,  <64.632591, 57.929214, 59.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.729553, 57.567215, 59.160767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659906, 0.417950, 0.624374,
		-0.711171, 0.079350, 0.698526,
		0.242404, -0.904998, 0.349598,
		64.802277, 57.295715, 59.265644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.627106, 57.868336, 59.795246>,  <64.632591, 57.929214, 59.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.627106, 57.868336, 59.795246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.881294, 57.597851, 59.646164>,  <65.033806, 57.435558, 59.556713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.881294, 57.597851, 59.646164>,  <64.627106, 57.868336, 59.795246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.881294, 57.597851, 59.646164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737480, 0.388599, 0.552371,
		-0.228687, -0.625880, 0.745638,
		0.635472, -0.676214, -0.372706,
		65.071938, 57.394985, 59.534351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.000603, 57.712486, 60.392796>,  <64.627106, 57.868336, 59.795246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.000603, 57.712486, 60.392796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233650, 57.586758, 60.092995>,  <65.373482, 57.511322, 59.913116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.233650, 57.586758, 60.092995>,  <65.000603, 57.712486, 60.392796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.233650, 57.586758, 60.092995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797443, 0.399161, 0.452498,
		0.156942, -0.861321, 0.483214,
		0.582626, -0.314320, -0.749500,
		65.408440, 57.492462, 59.868145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.538300, 57.218906, 60.637230>,  <65.000603, 57.712486, 60.392796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.538300, 57.218906, 60.637230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.654434, 57.423958, 60.314018>,  <65.724113, 57.546989, 60.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.654434, 57.423958, 60.314018>,  <65.538300, 57.218906, 60.637230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.654434, 57.423958, 60.314018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840022, 0.267910, 0.471791,
		0.458335, -0.815741, -0.352839,
		0.290331, 0.512631, -0.808033,
		65.741531, 57.577747, 60.071609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.187294, 57.055878, 60.553070>,  <65.538300, 57.218906, 60.637230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.187294, 57.055878, 60.553070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.123116, 57.422676, 60.406990>,  <66.084610, 57.642754, 60.319340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.123116, 57.422676, 60.406990>,  <66.187294, 57.055878, 60.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.123116, 57.422676, 60.406990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871024, 0.305583, 0.384626,
		0.464301, -0.256387, -0.847756,
		-0.160447, 0.916998, -0.365202,
		66.074982, 57.697777, 60.297428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.812508, 57.368351, 60.216763>,  <66.187294, 57.055878, 60.553070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.812508, 57.368351, 60.216763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.574532, 57.646355, 60.378258>,  <66.431747, 57.813156, 60.475155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.574532, 57.646355, 60.378258>,  <66.812508, 57.368351, 60.216763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.574532, 57.646355, 60.378258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796562, 0.442717, 0.411692,
		0.107389, 0.566535, -0.817010,
		-0.594942, 0.695011, 0.403737,
		66.396049, 57.854858, 60.499378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.959648, 56.863609, 59.783180>,  <66.812508, 57.368351, 60.216763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.959648, 56.863609, 59.783180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.313385, 56.697639, 59.868774>,  <67.525627, 56.598057, 59.920132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.313385, 56.697639, 59.868774>,  <66.959648, 56.863609, 59.783180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.313385, 56.697639, 59.868774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272053, 0.085533, -0.958474,
		0.379392, 0.905826, 0.188521,
		0.884335, -0.414925, 0.213982,
		67.578682, 56.573162, 59.932968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.756973, 57.036285, 59.832359>,  <66.959648, 56.863609, 59.783180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.756973, 57.036285, 59.832359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.859161, 56.652218, 59.877640>,  <67.920471, 56.421776, 59.904808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.859161, 56.652218, 59.877640>,  <67.756973, 57.036285, 59.832359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.859161, 56.652218, 59.877640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525454, 0.236174, 0.817386,
		-0.811563, -0.149332, 0.564859,
		0.255467, -0.960168, 0.113203,
		67.935799, 56.364166, 59.911602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.727646, 56.890930, 60.497128>,  <67.756973, 57.036285, 59.832359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.727646, 56.890930, 60.497128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972633, 56.605858, 60.360336>,  <68.119629, 56.434814, 60.278259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.972633, 56.605858, 60.360336>,  <67.727646, 56.890930, 60.497128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.972633, 56.605858, 60.360336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609902, 0.150825, 0.777992,
		-0.502884, -0.685077, 0.527045,
		0.612476, -0.712685, -0.341982,
		68.156380, 56.392052, 60.257740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.972351, 56.226639, 60.934738>,  <67.727646, 56.890930, 60.497128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.972351, 56.226639, 60.934738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.284973, 56.323608, 60.704811>,  <68.472542, 56.381790, 60.566856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.284973, 56.323608, 60.704811>,  <67.972351, 56.226639, 60.934738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.284973, 56.323608, 60.704811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604397, -0.065957, 0.793948,
		0.154558, -0.967926, -0.198069,
		0.781547, 0.242423, -0.574818,
		68.519440, 56.396336, 60.532364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.534302, 55.826969, 61.224026>,  <67.972351, 56.226639, 60.934738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.534302, 55.826969, 61.224026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.686096, 56.136078, 61.020531>,  <68.777168, 56.321545, 60.898434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.686096, 56.136078, 61.020531>,  <68.534302, 55.826969, 61.224026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.686096, 56.136078, 61.020531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730732, 0.086921, 0.677108,
		0.567473, -0.628698, -0.531708,
		0.379480, 0.772776, -0.508736,
		68.799942, 56.367912, 60.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.306313, 55.728851, 61.301373>,  <68.534302, 55.826969, 61.224026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.306313, 55.728851, 61.301373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.265030, 56.085487, 61.125000>,  <69.240257, 56.299469, 61.019176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.265030, 56.085487, 61.125000>,  <69.306313, 55.728851, 61.301373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.265030, 56.085487, 61.125000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800948, 0.337349, 0.494649,
		0.589770, -0.302106, -0.748935,
		-0.103216, 0.891587, -0.440930,
		69.234062, 56.352962, 60.992722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.982162, 55.064480, 61.379818>,  <69.306313, 55.728851, 61.301373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.982162, 55.064480, 61.379818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.188965, 54.809864, 61.150902>,  <69.313049, 54.657093, 61.013554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.188965, 54.809864, 61.150902>,  <68.982162, 55.064480, 61.379818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.188965, 54.809864, 61.150902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682324, -0.097223, 0.724556,
		-0.516850, -0.765089, 0.384062,
		0.517011, -0.636542, -0.572289,
		69.344070, 54.618900, 60.979214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.089668, 54.466904, 61.778011>,  <68.982162, 55.064480, 61.379818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.089668, 54.466904, 61.778011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.383324, 54.504013, 61.508957>,  <69.559517, 54.526279, 61.347523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.383324, 54.504013, 61.508957>,  <69.089668, 54.466904, 61.778011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.383324, 54.504013, 61.508957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673694, 0.024109, 0.738617,
		0.084739, -0.995396, -0.044800,
		0.734136, 0.092771, -0.672635,
		69.603561, 54.531845, 61.307167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.622513, 54.018684, 61.998569>,  <69.089668, 54.466904, 61.778011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.622513, 54.018684, 61.998569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.814095, 54.294868, 61.781738>,  <69.929047, 54.460579, 61.651638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.814095, 54.294868, 61.781738>,  <69.622513, 54.018684, 61.998569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.814095, 54.294868, 61.781738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724714, 0.037451, 0.688031,
		0.495363, -0.722396, -0.482452,
		0.478963, 0.690465, -0.542082,
		69.957787, 54.502007, 61.619114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.459213, 54.659588, 62.351955>,  <69.622513, 54.018684, 61.998569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.459213, 54.659588, 62.351955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.208145, 54.955948, 62.256363>,  <69.057503, 55.133762, 62.199009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.208145, 54.955948, 62.256363>,  <69.459213, 54.659588, 62.351955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.208145, 54.955948, 62.256363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573265, 0.647578, 0.502006,
		0.526692, 0.178093, -0.831191,
		-0.627665, 0.740895, -0.238980,
		69.019844, 55.178215, 62.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.930489, 55.272224, 62.287731>,  <69.459213, 54.659588, 62.351955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.930489, 55.272224, 62.287731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.552010, 55.383686, 62.353516>,  <69.324921, 55.450562, 62.392986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.552010, 55.383686, 62.353516>,  <69.930489, 55.272224, 62.287731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.552010, 55.383686, 62.353516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320958, 0.743914, 0.586155,
		0.040992, 0.607407, -0.793332,
		-0.946206, 0.278654, 0.164457,
		69.268150, 55.467281, 62.402851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.523186, 55.650024, 62.679077>,  <69.930489, 55.272224, 62.287731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.523186, 55.650024, 62.679077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.322952, 55.868164, 62.410149>,  <70.202812, 55.999046, 62.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.322952, 55.868164, 62.410149>,  <70.523186, 55.650024, 62.679077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.322952, 55.868164, 62.410149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290638, 0.837424, 0.462871,
		0.815445, 0.036301, -0.577695,
		-0.500579, 0.545346, -0.672323,
		70.172775, 56.031769, 62.208450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.825615, 56.213139, 62.325848>,  <70.523186, 55.650024, 62.679077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.825615, 56.213139, 62.325848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.439522, 56.281548, 62.404922>,  <70.207863, 56.322594, 62.452366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.439522, 56.281548, 62.404922>,  <70.825615, 56.213139, 62.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.439522, 56.281548, 62.404922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257356, 0.754243, 0.604058,
		-0.045797, 0.633932, -0.772032,
		-0.965231, 0.171022, 0.197688,
		70.149956, 56.332855, 62.464230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.660309, 56.928295, 62.159534>,  <70.825615, 56.213139, 62.325848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.660309, 56.928295, 62.159534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.441338, 56.751488, 62.443771>,  <70.309952, 56.645405, 62.614315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.441338, 56.751488, 62.443771>,  <70.660309, 56.928295, 62.159534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.441338, 56.751488, 62.443771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213223, 0.747433, 0.629190,
		-0.809233, 0.495952, -0.314918,
		-0.547428, -0.442014, 0.710595,
		70.277107, 56.618885, 62.656952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.032951, 57.549984, 62.429737>,  <70.660309, 56.928295, 62.159534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.032951, 57.549984, 62.429737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409866, 57.443432, 62.510872>,  <71.636017, 57.379501, 62.559555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.409866, 57.443432, 62.510872>,  <71.032951, 57.549984, 62.429737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.409866, 57.443432, 62.510872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036228, 0.521150, 0.852696,
		-0.332855, -0.810829, 0.481419,
		0.942282, -0.266383, 0.202841,
		71.692551, 57.363518, 62.571724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.485565, 57.895039, 61.941616>,  <71.032951, 57.549984, 62.429737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.485565, 57.895039, 61.941616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.578949, 58.120087, 61.624390>,  <71.634979, 58.255116, 61.434055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.578949, 58.120087, 61.624390>,  <71.485565, 57.895039, 61.941616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.578949, 58.120087, 61.624390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392291, 0.691786, 0.606251,
		0.889719, -0.452654, -0.059199,
		0.233468, 0.562616, -0.793067,
		71.648987, 58.288872, 61.386471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.268211, 58.160427, 61.889462>,  <71.485565, 57.895039, 61.941616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.268211, 58.160427, 61.889462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.020920, 58.419144, 61.710815>,  <71.872543, 58.574371, 61.603630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.020920, 58.419144, 61.710815>,  <72.268211, 58.160427, 61.889462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.020920, 58.419144, 61.710815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309338, 0.722569, 0.618227,
		0.722569, 0.244051, -0.646787,
		-0.618227, 0.646787, -0.446612,
		71.835449, 58.613178, 61.576832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.696266, 58.646187, 61.684017>,  <72.268211, 58.160427, 61.889462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.696266, 58.646187, 61.684017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.328308, 58.798523, 61.721436>,  <72.107536, 58.889923, 61.743885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.328308, 58.798523, 61.721436>,  <72.696266, 58.646187, 61.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.328308, 58.798523, 61.721436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349558, 0.688180, 0.635781,
		0.177756, 0.617552, -0.766181,
		-0.919898, 0.380839, 0.093542,
		72.052338, 58.912773, 61.749496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.661537, 58.321972, 61.040054>,  <72.696266, 58.646187, 61.684017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.661537, 58.321972, 61.040054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.980431, 58.379436, 60.805519>,  <73.171768, 58.413914, 60.664799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.980431, 58.379436, 60.805519>,  <72.661537, 58.321972, 61.040054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.980431, 58.379436, 60.805519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011136, -0.974605, -0.223655,
		-0.603574, 0.171775, -0.778583,
		0.797229, 0.143663, -0.586333,
		73.219597, 58.422535, 60.629620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.549011, 57.993244, 60.379353>,  <72.661537, 58.321972, 61.040054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.549011, 57.993244, 60.379353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.945328, 58.001133, 60.432961>,  <73.183113, 58.005867, 60.465126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.945328, 58.001133, 60.432961>,  <72.549011, 57.993244, 60.379353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.945328, 58.001133, 60.432961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055850, -0.960821, -0.271485,
		0.123417, 0.276468, -0.953065,
		0.990782, 0.019722, 0.134022,
		73.242561, 58.007050, 60.473167>
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
