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
	<36.752392, 54.147396, 50.520779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491127, 53.920242, 50.320427>,  <36.334366, 53.783951, 50.200214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491127, 53.920242, 50.320427>,  <36.752392, 54.147396, 50.520779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491127, 53.920242, 50.320427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398580, -0.820266, 0.410240,
		-0.643824, 0.068315, 0.762118,
		-0.653166, -0.567887, -0.500878,
		36.295177, 53.749878, 50.170162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366634, 53.628750, 51.016888>,  <36.752392, 54.147396, 50.520779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366634, 53.628750, 51.016888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423473, 53.505577, 50.640594>,  <36.457577, 53.431675, 50.414818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423473, 53.505577, 50.640594>,  <36.366634, 53.628750, 51.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423473, 53.505577, 50.640594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502755, -0.796216, 0.336566,
		-0.852670, -0.520786, 0.041673,
		0.142098, -0.307931, -0.940737,
		36.466103, 53.413197, 50.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213013, 52.888359, 51.032486>,  <36.366634, 53.628750, 51.016888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213013, 52.888359, 51.032486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444416, 53.019348, 50.733665>,  <36.583260, 53.097942, 50.554375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444416, 53.019348, 50.733665>,  <36.213013, 52.888359, 51.032486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444416, 53.019348, 50.733665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489157, -0.872189, -0.003523,
		-0.652724, -0.363388, -0.664756,
		0.578513, 0.327469, -0.747052,
		36.617970, 53.117588, 50.509548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334118, 52.612213, 51.829727>,  <36.213013, 52.888359, 51.032486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334118, 52.612213, 51.829727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130650, 52.541634, 51.492653>,  <36.008568, 52.499287, 51.290409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130650, 52.541634, 51.492653>,  <36.334118, 52.612213, 51.829727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130650, 52.541634, 51.492653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631230, 0.589184, -0.504392,
		0.585495, -0.788498, -0.188322,
		-0.508668, -0.176445, -0.842689,
		35.978050, 52.488701, 51.239845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067341, 52.783390, 51.987286>,  <36.334118, 52.612213, 51.829727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067341, 52.783390, 51.987286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295265, 52.506332, 52.164169>,  <37.432022, 52.340096, 52.270302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295265, 52.506332, 52.164169>,  <37.067341, 52.783390, 51.987286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295265, 52.506332, 52.164169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380097, 0.699243, 0.605463,
		-0.728585, -0.176918, 0.661712,
		0.569815, -0.692646, 0.442212,
		37.466209, 52.298538, 52.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943344, 52.785500, 52.662937>,  <37.067341, 52.783390, 51.987286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943344, 52.785500, 52.662937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328609, 52.685024, 52.624527>,  <37.559769, 52.624741, 52.601482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328609, 52.685024, 52.624527>,  <36.943344, 52.785500, 52.662937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328609, 52.685024, 52.624527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250245, 0.706496, 0.661997,
		-0.098445, -0.661641, 0.743330,
		0.963165, -0.251185, -0.096021,
		37.617558, 52.609669, 52.595722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255642, 52.873878, 53.271248>,  <36.943344, 52.785500, 52.662937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255642, 52.873878, 53.271248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560303, 52.882542, 53.012199>,  <37.743099, 52.887741, 52.856770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560303, 52.882542, 53.012199>,  <37.255642, 52.873878, 53.271248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560303, 52.882542, 53.012199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398146, 0.772885, 0.494094,
		0.511239, -0.634177, 0.580047,
		0.761652, 0.021657, -0.647624,
		37.788799, 52.889038, 52.817913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940140, 53.260456, 53.367455>,  <37.255642, 52.873878, 53.271248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940140, 53.260456, 53.367455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630287, 53.323746, 53.122536>,  <37.444378, 53.361721, 52.975582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630287, 53.323746, 53.122536>,  <37.940140, 53.260456, 53.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630287, 53.323746, 53.122536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603321, -0.475178, 0.640476,
		-0.189612, 0.865546, 0.463548,
		-0.774630, 0.158226, -0.612302,
		37.397900, 53.371212, 52.938847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441242, 52.776039, 53.685284>,  <37.940140, 53.260456, 53.367455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441242, 52.776039, 53.685284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142883, 52.513954, 53.733185>,  <37.963867, 52.356705, 53.761925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142883, 52.513954, 53.733185>,  <38.441242, 52.776039, 53.685284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142883, 52.513954, 53.733185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472362, 0.647119, 0.598424,
		-0.469590, 0.389792, -0.792179,
		-0.745895, -0.655209, 0.119757,
		37.919113, 52.317390, 53.769112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761082, 53.459877, 53.508404>,  <38.441242, 52.776039, 53.685284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761082, 53.459877, 53.508404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039738, 53.258030, 53.712387>,  <39.206932, 53.136921, 53.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039738, 53.258030, 53.712387>,  <38.761082, 53.459877, 53.508404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039738, 53.258030, 53.712387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698076, -0.312836, 0.644068,
		-0.165476, -0.804671, -0.570195,
		0.696640, -0.504617, 0.509955,
		39.248730, 53.106644, 53.865372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100464, 53.991207, 53.106922>,  <38.761082, 53.459877, 53.508404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100464, 53.991207, 53.106922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256065, 53.768967, 52.812988>,  <39.349426, 53.635620, 52.636627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256065, 53.768967, 52.812988>,  <39.100464, 53.991207, 53.106922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256065, 53.768967, 52.812988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800136, 0.599097, -0.029402,
		0.456573, -0.576530, 0.677610,
		0.389002, -0.555605, -0.734834,
		39.372765, 53.602283, 52.592537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739182, 53.873859, 53.354759>,  <39.100464, 53.991207, 53.106922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739182, 53.873859, 53.354759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729977, 53.845276, 52.955887>,  <39.724453, 53.828125, 52.716564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729977, 53.845276, 52.955887>,  <39.739182, 53.873859, 53.354759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729977, 53.845276, 52.955887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948391, 0.313980, -0.044388,
		0.316266, -0.946736, 0.060546,
		-0.023013, -0.071460, -0.997178,
		39.723072, 53.823837, 52.656734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430416, 53.491074, 53.313190>,  <39.739182, 53.873859, 53.354759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430416, 53.491074, 53.313190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510731, 53.877609, 53.248859>,  <40.558918, 54.109531, 53.210262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510731, 53.877609, 53.248859>,  <40.430416, 53.491074, 53.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510731, 53.877609, 53.248859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729075, -0.037751, 0.683392,
		0.654320, -0.254471, -0.712117,
		0.200787, 0.966343, -0.160827,
		40.570969, 54.167511, 53.200611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194725, 53.607571, 53.261944>,  <40.430416, 53.491074, 53.313190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194725, 53.607571, 53.261944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048344, 53.969524, 53.348904>,  <40.960514, 54.186695, 53.401077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048344, 53.969524, 53.348904>,  <41.194725, 53.607571, 53.261944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048344, 53.969524, 53.348904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735803, 0.138309, 0.662922,
		0.569799, 0.402562, -0.716431,
		-0.365956, 0.904884, 0.217397,
		40.938557, 54.240990, 53.414124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628635, 54.181843, 52.970219>,  <41.194725, 53.607571, 53.261944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628635, 54.181843, 52.970219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467957, 54.182995, 53.336525>,  <41.371552, 54.183685, 53.556309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467957, 54.182995, 53.336525>,  <41.628635, 54.181843, 52.970219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467957, 54.182995, 53.336525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912318, 0.088043, 0.399904,
		-0.079474, 0.996113, -0.037995,
		-0.401695, 0.002882, 0.915769,
		41.347446, 54.183861, 53.611256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638329, 54.841091, 53.449093>,  <41.628635, 54.181843, 52.970219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638329, 54.841091, 53.449093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648808, 54.493851, 53.647369>,  <41.655094, 54.285507, 53.766335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648808, 54.493851, 53.647369>,  <41.638329, 54.841091, 53.449093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648808, 54.493851, 53.647369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909951, 0.226011, 0.347717,
		-0.413887, 0.441944, 0.795854,
		0.026201, -0.868104, 0.495690,
		41.656670, 54.233421, 53.796078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987537, 54.936230, 54.171654>,  <41.638329, 54.841091, 53.449093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987537, 54.936230, 54.171654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065193, 54.565315, 54.043625>,  <42.111786, 54.342766, 53.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065193, 54.565315, 54.043625>,  <41.987537, 54.936230, 54.171654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065193, 54.565315, 54.043625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980966, 0.184804, 0.059612,
		0.003873, -0.325551, 0.945517,
		0.194142, -0.927289, -0.320070,
		42.123436, 54.287128, 53.947605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417721, 54.692650, 54.614975>,  <41.987537, 54.936230, 54.171654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417721, 54.692650, 54.614975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465839, 54.530708, 54.252403>,  <42.494713, 54.433544, 54.034859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465839, 54.530708, 54.252403>,  <42.417721, 54.692650, 54.614975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465839, 54.530708, 54.252403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989076, 0.127225, 0.074442,
		0.085183, -0.905488, 0.415735,
		0.120299, -0.404853, -0.906434,
		42.501930, 54.409252, 53.980473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017635, 54.112171, 54.622322>,  <42.417721, 54.692650, 54.614975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017635, 54.112171, 54.622322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936321, 54.228767, 54.248432>,  <42.887535, 54.298725, 54.024097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936321, 54.228767, 54.248432>,  <43.017635, 54.112171, 54.622322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936321, 54.228767, 54.248432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976037, -0.015376, -0.217063,
		-0.077645, -0.956450, -0.281381,
		-0.203283, 0.291492, -0.934724,
		42.875336, 54.316216, 53.968014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327232, 53.724110, 54.046814>,  <43.017635, 54.112171, 54.622322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327232, 53.724110, 54.046814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291172, 54.116486, 53.977955>,  <43.269535, 54.351910, 53.936638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291172, 54.116486, 53.977955>,  <43.327232, 53.724110, 54.046814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291172, 54.116486, 53.977955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973443, 0.050266, -0.223345,
		-0.210434, -0.187714, -0.959417,
		-0.090151, 0.980937, -0.172151,
		43.264126, 54.410767, 53.926308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828465, 53.832119, 53.484116>,  <43.327232, 53.724110, 54.046814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828465, 53.832119, 53.484116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746773, 54.171505, 53.679420>,  <43.697758, 54.375137, 53.796604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746773, 54.171505, 53.679420>,  <43.828465, 53.832119, 53.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746773, 54.171505, 53.679420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963575, 0.262212, -0.052620,
		-0.172674, 0.459728, -0.871111,
		-0.204225, 0.848467, 0.488259,
		43.685505, 54.426044, 53.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233437, 54.236271, 53.139240>,  <43.828465, 53.832119, 53.484116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233437, 54.236271, 53.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158085, 54.429558, 53.481239>,  <44.112873, 54.545528, 53.686440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158085, 54.429558, 53.481239>,  <44.233437, 54.236271, 53.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158085, 54.429558, 53.481239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929459, 0.368907, -0.003710,
		-0.317207, 0.793984, -0.518622,
		-0.188378, 0.483215, 0.854995,
		44.101570, 54.574524, 53.737740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549351, 54.889492, 53.093822>,  <44.233437, 54.236271, 53.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549351, 54.889492, 53.093822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534103, 54.783901, 53.479332>,  <44.524956, 54.720547, 53.710640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534103, 54.783901, 53.479332>,  <44.549351, 54.889492, 53.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534103, 54.783901, 53.479332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982953, 0.163692, 0.083711,
		-0.179860, 0.950538, 0.253236,
		-0.038118, -0.263976, 0.963776,
		44.522667, 54.704708, 53.768463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959888, 55.410809, 53.606434>,  <44.549351, 54.889492, 53.093822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959888, 55.410809, 53.606434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925335, 55.035606, 53.740707>,  <44.904602, 54.810486, 53.821270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925335, 55.035606, 53.740707>,  <44.959888, 55.410809, 53.606434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925335, 55.035606, 53.740707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937798, 0.037170, 0.345187,
		-0.336265, 0.344618, 0.876450,
		-0.086380, -0.938007, 0.335681,
		44.899422, 54.754204, 53.841412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537075, 55.164310, 53.901596>,  <44.959888, 55.410809, 53.606434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537075, 55.164310, 53.901596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428013, 54.792812, 54.002068>,  <45.362576, 54.569912, 54.062351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428013, 54.792812, 54.002068>,  <45.537075, 55.164310, 53.901596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428013, 54.792812, 54.002068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946003, -0.211214, 0.245901,
		-0.175328, 0.304658, 0.936186,
		-0.272651, -0.928748, 0.251176,
		45.346218, 54.514187, 54.077419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737480, 54.886715, 54.638969>,  <45.537075, 55.164310, 53.901596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737480, 54.886715, 54.638969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719807, 54.615318, 54.345657>,  <45.709202, 54.452480, 54.169670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.719807, 54.615318, 54.345657>,  <45.737480, 54.886715, 54.638969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719807, 54.615318, 54.345657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976092, -0.185680, 0.112994,
		-0.212821, -0.710754, 0.670474,
		-0.044183, -0.678492, -0.733278,
		45.706551, 54.411770, 54.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047443, 54.274181, 54.833771>,  <45.737480, 54.886715, 54.638969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047443, 54.274181, 54.833771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095097, 54.306583, 54.437943>,  <46.123688, 54.326023, 54.200447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095097, 54.306583, 54.437943>,  <46.047443, 54.274181, 54.833771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095097, 54.306583, 54.437943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992515, 0.017266, 0.120900,
		0.026879, -0.996564, -0.078338,
		0.119132, 0.081002, -0.989569,
		46.130836, 54.330883, 54.141071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536354, 53.868355, 54.675991>,  <46.047443, 54.274181, 54.833771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536354, 53.868355, 54.675991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580204, 54.111214, 54.361195>,  <46.606514, 54.256927, 54.172318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580204, 54.111214, 54.361195>,  <46.536354, 53.868355, 54.675991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580204, 54.111214, 54.361195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978530, 0.073110, 0.192703,
		0.174535, -0.791221, -0.586094,
		0.109622, 0.607144, -0.786994,
		46.613091, 54.293358, 54.125095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937660, 53.524406, 54.300240>,  <46.536354, 53.868355, 54.675991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937660, 53.524406, 54.300240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968250, 53.918327, 54.237862>,  <46.986603, 54.154678, 54.200436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968250, 53.918327, 54.237862>,  <46.937660, 53.524406, 54.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968250, 53.918327, 54.237862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996246, -0.081834, -0.028247,
		-0.040579, -0.153195, -0.987363,
		0.076473, 0.984802, -0.155941,
		46.991192, 54.213768, 54.191078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.275536, 53.790798, 53.616764>,  <46.937660, 53.524406, 54.300240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.275536, 53.790798, 53.616764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351475, 53.983227, 53.959114>,  <47.397038, 54.098686, 54.164524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.351475, 53.983227, 53.959114>,  <47.275536, 53.790798, 53.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.351475, 53.983227, 53.959114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950960, -0.306919, -0.038423,
		0.244201, 0.821200, -0.515749,
		0.189846, 0.481074, 0.855878,
		47.408428, 54.127548, 54.215878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740021, 54.415459, 53.535851>,  <47.275536, 53.790798, 53.616764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740021, 54.415459, 53.535851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760937, 54.246292, 53.897713>,  <47.773487, 54.144791, 54.114830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760937, 54.246292, 53.897713>,  <47.740021, 54.415459, 53.535851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760937, 54.246292, 53.897713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978688, -0.158441, -0.130639,
		0.198585, 0.892208, 0.405621,
		0.052290, -0.422919, 0.904657,
		47.776623, 54.119415, 54.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.345440, 54.537975, 53.210651>,  <47.740021, 54.415459, 53.535851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.345440, 54.537975, 53.210651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.062897, 54.723709, 52.996941>,  <47.893372, 54.835148, 52.868713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.062897, 54.723709, 52.996941>,  <48.345440, 54.537975, 53.210651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.062897, 54.723709, 52.996941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706683, -0.505944, 0.494591,
		-0.040660, 0.726923, 0.685514,
		-0.706361, 0.464331, -0.534276,
		47.850990, 54.863007, 52.836658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.126106, 54.547798, 53.187298>,  <48.345440, 54.537975, 53.210651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.126106, 54.547798, 53.187298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.218945, 54.532631, 53.576080>,  <49.274647, 54.523529, 53.809349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.218945, 54.532631, 53.576080>,  <49.126106, 54.547798, 53.187298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.218945, 54.532631, 53.576080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536316, -0.828636, -0.160396,
		0.811478, 0.558501, -0.171984,
		0.232094, -0.037920, 0.971954,
		49.288574, 54.521255, 53.867668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.741890, 54.176105, 53.152344>,  <49.126106, 54.547798, 53.187298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.741890, 54.176105, 53.152344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.713867, 54.210953, 53.549835>,  <49.697052, 54.231861, 53.788330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.713867, 54.210953, 53.549835>,  <49.741890, 54.176105, 53.152344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.713867, 54.210953, 53.549835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696114, -0.709258, 0.111254,
		0.714504, 0.699545, -0.010951,
		-0.070060, 0.087115, 0.993732,
		49.692848, 54.237087, 53.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.436001, 54.607117, 52.823395>,  <49.741890, 54.176105, 53.152344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.436001, 54.607117, 52.823395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.555023, 54.986000, 52.775635>,  <50.626438, 55.213329, 52.746979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.555023, 54.986000, 52.775635>,  <50.436001, 54.607117, 52.823395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.555023, 54.986000, 52.775635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779609, -0.168884, 0.603065,
		0.551063, -0.272533, -0.788705,
		0.297555, 0.947209, -0.119403,
		50.644291, 55.270164, 52.739815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.214001, 54.703644, 52.608089>,  <50.436001, 54.607117, 52.823395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.214001, 54.703644, 52.608089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.105442, 55.019600, 52.828060>,  <51.040306, 55.209171, 52.960045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.105442, 55.019600, 52.828060>,  <51.214001, 54.703644, 52.608089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.105442, 55.019600, 52.828060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848766, -0.072986, 0.523707,
		0.453807, 0.608894, -0.650621,
		-0.271396, 0.789887, 0.549930,
		51.024025, 55.256565, 52.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.795979, 55.291588, 52.466972>,  <51.214001, 54.703644, 52.608089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.795979, 55.291588, 52.466972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.635540, 55.308548, 52.832993>,  <51.539276, 55.318726, 53.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.635540, 55.308548, 52.832993>,  <51.795979, 55.291588, 52.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.635540, 55.308548, 52.832993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910143, -0.094669, 0.403333,
		0.103731, 0.994605, -0.000622,
		-0.401098, 0.042404, 0.915053,
		51.515209, 55.321270, 53.107510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.956173, 55.952988, 52.769234>,  <51.795979, 55.291588, 52.466972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.956173, 55.952988, 52.769234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.930618, 55.668720, 53.049480>,  <51.915283, 55.498158, 53.217628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.930618, 55.668720, 53.049480>,  <51.956173, 55.952988, 52.769234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.930618, 55.668720, 53.049480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940166, 0.192576, 0.281074,
		-0.334673, 0.676654, 0.655846,
		-0.063889, -0.710672, 0.700617,
		51.911453, 55.455517, 53.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.958054, 56.217274, 53.522820>,  <51.956173, 55.952988, 52.769234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.958054, 56.217274, 53.522820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.129536, 55.862522, 53.453945>,  <52.232426, 55.649670, 53.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.129536, 55.862522, 53.453945>,  <51.958054, 56.217274, 53.522820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.129536, 55.862522, 53.453945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898859, 0.399539, 0.180060,
		-0.090895, -0.231966, 0.968468,
		0.428709, -0.886882, -0.172189,
		52.258148, 55.596458, 53.402290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.414139, 56.074837, 54.027008>,  <51.958054, 56.217274, 53.522820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.414139, 56.074837, 54.027008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.548794, 55.834961, 53.736618>,  <52.629585, 55.691036, 53.562382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.548794, 55.834961, 53.736618>,  <52.414139, 56.074837, 54.027008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.548794, 55.834961, 53.736618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941395, 0.196941, 0.273843,
		-0.021247, -0.775617, 0.630846,
		0.336636, -0.599693, -0.725978,
		52.649784, 55.655052, 53.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.929859, 55.554749, 54.288067>,  <52.414139, 56.074837, 54.027008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.929859, 55.554749, 54.288067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.025162, 55.642685, 53.909668>,  <53.082344, 55.695446, 53.682629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.025162, 55.642685, 53.909668>,  <52.929859, 55.554749, 54.288067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.025162, 55.642685, 53.909668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881729, 0.359402, 0.305589,
		0.407173, -0.906918, -0.108213,
		0.238252, 0.219842, -0.945995,
		53.096638, 55.708637, 53.625870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.699524, 55.470913, 54.225060>,  <52.929859, 55.554749, 54.288067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.699524, 55.470913, 54.225060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.551910, 55.708481, 53.939102>,  <53.463345, 55.851021, 53.767529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.551910, 55.708481, 53.939102>,  <53.699524, 55.470913, 54.225060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.551910, 55.708481, 53.939102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894667, 0.435367, -0.100135,
		0.251771, -0.676547, -0.692023,
		-0.369030, 0.593919, -0.714897,
		53.441200, 55.886658, 53.724632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.203049, 55.339828, 53.717686>,  <53.699524, 55.470913, 54.225060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.203049, 55.339828, 53.717686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028961, 55.699947, 53.720787>,  <53.924511, 55.916019, 53.722649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.028961, 55.699947, 53.720787>,  <54.203049, 55.339828, 53.717686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.028961, 55.699947, 53.720787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898953, 0.434061, 0.058950,
		0.049708, 0.032622, -0.998231,
		-0.435216, 0.900292, 0.007749,
		53.898396, 55.970036, 53.723110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.596569, 55.720890, 53.301651>,  <54.203049, 55.339828, 53.717686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.596569, 55.720890, 53.301651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.420395, 55.880878, 53.623158>,  <54.314690, 55.976871, 53.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.420395, 55.880878, 53.623158>,  <54.596569, 55.720890, 53.301651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.420395, 55.880878, 53.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880018, 0.369566, 0.298312,
		-0.177730, 0.838717, -0.514748,
		-0.440433, 0.399968, 0.803769,
		54.288265, 56.000870, 53.864288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.740475, 56.430779, 53.283520>,  <54.596569, 55.720890, 53.301651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.740475, 56.430779, 53.283520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.670418, 56.299450, 53.654793>,  <54.628384, 56.220654, 53.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.670418, 56.299450, 53.654793>,  <54.740475, 56.430779, 53.283520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.670418, 56.299450, 53.654793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902767, 0.322633, 0.284465,
		-0.392860, 0.887756, 0.239895,
		-0.175138, -0.328325, 0.928186,
		54.617878, 56.200951, 53.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.853146, 56.915997, 53.863487>,  <54.740475, 56.430779, 53.283520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.853146, 56.915997, 53.863487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.925774, 56.542259, 53.986153>,  <54.969349, 56.318016, 54.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.925774, 56.542259, 53.986153>,  <54.853146, 56.915997, 53.863487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.925774, 56.542259, 53.986153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926272, 0.267218, 0.265734,
		-0.330231, 0.235801, 0.913972,
		0.181570, -0.934341, 0.306659,
		54.980244, 56.261955, 54.078152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.608387, 56.762058, 53.657200>,  <54.853146, 56.915997, 53.863487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.608387, 56.762058, 53.657200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.786026, 56.956474, 53.356125>,  <55.892609, 57.073124, 53.175480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.786026, 56.956474, 53.356125>,  <55.608387, 56.762058, 53.657200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.786026, 56.956474, 53.356125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780478, 0.202731, 0.591401,
		0.440040, -0.850095, -0.289314,
		0.444094, 0.486043, -0.752690,
		55.919254, 57.102287, 53.130318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.278118, 56.439487, 53.533302>,  <55.608387, 56.762058, 53.657200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.278118, 56.439487, 53.533302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.253998, 56.827343, 53.438499>,  <56.239525, 57.060055, 53.381618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.253998, 56.827343, 53.438499>,  <56.278118, 56.439487, 53.533302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.253998, 56.827343, 53.438499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815088, 0.184888, 0.549043,
		0.576191, -0.160074, -0.801486,
		-0.060297, 0.969635, -0.237005,
		56.235909, 57.118233, 53.367397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.871994, 56.682201, 53.296955>,  <56.278118, 56.439487, 53.533302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.871994, 56.682201, 53.296955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.696487, 57.002491, 53.460087>,  <56.591183, 57.194664, 53.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.696487, 57.002491, 53.460087>,  <56.871994, 56.682201, 53.296955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.696487, 57.002491, 53.460087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825745, 0.180260, 0.534463,
		0.354442, 0.571267, -0.740287,
		-0.438765, 0.800725, 0.407829,
		56.564857, 57.242710, 53.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.424999, 57.072628, 53.326225>,  <56.871994, 56.682201, 53.296955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.424999, 57.072628, 53.326225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159142, 57.235317, 53.576931>,  <56.999626, 57.332932, 53.727352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.159142, 57.235317, 53.576931>,  <57.424999, 57.072628, 53.326225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.159142, 57.235317, 53.576931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747022, 0.377919, 0.546933,
		-0.014416, 0.831719, -0.555010,
		-0.664643, 0.406720, 0.626760,
		56.959747, 57.357334, 53.764957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.343956, 57.775627, 53.203419>,  <57.424999, 57.072628, 53.326225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.343956, 57.775627, 53.203419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.249184, 57.680359, 53.580170>,  <57.192322, 57.623196, 53.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.249184, 57.680359, 53.580170>,  <57.343956, 57.775627, 53.203419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.249184, 57.680359, 53.580170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891833, 0.331225, 0.308096,
		-0.385355, 0.912997, 0.133935,
		-0.236928, -0.238174, 0.941880,
		57.178104, 57.608906, 53.862732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.300556, 58.279930, 53.712147>,  <57.343956, 57.775627, 53.203419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.300556, 58.279930, 53.712147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.453827, 57.963829, 53.903427>,  <57.545792, 57.774170, 54.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.453827, 57.963829, 53.903427>,  <57.300556, 58.279930, 53.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.453827, 57.963829, 53.903427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851271, 0.503064, 0.149213,
		-0.358483, 0.349906, 0.865480,
		0.383181, -0.790249, 0.478204,
		57.568783, 57.726753, 54.046890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.530495, 58.604736, 54.365524>,  <57.300556, 58.279930, 53.712147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.530495, 58.604736, 54.365524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.723404, 58.284595, 54.223061>,  <57.839149, 58.092510, 54.137581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.723404, 58.284595, 54.223061>,  <57.530495, 58.604736, 54.365524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.723404, 58.284595, 54.223061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864747, 0.499963, 0.047430,
		0.140105, -0.330862, 0.933221,
		0.482269, -0.800354, -0.356159,
		57.868084, 58.044491, 54.116211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.072052, 58.235519, 54.763157>,  <57.530495, 58.604736, 54.365524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.072052, 58.235519, 54.763157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.159462, 58.168274, 54.378662>,  <58.211906, 58.127926, 54.147964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.159462, 58.168274, 54.378662>,  <58.072052, 58.235519, 54.763157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.159462, 58.168274, 54.378662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872735, 0.474348, 0.115444,
		0.436555, -0.864136, 0.250376,
		0.218524, -0.168114, -0.961241,
		58.225018, 58.117840, 54.090290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.514091, 58.796253, 54.984554>,  <58.072052, 58.235519, 54.763157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.514091, 58.796253, 54.984554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672157, 58.861496, 54.622952>,  <58.766998, 58.900642, 54.405991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672157, 58.861496, 54.622952>,  <58.514091, 58.796253, 54.984554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.672157, 58.861496, 54.622952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778733, 0.462515, 0.423857,
		0.487255, -0.871478, 0.055752,
		0.395169, 0.163111, -0.904011,
		58.790707, 58.910431, 54.351749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.220394, 58.542828, 54.899887>,  <58.514091, 58.796253, 54.984554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.220394, 58.542828, 54.899887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.145691, 58.869095, 54.680870>,  <59.100868, 59.064857, 54.549461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.145691, 58.869095, 54.680870>,  <59.220394, 58.542828, 54.899887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.145691, 58.869095, 54.680870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770174, 0.467564, 0.433839,
		0.609881, -0.340681, -0.715529,
		-0.186755, 0.815672, -0.547542,
		59.089664, 59.113796, 54.516609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.919781, 58.854706, 54.694462>,  <59.220394, 58.542828, 54.899887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.919781, 58.854706, 54.694462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646248, 59.145325, 54.667606>,  <59.482128, 59.319695, 54.651493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.646248, 59.145325, 54.667606>,  <59.919781, 58.854706, 54.694462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.646248, 59.145325, 54.667606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608965, 0.618995, 0.495991,
		0.401919, 0.298288, -0.865728,
		-0.683829, 0.726546, -0.067139,
		59.441097, 59.363289, 54.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.252869, 58.918007, 55.384926>,  <59.919781, 58.854706, 54.694462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.252869, 58.918007, 55.384926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.454620, 58.665512, 55.149254>,  <60.575672, 58.514015, 55.007851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.454620, 58.665512, 55.149254>,  <60.252869, 58.918007, 55.384926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.454620, 58.665512, 55.149254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829635, 0.543436, 0.127995,
		0.239387, -0.553365, 0.797797,
		0.504380, -0.631240, -0.589183,
		60.605934, 58.476139, 54.972500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.869331, 58.561028, 55.740276>,  <60.252869, 58.918007, 55.384926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.869331, 58.561028, 55.740276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.926147, 58.597923, 55.346054>,  <60.960236, 58.620060, 55.109520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.926147, 58.597923, 55.346054>,  <60.869331, 58.561028, 55.740276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.926147, 58.597923, 55.346054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929552, 0.329792, 0.164837,
		0.340232, -0.939537, -0.038901,
		0.142041, 0.092244, -0.985553,
		60.968761, 58.625595, 55.050388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.514843, 58.138641, 55.538948>,  <60.869331, 58.561028, 55.740276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.514843, 58.138641, 55.538948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.453827, 58.467026, 55.318855>,  <61.417217, 58.664055, 55.186798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.453827, 58.467026, 55.318855>,  <61.514843, 58.138641, 55.538948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.453827, 58.467026, 55.318855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845937, 0.396328, 0.356811,
		0.511000, -0.411035, -0.754936,
		-0.152541, 0.820959, -0.550234,
		61.408066, 58.713314, 55.153786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.159046, 58.340939, 55.087112>,  <61.514843, 58.138641, 55.538948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.159046, 58.340939, 55.087112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.968849, 58.688179, 55.144112>,  <61.854733, 58.896523, 55.178310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.968849, 58.688179, 55.144112>,  <62.159046, 58.340939, 55.087112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.968849, 58.688179, 55.144112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869774, 0.439613, 0.224128,
		0.131920, 0.230515, -0.964085,
		-0.475489, 0.868103, 0.142502,
		61.826202, 58.948608, 55.186863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.558403, 58.808155, 54.733471>,  <62.159046, 58.340939, 55.087112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.558403, 58.808155, 54.733471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.349762, 58.992771, 55.020500>,  <62.224579, 59.103542, 55.192719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.349762, 58.992771, 55.020500>,  <62.558403, 58.808155, 54.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.349762, 58.992771, 55.020500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824951, 0.487420, 0.286141,
		-0.217694, 0.741215, -0.634988,
		-0.521598, 0.461543, 0.717575,
		62.193283, 59.131233, 55.235771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.986500, 59.324062, 54.844345>,  <62.558403, 58.808155, 54.733471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.986500, 59.324062, 54.844345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.736084, 59.397842, 55.147408>,  <62.585835, 59.442112, 55.329247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.736084, 59.397842, 55.147408>,  <62.986500, 59.324062, 54.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.736084, 59.397842, 55.147408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615659, 0.713224, 0.335076,
		-0.478576, 0.676232, -0.560067,
		-0.626043, 0.184450, 0.757660,
		62.548271, 59.453178, 55.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.029400, 60.086636, 55.075394>,  <62.986500, 59.324062, 54.844345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.029400, 60.086636, 55.075394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.952408, 59.832584, 55.374611>,  <62.906212, 59.680153, 55.554142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.952408, 59.832584, 55.374611>,  <63.029400, 60.086636, 55.075394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.952408, 59.832584, 55.374611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735108, 0.411650, 0.538665,
		-0.650052, 0.653573, 0.387653,
		-0.192480, -0.635127, 0.748041,
		62.894665, 59.642048, 55.599022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.916779, 60.440792, 55.660664>,  <63.029400, 60.086636, 55.075394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.916779, 60.440792, 55.660664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.067902, 60.079296, 55.741173>,  <63.158577, 59.862396, 55.789478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.067902, 60.079296, 55.741173>,  <62.916779, 60.440792, 55.660664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.067902, 60.079296, 55.741173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716027, 0.423005, 0.555313,
		-0.586999, -0.065686, 0.806918,
		0.377807, -0.903743, 0.201271,
		63.181244, 59.808174, 55.801556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.971203, 60.450539, 56.350273>,  <62.916779, 60.440792, 55.660664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.971203, 60.450539, 56.350273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.220802, 60.180565, 56.192749>,  <63.370564, 60.018581, 56.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.220802, 60.180565, 56.192749>,  <62.971203, 60.450539, 56.350273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.220802, 60.180565, 56.192749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775115, 0.470702, 0.421470,
		-0.099101, -0.568243, 0.816872,
		0.624000, -0.674937, -0.393806,
		63.408001, 59.978085, 56.074608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.348225, 59.940578, 56.937691>,  <62.971203, 60.450539, 56.350273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.348225, 59.940578, 56.937691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.558464, 59.972130, 56.598862>,  <63.684608, 59.991062, 56.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.558464, 59.972130, 56.598862>,  <63.348225, 59.940578, 56.937691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.558464, 59.972130, 56.598862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768065, 0.384151, 0.512351,
		0.365815, -0.919895, 0.141325,
		0.525599, 0.078879, -0.847067,
		63.716145, 59.995796, 56.344742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.999794, 59.555824, 56.926262>,  <63.348225, 59.940578, 56.937691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.999794, 59.555824, 56.926262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.010651, 59.879471, 56.691452>,  <64.017166, 60.073658, 56.550568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.010651, 59.879471, 56.691452>,  <63.999794, 59.555824, 56.926262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.010651, 59.879471, 56.691452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683520, 0.413481, 0.601526,
		0.729426, -0.417571, -0.541823,
		0.027146, 0.809116, -0.587022,
		64.018791, 60.122204, 56.515347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.704445, 59.819168, 56.715324>,  <63.999794, 59.555824, 56.926262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.704445, 59.819168, 56.715324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.426735, 60.099991, 56.778702>,  <64.260109, 60.268486, 56.816727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.426735, 60.099991, 56.778702>,  <64.704445, 59.819168, 56.715324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.426735, 60.099991, 56.778702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661416, 0.535582, 0.525054,
		0.283760, 0.469324, -0.836191,
		-0.694269, 0.702059, 0.158441,
		64.218452, 60.310608, 56.826233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.806755, 60.450844, 56.409748>,  <64.704445, 59.819168, 56.715324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.806755, 60.450844, 56.409748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.615181, 60.519478, 56.754112>,  <64.500237, 60.560658, 56.960732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.615181, 60.519478, 56.754112>,  <64.806755, 60.450844, 56.409748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.615181, 60.519478, 56.754112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763865, 0.564726, 0.312401,
		-0.432580, 0.807245, -0.401536,
		-0.478942, 0.171581, 0.860915,
		64.471497, 60.570953, 57.012386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.666786, 61.181583, 56.575985>,  <64.806755, 60.450844, 56.409748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.666786, 61.181583, 56.575985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.674568, 60.995293, 56.929871>,  <64.679237, 60.883518, 57.142200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.674568, 60.995293, 56.929871>,  <64.666786, 61.181583, 56.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.674568, 60.995293, 56.929871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567672, 0.733565, 0.373673,
		-0.823025, 0.494956, 0.278655,
		0.019460, -0.465727, 0.884715,
		64.680405, 60.855576, 57.195286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.518921, 61.621742, 57.138050>,  <64.666786, 61.181583, 56.575985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.518921, 61.621742, 57.138050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.768044, 61.331287, 57.254555>,  <64.917519, 61.157013, 57.324459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.768044, 61.331287, 57.254555>,  <64.518921, 61.621742, 57.138050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.768044, 61.331287, 57.254555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614917, 0.684486, 0.391606,
		-0.483728, -0.064789, 0.872817,
		0.622803, -0.726141, 0.291265,
		64.954887, 61.113445, 57.341934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.651978, 61.549664, 58.001545>,  <64.518921, 61.621742, 57.138050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.651978, 61.549664, 58.001545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.959465, 61.450638, 57.765656>,  <65.143959, 61.391224, 57.624123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.959465, 61.450638, 57.765656>,  <64.651978, 61.549664, 58.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.959465, 61.450638, 57.765656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553881, 0.718734, 0.420283,
		0.319809, -0.649719, 0.689628,
		0.768725, -0.247562, -0.589725,
		65.190079, 61.376369, 57.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.305336, 61.340950, 58.432621>,  <64.651978, 61.549664, 58.001545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.305336, 61.340950, 58.432621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.401077, 61.460205, 58.063011>,  <65.458527, 61.531757, 57.841244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.401077, 61.460205, 58.063011>,  <65.305336, 61.340950, 58.432621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.401077, 61.460205, 58.063011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467606, 0.798652, 0.378813,
		0.850913, -0.522752, 0.051754,
		0.239359, 0.298136, -0.924025,
		65.472885, 61.549644, 57.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.096375, 61.504623, 58.244324>,  <65.305336, 61.340950, 58.432621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.096375, 61.504623, 58.244324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863029, 61.701004, 57.985512>,  <65.723022, 61.818832, 57.830223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.863029, 61.701004, 57.985512>,  <66.096375, 61.504623, 58.244324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.863029, 61.701004, 57.985512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257270, 0.867309, 0.426130,
		0.770383, 0.082130, -0.632269,
		-0.583371, 0.490947, -0.647031,
		65.688019, 61.848289, 57.791401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.375984, 62.139153, 58.041565>,  <66.096375, 61.504623, 58.244324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.375984, 62.139153, 58.041565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.977386, 62.151661, 58.072578>,  <65.738228, 62.159168, 58.091187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.977386, 62.151661, 58.072578>,  <66.375984, 62.139153, 58.041565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.977386, 62.151661, 58.072578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068214, 0.840351, 0.537734,
		-0.048342, 0.541140, -0.839542,
		-0.996499, 0.031274, 0.077538,
		65.678436, 62.161041, 58.095840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.952385, 61.705418, 57.792759>,  <66.375984, 62.139153, 58.041565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.952385, 61.705418, 57.792759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.325378, 61.563705, 57.764587>,  <67.549171, 61.478680, 57.747684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.325378, 61.563705, 57.764587>,  <66.952385, 61.705418, 57.792759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.325378, 61.563705, 57.764587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151314, 0.206088, 0.966764,
		-0.327993, -0.912147, 0.245781,
		0.932483, -0.354282, -0.070425,
		67.605125, 61.457420, 57.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.093315, 61.277519, 58.255772>,  <66.952385, 61.705418, 57.792759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.093315, 61.277519, 58.255772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.451210, 61.452782, 58.221222>,  <67.665947, 61.557941, 58.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.451210, 61.452782, 58.221222>,  <67.093315, 61.277519, 58.255772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.451210, 61.452782, 58.221222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063137, 0.067366, 0.995729,
		0.442107, -0.896370, 0.032611,
		0.894738, 0.438159, -0.086376,
		67.719635, 61.584229, 58.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.630913, 60.998951, 58.678185>,  <67.093315, 61.277519, 58.255772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.630913, 60.998951, 58.678185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.770020, 61.373360, 58.656555>,  <67.853485, 61.598003, 58.643578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.770020, 61.373360, 58.656555>,  <67.630913, 60.998951, 58.678185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.770020, 61.373360, 58.656555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061914, 0.080470, 0.994832,
		0.935537, -0.342616, 0.085937,
		0.347761, 0.936023, -0.054070,
		67.874352, 61.654167, 58.640335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.290764, 61.195324, 59.134476>,  <67.630913, 60.998951, 58.678185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.290764, 61.195324, 59.134476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.049194, 61.507057, 59.067627>,  <67.904251, 61.694096, 59.027515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.049194, 61.507057, 59.067627>,  <68.290764, 61.195324, 59.134476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.049194, 61.507057, 59.067627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215600, 0.042138, 0.975572,
		0.767334, 0.625197, 0.142575,
		-0.603917, 0.779328, -0.167126,
		67.868019, 61.740856, 59.017490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.567032, 61.829559, 59.416840>,  <68.290764, 61.195324, 59.134476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.567032, 61.829559, 59.416840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167725, 61.812103, 59.400993>,  <67.928139, 61.801628, 59.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167725, 61.812103, 59.400993>,  <68.567032, 61.829559, 59.416840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.167725, 61.812103, 59.400993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047493, 0.197491, 0.979154,
		-0.034910, 0.979333, -0.199220,
		-0.998261, -0.043644, -0.039617,
		67.868248, 61.799011, 59.389107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.927460, 61.136463, 59.722866>,  <68.567032, 61.829559, 59.416840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.927460, 61.136463, 59.722866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.762917, 60.837894, 59.932106>,  <68.664192, 60.658752, 60.057652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.762917, 60.837894, 59.932106>,  <68.927460, 61.136463, 59.722866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.762917, 60.837894, 59.932106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904481, -0.405240, 0.133023,
		0.112688, 0.527853, 0.841827,
		-0.411359, -0.746426, 0.523098,
		68.639511, 60.613968, 60.089035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.470688, 61.057018, 60.271461>,  <68.927460, 61.136463, 59.722866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.470688, 61.057018, 60.271461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.280823, 60.714848, 60.188576>,  <69.166901, 60.509544, 60.138844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.280823, 60.714848, 60.188576>,  <69.470688, 61.057018, 60.271461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.280823, 60.714848, 60.188576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871592, -0.424048, -0.245989,
		0.122557, -0.297367, 0.946865,
		-0.474665, -0.855428, -0.207212,
		69.138420, 60.458218, 60.126411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.810120, 60.571953, 60.546879>,  <69.470688, 61.057018, 60.271461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.810120, 60.571953, 60.546879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.632034, 60.301884, 60.311615>,  <69.525185, 60.139843, 60.170456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.632034, 60.301884, 60.311615>,  <69.810120, 60.571953, 60.546879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.632034, 60.301884, 60.311615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849526, -0.526093, -0.039127,
		-0.283009, -0.517076, 0.807798,
		-0.445209, -0.675172, -0.588159,
		69.498474, 60.099331, 60.135166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.410545, 60.151005, 60.680744>,  <69.810120, 60.571953, 60.546879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.410545, 60.151005, 60.680744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.175652, 60.046707, 60.374237>,  <70.034714, 59.984127, 60.190334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.175652, 60.046707, 60.374237>,  <70.410545, 60.151005, 60.680744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.175652, 60.046707, 60.374237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747819, -0.537013, -0.390363,
		-0.309708, -0.802264, 0.510346,
		-0.587237, -0.260748, -0.766266,
		69.999481, 59.968483, 60.144356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.088829, 59.459297, 60.654415>,  <70.410545, 60.151005, 60.680744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.088829, 59.459297, 60.654415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.182610, 59.608788, 60.295448>,  <70.238876, 59.698479, 60.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.182610, 59.608788, 60.295448>,  <70.088829, 59.459297, 60.654415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.182610, 59.608788, 60.295448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641907, -0.752795, -0.145790,
		-0.730058, -0.541878, -0.416394,
		0.234459, 0.373721, -0.897419,
		70.252945, 59.720905, 60.026222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.864082, 58.905121, 60.052265>,  <70.088829, 59.459297, 60.654415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.864082, 58.905121, 60.052265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.187599, 59.139824, 60.036346>,  <70.381706, 59.280647, 60.026794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.187599, 59.139824, 60.036346>,  <69.864082, 58.905121, 60.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.187599, 59.139824, 60.036346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563587, -0.792619, -0.232648,
		-0.168049, 0.165736, -0.971747,
		0.808783, 0.586760, -0.039792,
		70.430237, 59.315853, 60.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.207481, 58.844296, 59.339909>,  <69.864082, 58.905121, 60.052265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.207481, 58.844296, 59.339909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.506233, 58.925888, 59.593071>,  <70.685486, 58.974842, 59.744968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.506233, 58.925888, 59.593071>,  <70.207481, 58.844296, 59.339909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.506233, 58.925888, 59.593071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456080, -0.849777, -0.264329,
		0.483911, 0.486076, -0.727709,
		0.746875, 0.203982, 0.632906,
		70.730293, 58.987083, 59.782944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.624496, 58.348789, 59.023975>,  <70.207481, 58.844296, 59.339909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.624496, 58.348789, 59.023975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.225365, 58.334427, 59.001831>,  <69.985886, 58.325809, 58.988544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.225365, 58.334427, 59.001831>,  <70.624496, 58.348789, 59.023975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.225365, 58.334427, 59.001831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055172, 0.006203, -0.998458,
		0.036200, -0.999336, -0.004208,
		-0.997821, -0.035912, -0.055360,
		69.926018, 58.323654, 58.985222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.433479, 57.634220, 58.707363>,  <70.624496, 58.348789, 59.023975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.433479, 57.634220, 58.707363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.190170, 57.943035, 58.633652>,  <70.044182, 58.128323, 58.589424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.190170, 57.943035, 58.633652>,  <70.433479, 57.634220, 58.707363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.190170, 57.943035, 58.633652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328432, 0.033455, -0.943935,
		-0.722586, -0.634698, -0.273911,
		-0.608277, 0.772036, -0.184281,
		70.007690, 58.174644, 58.578369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.082108, 57.671314, 59.109314>,  <70.433479, 57.634220, 58.707363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.082108, 57.671314, 59.109314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.466537, 57.772362, 59.154053>,  <71.697197, 57.832993, 59.180897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.466537, 57.772362, 59.154053>,  <71.082108, 57.671314, 59.109314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.466537, 57.772362, 59.154053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143771, 0.803022, -0.578348,
		-0.235918, 0.539758, 0.808087,
		0.961079, 0.252622, 0.111846,
		71.754860, 57.848148, 59.187607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.554443, 57.163879, 59.519798>,  <71.082108, 57.671314, 59.109314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.554443, 57.163879, 59.519798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.700813, 56.848923, 59.321358>,  <70.788635, 56.659946, 59.202293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.700813, 56.848923, 59.321358>,  <70.554443, 57.163879, 59.519798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.700813, 56.848923, 59.321358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930629, 0.313005, 0.189626,
		0.005972, -0.531074, 0.847304,
		0.365916, -0.787393, -0.496102,
		70.810585, 56.612705, 59.172527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.937286, 56.899605, 59.926243>,  <70.554443, 57.163879, 59.519798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.937286, 56.899605, 59.926243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.094177, 56.779297, 59.578522>,  <71.188316, 56.707111, 59.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.094177, 56.779297, 59.578522>,  <70.937286, 56.899605, 59.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.094177, 56.779297, 59.578522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891409, 0.357523, 0.278507,
		0.227031, -0.884147, 0.408339,
		0.392232, -0.300767, -0.869306,
		71.211845, 56.689068, 59.317730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.545975, 56.779346, 60.085678>,  <70.937286, 56.899605, 59.926243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.545975, 56.779346, 60.085678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.610657, 56.785229, 59.690987>,  <71.649467, 56.788757, 59.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.610657, 56.785229, 59.690987>,  <71.545975, 56.779346, 60.085678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.610657, 56.785229, 59.690987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779863, 0.610794, 0.136911,
		0.604700, -0.791653, 0.087306,
		0.161712, 0.014703, -0.986728,
		71.659172, 56.789639, 59.394970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.109665, 56.523724, 59.824898>,  <71.545975, 56.779346, 60.085678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.109665, 56.523724, 59.824898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.983009, 56.825218, 59.594551>,  <71.907013, 57.006115, 59.456345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.983009, 56.825218, 59.594551>,  <72.109665, 56.523724, 59.824898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.983009, 56.825218, 59.594551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628046, 0.621560, 0.468211,
		0.710843, -0.213415, -0.670191,
		-0.316641, 0.753735, -0.575866,
		71.888016, 57.051338, 59.421791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.727287, 56.806190, 59.588402>,  <72.109665, 56.523724, 59.824898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.727287, 56.806190, 59.588402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.430740, 57.073513, 59.612831>,  <72.252808, 57.233906, 59.627491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.430740, 57.073513, 59.612831>,  <72.727287, 56.806190, 59.588402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.430740, 57.073513, 59.612831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655806, 0.702173, 0.277257,
		0.142405, 0.245607, -0.958853,
		-0.741377, 0.668304, 0.061078,
		72.208328, 57.274006, 59.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.673592, 57.485435, 59.126095>,  <72.727287, 56.806190, 59.588402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.673592, 57.485435, 59.126095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.518196, 57.535507, 59.491257>,  <72.424957, 57.565552, 59.710354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.518196, 57.535507, 59.491257>,  <72.673592, 57.485435, 59.126095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.518196, 57.535507, 59.491257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792745, 0.550431, 0.261881,
		-0.469710, 0.825442, -0.313079,
		-0.388496, 0.125184, 0.912907,
		72.401649, 57.573063, 59.765129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.775078, 58.192898, 59.207256>,  <72.673592, 57.485435, 59.126095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.775078, 58.192898, 59.207256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.752678, 57.985161, 59.548347>,  <72.739235, 57.860519, 59.753002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.752678, 57.985161, 59.548347>,  <72.775078, 58.192898, 59.207256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.752678, 57.985161, 59.548347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774544, 0.516346, 0.365334,
		-0.630037, 0.680935, 0.373339,
		-0.055997, -0.519341, 0.852731,
		72.735878, 57.829357, 59.804165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.835785, 58.707928, 59.788174>,  <72.775078, 58.192898, 59.207256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.835785, 58.707928, 59.788174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.935997, 58.338058, 59.902863>,  <72.996124, 58.116135, 59.971676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.935997, 58.338058, 59.902863>,  <72.835785, 58.707928, 59.788174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.935997, 58.338058, 59.902863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774192, 0.369182, 0.514132,
		-0.581258, 0.093173, 0.808368,
		0.250531, -0.924675, 0.286723,
		73.011154, 58.060658, 59.988880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.712128, 58.665482, 60.470093>,  <72.835785, 58.707928, 59.788174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.712128, 58.665482, 60.470093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.986633, 58.386696, 60.386864>,  <73.151337, 58.219425, 60.336926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.986633, 58.386696, 60.386864>,  <72.712128, 58.665482, 60.470093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.986633, 58.386696, 60.386864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614739, 0.402860, 0.678085,
		-0.388779, -0.593249, 0.704916,
		0.686256, -0.696965, -0.208070,
		73.192513, 58.177605, 60.324444>
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
