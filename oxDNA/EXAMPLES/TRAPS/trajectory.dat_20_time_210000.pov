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
	<35.424984, 52.717102, 50.215340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592163, 52.373745, 50.096355>,  <35.692471, 52.167732, 50.024963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592163, 52.373745, 50.096355>,  <35.424984, 52.717102, 50.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592163, 52.373745, 50.096355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877691, 0.297020, 0.376081,
		-0.234472, -0.418263, 0.877541,
		0.417948, -0.858391, -0.297463,
		35.717548, 52.116226, 50.007118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723324, 52.426533, 50.835564>,  <35.424984, 52.717102, 50.215340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723324, 52.426533, 50.835564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920910, 52.287384, 50.516823>,  <36.039463, 52.203896, 50.325577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920910, 52.287384, 50.516823>,  <35.723324, 52.426533, 50.835564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920910, 52.287384, 50.516823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869467, 0.202814, 0.450437,
		0.004918, -0.915341, 0.402650,
		0.493966, -0.347875, -0.796857,
		36.069099, 52.183022, 50.277767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176105, 51.814297, 50.972412>,  <35.723324, 52.426533, 50.835564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176105, 51.814297, 50.972412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311398, 52.035522, 50.667854>,  <36.392570, 52.168259, 50.485119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311398, 52.035522, 50.667854>,  <36.176105, 51.814297, 50.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311398, 52.035522, 50.667854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881211, 0.097802, 0.462496,
		0.330257, -0.827376, -0.454290,
		0.338227, 0.553068, -0.761392,
		36.412865, 52.201443, 50.439438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783306, 51.482937, 50.710621>,  <36.176105, 51.814297, 50.972412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783306, 51.482937, 50.710621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785938, 51.879951, 50.661911>,  <36.787518, 52.118160, 50.632683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785938, 51.879951, 50.661911>,  <36.783306, 51.482937, 50.710621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785938, 51.879951, 50.661911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851602, 0.058271, 0.520940,
		0.524147, -0.107132, -0.844862,
		0.006578, 0.992536, -0.121777,
		36.787910, 52.177711, 50.625378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266014, 51.578369, 51.198627>,  <36.783306, 51.482937, 50.710621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266014, 51.578369, 51.198627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238041, 51.930038, 51.010086>,  <37.221256, 52.141041, 50.896961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238041, 51.930038, 51.010086>,  <37.266014, 51.578369, 51.198627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238041, 51.930038, 51.010086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772618, 0.346626, 0.531894,
		0.631007, -0.326974, -0.703504,
		-0.069938, 0.879169, -0.471350,
		37.217060, 52.193790, 50.868683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942822, 51.747803, 50.973671>,  <37.266014, 51.578369, 51.198627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942822, 51.747803, 50.973671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748009, 52.095341, 51.009239>,  <37.631119, 52.303864, 51.030579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748009, 52.095341, 51.009239>,  <37.942822, 51.747803, 50.973671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748009, 52.095341, 51.009239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762737, 0.373527, 0.527929,
		0.425475, 0.324942, -0.844621,
		-0.487035, 0.868844, 0.088919,
		37.601898, 52.355995, 51.035915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260326, 52.315826, 50.721420>,  <37.942822, 51.747803, 50.973671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260326, 52.315826, 50.721420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025219, 52.443855, 51.018631>,  <37.884155, 52.520672, 51.196957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025219, 52.443855, 51.018631>,  <38.260326, 52.315826, 50.721420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025219, 52.443855, 51.018631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808014, 0.278295, 0.519293,
		-0.040567, 0.905596, -0.422197,
		-0.587765, 0.320075, 0.743024,
		37.848888, 52.539879, 51.241539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439583, 52.384701, 51.371525>,  <38.260326, 52.315826, 50.721420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439583, 52.384701, 51.371525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444050, 51.984741, 51.374832>,  <38.446732, 51.744766, 51.376816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444050, 51.984741, 51.374832>,  <38.439583, 52.384701, 51.371525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444050, 51.984741, 51.374832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329199, -0.004127, -0.944252,
		0.944194, 0.013266, 0.329121,
		0.011168, -0.999903, 0.008264,
		38.447399, 51.684769, 51.377312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098110, 52.222038, 51.119507>,  <38.439583, 52.384701, 51.371525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098110, 52.222038, 51.119507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849869, 51.920742, 51.032349>,  <38.700924, 51.739964, 50.980053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849869, 51.920742, 51.032349>,  <39.098110, 52.222038, 51.119507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849869, 51.920742, 51.032349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317423, 0.012768, -0.948198,
		0.717006, -0.657618, 0.231173,
		-0.620600, -0.753244, -0.217898,
		38.663689, 51.694771, 50.966980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434204, 51.583408, 50.710613>,  <39.098110, 52.222038, 51.119507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434204, 51.583408, 50.710613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053329, 51.645554, 50.605385>,  <38.824806, 51.682842, 50.542248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053329, 51.645554, 50.605385>,  <39.434204, 51.583408, 50.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053329, 51.645554, 50.605385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285507, 0.145900, -0.947206,
		-0.108782, -0.977023, -0.183282,
		-0.952183, 0.155368, -0.263075,
		38.767673, 51.692165, 50.526463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232109, 51.124870, 50.114094>,  <39.434204, 51.583408, 50.710613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232109, 51.124870, 50.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047726, 51.478207, 50.148094>,  <38.937096, 51.690208, 50.168495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047726, 51.478207, 50.148094>,  <39.232109, 51.124870, 50.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047726, 51.478207, 50.148094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262758, 0.227344, -0.937696,
		-0.847629, -0.409907, -0.336902,
		-0.460960, 0.883341, 0.084997,
		38.909439, 51.743210, 50.173592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783226, 51.200150, 49.599899>,  <39.232109, 51.124870, 50.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783226, 51.200150, 49.599899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879555, 51.383434, 49.942139>,  <39.937351, 51.493404, 50.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879555, 51.383434, 49.942139>,  <39.783226, 51.200150, 49.599899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879555, 51.383434, 49.942139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797871, -0.595408, 0.094296,
		0.552637, 0.659947, -0.508982,
		0.240821, 0.458214, 0.855596,
		39.951801, 51.520897, 50.198818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427814, 51.556065, 49.584061>,  <39.783226, 51.200150, 49.599899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427814, 51.556065, 49.584061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369247, 51.406143, 49.950249>,  <40.334106, 51.316189, 50.169960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369247, 51.406143, 49.950249>,  <40.427814, 51.556065, 49.584061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369247, 51.406143, 49.950249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799592, -0.589711, -0.113550,
		0.582422, 0.715376, 0.386034,
		-0.146418, -0.374804, 0.915469,
		40.325321, 51.293701, 50.224888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868122, 50.963642, 49.708477>,  <40.427814, 51.556065, 49.584061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868122, 50.963642, 49.708477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733879, 50.987564, 50.084518>,  <40.653332, 51.001919, 50.310143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733879, 50.987564, 50.084518>,  <40.868122, 50.963642, 49.708477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733879, 50.987564, 50.084518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601081, -0.754813, 0.262600,
		0.725306, 0.653208, 0.217373,
		-0.335609, 0.059807, 0.940101,
		40.633198, 51.005505, 50.366550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443592, 51.021236, 50.144451>,  <40.868122, 50.963642, 49.708477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443592, 51.021236, 50.144451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175373, 50.867889, 50.398506>,  <41.014442, 50.775883, 50.550941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175373, 50.867889, 50.398506>,  <41.443592, 51.021236, 50.144451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175373, 50.867889, 50.398506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690449, -0.635677, 0.345247,
		0.271389, 0.670035, 0.690942,
		-0.670543, -0.383364, 0.635141,
		40.974209, 50.752880, 50.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546272, 51.683468, 50.052647>,  <41.443592, 51.021236, 50.144451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546272, 51.683468, 50.052647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786045, 51.613289, 50.365028>,  <41.929909, 51.571182, 50.552460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786045, 51.613289, 50.365028>,  <41.546272, 51.683468, 50.052647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786045, 51.613289, 50.365028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071045, -0.960167, -0.270245,
		0.797263, 0.217477, -0.563094,
		0.599436, -0.175451, 0.780957,
		41.965878, 51.560654, 50.599316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261223, 51.510925, 49.840092>,  <41.546272, 51.683468, 50.052647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261223, 51.510925, 49.840092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150494, 51.320965, 50.174240>,  <42.084057, 51.206989, 50.374729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150494, 51.320965, 50.174240>,  <42.261223, 51.510925, 49.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150494, 51.320965, 50.174240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188921, -0.879270, -0.437257,
		0.942167, 0.036776, 0.333120,
		-0.276822, -0.474902, 0.835367,
		42.067448, 51.178493, 50.424850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894173, 51.667572, 50.293648>,  <42.261223, 51.510925, 49.840092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894173, 51.667572, 50.293648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931408, 52.051147, 50.186493>,  <42.953751, 52.281292, 50.122200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931408, 52.051147, 50.186493>,  <42.894173, 51.667572, 50.293648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931408, 52.051147, 50.186493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951598, -0.006535, 0.307277,
		0.292910, -0.283529, -0.913135,
		0.093089, 0.958941, -0.267892,
		42.959335, 52.338829, 50.106125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427864, 51.789658, 49.847713>,  <42.894173, 51.667572, 50.293648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427864, 51.789658, 49.847713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375877, 52.106651, 50.086067>,  <43.344685, 52.296848, 50.229080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375877, 52.106651, 50.086067>,  <43.427864, 51.789658, 49.847713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375877, 52.106651, 50.086067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938768, -0.095058, 0.331177,
		0.319095, 0.602439, -0.731605,
		-0.129969, 0.792484, 0.595883,
		43.336887, 52.344395, 50.264832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112095, 52.051067, 49.870438>,  <43.427864, 51.789658, 49.847713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112095, 52.051067, 49.870438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951893, 52.145611, 50.224552>,  <43.855774, 52.202335, 50.437019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951893, 52.145611, 50.224552>,  <44.112095, 52.051067, 49.870438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951893, 52.145611, 50.224552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844046, -0.280875, 0.456833,
		0.356631, 0.930185, -0.087004,
		-0.400502, 0.236356, 0.885288,
		43.831741, 52.216518, 50.490139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681076, 52.247040, 50.279762>,  <44.112095, 52.051067, 49.870438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681076, 52.247040, 50.279762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363735, 52.125862, 50.490974>,  <44.173332, 52.053154, 50.617702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363735, 52.125862, 50.490974>,  <44.681076, 52.247040, 50.279762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363735, 52.125862, 50.490974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589210, -0.600187, 0.540932,
		0.153042, 0.740269, 0.654660,
		-0.793354, -0.302947, 0.528028,
		44.125729, 52.034977, 50.649384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848549, 52.069946, 51.059853>,  <44.681076, 52.247040, 50.279762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848549, 52.069946, 51.059853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489235, 51.894440, 51.069370>,  <44.273647, 51.789135, 51.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489235, 51.894440, 51.069370>,  <44.848549, 52.069946, 51.059853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489235, 51.894440, 51.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363247, -0.711017, 0.602085,
		-0.247259, 0.549487, 0.798077,
		-0.898285, -0.438770, 0.023794,
		44.219749, 51.762810, 51.076508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571468, 52.122856, 51.423767>,  <44.848549, 52.069946, 51.059853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571468, 52.122856, 51.423767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782787, 52.414314, 51.598110>,  <45.909576, 52.589191, 51.702717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.782787, 52.414314, 51.598110>,  <45.571468, 52.122856, 51.423767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782787, 52.414314, 51.598110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660389, 0.029979, 0.750325,
		0.533658, -0.684229, 0.497031,
		0.528295, 0.728651, 0.435858,
		45.941277, 52.632908, 51.728867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434525, 52.268688, 52.179543>,  <45.571468, 52.122856, 51.423767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434525, 52.268688, 52.179543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684505, 51.980843, 52.058483>,  <45.834492, 51.808136, 51.985847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684505, 51.980843, 52.058483>,  <45.434525, 52.268688, 52.179543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684505, 51.980843, 52.058483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560152, 0.143324, 0.815897,
		-0.543753, -0.679424, 0.492662,
		0.624950, -0.719612, -0.302648,
		45.871990, 51.764957, 51.967690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603828, 51.757973, 52.730900>,  <45.434525, 52.268688, 52.179543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603828, 51.757973, 52.730900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915607, 51.790592, 52.482445>,  <46.102676, 51.810165, 52.333370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915607, 51.790592, 52.482445>,  <45.603828, 51.757973, 52.730900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915607, 51.790592, 52.482445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620925, 0.031026, 0.783255,
		0.083147, -0.996186, -0.026454,
		0.779447, 0.081552, -0.621137,
		46.149441, 51.815056, 52.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219570, 51.573647, 53.031555>,  <45.603828, 51.757973, 52.730900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219570, 51.573647, 53.031555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430885, 51.789696, 52.769508>,  <46.557674, 51.919327, 52.612282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430885, 51.789696, 52.769508>,  <46.219570, 51.573647, 53.031555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430885, 51.789696, 52.769508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732141, 0.100950, 0.673630,
		0.429978, -0.835509, -0.342116,
		0.528288, 0.540124, -0.655117,
		46.589371, 51.951733, 52.572971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.873482, 51.261040, 52.932171>,  <46.219570, 51.573647, 53.031555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.873482, 51.261040, 52.932171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903305, 51.653351, 52.860039>,  <46.921200, 51.888737, 52.816761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.903305, 51.653351, 52.860039>,  <46.873482, 51.261040, 52.932171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903305, 51.653351, 52.860039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744437, 0.065584, 0.664464,
		0.663517, -0.183783, -0.725237,
		0.074553, 0.980777, -0.180331,
		46.925671, 51.947582, 52.805939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581711, 51.399715, 52.821045>,  <46.873482, 51.261040, 52.932171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581711, 51.399715, 52.821045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371460, 51.699150, 52.982704>,  <47.245308, 51.878811, 53.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.371460, 51.699150, 52.982704>,  <47.581711, 51.399715, 52.821045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.371460, 51.699150, 52.982704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720479, 0.139108, 0.679381,
		0.452352, 0.648285, -0.612457,
		-0.525630, 0.748582, 0.404150,
		47.213772, 51.923725, 53.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.995411, 51.973507, 52.950844>,  <47.581711, 51.399715, 52.821045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.995411, 51.973507, 52.950844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687893, 51.986176, 53.206329>,  <47.503384, 51.993778, 53.359619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687893, 51.986176, 53.206329>,  <47.995411, 51.973507, 52.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.687893, 51.986176, 53.206329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638048, 0.105163, 0.762782,
		-0.043010, 0.993950, -0.101057,
		-0.768795, 0.031672, 0.638711,
		47.457256, 51.995678, 53.397942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.058823, 52.600170, 53.360592>,  <47.995411, 51.973507, 52.950844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.058823, 52.600170, 53.360592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866638, 52.310127, 53.557926>,  <47.751328, 52.136101, 53.676327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866638, 52.310127, 53.557926>,  <48.058823, 52.600170, 53.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866638, 52.310127, 53.557926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653886, 0.078702, 0.752488,
		-0.584460, 0.684126, 0.436324,
		-0.480457, -0.725105, 0.493339,
		47.722500, 52.092594, 53.705929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.758446, 52.728195, 53.994183>,  <48.058823, 52.600170, 53.360592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.758446, 52.728195, 53.994183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825752, 52.335949, 54.034332>,  <47.866138, 52.100601, 54.058422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825752, 52.335949, 54.034332>,  <47.758446, 52.728195, 53.994183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.825752, 52.335949, 54.034332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513174, 0.174087, 0.840444,
		-0.841628, -0.089910, 0.532521,
		0.168269, -0.980617, 0.100377,
		47.876232, 52.041763, 54.064445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.229382, 52.800076, 54.481178>,  <47.758446, 52.728195, 53.994183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.229382, 52.800076, 54.481178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.208958, 52.403221, 54.435455>,  <48.196705, 52.165108, 54.408020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.208958, 52.403221, 54.435455>,  <48.229382, 52.800076, 54.481178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.208958, 52.403221, 54.435455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584876, -0.122483, 0.801822,
		-0.809514, -0.025918, 0.586528,
		-0.051058, -0.992132, -0.114311,
		48.193642, 52.105583, 54.401161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.011009, 52.455776, 55.175938>,  <48.229382, 52.800076, 54.481178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.011009, 52.455776, 55.175938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.248848, 52.226997, 54.949898>,  <48.391552, 52.089729, 54.814274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.248848, 52.226997, 54.949898>,  <48.011009, 52.455776, 55.175938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.248848, 52.226997, 54.949898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523089, -0.258576, 0.812106,
		-0.610602, -0.778470, 0.145431,
		0.594595, -0.571947, -0.565096,
		48.427227, 52.055412, 54.780369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.221359, 51.938316, 55.569500>,  <48.011009, 52.455776, 55.175938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.221359, 51.938316, 55.569500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.494095, 51.919891, 55.277481>,  <48.657738, 51.908836, 55.102268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.494095, 51.919891, 55.277481>,  <48.221359, 51.938316, 55.569500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.494095, 51.919891, 55.277481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731497, 0.047254, 0.680206,
		0.003165, -0.997820, 0.065915,
		0.681837, -0.046063, -0.730052,
		48.698647, 51.906075, 55.058464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.745712, 51.381573, 55.609875>,  <48.221359, 51.938316, 55.569500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.745712, 51.381573, 55.609875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.953278, 51.630867, 55.375847>,  <49.077816, 51.780445, 55.235432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.953278, 51.630867, 55.375847>,  <48.745712, 51.381573, 55.609875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.953278, 51.630867, 55.375847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790911, -0.090362, 0.605223,
		0.324327, -0.776797, -0.539813,
		0.518914, 0.623234, -0.585071,
		49.108952, 51.817837, 55.200325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.400513, 51.025249, 55.398941>,  <48.745712, 51.381573, 55.609875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.400513, 51.025249, 55.398941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.464581, 51.413456, 55.326881>,  <49.503021, 51.646378, 55.283646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.464581, 51.413456, 55.326881>,  <49.400513, 51.025249, 55.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.464581, 51.413456, 55.326881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858997, -0.047131, 0.509806,
		0.486282, -0.236398, -0.841216,
		0.160165, 0.970512, -0.180146,
		49.512630, 51.704609, 55.272839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.129318, 51.154999, 55.119797>,  <49.400513, 51.025249, 55.398941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.129318, 51.154999, 55.119797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995068, 51.486877, 55.298218>,  <49.914516, 51.686005, 55.405270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.995068, 51.486877, 55.298218>,  <50.129318, 51.154999, 55.119797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.995068, 51.486877, 55.298218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888296, 0.121169, 0.442999,
		0.313505, 0.544911, -0.777680,
		-0.335625, 0.829693, 0.446056,
		49.894379, 51.735786, 55.432034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.657856, 51.737206, 55.034821>,  <50.129318, 51.154999, 55.119797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.657856, 51.737206, 55.034821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.477310, 51.733559, 55.391739>,  <50.368980, 51.731373, 55.605888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.477310, 51.733559, 55.391739>,  <50.657856, 51.737206, 55.034821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.477310, 51.733559, 55.391739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881611, -0.159138, 0.444338,
		0.137948, 0.987214, 0.079865,
		-0.451367, -0.009115, 0.892292,
		50.341900, 51.730824, 55.659428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.991268, 52.228561, 55.438099>,  <50.657856, 51.737206, 55.034821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.991268, 52.228561, 55.438099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.824257, 51.920280, 55.630630>,  <50.724049, 51.735310, 55.746151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.824257, 51.920280, 55.630630>,  <50.991268, 52.228561, 55.438099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.824257, 51.920280, 55.630630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864838, -0.174535, 0.470737,
		-0.278790, 0.612823, 0.739408,
		-0.417531, -0.770705, 0.481334,
		50.698997, 51.689068, 55.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.245743, 52.177834, 56.064190>,  <50.991268, 52.228561, 55.438099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.245743, 52.177834, 56.064190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.140076, 51.794556, 56.020218>,  <51.076675, 51.564590, 55.993835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.140076, 51.794556, 56.020218>,  <51.245743, 52.177834, 56.064190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.140076, 51.794556, 56.020218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857202, -0.285496, 0.428599,
		-0.442064, 0.018991, 0.896782,
		-0.264168, -0.958192, -0.109929,
		51.060825, 51.507099, 55.987240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.440163, 51.747326, 56.733608>,  <51.245743, 52.177834, 56.064190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.440163, 51.747326, 56.733608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.441586, 51.537865, 56.392838>,  <51.442440, 51.412189, 56.188374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.441586, 51.537865, 56.392838>,  <51.440163, 51.747326, 56.733608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.441586, 51.537865, 56.392838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903118, -0.364122, 0.227584,
		-0.429379, -0.770198, 0.471623,
		0.003557, -0.523651, -0.851925,
		51.442654, 51.380768, 56.137260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.644066, 51.056561, 56.600033>,  <51.440163, 51.747326, 56.733608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.644066, 51.056561, 56.600033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.874146, 51.308556, 56.808746>,  <52.012196, 51.459751, 56.933975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.874146, 51.308556, 56.808746>,  <51.644066, 51.056561, 56.600033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.874146, 51.308556, 56.808746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101968, -0.577674, 0.809874,
		0.811632, -0.519046, -0.268040,
		0.575202, 0.629988, 0.521785,
		52.046707, 51.497551, 56.965282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.281040, 50.762360, 56.945885>,  <51.644066, 51.056561, 56.600033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.281040, 50.762360, 56.945885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.095333, 51.047424, 57.156242>,  <51.983910, 51.218464, 57.282455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.095333, 51.047424, 57.156242>,  <52.281040, 50.762360, 56.945885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.095333, 51.047424, 57.156242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285041, -0.682399, 0.673115,
		0.838574, 0.162606, 0.519955,
		-0.464269, 0.712665, 0.525892,
		51.956051, 51.261223, 57.314011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.123058, 50.361755, 57.488579>,  <52.281040, 50.762360, 56.945885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.123058, 50.361755, 57.488579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.978092, 50.722244, 57.583626>,  <51.891113, 50.938538, 57.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.978092, 50.722244, 57.583626>,  <52.123058, 50.361755, 57.488579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.978092, 50.722244, 57.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384504, -0.376813, 0.842715,
		0.849007, 0.214046, 0.483084,
		-0.362412, 0.901219, 0.237616,
		51.869370, 50.992611, 57.654911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.597065, 50.789936, 57.993824>,  <52.123058, 50.361755, 57.488579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.597065, 50.789936, 57.993824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.200249, 50.840309, 57.993576>,  <51.962158, 50.870533, 57.993427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.200249, 50.840309, 57.993576>,  <52.597065, 50.789936, 57.993824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.200249, 50.840309, 57.993576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068703, -0.537090, 0.840723,
		0.105546, 0.834071, 0.541466,
		-0.992038, 0.125936, -0.000615,
		51.902637, 50.878090, 57.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.006481, 51.000027, 58.493042>,  <52.597065, 50.789936, 57.993824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.006481, 51.000027, 58.493042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.109802, 51.367981, 58.375000>,  <53.171795, 51.588753, 58.304173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.109802, 51.367981, 58.375000>,  <53.006481, 51.000027, 58.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.109802, 51.367981, 58.375000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319564, 0.206918, 0.924697,
		0.911680, -0.333155, -0.240515,
		0.258300, 0.919887, -0.295107,
		53.187294, 51.643948, 58.286469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.457874, 51.009274, 58.857430>,  <53.006481, 51.000027, 58.493042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.457874, 51.009274, 58.857430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428719, 51.402584, 58.790672>,  <53.411224, 51.638569, 58.750618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.428719, 51.402584, 58.790672>,  <53.457874, 51.009274, 58.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.428719, 51.402584, 58.790672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606384, 0.176550, 0.775325,
		0.791825, -0.044692, -0.609111,
		-0.072888, 0.983277, -0.166897,
		53.406853, 51.697567, 58.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.145393, 51.335533, 58.965721>,  <53.457874, 51.009274, 58.857430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.145393, 51.335533, 58.965721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.894447, 51.642086, 59.020950>,  <53.743881, 51.826019, 59.054089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.894447, 51.642086, 59.020950>,  <54.145393, 51.335533, 58.965721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.894447, 51.642086, 59.020950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638312, 0.404529, 0.654915,
		0.446062, 0.499007, -0.742981,
		-0.627364, 0.766387, 0.138077,
		53.706238, 51.872002, 59.062374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.824085, 51.196594, 59.276680>,  <54.145393, 51.335533, 58.965721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.824085, 51.196594, 59.276680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.114716, 51.256050, 59.545006>,  <55.289093, 51.291721, 59.706001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.114716, 51.256050, 59.545006>,  <54.824085, 51.196594, 59.276680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.114716, 51.256050, 59.545006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370677, 0.737256, -0.564847,
		-0.578520, 0.659061, 0.480577,
		0.726576, 0.148636, 0.670816,
		55.332687, 51.300640, 59.746250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.856571, 51.893883, 59.557617>,  <54.824085, 51.196594, 59.276680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.856571, 51.893883, 59.557617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.224243, 51.741966, 59.599319>,  <55.444847, 51.650814, 59.624340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.224243, 51.741966, 59.599319>,  <54.856571, 51.893883, 59.557617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.224243, 51.741966, 59.599319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351503, 0.671706, -0.652117,
		0.177643, 0.636057, 0.750916,
		0.919178, -0.379793, 0.104252,
		55.499996, 51.628029, 59.630596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.308212, 52.428074, 59.755577>,  <54.856571, 51.893883, 59.557617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.308212, 52.428074, 59.755577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515327, 52.132164, 59.583702>,  <55.639595, 51.954617, 59.480576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515327, 52.132164, 59.583702>,  <55.308212, 52.428074, 59.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.515327, 52.132164, 59.583702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430822, 0.659400, -0.616104,
		0.739113, 0.133893, 0.660140,
		0.517788, -0.739774, -0.429687,
		55.670662, 51.910233, 59.454796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.093586, 52.473503, 59.784630>,  <55.308212, 52.428074, 59.755577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.093586, 52.473503, 59.784630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994408, 52.269703, 59.455040>,  <55.934898, 52.147423, 59.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.994408, 52.269703, 59.455040>,  <56.093586, 52.473503, 59.784630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.994408, 52.269703, 59.455040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541563, 0.632325, -0.553963,
		0.803263, -0.583587, 0.119142,
		-0.247949, -0.509501, -0.823972,
		55.920021, 52.116852, 59.207848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.727894, 52.271366, 59.513580>,  <56.093586, 52.473503, 59.784630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.727894, 52.271366, 59.513580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.442261, 52.319160, 59.237663>,  <56.270882, 52.347839, 59.072113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.442261, 52.319160, 59.237663>,  <56.727894, 52.271366, 59.513580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.442261, 52.319160, 59.237663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575969, 0.660359, -0.481857,
		0.397934, -0.741383, -0.540370,
		-0.714079, 0.119489, -0.689792,
		56.228039, 52.355007, 59.030724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.910187, 52.306282, 58.800526>,  <56.727894, 52.271366, 59.513580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.910187, 52.306282, 58.800526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.595779, 52.552837, 58.819458>,  <56.407135, 52.700771, 58.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.595779, 52.552837, 58.819458>,  <56.910187, 52.306282, 58.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.595779, 52.552837, 58.819458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564787, 0.747124, -0.350458,
		-0.251381, -0.248734, -0.935382,
		-0.786018, 0.616390, 0.047331,
		56.359974, 52.737755, 58.833656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.847656, 52.474560, 58.170441>,  <56.910187, 52.306282, 58.800526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.847656, 52.474560, 58.170441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.740318, 52.734341, 58.455032>,  <56.675915, 52.890209, 58.625786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.740318, 52.734341, 58.455032>,  <56.847656, 52.474560, 58.170441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.740318, 52.734341, 58.455032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661739, 0.661006, -0.353798,
		-0.700067, 0.375874, -0.607145,
		-0.268343, 0.649454, 0.711479,
		56.659817, 52.929176, 58.668476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.669724, 53.075588, 57.774609>,  <56.847656, 52.474560, 58.170441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.669724, 53.075588, 57.774609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.795822, 53.144272, 58.147949>,  <56.871479, 53.185482, 58.371952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.795822, 53.144272, 58.147949>,  <56.669724, 53.075588, 57.774609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.795822, 53.144272, 58.147949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835099, 0.416999, -0.358777,
		-0.450811, 0.892539, -0.011941,
		0.315243, 0.171713, 0.933347,
		56.890396, 53.195786, 58.427952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.962086, 53.777077, 57.718449>,  <56.669724, 53.075588, 57.774609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.962086, 53.777077, 57.718449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.143219, 53.558296, 58.000099>,  <57.251900, 53.427029, 58.169090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.143219, 53.558296, 58.000099>,  <56.962086, 53.777077, 57.718449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.143219, 53.558296, 58.000099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881714, 0.391969, -0.262566,
		-0.132386, 0.739736, 0.659746,
		0.452830, -0.546947, 0.704127,
		57.279068, 53.394211, 58.211338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.555229, 54.221752, 57.991085>,  <56.962086, 53.777077, 57.718449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.555229, 54.221752, 57.991085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.623604, 53.835022, 58.067017>,  <57.664631, 53.602985, 58.112576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.623604, 53.835022, 58.067017>,  <57.555229, 54.221752, 57.991085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.623604, 53.835022, 58.067017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970281, 0.131691, -0.203010,
		0.171276, 0.218889, 0.960600,
		0.170939, -0.966822, 0.189828,
		57.674885, 53.544975, 58.123966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.029007, 54.008610, 58.578751>,  <57.555229, 54.221752, 57.991085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.029007, 54.008610, 58.578751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.040657, 53.761314, 58.264572>,  <58.047646, 53.612938, 58.076065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.040657, 53.761314, 58.264572>,  <58.029007, 54.008610, 58.578751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.040657, 53.761314, 58.264572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962845, 0.228408, -0.144079,
		0.268478, -0.752069, 0.601924,
		0.029126, -0.618241, -0.785448,
		58.049397, 53.575844, 58.028938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.661545, 53.618752, 58.706802>,  <58.029007, 54.008610, 58.578751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.661545, 53.618752, 58.706802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.527321, 53.617966, 58.329994>,  <58.446789, 53.617493, 58.103909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.527321, 53.617966, 58.329994>,  <58.661545, 53.618752, 58.706802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.527321, 53.617966, 58.329994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823142, 0.485665, -0.294223,
		0.458083, -0.874143, -0.161352,
		-0.335556, -0.001964, -0.942018,
		58.426655, 53.617374, 58.047390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.006207, 53.181831, 58.102322>,  <58.661545, 53.618752, 58.706802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.006207, 53.181831, 58.102322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.831512, 53.526379, 57.998550>,  <58.726696, 53.733109, 57.936287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.831512, 53.526379, 57.998550>,  <59.006207, 53.181831, 58.102322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.831512, 53.526379, 57.998550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881168, 0.351551, -0.316156,
		-0.181124, -0.366678, -0.912547,
		-0.436734, 0.861370, -0.259431,
		58.700493, 53.784790, 57.920723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.004471, 53.274925, 57.411816>,  <59.006207, 53.181831, 58.102322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.004471, 53.274925, 57.411816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.005852, 53.630554, 57.594917>,  <59.006680, 53.843933, 57.704777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.005852, 53.630554, 57.594917>,  <59.004471, 53.274925, 57.411816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.005852, 53.630554, 57.594917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822258, 0.257990, -0.507280,
		-0.569105, 0.378142, -0.730157,
		0.003451, 0.889072, 0.457754,
		59.006886, 53.897278, 57.732243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.207428, 53.583530, 56.905701>,  <59.004471, 53.274925, 57.411816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.207428, 53.583530, 56.905701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.281548, 53.870636, 57.174171>,  <59.326019, 54.042900, 57.335255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.281548, 53.870636, 57.174171>,  <59.207428, 53.583530, 56.905701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.281548, 53.870636, 57.174171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769999, 0.318303, -0.552978,
		-0.610546, 0.619272, -0.493697,
		0.185299, 0.717764, 0.671177,
		59.337139, 54.085964, 57.375526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.144917, 54.260773, 56.710251>,  <59.207428, 53.583530, 56.905701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.144917, 54.260773, 56.710251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.439850, 54.160168, 56.961037>,  <59.616810, 54.099804, 57.111507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.439850, 54.160168, 56.961037>,  <59.144917, 54.260773, 56.710251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.439850, 54.160168, 56.961037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668124, 0.134449, -0.731801,
		0.099759, 0.958471, 0.267172,
		0.737332, -0.251508, 0.626965,
		59.661049, 54.084717, 57.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.428307, 54.911594, 56.636845>,  <59.144917, 54.260773, 56.710251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.428307, 54.911594, 56.636845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.632637, 54.586575, 56.749146>,  <59.755234, 54.391563, 56.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.632637, 54.586575, 56.749146>,  <59.428307, 54.911594, 56.636845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.632637, 54.586575, 56.749146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497236, 0.012849, -0.867520,
		0.701293, 0.582754, 0.410591,
		0.510827, -0.812547, 0.280755,
		59.785885, 54.342812, 56.833374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.170303, 55.056698, 56.649155>,  <59.428307, 54.911594, 56.636845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.170303, 55.056698, 56.649155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.049393, 54.691589, 56.539268>,  <59.976845, 54.472523, 56.473335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.049393, 54.691589, 56.539268>,  <60.170303, 55.056698, 56.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.049393, 54.691589, 56.539268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441420, 0.121395, -0.889051,
		0.844853, -0.390007, 0.366222,
		-0.302279, -0.912775, -0.274718,
		59.958710, 54.417755, 56.456852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.695583, 54.757111, 56.243916>,  <60.170303, 55.056698, 56.649155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.695583, 54.757111, 56.243916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.373489, 54.536026, 56.158020>,  <60.180233, 54.403374, 56.106483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.373489, 54.536026, 56.158020>,  <60.695583, 54.757111, 56.243916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.373489, 54.536026, 56.158020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240110, 0.027187, -0.970365,
		0.542170, -0.832929, 0.110820,
		-0.805232, -0.552712, -0.214734,
		60.131920, 54.370213, 56.093601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.220211, 54.698395, 55.660286>,  <60.695583, 54.757111, 56.243916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.220211, 54.698395, 55.660286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.224564, 55.055763, 55.839920>,  <61.227177, 55.270184, 55.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.224564, 55.055763, 55.839920>,  <61.220211, 54.698395, 55.660286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.224564, 55.055763, 55.839920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986386, -0.083290, 0.141793,
		0.164085, 0.441430, -0.882165,
		0.010884, 0.893422, 0.449087,
		61.227829, 55.323792, 55.974648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.653942, 55.351215, 55.357132>,  <61.220211, 54.698395, 55.660286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.653942, 55.351215, 55.357132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.607338, 55.326057, 55.753609>,  <61.579376, 55.310963, 55.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.607338, 55.326057, 55.753609>,  <61.653942, 55.351215, 55.357132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.607338, 55.326057, 55.753609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955548, -0.279245, 0.094604,
		0.270836, 0.958158, 0.092631,
		-0.116512, -0.062891, 0.991196,
		61.572384, 55.307190, 56.050968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.783260, 55.962383, 55.908638>,  <61.653942, 55.351215, 55.357132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.783260, 55.962383, 55.908638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.744255, 55.883831, 56.298904>,  <61.720852, 55.836700, 56.533066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.744255, 55.883831, 56.298904>,  <61.783260, 55.962383, 55.908638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.744255, 55.883831, 56.298904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057394, -0.979817, -0.191481,
		0.993578, 0.037327, 0.106813,
		-0.097510, -0.196381, 0.975667,
		61.715004, 55.824917, 56.591606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.150124, 55.224632, 56.128952>,  <61.783260, 55.962383, 55.908638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.150124, 55.224632, 56.128952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.882751, 55.287621, 56.419716>,  <61.722328, 55.325413, 56.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.882751, 55.287621, 56.419716>,  <62.150124, 55.224632, 56.128952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.882751, 55.287621, 56.419716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009363, -0.979034, 0.203483,
		0.743715, 0.129208, 0.655892,
		-0.668432, 0.157474, 0.726912,
		61.682220, 55.334862, 56.637791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.493282, 55.847157, 56.403965>,  <62.150124, 55.224632, 56.128952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.493282, 55.847157, 56.403965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.388222, 56.227589, 56.469025>,  <62.325188, 56.455849, 56.508060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.388222, 56.227589, 56.469025>,  <62.493282, 55.847157, 56.403965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.388222, 56.227589, 56.469025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841137, -0.143095, -0.521548,
		-0.472762, -0.273794, 0.837576,
		-0.262650, 0.951084, 0.162648,
		62.309425, 56.512913, 56.517818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.838596, 55.956875, 55.865299>,  <62.493282, 55.847157, 56.403965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.838596, 55.956875, 55.865299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.552803, 56.230911, 55.922096>,  <62.381329, 56.395332, 55.956173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.552803, 56.230911, 55.922096>,  <62.838596, 55.956875, 55.865299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.552803, 56.230911, 55.922096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002599, 0.200346, -0.979722,
		-0.699648, -0.700364, -0.141363,
		-0.714483, 0.685093, 0.141992,
		62.338459, 56.436440, 55.964695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.055065, 55.356861, 56.362396>,  <62.838596, 55.956875, 55.865299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.055065, 55.356861, 56.362396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.381561, 55.394062, 56.134323>,  <63.577457, 55.416382, 55.997478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.381561, 55.394062, 56.134323>,  <63.055065, 55.356861, 56.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.381561, 55.394062, 56.134323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576801, -0.186760, 0.795249,
		-0.032531, -0.977994, -0.206081,
		0.816236, 0.092998, -0.570184,
		63.626431, 55.421963, 55.963268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.543510, 55.035152, 56.784607>,  <63.055065, 55.356861, 56.362396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.543510, 55.035152, 56.784607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.763130, 55.213444, 56.501801>,  <63.894901, 55.320419, 56.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.763130, 55.213444, 56.501801>,  <63.543510, 55.035152, 56.784607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.763130, 55.213444, 56.501801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791714, -0.006278, 0.610860,
		0.267841, -0.895144, -0.356339,
		0.549045, 0.445732, -0.707017,
		63.927845, 55.347164, 56.289696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.135864, 54.615849, 56.682522>,  <63.543510, 55.035152, 56.784607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.135864, 54.615849, 56.682522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.247101, 54.987724, 56.585899>,  <64.313843, 55.210850, 56.527924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.247101, 54.987724, 56.585899>,  <64.135864, 54.615849, 56.682522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.247101, 54.987724, 56.585899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681815, -0.013903, 0.731392,
		0.676608, -0.368086, -0.637741,
		0.278082, 0.929688, -0.241560,
		64.330528, 55.266632, 56.513432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.876129, 54.604187, 56.660183>,  <64.135864, 54.615849, 56.682522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.876129, 54.604187, 56.660183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732918, 54.965794, 56.753632>,  <64.646988, 55.182758, 56.809700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.732918, 54.965794, 56.753632>,  <64.876129, 54.604187, 56.660183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.732918, 54.965794, 56.753632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601155, 0.031730, 0.798502,
		0.714444, 0.426324, -0.554812,
		-0.358025, 0.904014, 0.233618,
		64.625511, 55.237000, 56.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.394157, 55.096119, 56.481789>,  <64.876129, 54.604187, 56.660183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.394157, 55.096119, 56.481789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.140923, 55.151016, 56.786514>,  <64.988983, 55.183956, 56.969349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.140923, 55.151016, 56.786514>,  <65.394157, 55.096119, 56.481789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.140923, 55.151016, 56.786514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772926, 0.058455, 0.631798,
		0.042179, 0.988811, -0.143087,
		-0.633093, 0.137244, 0.761812,
		64.950996, 55.192188, 57.015057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.691483, 55.642601, 56.752102>,  <65.394157, 55.096119, 56.481789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.691483, 55.642601, 56.752102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496788, 55.427090, 57.027145>,  <65.379974, 55.297783, 57.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.496788, 55.427090, 57.027145>,  <65.691483, 55.642601, 56.752102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.496788, 55.427090, 57.027145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800889, 0.039083, 0.597536,
		-0.348814, 0.841540, 0.412479,
		-0.486730, -0.538779, 0.687613,
		65.350769, 55.265457, 57.233429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.609810, 55.804379, 57.518036>,  <65.691483, 55.642601, 56.752102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.609810, 55.804379, 57.518036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626877, 55.404907, 57.506638>,  <65.637115, 55.165222, 57.499798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.626877, 55.404907, 57.506638>,  <65.609810, 55.804379, 57.518036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.626877, 55.404907, 57.506638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929647, 0.029241, 0.367288,
		-0.365971, -0.042165, 0.929670,
		0.042671, -0.998683, -0.028497,
		65.639679, 55.105301, 57.498089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.734016, 55.459343, 58.243877>,  <65.609810, 55.804379, 57.518036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.734016, 55.459343, 58.243877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898140, 55.253166, 57.942955>,  <65.996613, 55.129459, 57.762402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898140, 55.253166, 57.942955>,  <65.734016, 55.459343, 58.243877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.898140, 55.253166, 57.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910128, 0.283484, 0.302167,
		0.057516, -0.808676, 0.585436,
		0.410317, -0.515442, -0.752303,
		66.021233, 55.098534, 57.717262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.215126, 55.009171, 58.453388>,  <65.734016, 55.459343, 58.243877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.215126, 55.009171, 58.453388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.343948, 55.126766, 58.093422>,  <66.421242, 55.197323, 57.877441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.343948, 55.126766, 58.093422>,  <66.215126, 55.009171, 58.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.343948, 55.126766, 58.093422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793141, 0.435235, 0.426024,
		0.516922, -0.850965, -0.093004,
		0.322053, 0.293987, -0.899918,
		66.440567, 55.214962, 57.823448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.872231, 54.718441, 58.293655>,  <66.215126, 55.009171, 58.453388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.872231, 54.718441, 58.293655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807526, 55.072830, 58.119812>,  <66.768700, 55.285461, 58.015507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807526, 55.072830, 58.119812>,  <66.872231, 54.718441, 58.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.807526, 55.072830, 58.119812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781704, 0.383848, 0.491528,
		0.602305, -0.260225, -0.754660,
		-0.161767, 0.885970, -0.434612,
		66.758995, 55.338623, 57.989429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.482933, 54.941807, 57.940441>,  <66.872231, 54.718441, 58.293655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.482933, 54.941807, 57.940441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238876, 55.209656, 58.109833>,  <67.092445, 55.370365, 58.211468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238876, 55.209656, 58.109833>,  <67.482933, 54.941807, 57.940441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.238876, 55.209656, 58.109833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748122, 0.310951, 0.586194,
		0.260847, 0.674474, -0.690683,
		-0.610141, 0.669622, 0.423478,
		67.055832, 55.410542, 58.236877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.925644, 55.336262, 58.339558>,  <67.482933, 54.941807, 57.940441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.925644, 55.336262, 58.339558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589241, 55.519241, 58.455116>,  <67.387398, 55.629028, 58.524452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589241, 55.519241, 58.455116>,  <67.925644, 55.336262, 58.339558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.589241, 55.519241, 58.455116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510286, 0.493199, 0.704531,
		0.179808, 0.739927, -0.648211,
		-0.840998, 0.457453, 0.288893,
		67.336945, 55.656479, 58.541782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.146652, 55.987270, 58.541527>,  <67.925644, 55.336262, 58.339558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.146652, 55.987270, 58.541527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.792824, 55.916077, 58.713966>,  <67.580528, 55.873360, 58.817429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.792824, 55.916077, 58.713966>,  <68.146652, 55.987270, 58.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.792824, 55.916077, 58.713966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375688, 0.275813, 0.884752,
		-0.276376, 0.944589, -0.177111,
		-0.884576, -0.177986, 0.431099,
		67.527451, 55.862682, 58.843296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.015053, 56.025524, 57.822552>,  <68.146652, 55.987270, 58.541527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.015053, 56.025524, 57.822552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133636, 55.652283, 57.741135>,  <68.204788, 55.428337, 57.692284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.133636, 55.652283, 57.741135>,  <68.015053, 56.025524, 57.822552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.133636, 55.652283, 57.741135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933172, -0.237674, -0.269631,
		0.203216, 0.269879, -0.941206,
		0.296468, -0.933101, -0.203544,
		68.222580, 55.372353, 57.680073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.040939, 55.852547, 57.077068>,  <68.015053, 56.025524, 57.822552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.040939, 55.852547, 57.077068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.965561, 55.549473, 57.326996>,  <67.920334, 55.367626, 57.476952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.965561, 55.549473, 57.326996>,  <68.040939, 55.852547, 57.077068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.965561, 55.549473, 57.326996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918471, -0.089276, -0.385281,
		0.347704, -0.646482, -0.679090,
		-0.188451, -0.757688, 0.624816,
		67.909027, 55.322166, 57.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.494591, 55.975868, 56.448345>,  <68.040939, 55.852547, 57.077068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.494591, 55.975868, 56.448345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558983, 56.368469, 56.489799>,  <68.597618, 56.604031, 56.514671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.558983, 56.368469, 56.489799>,  <68.494591, 55.975868, 56.448345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.558983, 56.368469, 56.489799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952770, -0.181939, 0.243160,
		0.257517, 0.059594, -0.964434,
		0.160977, 0.981502, 0.103631,
		68.607277, 56.662918, 56.520889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.056862, 56.139717, 56.043449>,  <68.494591, 55.975868, 56.448345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.056862, 56.139717, 56.043449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.010414, 56.377800, 56.361504>,  <68.982544, 56.520649, 56.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.010414, 56.377800, 56.361504>,  <69.056862, 56.139717, 56.043449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.010414, 56.377800, 56.361504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926635, -0.223297, 0.302468,
		0.357583, 0.771922, -0.525614,
		-0.116114, 0.595210, 0.795137,
		68.975578, 56.556362, 56.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.606140, 56.580666, 55.968475>,  <69.056862, 56.139717, 56.043449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.606140, 56.580666, 55.968475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.462944, 56.583881, 56.341949>,  <69.377022, 56.585812, 56.566036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.462944, 56.583881, 56.341949>,  <69.606140, 56.580666, 55.968475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.462944, 56.583881, 56.341949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930339, -0.081971, 0.357421,
		0.079410, 0.996602, 0.021863,
		-0.357999, 0.008043, 0.933687,
		69.355545, 56.586292, 56.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.968666, 57.030842, 56.402149>,  <69.606140, 56.580666, 55.968475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.968666, 57.030842, 56.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.820671, 56.790730, 56.685776>,  <69.731873, 56.646664, 56.855953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.820671, 56.790730, 56.685776>,  <69.968666, 57.030842, 56.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.820671, 56.790730, 56.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865667, 0.054299, 0.497667,
		-0.337242, 0.797943, 0.499555,
		-0.369984, -0.600282, 0.709065,
		69.709679, 56.610645, 56.898495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.991280, 57.375961, 57.099308>,  <69.968666, 57.030842, 56.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.991280, 57.375961, 57.099308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.051346, 56.980507, 57.096352>,  <70.087387, 56.743237, 57.094578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.051346, 56.980507, 57.096352>,  <69.991280, 57.375961, 57.099308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.051346, 56.980507, 57.096352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868128, 0.128274, 0.479479,
		-0.473081, -0.078413, 0.877522,
		0.150160, -0.988634, -0.007388,
		70.096397, 56.683918, 57.094135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.267014, 57.217804, 57.670555>,  <69.991280, 57.375961, 57.099308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.267014, 57.217804, 57.670555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.381264, 56.971592, 57.376740>,  <70.449814, 56.823864, 57.200451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.381264, 56.971592, 57.376740>,  <70.267014, 57.217804, 57.670555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.381264, 56.971592, 57.376740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952850, 0.100481, 0.286321,
		-0.102431, -0.781685, 0.615205,
		0.285629, -0.615526, -0.734536,
		70.466949, 56.786934, 57.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.857414, 57.122837, 58.142559>,  <70.267014, 57.217804, 57.670555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.857414, 57.122837, 58.142559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.765167, 57.042809, 58.523460>,  <69.709816, 56.994789, 58.752003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.765167, 57.042809, 58.523460>,  <69.857414, 57.122837, 58.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.765167, 57.042809, 58.523460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957015, -0.223539, 0.184806,
		0.175891, 0.953939, 0.243026,
		-0.230620, -0.200074, 0.952253,
		69.695984, 56.982788, 58.809135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.238457, 57.533295, 58.554245>,  <69.857414, 57.122837, 58.142559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.238457, 57.533295, 58.554245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.162422, 57.171070, 58.705948>,  <70.116806, 56.953735, 58.796970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.162422, 57.171070, 58.705948>,  <70.238457, 57.533295, 58.554245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.162422, 57.171070, 58.705948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978988, -0.203883, 0.003841,
		0.073846, 0.372018, 0.925283,
		-0.190079, -0.905557, 0.379257,
		70.105400, 56.899403, 58.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.679756, 57.397396, 59.120121>,  <70.238457, 57.533295, 58.554245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.679756, 57.397396, 59.120121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.566849, 57.056973, 58.943024>,  <70.499107, 56.852718, 58.836765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.566849, 57.056973, 58.943024>,  <70.679756, 57.397396, 59.120121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.566849, 57.056973, 58.943024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959072, -0.261142, -0.109478,
		-0.022448, -0.455529, 0.889938,
		-0.282271, -0.851057, -0.442747,
		70.482170, 56.801655, 58.810200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.933540, 56.858879, 59.490135>,  <70.679756, 57.397396, 59.120121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.933540, 56.858879, 59.490135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.914658, 56.828342, 59.091751>,  <70.903328, 56.810020, 58.852718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.914658, 56.828342, 59.091751>,  <70.933540, 56.858879, 59.490135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.914658, 56.828342, 59.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997739, -0.051356, -0.043345,
		-0.047840, -0.995758, 0.078591,
		-0.047198, -0.076340, -0.995964,
		70.900497, 56.805439, 58.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.741791, 56.816765, 59.563488>,  <70.933540, 56.858879, 59.490135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.741791, 56.816765, 59.563488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108604, 56.726376, 59.694923>,  <72.328697, 56.672142, 59.773785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.108604, 56.726376, 59.694923>,  <71.741791, 56.816765, 59.563488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.108604, 56.726376, 59.694923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375399, 0.767188, -0.520095,
		-0.134562, 0.600301, 0.788373,
		0.917043, -0.225970, 0.328586,
		72.383720, 56.658585, 59.793499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.075996, 57.411156, 60.048325>,  <71.741791, 56.816765, 59.563488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.075996, 57.411156, 60.048325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.326088, 57.177902, 59.840851>,  <72.476143, 57.037949, 59.716366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.326088, 57.177902, 59.840851>,  <72.075996, 57.411156, 60.048325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.326088, 57.177902, 59.840851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436389, 0.812224, -0.387114,
		0.647027, 0.015690, 0.762306,
		0.625237, -0.583135, -0.518684,
		72.513657, 57.002960, 59.685246>
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
